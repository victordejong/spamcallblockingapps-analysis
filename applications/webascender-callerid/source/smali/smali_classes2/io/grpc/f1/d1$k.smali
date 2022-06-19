.class Lio/grpc/f1/d1$k;
.super Lio/grpc/l0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field a:Lio/grpc/f1/i$b;

.field final synthetic b:Lio/grpc/f1/d1;


# direct methods
.method private constructor <init>(Lio/grpc/f1/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$k;->b:Lio/grpc/f1/d1;

    invoke-direct {p0}, Lio/grpc/l0$d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/f1/d1;Lio/grpc/f1/d1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/f1/d1$k;-><init>(Lio/grpc/f1/d1;)V

    return-void
.end method

.method private f(Lio/grpc/l0$b;)Lio/grpc/f1/d1$r;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$k;->b:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->F(Lio/grpc/f1/d1;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Channel is terminated"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lio/grpc/f1/d1$r;

    iget-object v1, p0, Lio/grpc/f1/d1$k;->b:Lio/grpc/f1/d1;

    invoke-direct {v0, v1, p1, p0}, Lio/grpc/f1/d1$r;-><init>(Lio/grpc/f1/d1;Lio/grpc/l0$b;Lio/grpc/f1/d1$k;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lio/grpc/l0$b;)Lio/grpc/l0$h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/f1/d1$k;->e(Lio/grpc/l0$b;)Lio/grpc/f1/e;

    move-result-object p1

    return-object p1
.end method

.method public b()Lio/grpc/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$k;->b:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->y(Lio/grpc/f1/d1;)Lio/grpc/f;

    move-result-object v0

    return-object v0
.end method

.method public c()Lio/grpc/d1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$k;->b:Lio/grpc/f1/d1;

    iget-object v0, v0, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    return-object v0
.end method

.method public d(Lio/grpc/o;Lio/grpc/l0$i;)V
    .locals 2

    const-string v0, "newState"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newPicker"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lio/grpc/f1/d1$k;->b:Lio/grpc/f1/d1;

    const-string v1, "updateBalancingState()"

    invoke-static {v0, v1}, Lio/grpc/f1/d1;->I(Lio/grpc/f1/d1;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/grpc/f1/d1$k;->b:Lio/grpc/f1/d1;

    iget-object v0, v0, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    new-instance v1, Lio/grpc/f1/d1$k$a;

    invoke-direct {v1, p0, p2, p1}, Lio/grpc/f1/d1$k$a;-><init>(Lio/grpc/f1/d1$k;Lio/grpc/l0$i;Lio/grpc/o;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Lio/grpc/l0$b;)Lio/grpc/f1/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$k;->b:Lio/grpc/f1/d1;

    iget-object v0, v0, Lio/grpc/f1/d1;->o:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->d()V

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/f1/d1$k;->f(Lio/grpc/l0$b;)Lio/grpc/f1/d1$r;

    move-result-object p1

    return-object p1
.end method
