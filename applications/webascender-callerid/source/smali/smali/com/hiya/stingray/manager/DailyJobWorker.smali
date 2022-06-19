.class public final Lcom/hiya/stingray/manager/DailyJobWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# instance fields
.field public l:Lcom/hiya/stingray/manager/e1;

.field public m:Lcom/hiya/stingray/manager/k4;

.field public n:Lcom/hiya/stingray/manager/e2;

.field public o:Lcom/hiya/stingray/manager/d3;

.field private p:Lcom/hiya/stingray/s/d/i;

.field private final q:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/hiya/stingray/manager/DailyJobWorker;->q:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public p()Landroidx/work/ListenableWorker$a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/DailyJobWorker;->q()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/DailyJobWorker;->p:Lcom/hiya/stingray/s/d/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/hiya/stingray/s/d/i;->g(Lcom/hiya/stingray/manager/DailyJobWorker;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/DailyJobWorker;->n:Lcom/hiya/stingray/manager/e2;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/e2;->b()V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/DailyJobWorker;->m:Lcom/hiya/stingray/manager/k4;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/k4;->d()V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/manager/DailyJobWorker;->o:Lcom/hiya/stingray/manager/d3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/d3;->b()V

    .line 6
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    const-string v1, "Result.success()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "onBoardingManager"

    .line 7
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "userPropertiesManager"

    .line 8
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "dailyJobManager"

    .line 9
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/DailyJobWorker;->p:Lcom/hiya/stingray/s/d/i;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/DailyJobWorker;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/s/a;->d(Landroid/content/Context;)Lcom/hiya/stingray/s/d/i;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/manager/DailyJobWorker;->p:Lcom/hiya/stingray/s/d/i;

    :cond_0
    return-void
.end method
