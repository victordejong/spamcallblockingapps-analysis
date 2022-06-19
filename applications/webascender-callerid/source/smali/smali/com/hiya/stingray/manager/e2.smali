.class public final Lcom/hiya/stingray/manager/e2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/q/d/a;

.field private final c:Lcom/hiya/stingray/manager/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/manager/e1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonSharedPreferences"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/e2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/e2;->b:Lcom/hiya/stingray/q/d/a;

    iput-object p3, p0, Lcom/hiya/stingray/manager/e2;->c:Lcom/hiya/stingray/manager/e1;

    return-void
.end method

.method private final c(Ljava/lang/Long;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/e2;->b:Lcom/hiya/stingray/q/d/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/q/d/a;->S(J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/e2;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/w;->i(Landroid/content/Context;)Landroidx/work/w;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/work/f;->KEEP:Landroidx/work/f;

    .line 3
    new-instance v2, Landroidx/work/q$a;

    const-class v3, Lcom/hiya/stingray/manager/DailyJobWorker;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-direct {v2, v3, v5, v6, v4}, Landroidx/work/q$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 4
    new-instance v3, Landroidx/work/c$a;

    invoke-direct {v3}, Landroidx/work/c$a;-><init>()V

    const/4 v4, 0x1

    .line 5
    invoke-virtual {v3, v4}, Landroidx/work/c$a;->c(Z)Landroidx/work/c$a;

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v3, v5}, Landroidx/work/c$a;->f(Z)Landroidx/work/c$a;

    .line 7
    invoke-virtual {v3, v4}, Landroidx/work/c$a;->d(Z)Landroidx/work/c$a;

    .line 8
    sget-object v5, Landroidx/work/n;->NOT_ROAMING:Landroidx/work/n;

    invoke-virtual {v3, v5}, Landroidx/work/c$a;->b(Landroidx/work/n;)Landroidx/work/c$a;

    .line 9
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    .line 10
    invoke-virtual {v3, v4}, Landroidx/work/c$a;->e(Z)Landroidx/work/c$a;

    .line 11
    :cond_0
    invoke-virtual {v3}, Landroidx/work/c$a;->a()Landroidx/work/c;

    move-result-object v3

    .line 12
    invoke-virtual {v2, v3}, Landroidx/work/x$a;->e(Landroidx/work/c;)Landroidx/work/x$a;

    move-result-object v2

    check-cast v2, Landroidx/work/q$a;

    const-string v3, "DAILY_JOB_TAG"

    .line 13
    invoke-virtual {v2, v3}, Landroidx/work/x$a;->a(Ljava/lang/String;)Landroidx/work/x$a;

    move-result-object v2

    check-cast v2, Landroidx/work/q$a;

    .line 14
    invoke-virtual {v2}, Landroidx/work/x$a;->b()Landroidx/work/x;

    move-result-object v2

    check-cast v2, Landroidx/work/q;

    .line 15
    invoke-virtual {v0, v3, v1, v2}, Landroidx/work/w;->f(Ljava/lang/String;Landroidx/work/f;Landroidx/work/q;)Landroidx/work/p;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hiya/stingray/manager/e2;->c(Ljava/lang/Long;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/e2;->c:Lcom/hiya/stingray/manager/e1;

    const-string v1, "daily_job_run"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/e1;->b(Ljava/lang/String;)V

    return-void
.end method
