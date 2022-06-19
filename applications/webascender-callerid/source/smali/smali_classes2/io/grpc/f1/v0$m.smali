.class final Lio/grpc/f1/v0$m;
.super Lio/grpc/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation


# instance fields
.field a:Lio/grpc/f0;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/f$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$m;->a:Lio/grpc/f0;

    invoke-static {v0, p1, p2}, Lio/grpc/f1/n;->d(Lio/grpc/f0;Lio/grpc/f$a;Ljava/lang/String;)V

    return-void
.end method

.method public varargs b(Lio/grpc/f$a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$m;->a:Lio/grpc/f0;

    invoke-static {v0, p1, p2, p3}, Lio/grpc/f1/n;->e(Lio/grpc/f0;Lio/grpc/f$a;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
