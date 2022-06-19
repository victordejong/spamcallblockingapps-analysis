.class public final Lcom/truecaller/social_login/google/GoogleLoginActivity;
.super Le/a/c5/b/g;
.source "SourceFile"

# interfaces
.implements Le/a/c5/b/c;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000c\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ)\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0016\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/truecaller/social_login/google/GoogleLoginActivity;",
        "Ln3/b/a/h;",
        "Le/a/c5/b/c;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/content/Intent;",
        "signInIntent",
        "",
        "requestCode",
        "ha",
        "(Landroid/content/Intent;I)V",
        "resultCode",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Lcom/truecaller/social_login/SocialAccountProfile;",
        "socialAccountProfile",
        "",
        "isError",
        "q",
        "(Lcom/truecaller/social_login/SocialAccountProfile;Z)V",
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
.field public d:Le/a/c5/b/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/c5/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public ha(Landroid/content/Intent;I)V
    .locals 1

    const-string v0, "signInIntent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/social_login/google/GoogleLoginActivity;->d:Le/a/c5/b/d;

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4d2

    if-ne p1, v1, :cond_4

    .line 4
    iget-object p1, p2, Le/a/c5/b/d;->f:Le/a/c5/b/e;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->b(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    const/4 p3, 0x1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p2, v0, p3}, Le/a/c5/b/d;->Jj(Lcom/truecaller/social_login/SocialAccountProfile;Z)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 9
    iget-object v2, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->a:Lcom/google/android/gms/common/api/Status;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->q2()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 11
    invoke-static {v1}, Le/a/l4/k;->d(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/truecaller/social_login/SocialAccountProfile;

    move-result-object p1

    .line 12
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/c5/b/c;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1, v3}, Le/a/c5/b/c;->q(Lcom/truecaller/social_login/SocialAccountProfile;Z)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->a:Lcom/google/android/gms/common/api/Status;

    const-string v2, "signInResult.status"

    .line 14
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->p2()Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->a:Lcom/google/android/gms/common/api/Status;

    .line 16
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->b:I

    const/16 v1, 0x30d5

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p2, v0, p3}, Le/a/c5/b/d;->Jj(Lcom/truecaller/social_login/SocialAccountProfile;Z)V

    goto :goto_1

    .line 19
    :cond_3
    :goto_0
    invoke-virtual {p2, v0, v3}, Le/a/c5/b/d;->Jj(Lcom/truecaller/social_login/SocialAccountProfile;Z)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string p1, "presenter"

    .line 20
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/social_login/google/GoogleLoginActivity;->d:Le/a/c5/b/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Le/a/c5/b/d;->Y0(Ljava/lang/Object;)V

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
