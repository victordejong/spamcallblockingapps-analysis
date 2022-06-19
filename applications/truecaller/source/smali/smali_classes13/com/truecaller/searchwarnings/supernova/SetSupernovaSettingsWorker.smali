.class public final Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0013\u0010\u0003\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u0002H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0004R\u001d\u0010\u000b\u001a\u00020\u00068B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u000f\u001a\u00020\u000c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroidx/work/ListenableWorker$a;",
        "n",
        "(Ls1/w/d;)Ljava/lang/Object;",
        "o",
        "",
        "d",
        "Ls1/g;",
        "getOptIn",
        "()Z",
        "optIn",
        "Le/a/x4/k/c;",
        "e",
        "Le/a/x4/k/c;",
        "supernovaSettingRepository",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/x4/k/c;)V",
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
.field public final d:Ls1/g;

.field public final e:Le/a/x4/k/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/x4/k/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supernovaSettingRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p3, p0, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;->e:Le/a/x4/k/c;

    .line 2
    new-instance p1, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$a;

    invoke-direct {p1, p0}, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$a;-><init>(Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;->d:Ls1/g;

    return-void
.end method


# virtual methods
.method public n(Ls1/w/d;)Ljava/lang/Object;
    .locals 0
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

    .line 1
    invoke-virtual {p0, p1}, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v0, p1, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$b;

    iget v1, v0, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$b;

    invoke-direct {v0, p0, p1}, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$b;-><init>(Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

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
    iget-object p1, p0, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;->e:Le/a/x4/k/c;

    .line 5
    iget-object v2, p0, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;->d:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 6
    iput v3, v0, Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$b;->e:I

    check-cast p1, Le/a/x4/k/f;

    .line 7
    iget-object v3, p1, Le/a/x4/k/f;->b:Ls1/w/f;

    new-instance v4, Le/a/x4/k/e;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v2, v5}, Le/a/x4/k/e;-><init>(Le/a/x4/k/f;ZLs1/w/d;)V

    invoke-static {v3, v4, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_1
    check-cast p1, Le/a/x4/k/b;

    .line 9
    instance-of v0, p1, Le/a/x4/k/b$c;

    if-eqz v0, :cond_4

    .line 10
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v0, "Result.success()"

    .line 11
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_4
    instance-of v0, p1, Le/a/x4/k/b$b;

    const-string v1, "Result.retry()"

    if-eqz v0, :cond_5

    .line 13
    new-instance p1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    .line 14
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_5
    sget-object v0, Le/a/x4/k/b$a;->a:Le/a/x4/k/b$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    new-instance p1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    .line 17
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1

    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
