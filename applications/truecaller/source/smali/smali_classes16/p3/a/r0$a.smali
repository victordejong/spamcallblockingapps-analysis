.class public final Lp3/a/r0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lp3/a/c1;

.field public final c:Lp3/a/k1;

.field public final d:Lp3/a/r0$f;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Lp3/a/e;

.field public final g:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lp3/a/c1;Lp3/a/k1;Lp3/a/r0$f;Ljava/util/concurrent/ScheduledExecutorService;Lp3/a/e;Ljava/util/concurrent/Executor;Lp3/a/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p8, "defaultPort not set"

    .line 2
    invoke-static {p1, p8}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lp3/a/r0$a;->a:I

    const-string p1, "proxyDetector not set"

    .line 3
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/r0$a;->b:Lp3/a/c1;

    const-string p1, "syncContext not set"

    .line 4
    invoke-static {p3, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lp3/a/r0$a;->c:Lp3/a/k1;

    const-string p1, "serviceConfigParser not set"

    .line 5
    invoke-static {p4, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lp3/a/r0$a;->d:Lp3/a/r0$f;

    .line 6
    iput-object p5, p0, Lp3/a/r0$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    iput-object p6, p0, Lp3/a/r0$a;->f:Lp3/a/e;

    .line 8
    iput-object p7, p0, Lp3/a/r0$a;->g:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lp3/a/r0$a;->a:I

    const-string v2, "defaultPort"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lp3/a/r0$a;->b:Lp3/a/c1;

    const-string v2, "proxyDetector"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 4
    iget-object v1, p0, Lp3/a/r0$a;->c:Lp3/a/k1;

    const-string v2, "syncContext"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 6
    iget-object v1, p0, Lp3/a/r0$a;->d:Lp3/a/r0$f;

    const-string v2, "serviceConfigParser"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 8
    iget-object v1, p0, Lp3/a/r0$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v2, "scheduledExecutorService"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 10
    iget-object v1, p0, Lp3/a/r0$a;->f:Lp3/a/e;

    const-string v2, "channelLogger"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 12
    iget-object v1, p0, Lp3/a/r0$a;->g:Ljava/util/concurrent/Executor;

    const-string v2, "executor"

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 14
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
