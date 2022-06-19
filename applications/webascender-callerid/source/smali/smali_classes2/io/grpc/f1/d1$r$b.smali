.class final Lio/grpc/f1/d1$r$b;
.super Lio/grpc/f1/v0$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/d1$r;->k(Lio/grpc/l0$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/l0$j;

.field final synthetic b:Lio/grpc/f1/d1$r;


# direct methods
.method constructor <init>(Lio/grpc/f1/d1$r;Lio/grpc/l0$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$r$b;->b:Lio/grpc/f1/d1$r;

    iput-object p2, p0, Lio/grpc/f1/d1$r$b;->a:Lio/grpc/l0$j;

    invoke-direct {p0}, Lio/grpc/f1/v0$j;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lio/grpc/f1/v0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$r$b;->b:Lio/grpc/f1/d1$r;

    iget-object v0, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    iget-object v0, v0, Lio/grpc/f1/d1;->c0:Lio/grpc/f1/t0;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lio/grpc/f1/t0;->d(Ljava/lang/Object;Z)V

    return-void
.end method

.method b(Lio/grpc/f1/v0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$r$b;->b:Lio/grpc/f1/d1$r;

    iget-object v0, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    iget-object v0, v0, Lio/grpc/f1/d1;->c0:Lio/grpc/f1/t0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/grpc/f1/t0;->d(Ljava/lang/Object;Z)V

    return-void
.end method

.method c(Lio/grpc/f1/v0;Lio/grpc/p;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/grpc/f1/d1$r$b;->b:Lio/grpc/f1/d1$r;

    iget-object p1, p1, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    invoke-static {p1, p2}, Lio/grpc/f1/d1;->Q(Lio/grpc/f1/d1;Lio/grpc/p;)V

    .line 2
    iget-object p1, p0, Lio/grpc/f1/d1$r$b;->a:Lio/grpc/l0$j;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "listener is null"

    invoke-static {p1, v0}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/grpc/f1/d1$r$b;->a:Lio/grpc/l0$j;

    invoke-interface {p1, p2}, Lio/grpc/l0$j;->a(Lio/grpc/p;)V

    return-void
.end method

.method d(Lio/grpc/f1/v0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$r$b;->b:Lio/grpc/f1/d1$r;

    iget-object v0, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->f0(Lio/grpc/f1/d1;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lio/grpc/f1/d1$r$b;->b:Lio/grpc/f1/d1$r;

    iget-object v0, v0, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->N(Lio/grpc/f1/d1;)Lio/grpc/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/b0;->k(Lio/grpc/e0;)V

    .line 3
    iget-object p1, p0, Lio/grpc/f1/d1$r$b;->b:Lio/grpc/f1/d1$r;

    iget-object p1, p1, Lio/grpc/f1/d1$r;->i:Lio/grpc/f1/d1;

    invoke-static {p1}, Lio/grpc/f1/d1;->P(Lio/grpc/f1/d1;)V

    return-void
.end method
