.class public final Lio/grpc/s0$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/s0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Lio/grpc/y0;

.field private c:Lio/grpc/d1;

.field private d:Lio/grpc/s0$i;

.field private e:Ljava/util/concurrent/ScheduledExecutorService;

.field private f:Lio/grpc/f;

.field private g:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/s0$b;
    .locals 10

    .line 1
    new-instance v9, Lio/grpc/s0$b;

    iget-object v1, p0, Lio/grpc/s0$b$a;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lio/grpc/s0$b$a;->b:Lio/grpc/y0;

    iget-object v3, p0, Lio/grpc/s0$b$a;->c:Lio/grpc/d1;

    iget-object v4, p0, Lio/grpc/s0$b$a;->d:Lio/grpc/s0$i;

    iget-object v5, p0, Lio/grpc/s0$b$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lio/grpc/s0$b$a;->f:Lio/grpc/f;

    iget-object v7, p0, Lio/grpc/s0$b$a;->g:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/grpc/s0$b;-><init>(Ljava/lang/Integer;Lio/grpc/y0;Lio/grpc/d1;Lio/grpc/s0$i;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/f;Ljava/util/concurrent/Executor;Lio/grpc/s0$a;)V

    return-object v9
.end method

.method public b(Lio/grpc/f;)Lio/grpc/s0$b$a;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/f;

    iput-object p1, p0, Lio/grpc/s0$b$a;->f:Lio/grpc/f;

    return-object p0
.end method

.method public c(I)Lio/grpc/s0$b$a;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/s0$b$a;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(Ljava/util/concurrent/Executor;)Lio/grpc/s0$b$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/s0$b$a;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public e(Lio/grpc/y0;)Lio/grpc/s0$b$a;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/y0;

    iput-object p1, p0, Lio/grpc/s0$b$a;->b:Lio/grpc/y0;

    return-object p0
.end method

.method public f(Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/s0$b$a;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lio/grpc/s0$b$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public g(Lio/grpc/s0$i;)Lio/grpc/s0$b$a;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/s0$i;

    iput-object p1, p0, Lio/grpc/s0$b$a;->d:Lio/grpc/s0$i;

    return-object p0
.end method

.method public h(Lio/grpc/d1;)Lio/grpc/s0$b$a;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/d1;

    iput-object p1, p0, Lio/grpc/s0$b$a;->c:Lio/grpc/d1;

    return-object p0
.end method
