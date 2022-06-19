.class public final Lcom/facebook/internal/w;
.super Ln3/r/a/k;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\r\u0010\t\u001a\u00020\nH\u0001\u00a2\u0006\u0002\u0008\u000bJ\u001c\u0010\u000c\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\u0012\u0010\u0011\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0012\u0010\u0015\u001a\u00020\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u0017\u001a\u00020\u00042\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u0018\u001a\u00020\nH\u0016J\u0008\u0010\u0019\u001a\u00020\nH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/facebook/internal/FacebookDialogFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "()V",
        "innerDialog",
        "Landroid/app/Dialog;",
        "getInnerDialog",
        "()Landroid/app/Dialog;",
        "setInnerDialog",
        "(Landroid/app/Dialog;)V",
        "initDialog",
        "",
        "initDialog$facebook_common_release",
        "onCompleteWebDialog",
        "values",
        "Landroid/os/Bundle;",
        "error",
        "Lcom/facebook/FacebookException;",
        "onCompleteWebFallbackDialog",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onCreate",
        "savedInstanceState",
        "onCreateDialog",
        "onDestroyView",
        "onResume",
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
.field public static final synthetic b:I


# instance fields
.field public a:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/r/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final OA(Landroid/os/Bundle;Le/j/c0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/facebook/internal/l0;->a:Lcom/facebook/internal/l0;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fragmentActivity.intent"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, p2}, Lcom/facebook/internal/l0;->e(Landroid/content/Intent;Landroid/os/Bundle;Le/j/c0;)Landroid/content/Intent;

    move-result-object p1

    if-nez p2, :cond_1

    const/4 p2, -0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/internal/w;->a:Landroid/app/Dialog;

    instance-of p1, p1, Lcom/facebook/internal/s0;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/facebook/internal/w;->a:Landroid/app/Dialog;

    const-string v0, "null cannot be cast to non-null type com.facebook.internal.WebDialog"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/facebook/internal/s0;

    invoke-virtual {p1}, Lcom/facebook/internal/s0;->d()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/internal/w;->a:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_7

    .line 4
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/facebook/internal/l0;->a:Lcom/facebook/internal/l0;

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/facebook/internal/l0;->i(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    const-string v2, "is_fallback"

    .line 6
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_0
    const-string v3, "null cannot be cast to non-null type kotlin.String"

    const-string v4, "context"

    const/4 v5, 0x0

    if-nez v2, :cond_9

    const-string v0, "action"

    if-nez p1, :cond_3

    move-object v2, v5

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez p1, :cond_4

    move-object p1, v5

    goto :goto_2

    :cond_4
    const-string v6, "params"

    .line 8
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 9
    :goto_2
    invoke-static {v2}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 10
    sget-object p1, Le/j/f0;->a:Le/j/f0;

    .line 11
    sget-boolean p1, Le/j/f0;->i:Z

    .line 12
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7

    .line 13
    :cond_5
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    invoke-static {}, Lcom/facebook/AccessToken$c;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 16
    invoke-static {}, Lcom/facebook/AccessToken$c;->c()Z

    move-result v3

    if-nez v3, :cond_6

    .line 17
    invoke-static {v1}, Lcom/facebook/internal/q0;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    :cond_6
    if-eqz p1, :cond_7

    goto :goto_3

    .line 18
    :cond_7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_3
    move-object v3, p1

    .line 19
    new-instance v6, Lcom/facebook/internal/a;

    invoke-direct {v6, p0}, Lcom/facebook/internal/a;-><init>(Lcom/facebook/internal/w;)V

    const-string p1, "app_id"

    if-eqz v0, :cond_8

    .line 20
    iget-object v5, v0, Lcom/facebook/AccessToken;->h:Ljava/lang/String;

    .line 21
    invoke-virtual {v3, p1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, v0, Lcom/facebook/AccessToken;->e:Ljava/lang/String;

    const-string v0, "access_token"

    .line 23
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 24
    :cond_8
    invoke-virtual {v3, p1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_4
    sget-object p1, Lcom/facebook/internal/s0;->m:Lcom/facebook/internal/s0$b;

    const/4 p1, 0x0

    .line 26
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {v1}, Lcom/facebook/internal/s0;->b(Landroid/content/Context;)V

    .line 28
    new-instance v8, Lcom/facebook/internal/s0;

    sget-object v5, Lcom/facebook/login/x;->c:Lcom/facebook/login/x;

    const/4 v7, 0x0

    move-object v0, v8

    move v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/internal/s0;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/login/x;Lcom/facebook/internal/s0$d;Ls1/z/c/f;)V

    goto :goto_6

    :cond_9
    const-string v2, "url"

    if-nez p1, :cond_a

    move-object p1, v5

    goto :goto_5

    .line 29
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    :goto_5
    invoke-static {p1}, Lcom/facebook/internal/q0;->B(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 31
    sget-object p1, Le/j/f0;->a:Le/j/f0;

    .line 32
    sget-boolean p1, Le/j/f0;->i:Z

    .line 33
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_7

    :cond_b
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    .line 34
    sget-object v8, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const-string v0, "fb%s://bridge/"

    const-string v8, "java.lang.String.format(format, *args)"

    invoke-static {v7, v6, v0, v8}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    sget-object v6, Lcom/facebook/internal/z;->q:Lcom/facebook/internal/z;

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "expectedRedirectUrl"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v2, Lcom/facebook/internal/s0;->m:Lcom/facebook/internal/s0$b;

    invoke-static {v1}, Lcom/facebook/internal/s0;->b(Landroid/content/Context;)V

    .line 38
    new-instance v8, Lcom/facebook/internal/z;

    invoke-direct {v8, v1, p1, v0, v5}, Lcom/facebook/internal/z;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ls1/z/c/f;)V

    .line 39
    new-instance p1, Lcom/facebook/internal/b;

    invoke-direct {p1, p0}, Lcom/facebook/internal/b;-><init>(Lcom/facebook/internal/w;)V

    .line 40
    iput-object p1, v8, Lcom/facebook/internal/s0;->c:Lcom/facebook/internal/s0$d;

    .line 41
    :goto_6
    iput-object v8, p0, Lcom/facebook/internal/w;->a:Landroid/app/Dialog;

    :goto_7
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/w;->a:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/facebook/internal/w;->OA(Landroid/os/Bundle;Le/j/c0;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ln3/r/a/k;->setShowsDialog(Z)V

    .line 4
    invoke-super {p0, p1}, Ln3/r/a/k;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "super.onCreateDialog(savedInstanceState)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const-string p1, "null cannot be cast to non-null type android.app.Dialog"

    .line 5
    invoke-static {v0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 4
    :cond_0
    invoke-super {p0}, Ln3/r/a/k;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/facebook/internal/w;->a:Landroid/app/Dialog;

    instance-of v1, v0, Lcom/facebook/internal/s0;

    if-eqz v1, :cond_0

    const-string v1, "null cannot be cast to non-null type com.facebook.internal.WebDialog"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/facebook/internal/s0;

    invoke-virtual {v0}, Lcom/facebook/internal/s0;->d()V

    :cond_0
    return-void
.end method
