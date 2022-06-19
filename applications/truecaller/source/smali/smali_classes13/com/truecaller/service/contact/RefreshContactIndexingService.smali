.class public final Lcom/truecaller/service/contact/RefreshContactIndexingService;
.super Ln3/k/a/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/service/contact/RefreshContactIndexingService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\tB\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/truecaller/service/contact/RefreshContactIndexingService;",
        "Ln3/k/a/a0;",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onHandleWork",
        "(Landroid/content/Intent;)V",
        "<init>",
        "()V",
        "a",
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
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/k/a/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleWork(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    const-string v1, "TrueApp.getApp()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->W()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v2, 0x2d4224f1

    const-string v3, "contentResolver"

    if-eq v1, v2, :cond_3

    const v2, 0x6fbbb585

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "RefreshContactIndexingService.action.sync"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Le/a/y4/f/b;

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/truecaller/service/contact/RefreshContactIndexingService$a;

    invoke-direct {v2, p0}, Lcom/truecaller/service/contact/RefreshContactIndexingService$a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Le/a/y4/f/b;-><init>(Landroid/content/ContentResolver;Lcom/truecaller/service/contact/RefreshContactIndexingService$a;)V

    const-string v1, "RefreshContactIndexingService.extra.rebuild_all"

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 6
    invoke-virtual {v0, p1}, Le/a/y4/f/b;->b(Z)V

    goto :goto_0

    :cond_3
    const-string v1, "RefreshContactIndexingService.action.rebuild"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "RefreshContactIndexingService.extra.scopes"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    new-instance v0, Le/a/y4/f/b;

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/truecaller/service/contact/RefreshContactIndexingService$a;

    invoke-direct {v2, p0}, Lcom/truecaller/service/contact/RefreshContactIndexingService$a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Le/a/y4/f/b;-><init>(Landroid/content/ContentResolver;Lcom/truecaller/service/contact/RefreshContactIndexingService$a;)V

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Le/a/y4/f/b;->a([J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_4
    :goto_0
    return-void
.end method
