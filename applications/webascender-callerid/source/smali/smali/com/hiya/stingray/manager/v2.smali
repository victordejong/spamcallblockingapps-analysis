.class public Lcom/hiya/stingray/manager/v2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/q/d/a;

.field private final c:Lcom/hiya/stingray/manager/x3;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/job/JobInfo$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/app/job/JobScheduler;

.field private final f:Lcom/hiya/stingray/util/a0;

.field private final g:Lcom/hiya/stingray/manager/i1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/manager/x3;Ljava/util/Map;Landroid/app/job/JobScheduler;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/i1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hiya/stingray/q/d/a;",
            "Lcom/hiya/stingray/manager/x3;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/job/JobInfo$Builder;",
            ">;",
            "Landroid/app/job/JobScheduler;",
            "Lcom/hiya/stingray/util/a0;",
            "Lcom/hiya/stingray/manager/i1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/v2;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/v2;->b:Lcom/hiya/stingray/q/d/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/manager/v2;->c:Lcom/hiya/stingray/manager/x3;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/manager/v2;->d:Ljava/util/Map;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/manager/v2;->e:Landroid/app/job/JobScheduler;

    .line 7
    iput-object p6, p0, Lcom/hiya/stingray/manager/v2;->f:Lcom/hiya/stingray/util/a0;

    .line 8
    iput-object p7, p0, Lcom/hiya/stingray/manager/v2;->g:Lcom/hiya/stingray/manager/i1;

    return-void
.end method

.method private synthetic b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 p1, 0x232a

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/v2;->e(I)V

    return-void
.end method

.method private d(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/v2;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "No scheduled job in map with id: %d"

    invoke-static {v0, v2, v1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/v2;->b:Lcom/hiya/stingray/q/d/a;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "request_queue_last_job_schedule_time"

    .line 5
    invoke-virtual {v0, v3, v1, v2}, Lcom/hiya/stingray/q/d/a;->b0(Ljava/lang/String;J)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/manager/v2;->g:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/i1;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/manager/v2;->e:Landroid/app/job/JobScheduler;

    iget-object v1, p0, Lcom/hiya/stingray/manager/v2;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_1
    return-void
.end method

.method private e(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/v2;->b:Lcom/hiya/stingray/q/d/a;

    iget-object v1, p0, Lcom/hiya/stingray/manager/v2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/a;->m(Landroid/content/Context;)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/manager/v2;->b:Lcom/hiya/stingray/q/d/a;

    iget-object v3, p0, Lcom/hiya/stingray/manager/v2;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/q/d/a;->u(Landroid/content/Context;)J

    move-result-wide v2

    .line 3
    iget-object v4, p0, Lcom/hiya/stingray/manager/v2;->c:Lcom/hiya/stingray/manager/x3;

    const-string v5, "jitter_request_queue_min"

    invoke-virtual {v4, v5}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide v4

    .line 4
    iget-object v6, p0, Lcom/hiya/stingray/manager/v2;->c:Lcom/hiya/stingray/manager/x3;

    const-string v7, "period_request_queue_hrs"

    invoke-virtual {v6, v7}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide v6

    .line 5
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    long-to-int v9, v4

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    const v9, 0xea60

    mul-int v8, v8, v9

    int-to-long v8, v8

    cmp-long v10, v0, v4

    if-nez v10, :cond_0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/v2;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0, v4, v5}, Lcom/hiya/stingray/q/d/a;->Z(J)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/manager/v2;->b:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0, v6, v7}, Lcom/hiya/stingray/q/d/a;->h0(J)V

    const-wide/32 v0, 0x36ee80

    mul-long v6, v6, v0

    add-long/2addr v6, v8

    .line 8
    invoke-direct {p0, p1, v6, v7}, Lcom/hiya/stingray/manager/v2;->d(IJ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/v2;->f:Lcom/hiya/stingray/util/a0;

    const-class v1, Lcom/hiya/stingray/manager/x3$b;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/r0;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/r0;-><init>(Lcom/hiya/stingray/manager/v2;)V

    .line 3
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/v2;->b(Ljava/lang/Object;)V

    return-void
.end method
