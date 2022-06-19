.class public Lcom/facebook/login/WebViewLoginMethodHandler;
.super Lcom/facebook/login/WebLoginMethodHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/WebViewLoginMethodHandler$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0017\u0018\u0000 ,2\u00020\u0001:\u0002+,B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\"\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0010%\u001a\u0004\u0018\u00010&J\u0010\u0010\'\u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"H\u0016J\u0018\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u001dH\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000bR\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006-"
    }
    d2 = {
        "Lcom/facebook/login/WebViewLoginMethodHandler;",
        "Lcom/facebook/login/WebLoginMethodHandler;",
        "loginClient",
        "Lcom/facebook/login/LoginClient;",
        "(Lcom/facebook/login/LoginClient;)V",
        "source",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "e2e",
        "",
        "getE2e",
        "()Ljava/lang/String;",
        "setE2e",
        "(Ljava/lang/String;)V",
        "loginDialog",
        "Lcom/facebook/internal/WebDialog;",
        "getLoginDialog",
        "()Lcom/facebook/internal/WebDialog;",
        "setLoginDialog",
        "(Lcom/facebook/internal/WebDialog;)V",
        "nameForLogging",
        "getNameForLogging",
        "tokenSource",
        "Lcom/facebook/AccessTokenSource;",
        "getTokenSource",
        "()Lcom/facebook/AccessTokenSource;",
        "cancel",
        "",
        "describeContents",
        "",
        "needsInternetPermission",
        "",
        "onWebDialogComplete",
        "request",
        "Lcom/facebook/login/LoginClient$Request;",
        "values",
        "Landroid/os/Bundle;",
        "error",
        "Lcom/facebook/FacebookException;",
        "tryAuthorize",
        "writeToParcel",
        "dest",
        "flags",
        "AuthDialogBuilder",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/WebViewLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:Lcom/facebook/internal/s0;

.field public e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Le/j/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/login/WebViewLoginMethodHandler$b;

    invoke-direct {v0}, Lcom/facebook/login/WebViewLoginMethodHandler$b;-><init>()V

    sput-object v0, Lcom/facebook/login/WebViewLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    const-string v0, "web_view"

    .line 5
    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->f:Ljava/lang/String;

    .line 6
    sget-object v0, Le/j/w;->f:Le/j/w;

    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->g:Le/j/w;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 1

    const-string v0, "loginClient"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    const-string p1, "web_view"

    .line 2
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->f:Ljava/lang/String;

    .line 3
    sget-object p1, Le/j/w;->f:Le/j/w;

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->g:Le/j/w;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Lcom/facebook/internal/s0;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/internal/s0;->cancel()V

    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Lcom/facebook/internal/s0;

    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->f:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public r(Lcom/facebook/login/LoginClient$Request;)I
    .locals 7

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;->s(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/facebook/login/WebViewLoginMethodHandler$c;

    invoke-direct {v1, p0, p1}, Lcom/facebook/login/WebViewLoginMethodHandler$c;-><init>(Lcom/facebook/login/WebViewLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "init"

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "e2e.toString()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object v2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e:Ljava/lang/String;

    const-string v3, "e2e"

    .line 7
    invoke-virtual {p0, v3, v2}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->e()Ln3/r/a/l;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_0
    invoke-static {v2}, Lcom/facebook/internal/q0;->z(Landroid/content/Context;)Z

    move-result v4

    .line 10
    new-instance v5, Lcom/facebook/login/WebViewLoginMethodHandler$a;

    .line 11
    iget-object v6, p1, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    .line 12
    invoke-direct {v5, p0, v2, v6, v0}, Lcom/facebook/login/WebViewLoginMethodHandler$a;-><init>(Lcom/facebook/login/WebViewLoginMethodHandler;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e:Ljava/lang/String;

    const-string v6, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "<set-?>"

    .line 15
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object v0, v5, Lcom/facebook/login/WebViewLoginMethodHandler$a;->k:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v0, "fbconnect://chrome_os_success"

    goto :goto_0

    :cond_1
    const-string v0, "fbconnect://success"

    .line 17
    :goto_0
    iput-object v0, v5, Lcom/facebook/login/WebViewLoginMethodHandler$a;->f:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->h:Ljava/lang/String;

    const-string v4, "authType"

    .line 19
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object v0, v5, Lcom/facebook/login/WebViewLoginMethodHandler$a;->l:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->a:Lcom/facebook/login/q;

    const-string v3, "loginBehavior"

    .line 23
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object v0, v5, Lcom/facebook/login/WebViewLoginMethodHandler$a;->g:Lcom/facebook/login/q;

    .line 25
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->l:Lcom/facebook/login/x;

    const-string v3, "targetApp"

    .line 26
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object v0, v5, Lcom/facebook/login/WebViewLoginMethodHandler$a;->h:Lcom/facebook/login/x;

    .line 28
    iget-boolean v0, p1, Lcom/facebook/login/LoginClient$Request;->m:Z

    .line 29
    iput-boolean v0, v5, Lcom/facebook/login/WebViewLoginMethodHandler$a;->i:Z

    .line 30
    iget-boolean p1, p1, Lcom/facebook/login/LoginClient$Request;->n:Z

    .line 31
    iput-boolean p1, v5, Lcom/facebook/login/WebViewLoginMethodHandler$a;->j:Z

    .line 32
    iput-object v1, v5, Lcom/facebook/internal/s0$a;->d:Lcom/facebook/internal/s0$d;

    .line 33
    invoke-virtual {v5}, Lcom/facebook/login/WebViewLoginMethodHandler$a;->a()Lcom/facebook/internal/s0;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Lcom/facebook/internal/s0;

    .line 34
    new-instance p1, Lcom/facebook/internal/w;

    invoke-direct {p1}, Lcom/facebook/internal/w;-><init>()V

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 36
    iget-object v1, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->d:Lcom/facebook/internal/s0;

    .line 37
    iput-object v1, p1, Lcom/facebook/internal/w;->a:Landroid/app/Dialog;

    .line 38
    invoke-virtual {v2}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FacebookDialogFragment"

    invoke-virtual {p1, v1, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v0
.end method

.method public t()Le/j/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->g:Le/j/w;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/facebook/login/WebViewLoginMethodHandler;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
