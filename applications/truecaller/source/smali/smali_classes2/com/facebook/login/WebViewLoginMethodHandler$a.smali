.class public final Lcom/facebook/login/WebViewLoginMethodHandler$a;
.super Lcom/facebook/internal/s0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/WebViewLoginMethodHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0012\u0010\u000c\u001a\u00060\u0000R\u00020\u001b2\u0006\u0010\t\u001a\u00020\u0005J\u0012\u0010\u001c\u001a\u00060\u0000R\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u0005J\u0012\u0010\u001d\u001a\u00060\u0000R\u00020\u001b2\u0006\u0010\u0011\u001a\u00020\u0012J\u0012\u0010\u001e\u001a\u00060\u0000R\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0012J\u0012\u0010 \u001a\u00060\u0000R\u00020\u001b2\u0006\u0010!\u001a\u00020\u0012J\u0012\u0010\"\u001a\u00060\u0000R\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\u0014J\u0012\u0010#\u001a\u00060\u0000R\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u0018J\u0012\u0010$\u001a\u00060\u0000R\u00020\u001b2\u0006\u0010%\u001a\u00020\u0012R\u001a\u0010\t\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;",
        "Lcom/facebook/internal/WebDialog$Builder;",
        "context",
        "Landroid/content/Context;",
        "applicationId",
        "",
        "parameters",
        "Landroid/os/Bundle;",
        "(Lcom/facebook/login/WebViewLoginMethodHandler;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V",
        "authType",
        "getAuthType",
        "()Ljava/lang/String;",
        "setAuthType",
        "(Ljava/lang/String;)V",
        "e2e",
        "getE2e",
        "setE2e",
        "isFamilyLogin",
        "",
        "loginBehavior",
        "Lcom/facebook/login/LoginBehavior;",
        "redirect_uri",
        "shouldSkipDedupe",
        "targetApp",
        "Lcom/facebook/login/LoginTargetApp;",
        "build",
        "Lcom/facebook/internal/WebDialog;",
        "Lcom/facebook/login/WebViewLoginMethodHandler;",
        "setE2E",
        "setFamilyLogin",
        "setIsChromeOS",
        "isChromeOS",
        "setIsRerequest",
        "isRerequest",
        "setLoginBehavior",
        "setLoginTargetApp",
        "setShouldSkipDedupe",
        "shouldSkip",
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
.field public f:Ljava/lang/String;

.field public g:Lcom/facebook/login/q;

.field public h:Lcom/facebook/login/x;

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/login/WebViewLoginMethodHandler;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "applicationId"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parameters"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oauth"

    .line 1
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/facebook/internal/s0$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "fbconnect://success"

    .line 2
    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->f:Ljava/lang/String;

    .line 3
    sget-object p1, Lcom/facebook/login/q;->g:Lcom/facebook/login/q;

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->g:Lcom/facebook/login/q;

    .line 4
    sget-object p1, Lcom/facebook/login/x;->c:Lcom/facebook/login/x;

    iput-object p1, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->h:Lcom/facebook/login/x;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/internal/s0;
    .locals 9

    .line 1
    iget-object v3, p0, Lcom/facebook/internal/s0$a;->e:Landroid/os/Bundle;

    const-string v0, "null cannot be cast to non-null type android.os.Bundle"

    .line 2
    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->f:Ljava/lang/String;

    const-string v1, "redirect_uri"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/facebook/internal/s0$a;->b:Ljava/lang/String;

    const-string v1, "client_id"

    .line 5
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->k:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "e2e"

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->h:Lcom/facebook/login/x;

    sget-object v2, Lcom/facebook/login/x;->d:Lcom/facebook/login/x;

    if-ne v0, v2, :cond_0

    const-string v0, "token,signed_request,graph_domain,granted_scopes"

    goto :goto_0

    :cond_0
    const-string v0, "token,signed_request,graph_domain"

    :goto_0
    const-string v2, "response_type"

    .line 9
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "return_scopes"

    const-string v2, "true"

    .line 10
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->l:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "auth_type"

    .line 12
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->g:Lcom/facebook/login/q;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "login_behavior"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-boolean v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->i:Z

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->h:Lcom/facebook/login/x;

    .line 16
    iget-object v0, v0, Lcom/facebook/login/x;->a:Ljava/lang/String;

    const-string v1, "fx_app"

    .line 17
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->j:Z

    if-eqz v0, :cond_2

    const-string v0, "skip_dedupe"

    .line 19
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_2
    sget-object v0, Lcom/facebook/internal/s0;->m:Lcom/facebook/internal/s0$b;

    .line 21
    iget-object v1, p0, Lcom/facebook/internal/s0$a;->a:Landroid/content/Context;

    const-string v0, "null cannot be cast to non-null type android.content.Context"

    .line 22
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/login/WebViewLoginMethodHandler$a;->h:Lcom/facebook/login/x;

    .line 23
    iget-object v6, p0, Lcom/facebook/internal/s0$a;->d:Lcom/facebook/internal/s0$d;

    const-string v0, "context"

    .line 24
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetApp"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {v1}, Lcom/facebook/internal/s0;->b(Landroid/content/Context;)V

    .line 26
    new-instance v8, Lcom/facebook/internal/s0;

    const/4 v7, 0x0

    const-string v2, "oauth"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/internal/s0;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/login/x;Lcom/facebook/internal/s0$d;Ls1/z/c/f;)V

    return-object v8

    :cond_3
    const-string v0, "authType"

    .line 27
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_4
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
