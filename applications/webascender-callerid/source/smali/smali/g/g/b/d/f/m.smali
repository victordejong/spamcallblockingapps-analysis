.class public final Lg/g/b/d/f/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/d/f/m;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/d/f/m;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Landroid/app/job/JobScheduler;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/d/f/m;->a:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.job.JobScheduler"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Lcom/hiya/client/repost/db/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/client/repost/db/a;

    iget-object v1, p0, Lg/g/b/d/f/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hiya/client/repost/db/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final d(Lcom/hiya/client/repost/db/a;)Lcom/hiya/client/repost/db/b;
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/repost/db/b;

    invoke-direct {v0, p1}, Lcom/hiya/client/repost/db/b;-><init>(Lcom/hiya/client/repost/db/a;)V

    return-object v0
.end method
