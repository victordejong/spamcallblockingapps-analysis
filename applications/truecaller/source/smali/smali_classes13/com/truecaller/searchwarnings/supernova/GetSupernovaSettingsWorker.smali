.class public final Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker;
.super Landroidx/work/CoroutineWorker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B-\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0013\u0010\u0003\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0008\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroidx/work/ListenableWorker$a;",
        "n",
        "(Ls1/w/d;)Ljava/lang/Object;",
        "Le/a/x4/k/c;",
        "d",
        "Le/a/x4/k/c;",
        "supernovaSettingRepository",
        "Le/a/b0/o/a;",
        "e",
        "Le/a/b0/o/a;",
        "coreSettings",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/x4/k/c;Le/a/b0/o/a;)V",
        "search-warnings_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final d:Le/a/x4/k/c;

.field public final e:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/x4/k/c;Le/a/b0/o/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supernovaSettingRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p3, p0, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker;->d:Le/a/x4/k/c;

    iput-object p4, p0, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker;->e:Le/a/b0/o/a;

    return-void
.end method


# virtual methods
.method public n(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Landroidx/work/ListenableWorker$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker$a;

    iget v1, v0, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker$a;

    invoke-direct {v0, p0, p1}, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker$a;-><init>(Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker$a;->g:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker;->d:Le/a/x4/k/c;

    iput-object p0, v0, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker$a;->g:Ljava/lang/Object;

    iput v3, v0, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker$a;->e:I

    check-cast p1, Le/a/x4/k/f;

    .line 5
    iget-object v2, p1, Le/a/x4/k/f;->b:Ls1/w/f;

    new-instance v4, Le/a/x4/k/d;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Le/a/x4/k/d;-><init>(Le/a/x4/k/f;Ls1/w/d;)V

    invoke-static {v2, v4, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 6
    :goto_1
    check-cast p1, Le/a/x4/k/a;

    .line 7
    instance-of v1, p1, Le/a/x4/k/a$c;

    if-eqz v1, :cond_5

    .line 8
    check-cast p1, Le/a/x4/k/a$c;

    .line 9
    iget-object p1, p1, Le/a/x4/k/a$c;->a:Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;

    .line 10
    iget-object v0, v0, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker;->e:Le/a/b0/o/a;

    sget-object v1, Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;->OPTED_IN:Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    const-string p1, "supernovaOptIn"

    invoke-interface {v0, p1, v3}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v0, "Result.success()"

    .line 12
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 13
    :cond_5
    instance-of v0, p1, Le/a/x4/k/a$b;

    const-string v1, "Result.retry()"

    if-eqz v0, :cond_6

    .line 14
    new-instance p1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    .line 15
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 16
    :cond_6
    sget-object v0, Le/a/x4/k/a$a;->a:Le/a/x4/k/a$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    new-instance p1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    .line 18
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object p1

    :cond_7
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
