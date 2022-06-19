.class Lio/grpc/f1/v0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/v0;->P(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Ljava/util/List;

.field final synthetic g:Lio/grpc/f1/v0;


# direct methods
.method constructor <init>(Lio/grpc/f1/v0;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    iput-object p2, p0, Lio/grpc/f1/v0$d;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/f1/v0$d;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    invoke-static {v1}, Lio/grpc/f1/v0;->D(Lio/grpc/f1/v0;)Lio/grpc/f1/v0$k;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/f1/v0$k;->a()Ljava/net/SocketAddress;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    invoke-static {v2}, Lio/grpc/f1/v0;->D(Lio/grpc/f1/v0;)Lio/grpc/f1/v0$k;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/grpc/f1/v0$k;->h(Ljava/util/List;)V

    .line 5
    iget-object v2, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    invoke-static {v2, v0}, Lio/grpc/f1/v0;->E(Lio/grpc/f1/v0;Ljava/util/List;)Ljava/util/List;

    .line 6
    iget-object v0, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->i(Lio/grpc/f1/v0;)Lio/grpc/p;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/p;->c()Lio/grpc/o;

    move-result-object v0

    sget-object v2, Lio/grpc/o;->READY:Lio/grpc/o;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->i(Lio/grpc/f1/v0;)Lio/grpc/p;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/p;->c()Lio/grpc/o;

    move-result-object v0

    sget-object v4, Lio/grpc/o;->CONNECTING:Lio/grpc/o;

    if-ne v0, v4, :cond_2

    .line 7
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->D(Lio/grpc/f1/v0;)Lio/grpc/f1/v0$k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/grpc/f1/v0$k;->g(Ljava/net/SocketAddress;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->i(Lio/grpc/f1/v0;)Lio/grpc/p;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/p;->c()Lio/grpc/o;

    move-result-object v0

    if-ne v0, v2, :cond_1

    .line 9
    iget-object v0, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->j(Lio/grpc/f1/v0;)Lio/grpc/f1/g1;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    invoke-static {v1, v3}, Lio/grpc/f1/v0;->k(Lio/grpc/f1/v0;Lio/grpc/f1/g1;)Lio/grpc/f1/g1;

    .line 11
    iget-object v1, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    invoke-static {v1}, Lio/grpc/f1/v0;->D(Lio/grpc/f1/v0;)Lio/grpc/f1/v0$k;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/f1/v0$k;->f()V

    .line 12
    iget-object v1, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    sget-object v2, Lio/grpc/o;->IDLE:Lio/grpc/o;

    invoke-static {v1, v2}, Lio/grpc/f1/v0;->z(Lio/grpc/f1/v0;Lio/grpc/o;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    invoke-static {v0}, Lio/grpc/f1/v0;->l(Lio/grpc/f1/v0;)Lio/grpc/f1/v;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    invoke-static {v1, v3}, Lio/grpc/f1/v0;->m(Lio/grpc/f1/v0;Lio/grpc/f1/v;)Lio/grpc/f1/v;

    .line 15
    iget-object v1, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    invoke-static {v1}, Lio/grpc/f1/v0;->D(Lio/grpc/f1/v0;)Lio/grpc/f1/v0$k;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/f1/v0$k;->f()V

    .line 16
    iget-object v1, p0, Lio/grpc/f1/v0$d;->g:Lio/grpc/f1/v0;

    invoke-static {v1}, Lio/grpc/f1/v0;->A(Lio/grpc/f1/v0;)V

    :goto_0
    move-object v3, v0

    :cond_2
    if-eqz v3, :cond_3

    .line 17
    sget-object v0, Lio/grpc/b1;->n:Lio/grpc/b1;

    const-string v1, "InternalSubchannel closed transport due to address change"

    .line 18
    invoke-virtual {v0, v1}, Lio/grpc/b1;->r(Ljava/lang/String;)Lio/grpc/b1;

    move-result-object v0

    .line 19
    invoke-interface {v3, v0}, Lio/grpc/f1/g1;->b(Lio/grpc/b1;)V

    :cond_3
    return-void
.end method
