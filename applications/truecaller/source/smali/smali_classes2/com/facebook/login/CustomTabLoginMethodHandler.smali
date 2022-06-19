.class public final Lcom/facebook/login/CustomTabLoginMethodHandler;
.super Lcom/facebook/login/WebLoginMethodHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 02\u00020\u0001:\u00010B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\tH\u0014J\n\u0010\u001a\u001a\u0004\u0018\u00010\tH\u0014J\"\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u00182\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\t2\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010&\u001a\u00020\"2\u0006\u0010\'\u001a\u00020(H\u0016J\u0010\u0010)\u001a\u00020\u00182\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020,H\u0002J\u0018\u0010-\u001a\u00020\"2\u0006\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u0018H\u0016R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000bR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000bR\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/facebook/login/CustomTabLoginMethodHandler;",
        "Lcom/facebook/login/WebLoginMethodHandler;",
        "loginClient",
        "Lcom/facebook/login/LoginClient;",
        "(Lcom/facebook/login/LoginClient;)V",
        "source",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "chromePackage",
        "",
        "getChromePackage",
        "()Ljava/lang/String;",
        "currentPackage",
        "developerDefinedRedirectURI",
        "getDeveloperDefinedRedirectURI",
        "expectedChallenge",
        "nameForLogging",
        "getNameForLogging",
        "tokenSource",
        "Lcom/facebook/AccessTokenSource;",
        "getTokenSource",
        "()Lcom/facebook/AccessTokenSource;",
        "validRedirectURI",
        "describeContents",
        "",
        "getRedirectUrl",
        "getSSODevice",
        "onActivityResult",
        "",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCustomTabComplete",
        "",
        "url",
        "request",
        "Lcom/facebook/login/LoginClient$Request;",
        "putChallengeParam",
        "param",
        "Lorg/json/JSONObject;",
        "tryAuthorize",
        "validateChallengeParam",
        "values",
        "Landroid/os/Bundle;",
        "writeToParcel",
        "dest",
        "flags",
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
            "Lcom/facebook/login/CustomTabLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field

.field public static i:Z


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Le/j/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/login/CustomTabLoginMethodHandler$a;

    invoke-direct {v0}, Lcom/facebook/login/CustomTabLoginMethodHandler$a;-><init>()V

    sput-object v0, Lcom/facebook/login/CustomTabLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    const-string v0, "custom_tab"

    .line 11
    iput-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->g:Ljava/lang/String;

    .line 12
    sget-object v0, Le/j/w;->g:Le/j/w;

    iput-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->h:Le/j/w;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->e:Ljava/lang/String;

    .line 14
    invoke-super {p0}, Lcom/facebook/login/LoginMethodHandler;->i()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/facebook/internal/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 2

    const-string v0, "loginClient"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    const-string p1, "custom_tab"

    .line 2
    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->g:Ljava/lang/String;

    .line 3
    sget-object p1, Le/j/w;->g:Le/j/w;

    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->h:Le/j/w;

    .line 4
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 5
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BigInteger(length * 5, r).toString(32)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->e:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    sput-boolean p1, Lcom/facebook/login/CustomTabLoginMethodHandler;->i:Z

    .line 8
    invoke-super {p0}, Lcom/facebook/login/LoginMethodHandler;->i()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/facebook/internal/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->f:Ljava/lang/String;

    return-object v0
.end method

