.class public final Lcom/facebook/login/GetTokenLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0016\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u0016\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000bX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/facebook/login/GetTokenLoginMethodHandler;",
        "Lcom/facebook/login/LoginMethodHandler;",
        "loginClient",
        "Lcom/facebook/login/LoginClient;",
        "(Lcom/facebook/login/LoginClient;)V",
        "source",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "getTokenClient",
        "Lcom/facebook/login/GetTokenClient;",
        "nameForLogging",
        "",
        "getNameForLogging",
        "()Ljava/lang/String;",
        "cancel",
        "",
        "complete",
        "request",
        "Lcom/facebook/login/LoginClient$Request;",
        "result",
        "Landroid/os/Bundle;",
        "describeContents",
        "",
        "getTokenCompleted",
        "onComplete",
        "tryAuthorize",
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
            "Lcom/facebook/login/GetTokenLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Lcom/facebook/login/o;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/login/GetTokenLoginMethodHandler$a;

    invoke-direct {v0}, Lcom/facebook/login/GetTokenLoginMethodHandler$a;-><init>()V

    sput-object v0, Lcom/facebook/login/GetTokenLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    const-string p1, "get_token"

    .line 4
    iput-object p1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 1

    const-string v0, "loginClient"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    const-string p1, "get_token"

    .line 2
    iput-object p1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->c:Lcom/facebook/login/o;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/facebook/internal/m0;->d:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/facebook/internal/m0;->c:Lcom/facebook/internal/m0$b;

    .line 4
    iput-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->c:Lcom/facebook/login/o;

    :goto_0
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
    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->d:Ljava/lang/String;

    return-object v0
.end method

.method public r(Lcom/facebook/login/LoginClient$Request;)I
    .locals 8

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/facebook/login/o;

    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient;->e()Ln3/r/a/l;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v1

    :cond_0
    invoke-direct {v0, v1, p1}, Lcom/facebook/login/o;-><init>(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    .line 2
    iput-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->c:Lcom/facebook/login/o;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v3, v0, Lcom/facebook/internal/m0;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 5
    monitor-exit v0

    goto :goto_2

    .line 6
    :cond_1
    :try_start_1
    sget-object v3, Lcom/facebook/internal/l0;->a:Lcom/facebook/internal/l0;

    iget v4, v0, Lcom/facebook/internal/m0;->i:I

    .line 7
    const-class v5, Lcom/facebook/internal/l0;

    invoke-static {v5}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    :try_start_2
    sget-object v6, Lcom/facebook/internal/l0;->c:Ljava/util/List;

    new-array v7, v1, [I

    aput v4, v7, v2

    .line 9
    invoke-virtual {v3, v6, v7}, Lcom/facebook/internal/l0;->g(Ljava/util/List;[I)Lcom/facebook/internal/l0$f;

    move-result-object v3

    .line 10
    iget v3, v3, Lcom/facebook/internal/l0$f;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 11
    :try_start_3
    invoke-static {v3, v5}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    move v3, v2

    :goto_1
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 12
    monitor-exit v0

    :goto_2
    move v3, v2

    goto :goto_4

    .line 13
    :cond_3
    :try_start_4
    sget-object v3, Lcom/facebook/internal/l0;->a:Lcom/facebook/internal/l0;

    .line 14
    iget-object v3, v0, Lcom/facebook/internal/m0;->a:Landroid/content/Context;

    .line 15
    invoke-static {v3}, Lcom/facebook/internal/l0;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_3

    .line 16
    :cond_4
    iput-boolean v1, v0, Lcom/facebook/internal/m0;->d:Z

    .line 17
    iget-object v4, v0, Lcom/facebook/internal/m0;->a:Landroid/content/Context;

    .line 18
    invoke-virtual {v4, v3, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v3, v1

    .line 19
    :goto_3
    monitor-exit v0

    .line 20
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 21
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/facebook/login/LoginClient;->e:Lcom/facebook/login/LoginClient$a;

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v0}, Lcom/facebook/login/LoginClient$a;->a()V

    .line 23
    :goto_5
    new-instance v0, Lcom/facebook/login/b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/login/b;-><init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V

    .line 24
    iget-object p1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler;->c:Lcom/facebook/login/o;

    if-nez p1, :cond_7

    goto :goto_6

    .line 25
    :cond_7
    iput-object v0, p1, Lcom/facebook/internal/m0;->c:Lcom/facebook/internal/m0$b;

    :goto_6
    return v1

    :catchall_1
    move-exception p1

    .line 26
    monitor-exit v0

    throw p1
.end method

.method public final s(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Le/j/w;->e:Le/j/w;

    .line 2
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Request;->d:Ljava/lang/String;

    .line 3
    invoke-static {p2, v0, v1}, Lcom/facebook/login/LoginMethodHandler;->c(Landroid/os/Bundle;Le/j/w;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v5

    .line 4
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Request;->o:Ljava/lang/String;

    const-string v1, "bundle"

    .line 5
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.facebook.platform.extra.ID_TOKEN"

    .line 6
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Le/j/c0; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    :try_start_1
    new-instance v1, Lcom/facebook/AuthenticationToken;

    invoke-direct {v1, p2, v0}, Lcom/facebook/AuthenticationToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 10
    :try_start_2
    new-instance p2, Le/j/c0;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_2
    const/4 p2, 0x0

    move-object v6, p2

    .line 11
    :goto_3
    new-instance p2, Lcom/facebook/login/LoginClient$Result;

    sget-object v4, Lcom/facebook/login/LoginClient$Result$a;->b:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Le/j/c0; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object p2

    .line 13
    iget-object v1, p2, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    .line 14
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    .line 15
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p1, ": "

    .line 17
    invoke-static {p1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 18
    new-instance p2, Lcom/facebook/login/LoginClient$Result;

    sget-object v2, Lcom/facebook/login/LoginClient$Result$a;->d:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v3, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient$Result;-><init>(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient$Result$a;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_4
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Lcom/facebook/login/LoginClient;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/login/LoginClient;->d(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method
