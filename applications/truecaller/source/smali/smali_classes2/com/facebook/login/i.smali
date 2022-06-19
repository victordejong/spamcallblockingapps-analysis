.class public final Lcom/facebook/login/i;
.super Ln3/d/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/i$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/login/CustomTabPrefetchHelper;",
        "Landroidx/browser/customtabs/CustomTabsServiceConnection;",
        "()V",
        "onCustomTabsServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "newClient",
        "Landroidx/browser/customtabs/CustomTabsClient;",
        "onServiceDisconnected",
        "componentName",
        "Companion",
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


# static fields
.field public static final a:Lcom/facebook/login/i$a;

.field public static b:Ln3/d/a/e;

.field public static c:Ln3/d/a/h;

.field public static final d:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/login/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/login/i$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/facebook/login/i;->a:Lcom/facebook/login/i$a;

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/facebook/login/i;->d:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/d/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Ln3/d/a/e;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newClient"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p2, v0, v1}, Ln3/d/a/e;->c(J)Z

    .line 2
    sput-object p2, Lcom/facebook/login/i;->b:Ln3/d/a/e;

    .line 3
    sget-object p1, Lcom/facebook/login/i;->d:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5
    sget-object p2, Lcom/facebook/login/i;->c:Ln3/d/a/h;

    if-nez p2, :cond_1

    .line 6
    sget-object p2, Lcom/facebook/login/i;->b:Ln3/d/a/e;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p2, v0}, Ln3/d/a/e;->b(Ln3/d/a/b;)Ln3/d/a/h;

    move-result-object p2

    .line 8
    sput-object p2, Lcom/facebook/login/i;->c:Ln3/d/a/h;

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "componentName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
