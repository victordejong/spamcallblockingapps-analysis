.class Lio/grpc/g1/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/g1/a;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/g1/a;


# direct methods
.method constructor <init>(Lio/grpc/g1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/g1/a$c;->f:Lio/grpc/g1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/g1/a$c;->f:Lio/grpc/g1/a;

    invoke-static {v0}, Lio/grpc/g1/a;->b(Lio/grpc/g1/a;)Ln/f;

    move-result-object v0

    invoke-virtual {v0}, Ln/f;->close()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/g1/a$c;->f:Lio/grpc/g1/a;

    invoke-static {v0}, Lio/grpc/g1/a;->e(Lio/grpc/g1/a;)Ln/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/g1/a$c;->f:Lio/grpc/g1/a;

    invoke-static {v0}, Lio/grpc/g1/a;->e(Lio/grpc/g1/a;)Ln/b0;

    move-result-object v0

    invoke-interface {v0}, Ln/b0;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lio/grpc/g1/a$c;->f:Lio/grpc/g1/a;

    invoke-static {v1}, Lio/grpc/g1/a;->g(Lio/grpc/g1/a;)Lio/grpc/g1/b$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/grpc/g1/b$a;->a(Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lio/grpc/g1/a$c;->f:Lio/grpc/g1/a;

    invoke-static {v0}, Lio/grpc/g1/a;->i(Lio/grpc/g1/a;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lio/grpc/g1/a$c;->f:Lio/grpc/g1/a;

    invoke-static {v0}, Lio/grpc/g1/a;->i(Lio/grpc/g1/a;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 7
    iget-object v1, p0, Lio/grpc/g1/a$c;->f:Lio/grpc/g1/a;

    invoke-static {v1}, Lio/grpc/g1/a;->g(Lio/grpc/g1/a;)Lio/grpc/g1/b$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/grpc/g1/b$a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
