.class public Lcom/facebook/login/t;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 +2\u00020\u0001:\u0001+B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\nH\u0014J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\"\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\u00122\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J&\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020&H\u0002J\u0008\u0010\'\u001a\u00020\u0012H\u0016J\u0008\u0010(\u001a\u00020\u0012H\u0016J\u0010\u0010)\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u001cH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068UX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/facebook/login/LoginFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "callingPackage",
        "",
        "layoutResId",
        "",
        "getLayoutResId",
        "()I",
        "<set-?>",
        "Lcom/facebook/login/LoginClient;",
        "loginClient",
        "getLoginClient",
        "()Lcom/facebook/login/LoginClient;",
        "request",
        "Lcom/facebook/login/LoginClient$Request;",
        "createLoginClient",
        "initializeCallingPackage",
        "",
        "activity",
        "Landroid/app/Activity;",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onLoginClientCompleted",
        "outcome",
        "Lcom/facebook/login/LoginClient$Result;",
        "onPause",
        "onResume",
        "onSaveInstanceState",
        "outState",
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
.field public static final synthetic d:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/facebook/login/LoginClient;

.field public c:Lcom/facebook/login/LoginClient$Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final OA()Lcom/facebook/login/LoginClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/t;->b:Lcom/facebook/login/LoginClient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "loginClient"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/login/t;->OA()Lcom/facebook/login/LoginClient;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/facebook/login/LoginClient;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/facebook/login/LoginClient;->k:I

    .line 4
    iget-object v1, v0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p3, :cond_0

    .line 5
    sget-object v1, Lcom/facebook/CustomTabMainActivity;->j:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->i()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->f()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/facebook/login/LoginMethodHandler;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    .line 9
    iget v2, v0, Lcom/facebook/login/LoginClient;->k:I

    iget v0, v0, Lcom/facebook/login/LoginClient;->l:I

    if-lt v2, v0, :cond_2

    .line 10
    :cond_1
    invoke-virtual {v1, p1, p2, p3}, Lcom/facebook/login/LoginMethodHandler;->m(IILandroid/content/Intent;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "loginClient"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/login/LoginClient;

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p1, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_1

    .line 4
    iput-object p0, p1, Lcom/facebook/login/LoginClient;->c:Landroidx/fragment/app/Fragment;

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Le/j/c0;

    const-string v0, "Can\'t set fragment once it is already set."

    invoke-direct {p1, v0}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Lcom/facebook/login/LoginClient;

    invoke-direct {p1, p0}, Lcom/facebook/login/LoginClient;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 7
    :goto_1
    iput-object p1, p0, Lcom/facebook/login/t;->b:Lcom/facebook/login/LoginClient;

    .line 8
    invoke-virtual {p0}, Lcom/facebook/login/t;->OA()Lcom/facebook/login/LoginClient;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/facebook/login/c;

    invoke-direct {v0, p0}, Lcom/facebook/login/c;-><init>(Lcom/facebook/login/t;)V

    .line 10
    iput-object v0, p1, Lcom/facebook/login/LoginClient;->d:Lcom/facebook/login/LoginClient$c;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 12
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/t;->a:Ljava/lang/String;

    .line 14
    :goto_2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "com.facebook.LoginFragment:Request"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "request"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/login/LoginClient$Request;

    iput-object p1, p0, Lcom/facebook/login/t;->c:Lcom/facebook/login/LoginClient$Request;

    :cond_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p3, Lcom/facebook/common/R$layout;->com_facebook_login_fragment:I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    sget p2, Lcom/facebook/common/R$id;->com_facebook_login_fragment_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Lcom/facebook/login/t;->OA()Lcom/facebook/login/LoginClient;

    move-result-object p3

    .line 5
    new-instance v0, Lcom/facebook/login/t$a;

    invoke-direct {v0, p2}, Lcom/facebook/login/t$a;-><init>(Landroid/view/View;)V

    .line 6
    iput-object v0, p3, Lcom/facebook/login/LoginClient;->e:Lcom/facebook/login/LoginClient$a;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/login/t;->OA()Lcom/facebook/login/LoginClient;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->f()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->b()V

    .line 3
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v1, Lcom/facebook/common/R$id;->com_facebook_login_fragment_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/facebook/login/t;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/login/t;->OA()Lcom/facebook/login/LoginClient;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/t;->c:Lcom/facebook/login/LoginClient$Request;

    .line 5
    iget-object v2, v0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget v4, v0, Lcom/facebook/login/LoginClient;->b:I

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-nez v4, :cond_c

    if-nez v1, :cond_3

    goto/16 :goto_3

    :cond_3
    if-nez v2, :cond_b

    .line 6
    sget-object v2, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    invoke-static {}, Lcom/facebook/AccessToken$c;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->b()Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_3

    .line 7
    :cond_4
    iput-object v1, v0, Lcom/facebook/login/LoginClient;->g:Lcom/facebook/login/LoginClient$Request;

    const-string v2, "request"

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v4, v1, Lcom/facebook/login/LoginClient$Request;->a:Lcom/facebook/login/q;

    .line 11
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Request;->b()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 12
    sget-boolean v5, Le/j/f0;->p:Z

    if-nez v5, :cond_7

    .line 13
    iget-boolean v5, v4, Lcom/facebook/login/q;->f:Z

    if-eqz v5, :cond_7

    .line 14
    new-instance v5, Lcom/facebook/login/InstagramAppLoginMethodHandler;

    invoke-direct {v5, v0}, Lcom/facebook/login/InstagramAppLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_5
    iget-boolean v5, v4, Lcom/facebook/login/q;->a:Z

    if-eqz v5, :cond_6

    .line 16
    new-instance v5, Lcom/facebook/login/GetTokenLoginMethodHandler;

    invoke-direct {v5, v0}, Lcom/facebook/login/GetTokenLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_6
    sget-boolean v5, Le/j/f0;->p:Z

    if-nez v5, :cond_7

    .line 18
    iget-boolean v5, v4, Lcom/facebook/login/q;->b:Z

    if-eqz v5, :cond_7

    .line 19
    new-instance v5, Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    invoke-direct {v5, v0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_7
    :goto_2
    iget-boolean v5, v4, Lcom/facebook/login/q;->e:Z

    if-eqz v5, :cond_8

    .line 21
    new-instance v5, Lcom/facebook/login/CustomTabLoginMethodHandler;

    invoke-direct {v5, v0}, Lcom/facebook/login/CustomTabLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_8
    iget-boolean v5, v4, Lcom/facebook/login/q;->c:Z

    if-eqz v5, :cond_9

    .line 23
    new-instance v5, Lcom/facebook/login/WebViewLoginMethodHandler;

    invoke-direct {v5, v0}, Lcom/facebook/login/WebViewLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_9
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Request;->b()Z

    move-result v1

    if-nez v1, :cond_a

    .line 25
    iget-boolean v1, v4, Lcom/facebook/login/q;->d:Z

    if-eqz v1, :cond_a

    .line 26
    new-instance v1, Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-direct {v1, v0}, Lcom/facebook/login/DeviceAuthMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    new-array v1, v3, [Lcom/facebook/login/LoginMethodHandler;

    .line 27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Lcom/facebook/login/LoginMethodHandler;

    .line 28
    iput-object v1, v0, Lcom/facebook/login/LoginClient;->a:[Lcom/facebook/login/LoginMethodHandler;

    .line 29
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->i()V

    goto :goto_3

    .line 30
    :cond_b
    new-instance v0, Le/j/c0;

    const-string v1, "Attempted to authorize while a request is pending."

    invoke-direct {v0, v1}, Le/j/c0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/facebook/login/t;->OA()Lcom/facebook/login/LoginClient;

    move-result-object v0

    const-string v1, "loginClient"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
