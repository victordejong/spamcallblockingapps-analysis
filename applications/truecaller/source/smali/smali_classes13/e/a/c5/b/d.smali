.class public final Le/a/c5/b/d;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/c5/b/a;
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/c5/b/c;",
        ">;",
        "Le/a/c5/b/d;",
        "Le/a/c5/b/a;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/p5/c0;

.field public final f:Le/a/c5/b/e;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/p5/c0;Le/a/c5/b/e;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "googleSignInProxy"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c5/b/d;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/c5/b/d;->e:Le/a/p5/c0;

    iput-object p3, p0, Le/a/c5/b/d;->f:Le/a/c5/b/e;

    return-void
.end method


# virtual methods
.method public G1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c5/b/d;->f:Le/a/c5/b/e;

    .line 2
    iget-object v0, v0, Le/a/c5/b/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->b(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Ij()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c5/b/d;->f:Le/a/c5/b/e;

    iget-object v1, p0, Le/a/c5/b/d;->e:Le/a/p5/c0;

    sget v2, Lcom/truecaller/social_login/R$string;->google_client_id:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026(string.google_client_id)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "clientId"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->l:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 4
    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    .line 7
    iget-object v0, v0, Le/a/c5/b/e;->a:Landroid/content/Context;

    .line 8
    new-instance v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    const-string v0, "GoogleSignIn.getClient(a\u2026onContext, signInOptions)"

    .line 9
    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final Jj(Lcom/truecaller/social_login/SocialAccountProfile;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/c5/b/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Le/a/c5/b/c;->q(Lcom/truecaller/social_login/SocialAccountProfile;Z)V

    :cond_0
    return-void
.end method

.method public O1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/c5/b/d;->Ij()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Le/a/c5/b/c;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/c5/b/d;->f:Le/a/c5/b/e;

    .line 5
    iget-object p1, p1, Le/a/c5/b/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->b(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->n:Lcom/google/android/gms/common/util/Clock;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->h:J

    const-wide/16 v4, -0x12c

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p1}, Le/a/l4/k;->d(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/truecaller/social_login/SocialAccountProfile;

    move-result-object p1

    .line 9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/c5/b/c;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, v1}, Le/a/c5/b/c;->q(Lcom/truecaller/social_login/SocialAccountProfile;Z)V

    goto :goto_2

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {p0}, Le/a/c5/b/d;->Ij()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    .line 11
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/c5/b/c;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->b()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "signInClient.signInIntent"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x4d2

    invoke-interface {v0, p1, v1}, Le/a/c5/b/c;->ha(Landroid/content/Intent;I)V

    :cond_3
    :goto_2
    return-void
.end method
