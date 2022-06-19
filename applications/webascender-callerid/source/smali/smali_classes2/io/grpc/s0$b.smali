.class public final Lio/grpc/s0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/s0$b$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lio/grpc/y0;

.field private final c:Lio/grpc/d1;

.field private final d:Lio/grpc/s0$i;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Lio/grpc/f;

.field private final g:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Lio/grpc/y0;Lio/grpc/d1;Lio/grpc/s0$i;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/f;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "defaultPort not set"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lio/grpc/s0$b;->a:I

    const-string p1, "proxyDetector not set"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lio/grpc/y0;

    iput-object p2, p0, Lio/grpc/s0$b;->b:Lio/grpc/y0;

    const-string p1, "syncContext not set"

    .line 5
    invoke-static {p3, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lio/grpc/d1;

    iput-object p3, p0, Lio/grpc/s0$b;->c:Lio/grpc/d1;

    const-string p1, "serviceConfigParser not set"

    .line 6
    invoke-static {p4, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lio/grpc/s0$i;

    iput-object p4, p0, Lio/grpc/s0$b;->d:Lio/grpc/s0$i;

    .line 7
    iput-object p5, p0, Lio/grpc/s0$b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    iput-object p6, p0, Lio/grpc/s0$b;->f:Lio/grpc/f;

    .line 9
    iput-object p7, p0, Lio/grpc/s0$b;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Integer;Lio/grpc/y0;Lio/grpc/d1;Lio/grpc/s0$i;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/f;Ljava/util/concurrent/Executor;Lio/grpc/s0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lio/grpc/s0$b;-><init>(Ljava/lang/Integer;Lio/grpc/y0;Lio/grpc/d1;Lio/grpc/s0$i;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/f;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static f()Lio/grpc/s0$b$a;
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/s0$b$a;

    invoke-direct {v0}, Lio/grpc/s0$b$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/s0$b;->a:I

    return v0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/s0$b;->g:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public c()Lio/grpc/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/s0$b;->b:Lio/grpc/y0;

    return-object v0
.end method

.method public d()Lio/grpc/s0$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/s0$b;->d:Lio/grpc/s0$i;

    return-object v0
.end method

.method public e()Lio/grpc/d1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/s0$b;->c:Lio/grpc/d1;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/h;->c(Ljava/lang/Object;)Lcom/google/common/base/h$b;

    move-result-object v0

    iget v1, p0, Lio/grpc/s0$b;->a:I

    const-string v2, "defaultPort"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->b(Ljava/lang/String;I)Lcom/google/common/base/h$b;

    iget-object v1, p0, Lio/grpc/s0$b;->b:Lio/grpc/y0;

    const-string v2, "proxyDetector"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    iget-object v1, p0, Lio/grpc/s0$b;->c:Lio/grpc/d1;

    const-string v2, "syncContext"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    iget-object v1, p0, Lio/grpc/s0$b;->d:Lio/grpc/s0$i;

    const-string v2, "serviceConfigParser"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    iget-object v1, p0, Lio/grpc/s0$b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v2, "scheduledExecutorService"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    iget-object v1, p0, Lio/grpc/s0$b;->f:Lio/grpc/f;

    const-string v2, "channelLogger"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    iget-object v1, p0, Lio/grpc/s0$b;->g:Ljava/util/concurrent/Executor;

    const-string v2, "executor"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/h$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/h$b;

    .line 9
    invoke-virtual {v0}, Lcom/google/common/base/h$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