.method public m(IILandroid/content/Intent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    sget-object v1, Lcom/facebook/CustomTabMainActivity;->j:Ljava/lang/String;

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p2, v2, :cond_11

    if-eqz p3, :cond_3

    .line 4
    sget-object p2, Lcom/facebook/CustomTabMainActivity;->g:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, v3

    :goto_0
    if-eqz p2, :cond_10

    const/4 p3, 0x2

    const-string v4, "fbconnect://cct."

    .line 5
    invoke-static {p2, v4, v0, p3}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    if-nez v4, :cond_4

    .line 6
    invoke-super {p0}, Lcom/facebook/login/LoginMethodHandler;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4, v0, p3}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 7
    :cond_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/facebook/internal/q0;->J(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    .line 9
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/internal/q0;->J(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :try_start_0
    const-string p2, "state"

    .line 10
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "7_challenge"

    .line 12
    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    iget-object v4, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->e:Ljava/lang/String;

    invoke-static {p2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    if-nez v0, :cond_6

    .line 14
    new-instance p2, Le/j/c0;

    const-string p3, "Invalid state parameter"

    invoke-direct {p2, p3}, Le/j/c0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3, p2}, Lcom/facebook/login/WebLoginMethodHandler;->v(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Le/j/c0;)V

    goto/16 :goto_4

    :cond_6
    const-string p2, "error"

    .line 15
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    const-string p2, "error_type"

    .line 16
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_7
    const-string v0, "error_msg"

    .line 17
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "error_message"

    .line 18
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_9

    const-string v0, "error_description"

    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    const-string v4, "error_code"

    .line 20
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_2

    .line 21
    :cond_a
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    :goto_2
    move v4, v2

    .line 22
    :goto_3
    invoke-static {p2}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 23
    invoke-static {v0}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-ne v4, v2, :cond_c

    const-string p2, "access_token"

    .line 24
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 25
    invoke-virtual {p0, p1, p3, v3}, Lcom/facebook/login/WebLoginMethodHandler;->v(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Le/j/c0;)V

    goto :goto_4

    .line 26
    :cond_b
    sget-object p2, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->e()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/facebook/login/a;

    invoke-direct {v0, p0, p1, p3}, Lcom/facebook/login/a;-><init>(Lcom/facebook/login/CustomTabLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_c
    if-eqz p2, :cond_e

    const-string p3, "access_denied"

    .line 27
    invoke-static {p2, p3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d

    const-string p3, "OAuthAccessDeniedException"

    invoke-static {p2, p3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 28
    :cond_d
    new-instance p2, Le/j/e0;

    invoke-direct {p2}, Le/j/e0;-><init>()V

    invoke-virtual {p0, p1, v3, p2}, Lcom/facebook/login/WebLoginMethodHandler;->v(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Le/j/c0;)V

    goto :goto_4

    :cond_e
    const/16 p3, 0x1069

    if-ne v4, p3, :cond_f

    .line 29
    new-instance p2, Le/j/e0;

    invoke-direct {p2}, Le/j/e0;-><init>()V

    invoke-virtual {p0, p1, v3, p2}, Lcom/facebook/login/WebLoginMethodHandler;->v(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Le/j/c0;)V

    goto :goto_4

    .line 30
    :cond_f
    new-instance p3, Lcom/facebook/FacebookRequestError;

    invoke-direct {p3, v4, p2, v0}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance p2, Le/j/h0;

    invoke-direct {p2, p3, v0}, Le/j/h0;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3, p2}, Lcom/facebook/login/WebLoginMethodHandler;->v(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Le/j/c0;)V

    :cond_10
    :goto_4
    return v1

    .line 32
    :cond_11
    new-instance p2, Le/j/e0;

    invoke-direct {p2}, Le/j/e0;-><init>()V

    invoke-virtual {p0, p1, v3, p2}, Lcom/facebook/login/WebLoginMethodHandler;->v(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Le/j/c0;)V

    return v0
.end method

.method public o(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "param"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->e:Ljava/lang/String;

    const-string v1, "7_challenge"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public r(Lcom/facebook/login/LoginClient$Request;)I
    .locals 10

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    return v4

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;->s(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "parameters"

    .line 5
    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->f:Ljava/lang/String;

    const-string v5, "redirect_uri"

    .line 7
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    const-string v5, "app_id"

    .line 10
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    const-string v5, "client_id"

    .line 12
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "init"

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "e2e.toString()"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "e2e"

    .line 16
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->b()Z

    move-result v0

    const-string v5, "response_type"

    if-eqz v0, :cond_3

    const-string v0, "token,signed_request,graph_domain,granted_scopes"

    .line 18
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    const-string v6, "openid"

    .line 20
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->o:Ljava/lang/String;

    const-string v6, "nonce"

    .line 22
    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "id_token,token,signed_request,graph_domain"

    .line 23
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :goto_2
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->q:Ljava/lang/String;

    const-string v5, "code_challenge"

    .line 25
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->r:Lcom/facebook/login/h;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    .line 27
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v5, "code_challenge_method"

    .line 28
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "true"

    const-string v5, "return_scopes"

    .line 29
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v5, p1, Lcom/facebook/login/LoginClient$Request;->h:Ljava/lang/String;

    const-string v6, "auth_type"

    .line 31
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v5, p1, Lcom/facebook/login/LoginClient$Request;->a:Lcom/facebook/login/q;

    .line 33
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "login_behavior"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v5, Le/j/f0;->a:Le/j/f0;

    sget-object v5, Le/j/f0;->a:Le/j/f0;

    const-string v5, "android-"

    const-string v6, "13.0.0"

    invoke-static {v5, v6}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sdk"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "sso"

    const-string v6, "chrome_custom_tab"

    .line 35
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-boolean v5, Le/j/f0;->n:Z

    const-string v6, "0"

    const-string v7, "1"

    if-eqz v5, :cond_6

    move-object v5, v7

    goto :goto_4

    :cond_6
    move-object v5, v6

    :goto_4
    const-string v8, "cct_prefetching"

    .line 37
    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-boolean v5, p1, Lcom/facebook/login/LoginClient$Request;->m:Z

    if-eqz v5, :cond_7

    .line 39
    iget-object v5, p1, Lcom/facebook/login/LoginClient$Request;->l:Lcom/facebook/login/x;

    .line 40
    iget-object v5, v5, Lcom/facebook/login/x;->a:Ljava/lang/String;

    const-string v8, "fx_app"

    .line 41
    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_7
    iget-boolean v5, p1, Lcom/facebook/login/LoginClient$Request;->n:Z

    if-eqz v5, :cond_8

    const-string v5, "skip_dedupe"

    .line 43
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_8
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->j:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v5, "messenger_page_id"

    .line 45
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-boolean v0, p1, Lcom/facebook/login/LoginClient$Request;->k:Z

    if-eqz v0, :cond_9

    move-object v6, v7

    :cond_9
    const-string v0, "reset_messenger_state"

    .line 47
    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_a
    sget-boolean v0, Lcom/facebook/login/CustomTabLoginMethodHandler;->i:Z

    if-eqz v0, :cond_b

    const-string v0, "cct_over_app_switch"

    .line 49
    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_b
    sget-boolean v0, Le/j/f0;->n:Z

    const-string v5, "oauth"

    if-eqz v0, :cond_e

    .line 51
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->b()Z

    move-result v0

    const-string v6, "/dialog/"

    const-string v7, "action"

    if-eqz v0, :cond_d

    .line 52
    sget-object v0, Lcom/facebook/login/i;->a:Lcom/facebook/login/i$a;

    .line 53
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {v5, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 55
    sget-object v6, Lcom/facebook/internal/o0;->a:Lcom/facebook/internal/o0;

    invoke-static {}, Lcom/facebook/internal/o0;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, "oauth/authorize"

    invoke-static {v6, v7, v2}, Lcom/facebook/internal/q0;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_5

    .line 56
    :cond_c
    sget-object v7, Lcom/facebook/internal/o0;->a:Lcom/facebook/internal/o0;

    invoke-static {}, Lcom/facebook/internal/o0;->c()Ljava/lang/String;

    move-result-object v7

    .line 57
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Le/j/f0;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-static {v7, v6, v2}, Lcom/facebook/internal/q0;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v6

    .line 59
    :goto_5
    invoke-virtual {v0, v6}, Lcom/facebook/login/i$a;->a(Landroid/net/Uri;)V

    goto :goto_6

    .line 60
    :cond_d
    sget-object v0, Lcom/facebook/login/i;->a:Lcom/facebook/login/i$a;

    .line 61
    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v7, Lcom/facebook/internal/o0;->a:Lcom/facebook/internal/o0;

    invoke-static {}, Lcom/facebook/internal/o0;->a()Ljava/lang/String;

    move-result-object v7

    .line 63
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Le/j/f0;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-static {v7, v6, v2}, Lcom/facebook/internal/q0;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v6

    .line 65
    invoke-virtual {v0, v6}, Lcom/facebook/login/i$a;->a(Landroid/net/Uri;)V

    .line 66
    :cond_e
    :goto_6
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->e()Ln3/r/a/l;

    move-result-object v0

    if-nez v0, :cond_f

    return v4

    .line 67
    :cond_f
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/facebook/CustomTabMainActivity;

    invoke-direct {v4, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    sget-object v0, Lcom/facebook/CustomTabMainActivity;->d:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    sget-object v0, Lcom/facebook/CustomTabMainActivity;->e:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 70
    sget-object v0, Lcom/facebook/CustomTabMainActivity;->f:Ljava/lang/String;

    .line 71
    iget-object v2, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->d:Ljava/lang/String;

    if-eqz v2, :cond_10

    goto :goto_7

    .line 72
    :cond_10
    invoke-static {}, Lcom/facebook/internal/v;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->d:Ljava/lang/String;

    .line 73
    :goto_7
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    sget-object v0, Lcom/facebook/CustomTabMainActivity;->h:Ljava/lang/String;

    .line 75
    iget-object p1, p1, Lcom/facebook/login/LoginClient$Request;->l:Lcom/facebook/login/x;

    .line 76
    iget-object p1, p1, Lcom/facebook/login/x;->a:Ljava/lang/String;

    .line 77
    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object p1, v1, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_11

    goto :goto_8

    .line 79
    :cond_11
    invoke-virtual {p1, v4, v3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_8
    return v3
.end method

.method public t()Le/j/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->h:Le/j/w;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
