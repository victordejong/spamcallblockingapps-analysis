.class final Lio/grpc/f1/d1$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/g1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/f1/d1;


# direct methods
.method private constructor <init>(Lio/grpc/f1/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$g;->a:Lio/grpc/f1/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/f1/d1;Lio/grpc/f1/d1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/f1/d1$g;-><init>(Lio/grpc/f1/d1;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/b1;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/grpc/f1/d1$g;->a:Lio/grpc/f1/d1;

    invoke-static {p1}, Lio/grpc/f1/d1;->m(Lio/grpc/f1/d1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const-string v0, "Channel must have been shut down"

    invoke-static {p1, v0}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$g;->a:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->m(Lio/grpc/f1/d1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Channel must have been shut down"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/d1$g;->a:Lio/grpc/f1/d1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/f1/d1;->V(Lio/grpc/f1/d1;Z)Z

    .line 3
    iget-object v0, p0, Lio/grpc/f1/d1$g;->a:Lio/grpc/f1/d1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/f1/d1;->g0(Lio/grpc/f1/d1;Z)V

    .line 4
    iget-object v0, p0, Lio/grpc/f1/d1$g;->a:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->A(Lio/grpc/f1/d1;)V

    .line 5
    iget-object v0, p0, Lio/grpc/f1/d1$g;->a:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->P(Lio/grpc/f1/d1;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$g;->a:Lio/grpc/f1/d1;

    iget-object v1, v0, Lio/grpc/f1/d1;->c0:Lio/grpc/f1/t0;

    invoke-static {v0}, Lio/grpc/f1/d1;->n(Lio/grpc/f1/d1;)Lio/grpc/f1/z;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lio/grpc/f1/t0;->d(Ljava/lang/Object;Z)V

    return-void
.end method
