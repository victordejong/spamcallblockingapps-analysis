.class public final Lcom/truecaller/social_login/facebook/FacebookLoginActivity;
.super Le/a/c5/a/l;
.source "SourceFile"

# interfaces
.implements Le/a/c5/a/d;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ)\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0018\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\"\u0010!\u001a\u00020\u001a8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/truecaller/social_login/facebook/FacebookLoginActivity;",
        "Ln3/b/a/h;",
        "Le/a/c5/a/d;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "",
        "permissions",
        "ma",
        "(Ljava/util/List;)V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Lcom/truecaller/social_login/SocialAccountProfile;",
        "socialAccountProfile",
        "",
        "isError",
        "q",
        "(Lcom/truecaller/social_login/SocialAccountProfile;Z)V",
        "Le/a/c5/a/c;",
        "d",
        "Le/a/c5/a/c;",
        "getPresenter$social_login_release",
        "()Le/a/c5/a/c;",
        "setPresenter$social_login_release",
        "(Le/a/c5/a/c;)V",
        "presenter",
        "<init>",
        "()V",
        "social-login_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public d:Le/a/c5/a/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/c5/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public ma(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/facebook/login/v;->b:Lcom/facebook/login/v$b;

    invoke-virtual {v0}, Lcom/facebook/login/v$b;->a()Lcom/facebook/login/v;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/login/v;->d(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/social_login/facebook/FacebookLoginActivity;->d:Le/a/c5/a/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Le/a/c5/a/f;

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 3
    iget-object v1, v0, Le/a/c5/a/f;->h:Le/a/c5/a/h;

    check-cast v1, Le/a/c5/a/j;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lcom/facebook/internal/t;

    invoke-direct {v1}, Lcom/facebook/internal/t;-><init>()V

    .line 6
    invoke-virtual {v1, p1, p2, p3}, Lcom/facebook/internal/t;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Le/a/c5/a/f;->Jj(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, v1, p1}, Le/a/c5/a/f;->Ij(Lcom/truecaller/social_login/SocialAccountProfile;Z)V

    :goto_0
    return-void

    :cond_1
    const-string p1, "presenter"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/social_login/facebook/FacebookLoginActivity;->d:Le/a/c5/a/c;

    if-eqz p1, :cond_0

    check-cast p1, Le/a/c5/a/f;

    invoke-virtual {p1, p0}, Le/a/c5/a/f;->Y0(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public q(Lcom/truecaller/social_login/SocialAccountProfile;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
