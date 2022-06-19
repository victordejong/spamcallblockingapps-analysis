.class public abstract Lcom/facebook/login/NativeAppLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\'\u0018\u00002\u00020\u0001B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u001a\u0010\u0015\u001a\u00020\r2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0014J0\u0010\u001a\u001a\u00020\r2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0011H\u0014J\u0018\u0010\u001e\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J\"\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0018\u0010$\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010%\u001a\u00020\"2\u0006\u0010\u0016\u001a\u00020\u0017H&J\u001a\u0010&\u001a\u00020 2\u0008\u0010\'\u001a\u0004\u0018\u00010\u00192\u0006\u0010!\u001a\u00020\"H\u0014R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006("
    }
    d2 = {
        "Lcom/facebook/login/NativeAppLoginMethodHandler;",
        "Lcom/facebook/login/LoginMethodHandler;",
        "loginClient",
        "Lcom/facebook/login/LoginClient;",
        "(Lcom/facebook/login/LoginClient;)V",
        "source",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "tokenSource",
        "Lcom/facebook/AccessTokenSource;",
        "getTokenSource",
        "()Lcom/facebook/AccessTokenSource;",
        "completeLogin",
        "",
        "outcome",
        "Lcom/facebook/login/LoginClient$Result;",
        "getError",
        "",
        "extras",
        "Landroid/os/Bundle;",
        "getErrorMessage",
        "handleResultCancel",
        "request",
        "Lcom/facebook/login/LoginClient$Request;",
        "data",
        "Landroid/content/Intent;",
        "handleResultError",
        "error",
        "errorMessage",
        "errorCode",
        "handleResultOk",
        "onActivityResult",
        "",
        "requestCode",
        "",
        "resultCode",
        "processSuccessResponse",
        "tryAuthorize",
        "tryIntent",
        "intent",
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


# instance fields
.field public final c:Le/j/w;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 4
    sget-object p1, Le/j/w;->c:Le/j/w;

    iput-object p1, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->c:Le/j/w;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 1

    const-string v0, "loginClient"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 2
    sget-object p1, Le/j/w;->c:Le/j/w;

    iput-object p1, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->c:Le/j/w;

    return-void
.end method


# virtual methods
.method public m(IILandroid/content/Intent;)Z
    .locals 9

    .line 1
    sget-object v2, Lcom/facebook/login/LoginClient$Result$a;->c:Lcom/facebook/login/LoginClient$Result$a;

    sget-object v5, Lcom/facebook/login/LoginClient$Result$a;->d:Lcom/facebook/login/LoginClient$Result$a;

    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object p1

    .line 2
    iget-object v4, p1, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    const/4 p1, 0x1

    if-nez p3, :cond_0

    .line 3
    new-instance p2, Lcom/facebook/login/LoginClient$Result;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string p3, "Operation canceled"

    move-object v0, p2

    move-object v1, v4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->s(Lcom/facebook/login/LoginClient$Result;)V

    goto/16 :goto_3

    :cond_0
    const-string v0, "error_code"

    const-string v1, ": "

    const/4 v3, 0x0

    if-nez p2, :cond_6

    const-string p2, "data"

    .line 5
    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 7
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->t(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    move-object v8, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 9
    :goto_1
    sget-object v0, Lcom/facebook/internal/o0;->a:Lcom/facebook/internal/o0;

    sget-object v0, Lcom/facebook/internal/o0;->a:Lcom/facebook/internal/o0;

    const-string v0, "CONNECTION_FAILURE"

    invoke-static {v0, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->v(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_3

    .line 12
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_4
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 15
    new-instance p2, Lcom/facebook/login/LoginClient$Result;

    const/4 v6, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->s(Lcom/facebook/login/LoginClient$Result;)V

    goto/16 :goto_3

    .line 17
    :cond_5
    new-instance p2, Lcom/facebook/login/LoginClient$Result;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, v4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->s(Lcom/facebook/login/LoginClient$Result;)V

    goto/16 :goto_3

    :cond_6
    const/4 v2, -0x1

    if-eq p2, v2, :cond_7

    const/4 v8, 0x0

    .line 19
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "Unexpected resultCode from authorization."

    .line 20
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 22
    new-instance p2, Lcom/facebook/login/LoginClient$Result;

    const/4 v6, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->s(Lcom/facebook/login/LoginClient$Result;)V

    goto/16 :goto_3

    .line 24
    :cond_7
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 v8, 0x0

    .line 25
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "Unexpected null from returned authorization data."

    .line 26
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 28
    new-instance p2, Lcom/facebook/login/LoginClient$Result;

    const/4 v6, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->s(Lcom/facebook/login/LoginClient$Result;)V

    return p1

    .line 30
    :cond_8
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->t(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    .line 31
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    :goto_2
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->v(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "e2e"

    .line 33
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 35
    invoke-virtual {p0, v1}, Lcom/facebook/login/LoginMethodHandler;->k(Ljava/lang/String;)V

    :cond_a
    if-nez p3, :cond_c

    if-nez v3, :cond_c

    if-nez v0, :cond_c

    if-eqz v4, :cond_c

    const-string p3, "code"

    .line 36
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_b

    .line 37
    sget-object p3, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->e()Ljava/util/concurrent/Executor;

    move-result-object p3

    new-instance v0, Lcom/facebook/login/g;

    invoke-direct {v0, p0, v4, p2}, Lcom/facebook/login/g;-><init>(Lcom/facebook/login/NativeAppLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 38
    :cond_b
    invoke-virtual {p0, v4, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->y(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    goto :goto_3

    .line 39
    :cond_c
    invoke-virtual {p0, v4, p3, v0, v3}, Lcom/facebook/login/NativeAppLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return p1
.end method

.method public final s(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginClient;->d(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->i()V

    :goto_0
    return-void
.end method

.method public t(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "error"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "error_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public v(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "error_message"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "error_description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public w()Le/j/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/NativeAppLoginMethodHandler;->c:Le/j/w;

    return-object v0
.end method

.method public x(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "logged_out"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 2
    sput-boolean p1, Lcom/facebook/login/CustomTabLoginMethodHandler;->i:Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/facebook/login/NativeAppLoginMethodHandler;->s(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/facebook/internal/o0;->a:Lcom/facebook/internal/o0;

    const-string v1, "service_disabled"

    const-string v2, "AndroidAuthKillSwitchException"

    .line 5
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-static {v1, p2}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lcom/facebook/login/NativeAppLoginMethodHandler;->s(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_0

    :cond_1
    const-string v0, "access_denied"

    const-string v1, "OAuthAccessDeniedException"

    .line 8
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-static {v0, p2}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    .line 10
    new-instance p2, Lcom/facebook/login/LoginClient$Result;

    sget-object v3, Lcom/facebook/login/LoginClient$Result$a;->c:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->s(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p3, :cond_4

    .line 14
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p2, ": "

    .line 15
    invoke-static {p2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 16
    new-instance p2, Lcom/facebook/login/LoginClient$Result;

    sget-object v3, Lcom/facebook/login/LoginClient$Result$a;->d:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->s(Lcom/facebook/login/LoginClient$Result;)V

    :goto_0
    return-void
.end method

.method public y(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/login/NativeAppLoginMethodHandler;->w()Le/j/w;

    move-result-object v1

    .line 3
    iget-object v2, p1, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0, p2, v1, v2}, Lcom/facebook/login/LoginMethodHandler;->d(Ljava/util/Collection;Landroid/os/Bundle;Le/j/w;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v6

    .line 5
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->o:Ljava/lang/String;

    .line 6
    invoke-static {p2, v0}, Lcom/facebook/login/LoginMethodHandler;->e(Landroid/os/Bundle;Ljava/lang/String;)Lcom/facebook/AuthenticationToken;

    move-result-object v7

    .line 7
    new-instance p2, Lcom/facebook/login/LoginClient$Result;

    sget-object v5, Lcom/facebook/login/LoginClient$Result$a;->b:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->s(Lcom/facebook/login/LoginClient$Result;)V
    :try_end_0
    .catch Le/j/c0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x0

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p2, ": "

    .line 12
    invoke-static {p2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 13
    new-instance p2, Lcom/facebook/login/LoginClient$Result;

    sget-object v2, Lcom/facebook/login/LoginClient$Result$a;->d:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->s(Lcom/facebook/login/LoginClient$Result;)V

    :goto_0
    return-void
.end method

.method public z(Landroid/content/Intent;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method
