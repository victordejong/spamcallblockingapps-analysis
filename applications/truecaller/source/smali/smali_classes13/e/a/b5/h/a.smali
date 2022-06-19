.class public Le/a/b5/h/a;
.super Le/a/b5/a;
.source "SourceFile"


# instance fields
.field public final f:Landroid/app/Activity;

.field public g:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field public i:Z

.field public j:Z

.field public final k:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field public final l:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/social/SocialNetworkType;->GOOGLE:Lcom/truecaller/social/SocialNetworkType;

    invoke-direct {p0, v0}, Le/a/b5/a;-><init>(Lcom/truecaller/social/SocialNetworkType;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/b5/h/a;->h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 3
    new-instance v0, Le/a/b5/h/a$a;

    invoke-direct {v0, p0}, Le/a/b5/h/a$a;-><init>(Le/a/b5/h/a;)V

    iput-object v0, p0, Le/a/b5/h/a;->k:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 4
    new-instance v0, Le/a/b5/h/a$b;

    invoke-direct {v0, p0}, Le/a/b5/h/a$b;-><init>(Le/a/b5/h/a;)V

    iput-object v0, p0, Le/a/b5/h/a;->l:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 5
    iput-object p1, p0, Le/a/b5/h/a;->f:Landroid/app/Activity;

    .line 6
    invoke-virtual {p0}, Le/a/b5/h/a;->t()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Le/a/b5/h/a;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Le/a/b5/h/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    .line 2
    iget-object v1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 3
    invoke-virtual/range {v2 .. v7}, Le/a/b5/a;->p(IIIILjava/lang/Object;)V

    const/4 v0, 0x3

    .line 4
    iget-object v1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public b()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Le/a/b5/h/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 2
    iget-object v1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 3
    invoke-virtual/range {v2 .. v7}, Le/a/b5/a;->p(IIIILjava/lang/Object;)V

    const/4 v0, 0x3

    .line 4
    iget-object v1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "gsn-was-connected"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Le/a/b5/h/a;->i:Z

    const-string v0, "gsn-should-resolve"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Le/a/b5/h/a;->j:Z

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/b5/h/a;->i:Z

    const-string v1, "gsn-was-connected"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    iget-boolean v0, p0, Le/a/b5/h/a;->j:Z

    const-string v1, "gsn-should-resolve"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/b5/h/a;->u()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Le/a/b5/h/a;->v()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/b5/h/a;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0, p1}, Le/a/b5/h/a;->s(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 3
    invoke-virtual {p0}, Le/a/b5/h/a;->t()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Le/a/b5/h/a;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->e()V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/b5/h/a;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0, p1}, Le/a/b5/h/a;->s(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/a/b5/h/a;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 3
    invoke-virtual {p0}, Le/a/b5/h/a;->u()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    const/16 p1, 0xc

    .line 4
    iget-object v0, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/a/b5/h/a;->u()Z

    move-result p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Le/a/b5/h/a;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/16 v1, 0x9

    if-eqz p1, :cond_6

    iget-object p1, p0, Le/a/b5/h/a;->h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v2, p0, Le/a/b5/h/a;->h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 5
    iget-object v3, v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->k:Ljava/lang/String;

    .line 6
    iget-object v2, v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->l:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "profileLastName"

    const-string v6, "profileFirstName"

    if-eqz v4, :cond_3

    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Le/a/b5/h/a;->h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 9
    iget-object v2, v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->e:Ljava/lang/String;

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x20

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 12
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v6, v4}, Le/a/b5/h/a;->w(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v5, v2}, Le/a/b5/h/a;->w(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p0, p1, v6, v2}, Le/a/b5/h/a;->w(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v6, v3}, Le/a/b5/h/a;->w(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1, v5, v2}, Le/a/b5/h/a;->w(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string v2, "profileEmail"

    .line 17
    iget-object v3, p0, Le/a/b5/h/a;->h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 18
    iget-object v3, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, p1, v2, v3}, Le/a/b5/h/a;->w(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v2, p0, Le/a/b5/h/a;->h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 21
    iget-object v2, v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->f:Landroid/net/Uri;

    if-eqz v2, :cond_5

    const-string v3, "profileAvatar"

    .line 22
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/16 v2, 0xa

    .line 23
    new-instance v3, Le/a/b5/f;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Le/a/b5/f;-><init>(Ljava/util/Map;Landroid/os/Bundle;)V

    invoke-virtual {p0, v2, v0, v0, v3}, Le/a/b5/a;->o(IIILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p0, v1, p1}, Le/a/b5/a;->n(ILjava/lang/Throwable;)V

    :goto_2
    return-void

    .line 25
    :cond_6
    :goto_3
    new-instance p1, Le/a/b5/d;

    const-string v0, "Not initialized"

    invoke-direct {p1, v0}, Le/a/b5/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Le/a/b5/a;->n(ILjava/lang/Throwable;)V

    return-void
.end method

.method public h(ILjava/lang/Object;)V
    .locals 5

    or-int/lit16 v0, p1, 0x7600

    .line 1
    instance-of v1, p2, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eqz v1, :cond_1

    .line 2
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->o2()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    :try_start_0
    iget-object p2, p0, Le/a/b5/h/a;->f:Landroid/app/Activity;

    invoke-virtual {v1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;->q2(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 5
    invoke-virtual {p0, v3, p1, v2, p2}, Le/a/b5/a;->o(IIILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Le/a/b5/a;->h(ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v1, p2, Lcom/google/android/gms/common/api/Status;

    if-eqz v1, :cond_3

    .line 8
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/common/api/Status;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->o2()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    :try_start_1
    iget-object p2, p0, Le/a/b5/h/a;->f:Landroid/app/Activity;

    invoke-virtual {v1, p2, v0}, Lcom/google/android/gms/common/api/Status;->r2(Landroid/app/Activity;I)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 11
    invoke-virtual {p0, v3, p1, v2, p2}, Le/a/b5/a;->o(IIILjava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-super {p0, p1, p2}, Le/a/b5/a;->h(ILjava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-super {p0, p1, p2}, Le/a/b5/a;->h(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Le/a/b5/h/a;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/b5/h/a;->h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/16 v1, 0xc

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v5}, Le/a/b5/a;->p(IIIILjava/lang/Object;)V

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    .line 3
    invoke-virtual/range {v6 .. v11}, Le/a/b5/a;->p(IIIILjava/lang/Object;)V

    const/4 p1, 0x7

    .line 4
    iget-object v0, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 5
    :cond_1
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v0, p0, Le/a/b5/h/a;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object p1

    .line 6
    iget-object v0, p0, Le/a/b5/h/a;->f:Landroid/app/Activity;

    const/16 v1, 0x7700

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/b5/h/a;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/a/b5/h/a;->s(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/a/b5/h/a;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 4
    iput-object p1, p0, Le/a/b5/h/a;->h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    :cond_0
    const/16 p1, 0x8

    .line 5
    iget-object v0, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/b5/h/a;->u()Z

    move-result p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Le/a/b5/h/a;->v()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/b5/h/a;->u()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "Still connected"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    return-void
.end method

.method public m(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/b5/h/a;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 2
    iget-object v0, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 3
    iget-object v0, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    const-string v0, "onActivityResult("

    const-string v1, ","

    .line 1
    invoke-static {v0, p1, v1, p2, v1}, Le/d/c/a/a;->F(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x7700

    if-ne p1, v3, :cond_3

    .line 2
    iput-boolean v1, p0, Le/a/b5/h/a;->j:Z

    const/4 p1, 0x6

    if-ne p2, v0, :cond_1

    .line 3
    sget-object p2, Lcom/google/android/gms/auth/api/Auth;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p2, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->b(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p2

    .line 4
    iget-object p3, p2, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->a:Lcom/google/android/gms/common/api/Status;

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/Status;->q2()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 6
    iget-object p2, p2, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 7
    iput-object p2, p0, Le/a/b5/h/a;->h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 8
    iget-object p2, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9
    iget-object p1, p0, Le/a/b5/h/a;->h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz p1, :cond_2

    .line 10
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p1

    invoke-virtual {p1}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object p1

    invoke-interface {p1}, Le/a/b0/c;->d()Le/a/b0/o/a;

    move-result-object p1

    .line 11
    iget-object p2, p0, Le/a/b5/h/a;->h:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 12
    iget-object p2, p2, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->c:Ljava/lang/String;

    const-string p3, "profileGoogleIdToken"

    .line 13
    invoke-interface {p1, p3, p2}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, v2}, Le/a/b5/a;->n(ILjava/lang/Throwable;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0, p1, v2}, Le/a/b5/a;->n(ILjava/lang/Throwable;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    and-int/lit16 p3, p1, 0x7600

    const/16 v3, 0x7600

    if-ne p3, v3, :cond_5

    and-int/lit16 p1, p1, -0x7601

    if-ne p2, v0, :cond_4

    .line 16
    iget-object p2, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p0, p1, v2}, Le/a/b5/a;->n(ILjava/lang/Throwable;)V

    :cond_5
    :goto_1
    return v1
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/b5/h/a;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 2
    iget-object v1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/b5/h/a;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le/a/b5/h/a;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0xb

    .line 2
    iget-object v1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public final s(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/b5/h/a;->k:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->r(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 2
    iget-object v0, p0, Le/a/b5/h/a;->l:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->s(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->f()V

    :cond_0
    return-void
.end method

.method public final t()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/b5/h/a;->f:Landroid/app/Activity;

    sget v1, Lcom/truecaller/social/google/R$string;->google_client_id:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->l:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->c(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v2, p0, Le/a/b5/h/a;->f:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Le/a/b5/h/a;->k:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    const-string v3, "Listener must not be null"

    .line 7
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->n:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, p0, Le/a/b5/h/a;->l:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->o:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->b:Lcom/google/android/gms/common/api/Api;

    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->a(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->b()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b5/h/a;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b5/h/a;->g:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final w(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
