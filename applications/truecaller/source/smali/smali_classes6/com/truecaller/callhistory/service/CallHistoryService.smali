.class public final Lcom/truecaller/callhistory/service/CallHistoryService;
.super Le/a/r2/i;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/truecaller/callhistory/service/CallHistoryService;",
        "Le/a/r2/i;",
        "Ls1/s;",
        "onCreate",
        "()V",
        "onDestroy",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-string v2, "call-history"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v1, v3}, Le/a/r2/i;-><init>(Ljava/lang/String;JZ)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 8

    .line 1
    invoke-super {p0}, Le/a/r2/i;->onCreate()V

    .line 2
    sget-object v0, Ln3/k/e/h;->b:Ljava/lang/reflect/Method;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-string v2, "Call Log: Service thread running"

    const/16 v3, 0x3e8

    if-lt v0, v1, :cond_0

    .line 4
    invoke-static {v2, v3}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    sget-object v0, Ln3/k/e/h;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-wide v6, Ln3/k/e/h;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 8

    .line 1
    sget-object v0, Ln3/k/e/h;->b:Ljava/lang/reflect/Method;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-string v2, "Call Log: Service thread running"

    const/16 v3, 0x3e8

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {v2, v3}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    sget-object v0, Ln3/k/e/h;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-wide v6, Ln3/k/e/h;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :goto_0
    invoke-super {p0}, Le/a/r2/i;->onDestroy()V

    return-void
.end method
