.class public final Lcom/facebook/login/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0008\u0010\u000e\u001a\u00020\u000bH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/login/CustomTabPrefetchHelper$Companion;",
        "",
        "()V",
        "client",
        "Landroidx/browser/customtabs/CustomTabsClient;",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "session",
        "Landroidx/browser/customtabs/CustomTabsSession;",
        "getPreparedSessionOnce",
        "mayLaunchUrl",
        "",
        "url",
        "Landroid/net/Uri;",
        "prepareSession",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 5

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/i$a;->b()V

    .line 2
    sget-object v0, Lcom/facebook/login/i;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    sget-object v0, Lcom/facebook/login/i;->c:Ln3/d/a/h;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v3, v0, Ln3/d/a/h;->d:Landroid/app/PendingIntent;

    if-eqz v3, :cond_1

    const-string v4, "android.support.customtabs.extra.SESSION_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    :cond_1
    :try_start_0
    iget-object v3, v0, Ln3/d/a/h;->a:Lm3/a/a/b;

    iget-object v0, v0, Ln3/d/a/h;->b:Lm3/a/a/a;

    invoke-interface {v3, v0, p1, v2, v1}, Lm3/a/a/b;->J(Lm3/a/a/a;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :goto_0
    sget-object p1, Lcom/facebook/login/i;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    sget-object v0, Lcom/facebook/login/i;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    sget-object v1, Lcom/facebook/login/i;->c:Ln3/d/a/h;

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lcom/facebook/login/i;->b:Ln3/d/a/e;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lcom/facebook/login/i;->a:Lcom/facebook/login/i$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ln3/d/a/e;->b(Ln3/d/a/b;)Ln3/d/a/h;

    move-result-object v1

    .line 6
    sput-object v1, Lcom/facebook/login/i;->c:Ln3/d/a/h;

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
