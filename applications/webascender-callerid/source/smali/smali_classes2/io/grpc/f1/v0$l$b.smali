.class Lio/grpc/f1/v0$l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/v0$l;->a(Lio/grpc/b1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/b1;

.field final synthetic g:Lio/grpc/f1/v0$l;


# direct methods
.method constructor <init>(Lio/grpc/f1/v0$l;Lio/grpc/b1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/v0$l$b;->g:Lio/grpc/f1/v0$l;

    iput-object p2, p0, Lio/grpc/f1/v0$l$b;->f:Lio/grpc/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$l$b;->g:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->i(Lio/grpc/f1/v0;)Lio/grpc/p;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/p;->c()Lio/grpc/o;

    move-result-object v0

    sget-object v1, Lio/grpc/o;->SHUTDOWN:Lio/grpc/o;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/v0$l$b;->g:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->j(Lio/grpc/f1/v0;)Lio/grpc/f1/g1;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/v0$l$b;->g:Lio/grpc/f1/v0$l;

    iget-object v2, v1, Lio/grpc/f1/v0$l;->a:Lio/grpc/f1/v;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, v1, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0, v3}, Lio/grpc/f1/v0;->k(Lio/grpc/f1/v0;Lio/grpc/f1/g1;)Lio/grpc/f1/g1;

    .line 4
    iget-object v0, p0, Lio/grpc/f1/v0$l$b;->g:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->D(Lio/grpc/f1/v0;)Lio/grpc/f1/v0$k;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/f1/v0$k;->f()V

    .line 5
    iget-object v0, p0, Lio/grpc/f1/v0$l$b;->g:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    sget-object v1, Lio/grpc/o;->IDLE:Lio/grpc/o;

    invoke-static {v0, v1}, Lio/grpc/f1/v0;->z(Lio/grpc/f1/v0;Lio/grpc/o;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, v1, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->l(Lio/grpc/f1/v0;)Lio/grpc/f1/v;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/v0$l$b;->g:Lio/grpc/f1/v0$l;

    iget-object v2, v1, Lio/grpc/f1/v0$l;->a:Lio/grpc/f1/v;

    if-ne v0, v2, :cond_4

    .line 7
    iget-object v0, v1, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->i(Lio/grpc/f1/v0;)Lio/grpc/p;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/p;->c()Lio/grpc/o;

    move-result-object v0

    sget-object v1, Lio/grpc/o;->CONNECTING:Lio/grpc/o;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/grpc/f1/v0$l$b;->g:Lio/grpc/f1/v0$l;

    iget-object v1, v1, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    .line 8
    invoke-static {v1}, Lio/grpc/f1/v0;->i(Lio/grpc/f1/v0;)Lio/grpc/p;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/p;->c()Lio/grpc/o;

    move-result-object v1

    const-string v2, "Expected state is CONNECTING, actual state is %s"

    .line 9
    invoke-static {v0, v2, v1}, Lcom/google/common/base/m;->x(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lio/grpc/f1/v0$l$b;->g:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->D(Lio/grpc/f1/v0;)Lio/grpc/f1/v0$k;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/f1/v0$k;->c()V

    .line 11
    iget-object v0, p0, Lio/grpc/f1/v0$l$b;->g:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->D(Lio/grpc/f1/v0;)Lio/grpc/f1/v0$k;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/f1/v0$k;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lio/grpc/f1/v0$l$b;->g:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0, v3}, Lio/grpc/f1/v0;->m(Lio/grpc/f1/v0;Lio/grpc/f1/v;)Lio/grpc/f1/v;

    .line 13
    iget-object v0, p0, Lio/grpc/f1/v0$l$b;->g:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->D(Lio/grpc/f1/v0;)Lio/grpc/f1/v0$k;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/f1/v0$k;->f()V

    .line 14
    iget-object v0, p0, Lio/grpc/f1/v0$l$b;->g:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    iget-object v1, p0, Lio/grpc/f1/v0$l$b;->f:Lio/grpc/b1;

    invoke-static {v0, v1}, Lio/grpc/f1/v0;->x(Lio/grpc/f1/v0;Lio/grpc/b1;)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lio/grpc/f1/v0$l$b;->g:Lio/grpc/f1/v0$l;

    iget-object v0, v0, Lio/grpc/f1/v0$l;->c:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->A(Lio/grpc/f1/v0;)V

    :cond_4
    :goto_1
    return-void
.end method
