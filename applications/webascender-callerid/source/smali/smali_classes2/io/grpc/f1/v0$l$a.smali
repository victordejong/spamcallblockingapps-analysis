.class Lio/grpc/f1/v0$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/v0$l;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/v0$l;


# direct methods
.method constructor <init>(Lio/grpc/f1/v0$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/v0$l$a;->f:Lio/grpc/f1/v0$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$l$a;->f:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/f1/v0;->s(Lio/grpc/f1/v0;Lio/grpc/f1/j;)Lio/grpc/f1/j;

    .line 2
    iget-object v0, p0, Lio/grpc/f1/v0$l$a;->f:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->n(Lio/grpc/f1/v0;)Lio/grpc/b1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/f1/v0$l$a;->f:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->j(Lio/grpc/f1/v0;)Lio/grpc/f1/g1;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Unexpected non-null activeTransport"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lio/grpc/f1/v0$l$a;->f:Lio/grpc/f1/v0$l;

    iget-object v1, v0, Lio/grpc/f1/v0$l;->a:Lio/grpc/f1/v;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->n(Lio/grpc/f1/v0;)Lio/grpc/b1;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/grpc/f1/g1;->b(Lio/grpc/b1;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/f1/v0$l$a;->f:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->l(Lio/grpc/f1/v0;)Lio/grpc/f1/v;

    move-result-object v0

    iget-object v2, p0, Lio/grpc/f1/v0$l$a;->f:Lio/grpc/f1/v0$l;

    iget-object v3, v2, Lio/grpc/f1/v0$l;->a:Lio/grpc/f1/v;

    if-ne v0, v3, :cond_2

    .line 6
    iget-object v0, v2, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0, v3}, Lio/grpc/f1/v0;->k(Lio/grpc/f1/v0;Lio/grpc/f1/g1;)Lio/grpc/f1/g1;

    .line 7
    iget-object v0, p0, Lio/grpc/f1/v0$l$a;->f:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0, v1}, Lio/grpc/f1/v0;->m(Lio/grpc/f1/v0;Lio/grpc/f1/v;)Lio/grpc/f1/v;

    .line 8
    iget-object v0, p0, Lio/grpc/f1/v0$l$a;->f:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    sget-object v1, Lio/grpc/o;->READY:Lio/grpc/o;

    invoke-static {v0, v1}, Lio/grpc/f1/v0;->z(Lio/grpc/f1/v0;Lio/grpc/o;)V

    :cond_2
    :goto_1
    return-void
.end method
