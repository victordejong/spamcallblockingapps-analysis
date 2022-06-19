.class public final Lcom/facebook/login/v$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J \u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0007J\u0008\u0010\u001c\u001a\u00020\u000cH\u0017J2\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00042\u0008\u0010 \u001a\u0004\u0018\u00010\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0002J\u0012\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006)"
    }
    d2 = {
        "Lcom/facebook/login/LoginManager$Companion;",
        "",
        "()V",
        "EXPRESS_LOGIN_ALLOWED",
        "",
        "MANAGE_PERMISSION_PREFIX",
        "OTHER_PUBLISH_PERMISSIONS",
        "",
        "PREFERENCE_LOGIN_MANAGER",
        "PUBLISH_PERMISSION_PREFIX",
        "TAG",
        "instance",
        "Lcom/facebook/login/LoginManager;",
        "otherPublishPermissions",
        "getOtherPublishPermissions",
        "()Ljava/util/Set;",
        "computeLoginResult",
        "Lcom/facebook/login/LoginResult;",
        "request",
        "Lcom/facebook/login/LoginClient$Request;",
        "newToken",
        "Lcom/facebook/AccessToken;",
        "newIdToken",
        "Lcom/facebook/AuthenticationToken;",
        "getExtraDataFromIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "getInstance",
        "handleLoginStatusError",
        "",
        "errorType",
        "errorDescription",
        "loggerRef",
        "logger",
        "Lcom/facebook/login/LoginLogger;",
        "responseCallback",
        "Lcom/facebook/LoginStatusCallback;",
        "isPublishPermission",
        "",
        "permission",
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
.method public a()Lcom/facebook/login/v;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/login/v;->e:Lcom/facebook/login/v;

    if-nez v0, :cond_0

    .line 2
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/login/v;->b:Lcom/facebook/login/v$b;

    new-instance v0, Lcom/facebook/login/v;

    invoke-direct {v0}, Lcom/facebook/login/v;-><init>()V

    .line 3
    sput-object v0, Lcom/facebook/login/v;->e:Lcom/facebook/login/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/login/v;->e:Lcom/facebook/login/v;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "instance"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "publish"

    const/4 v2, 0x2

    .line 1
    invoke-static {p1, v1, v0, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "manage"

    .line 2
    invoke-static {p1, v1, v0, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/facebook/login/v;->c:Ljava/util/Set;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
