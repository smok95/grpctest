package main

import (
	"context"
	"log"
	"net"

	"google.golang.org/grpc"
	"smok95.com/grpctest"
)

const (
	port = ":7920"
)

type server struct {
	grpctest.UnimplementedGrpctestServiceServer
}

func (s *server) SendRequest(ctx context.Context, in *grpctest.Request) (*grpctest.Response,
	error) {
	return &grpctest.Response{Result: "This is result. your request " + in.Msg}, nil
}

func main() {
	lis, err := net.Listen("tcp", port)
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	s := grpc.NewServer()
	grpctest.RegisterGrpctestServiceServer(s, &server{})

	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
