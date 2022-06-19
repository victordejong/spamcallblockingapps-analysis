.class public abstract Lcom/facebook/login/WebLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0014J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0014J\n\u0010\u0014\u001a\u0004\u0018\u00010\tH\u0014J\n\u0010\u0015\u001a\u0004\u0018\u00010\tH\u0002J$\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0017J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\tH\u0002R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/login/WebLoginMethodHandler;",
        "Lcom/facebook/login/LoginMethodHandler;",
        "loginClient",
        "Lcom/facebook/login/LoginClient;",
        "(Lcom/facebook/login/LoginClient;)V",
        "source",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "e2e",
        "",
        "tokenSource",
        "Lcom/facebook/AccessTokenSource;",
        "getTokenSource",
        "()Lcom/facebook/AccessTokenSource;",
        "addExtraParameters",
        "Landroid/os/Bundle;",
        "parameters",
        "request",
        "Lcom/facebook/login/LoginClient$Request;",
        "getParameters",
        "getSSODevice",
        "loadCookieToken",
        "onComplete",
        "",
        "values",
        "error",
        "Lcom/facebook/FacebookException;",
        "saveCookieToken",
        "token",
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


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 1

    const-string v0, "loginClient"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    return-void
.end method


# virtual methods
.method public s(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 4
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    const-string v3, ","

    .line 5
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "scope"

    .line 6
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v3, v1}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    :cond_2
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Request;->c:Lcom/facebook/login/j;

    if-nez v1, :cond_3

    .line 9
    sget-object v1, Lcom/facebook/login/j;->b:Lcom/facebook/login/j;

    .line 10
    :cond_3
    iget-object v1, v1, Lcom/facebook/login/j;->a:Ljava/lang/String;

    const-string v3, "default_audience"

    .line 11
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p1, Lcom/facebook/login/LoginClient$Request;->e:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginMethodHandler;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object p1, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    invoke-static {}, Lcom/facebook/AccessToken$c;->b()Lcom/facebook/AccessToken;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 15
    :cond_4
    iget-object p1, p1, Lcom/facebook/AccessToken;->e:Ljava/lang/String;

    :goto_2
    const-string v1, "0"

    const-string v3, "1"

    const-string v4, "access_token"

    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/login/LoginClient;->e()Ln3/r/a/l;

    move-result-object v5

    if-nez v5, :cond_5

    sget-object v5, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v5

    :cond_5
    const-string v6, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    .line 17
    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "TOKEN"

    const-string v6, ""

    .line 18
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 20
    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v4, v3}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 22
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->e()Ln3/r/a/l;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p1}, Lcom/facebook/internal/q0;->d(Landroid/content/Context;)V

    .line 23
    :goto_3
    invoke-virtual {p0, v4, v1}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v2, "cbt"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object p1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->c()Z

    move-result p1

    if-eqz p1, :cond_8

    move-object v1, v3

    :cond_8
    const-string p1, "ies"

    .line 26
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract t()Le/j/w;
.end method

.method public v(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Le/j/c0;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    sget-object v4, Lcom/facebook/login/LoginClient$Result$a;->d:Lcom/facebook/login/LoginClient$Result$a;

    const-string v5, "request"

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v8

    const/4 v5, 0x0

    .line 2
    iput-object v5, v1, Lcom/facebook/login/WebLoginMethodHandler;->c:Ljava/lang/String;

    const-string v6, ": "

    if-eqz v2, :cond_3

    const-string v3, "e2e"

    .line 3
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/facebook/login/WebLoginMethodHandler;->c:Ljava/lang/String;

    .line 5
    :cond_0
    :try_start_0
    iget-object v3, v0, Lcom/facebook/login/LoginClient$Request;->b:Ljava/util/Set;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/WebLoginMethodHandler;->t()Le/j/w;

    move-result-object v5

    .line 7
    iget-object v7, v0, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    .line 8
    invoke-static {v3, v2, v5, v7}, Lcom/facebook/login/LoginMethodHandler;->d(Ljava/util/Collection;Landroid/os/Bundle;Le/j/w;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v3

    .line 9
    iget-object v0, v0, Lcom/facebook/login/LoginClient$Request;->o:Ljava/lang/String;

    .line 10
    invoke-static {v2, v0}, Lcom/facebook/login/LoginMethodHandler;->e(Landroid/os/Bundle;Ljava/lang/String;)Lcom/facebook/AuthenticationToken;

    move-result-object v13

    .line 11
    iget-object v10, v8, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 12
    new-instance v0, Lcom/facebook/login/LoginClient$Result;

    sget-object v11, Lcom/facebook/login/LoginClient$Result$a;->b:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v0

    move-object v12, v3

    invoke-direct/range {v9 .. v15}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v8}, Lcom/facebook/login/LoginClient;->e()Ln3/r/a/l;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 14
    invoke-virtual {v8}, Lcom/facebook/login/LoginClient;->e()Ln3/r/a/l;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    if-eqz v3, :cond_8

    .line 16
    iget-object v2, v3, Lcom/facebook/AccessToken;->e:Ljava/lang/String;

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient;->e()Ln3/r/a/l;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v3

    :cond_1
    const/4 v5, 0x0

    const-string v7, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    .line 18
    invoke-virtual {v3, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 19
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "TOKEN"

    .line 20
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 21
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Le/j/c0; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 22
    iget-object v3, v8, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 23
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_2
    invoke-static {v6, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 27
    new-instance v0, Lcom/facebook/login/LoginClient$Result;

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :cond_3
    instance-of v0, v3, Le/j/e0;

    if-eqz v0, :cond_4

    .line 29
    iget-object v10, v8, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 30
    new-instance v0, Lcom/facebook/login/LoginClient$Result;

    sget-object v11, Lcom/facebook/login/LoginClient$Result$a;->c:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-string v13, "User canceled log in."

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :cond_4
    iput-object v5, v1, Lcom/facebook/login/WebLoginMethodHandler;->c:Ljava/lang/String;

    if-nez v3, :cond_5

    move-object v0, v5

    goto :goto_0

    .line 32
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_0
    instance-of v2, v3, Le/j/h0;

    if-eqz v2, :cond_6

    .line 34
    move-object v0, v3

    check-cast v0, Le/j/h0;

    .line 35
    iget-object v0, v0, Le/j/h0;->a:Lcom/facebook/FacebookRequestError;

    .line 36
    iget v2, v0, Lcom/facebook/FacebookRequestError;->b:I

    .line 37
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v2

    goto :goto_1

    :cond_6
    move-object v7, v5

    .line 39
    :goto_1
    iget-object v3, v8, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_7

    .line 41
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_7
    invoke-static {v6, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 43
    new-instance v0, Lcom/facebook/login/LoginClient$Result;

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_8
    :goto_2
    iget-object v2, v1, Lcom/facebook/login/WebLoginMethodHandler;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 45
    iget-object v2, v1, Lcom/facebook/login/WebLoginMethodHandler;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/login/LoginMethodHandler;->k(Ljava/lang/String;)V

    .line 46
    :cond_9
    invoke-virtual {v8, v0}, Lcom/facebook/login/LoginClient;->d(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method
