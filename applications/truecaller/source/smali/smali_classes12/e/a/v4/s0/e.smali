.class public final Le/a/v4/s0/e;
.super Le/a/v4/s0/g;
.source "SourceFile"

# interfaces
.implements Le/a/v4/s0/b;
.implements Lq3/a/i0;


# instance fields
.field public final i:Lq3/a/y;

.field public final j:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

.field public final k:Le/a/t/b/e/b;

.field public l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

.field public m:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

.field public n:Z

.field public final o:Ljava/util/Locale;

.field public final p:Ls1/w/f;

.field public final q:Le/a/v4/s0/l/b;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Landroid/content/pm/PackageManager;Le/a/v4/v;Le/a/v4/s0/l/b;Le/a/v4/a0;Le/a/v4/l;)V
    .locals 6

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "sdkAccountManager"

    invoke-static {p6, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "oAuthNetworkManager"

    invoke-static {p7, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "sdkLocaleManager"

    invoke-static {p8, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "eventsTrackerHolder"

    invoke-static {p9, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move-object v5, p9

    .line 1
    invoke-direct/range {v0 .. v5}, Le/a/v4/s0/g;-><init>(Landroid/os/Bundle;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/v4/v;Le/a/v4/l;)V

    iput-object p1, p0, Le/a/v4/s0/e;->p:Ls1/w/f;

    iput-object p7, p0, Le/a/v4/s0/e;->q:Le/a/v4/s0/l/b;

    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 2
    invoke-static {p1, p3}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p3

    iput-object p3, p0, Le/a/v4/s0/e;->i:Lq3/a/y;

    const-string p3, "truesdk_partner_info"

    .line 3
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    iput-object p3, p0, Le/a/v4/s0/e;->j:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    .line 4
    new-instance p4, Le/a/t/b/e/b;

    const-string p5, "truesdk_flags"

    const/4 p6, 0x0

    .line 5
    invoke-virtual {p2, p5, p6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p5

    const-string p6, "truesdk_options_info"

    .line 6
    invoke-virtual {p2, p6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    .line 7
    invoke-direct {p4, p5, p2}, Le/a/t/b/e/b;-><init>(ILcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;)V

    iput-object p4, p0, Le/a/v4/s0/e;->k:Le/a/t/b/e/b;

    .line 8
    iget-object p2, p0, Le/a/v4/s0/g;->d:Landroid/os/Bundle;

    const-string p4, "tc_oauth_extras_user_locale"

    .line 9
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p4, Ljava/util/Locale;

    invoke-direct {p4, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p4, p1

    :goto_0
    if-eqz p4, :cond_1

    move-object p1, p4

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p3}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getLocale()Ljava/util/Locale;

    move-result-object p1

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p8}, Le/a/v4/a0;->a()Ljava/util/Locale;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Le/a/v4/s0/e;->o:Ljava/util/Locale;

    return-void
.end method

.method public static final y(Le/a/v4/s0/e;Le/a/v4/s0/l/e/a;)V
    .locals 10

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type com.truecaller.sdk.oAuth.networking.data.ApiResponse.Error<T>"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/v4/s0/l/e/a$a;

    .line 3
    new-instance v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    .line 4
    new-instance v1, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$ApiError;

    .line 5
    iget-object v2, p1, Le/a/v4/s0/l/e/a$a;->a:Le/a/v4/s0/l/e/b/b;

    .line 6
    invoke-interface {v2}, Le/a/v4/s0/l/e/b/b;->errorCode()I

    move-result v2

    .line 7
    iget-object v3, p1, Le/a/v4/s0/l/e/a$a;->a:Le/a/v4/s0/l/e/b/b;

    .line 8
    invoke-interface {v3}, Le/a/v4/s0/l/e/b/b;->errorMessage()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-direct {v1, v2, v3}, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$ApiError;-><init>(ILjava/lang/String;)V

    .line 10
    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;-><init>(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    .line 11
    iput-object v0, p0, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    const/4 v5, 0x0

    .line 12
    iget-object p1, p1, Le/a/v4/s0/l/e/a$a;->a:Le/a/v4/s0/l/e/b/b;

    .line 13
    invoke-interface {p1}, Le/a/v4/s0/l/e/b/b;->errorCode()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Le/a/l4/k;->A(Le/a/v4/s0/f;IIZILjava/lang/Object;)V

    .line 14
    iget-object p0, p0, Le/a/v4/s0/g;->b:Le/a/v4/s0/m/a/f;

    if-eqz p0, :cond_0

    .line 15
    invoke-interface {p0}, Le/a/v4/s0/m/a/f;->V1()V

    :cond_0
    return-void
.end method

.method public static final z(Le/a/v4/s0/e;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Le/a/v4/s0/g;->c:Z

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Le/a/v4/s0/e;->n:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse;->isSuccessful()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-eqz v0, :cond_1

    move v5, v2

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    .line 5
    iget-object v0, v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->a:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    .line 6
    iget v1, v0, Lcom/truecaller/android/sdk/oAuth/TcOAuthError;->a:I

    :cond_2
    move v5, v1

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    .line 7
    invoke-static/range {v3 .. v8}, Le/a/l4/k;->A(Le/a/v4/s0/f;IIZILjava/lang/Object;)V

    .line 8
    iget-object p0, p0, Le/a/v4/s0/g;->b:Le/a/v4/s0/m/a/f;

    if-eqz p0, :cond_3

    .line 9
    invoke-interface {p0}, Le/a/v4/s0/m/a/f;->V1()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v3, p0, Le/a/v4/s0/e;->j:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    if-eqz v3, :cond_0

    .line 2
    iget-object v2, p0, Le/a/v4/s0/e;->m:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3
    new-instance v8, Le/a/v4/s0/e$a;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Le/a/v4/s0/e$a;-><init>(Le/a/v4/s0/e;Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Ljava/lang/String;Ls1/w/d;)V

    const/4 p1, 0x3

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, p1

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public B(IIZ)V
    .locals 11

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Le/a/v4/s0/e;->getCoroutineContext()Ls1/w/f;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, p2, v0, p2}, Ls1/a/a/a/v0/f/d;->X(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object p3, p0, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    if-eqz p3, :cond_8

    .line 3
    instance-of v0, p3, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;

    const-string v1, "dismissed"

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Le/a/v4/s0/g;->x()Le/a/v4/p0/b;

    move-result-object p2

    .line 5
    move-object v0, p3

    check-cast v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;

    .line 6
    iget-object v0, v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;->a:Lcom/truecaller/android/sdk/oAuth/TcOAuthData;

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/TcOAuthData;->getScopesGranted()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Le/a/v4/s0/e;->u()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1 : success"

    .line 9
    invoke-interface {p2, v1, v3, v0, v2}, Le/a/v4/p0/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 10
    :cond_1
    instance-of v0, p3, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    if-eqz v0, :cond_7

    .line 11
    iget-boolean v0, p0, Le/a/v4/s0/g;->c:Z

    const-string v2, " : "

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {p0}, Le/a/v4/s0/g;->x()Le/a/v4/p0/b;

    move-result-object v0

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, p3

    check-cast v4, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    .line 14
    iget-object v5, v4, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->a:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    .line 15
    iget v5, v5, Lcom/truecaller/android/sdk/oAuth/TcOAuthError;->a:I

    .line 16
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v2, v4, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->a:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    .line 18
    iget-object v2, v2, Lcom/truecaller/android/sdk/oAuth/TcOAuthError;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20
    iget-object v3, p0, Le/a/v4/s0/e;->m:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;->getScopes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 21
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;

    .line 23
    invoke-virtual {v5}, Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;->getChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p2, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 26
    check-cast v4, Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;

    .line 27
    invoke-virtual {v4}, Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;->getScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object p2, v3

    .line 28
    :cond_5
    invoke-virtual {p0}, Le/a/v4/s0/e;->u()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-interface {v0, v1, v2, p2, v3}, Le/a/v4/p0/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    .line 30
    :cond_6
    invoke-virtual {p0}, Le/a/v4/s0/g;->x()Le/a/v4/p0/b;

    move-result-object v4

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p3

    check-cast v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    .line 32
    iget-object v1, v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->a:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    .line 33
    iget v1, v1, Lcom/truecaller/android/sdk/oAuth/TcOAuthError;->a:I

    .line 34
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v0, v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;->a:Lcom/truecaller/android/sdk/oAuth/TcOAuthError;

    .line 36
    iget-object v0, v0, Lcom/truecaller/android/sdk/oAuth/TcOAuthError;->b:Ljava/lang/String;

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    const-string v5, "dismissed"

    .line 38
    invoke-static/range {v4 .. v10}, Le/a/l4/k;->V(Le/a/v4/p0/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    .line 39
    :cond_7
    :goto_2
    iget-object p2, p0, Le/a/v4/s0/g;->b:Le/a/v4/s0/m/a/f;

    if-eqz p2, :cond_8

    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "OAUTH_SDK_RESPONSE_EXTRA"

    .line 41
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    invoke-interface {p2, p1, v0}, Le/a/v4/s0/m/a/f;->U1(ILandroid/content/Intent;)V

    :cond_8
    return-void
.end method

.method public a()V
    .locals 15

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/v4/s0/g;->c:Z

    .line 2
    iput-boolean v0, p0, Le/a/v4/s0/e;->n:Z

    .line 3
    iget-object v1, p0, Le/a/v4/s0/g;->b:Le/a/v4/s0/m/a/f;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Le/a/v4/s0/m/a/f;->S1()V

    .line 5
    :cond_0
    iget-object v4, p0, Le/a/v4/s0/e;->j:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    if-eqz v4, :cond_7

    .line 6
    iget-object v5, p0, Le/a/v4/s0/e;->m:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

    if-eqz v5, :cond_7

    .line 7
    invoke-virtual {v5}, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;->getScopes()Ljava/util/List;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;

    .line 10
    invoke-virtual {v6}, Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;->getChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;

    .line 14
    invoke-virtual {v3}, Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;->getScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3e

    const-string v8, " "

    move-object v7, v1

    .line 15
    invoke-static/range {v7 .. v14}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {v4}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getCodeChallenge()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 17
    new-instance v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    sget-object v1, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$DeviceNotSupported;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$DeviceNotSupported;

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;-><init>(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    .line 18
    iput-object v0, p0, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 19
    new-instance v10, Le/a/v4/s0/d;

    const/4 v8, 0x0

    move-object v2, v10

    move-object v3, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Le/a/v4/s0/d;-><init>(Le/a/v4/s0/e;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;Ljava/lang/String;Ljava/util/List;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, v9

    move-object v5, v10

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_7
    :goto_3
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "native"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/e;->j:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getSdkVariant()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public e()V
    .locals 6

    .line 1
    new-instance v3, Le/a/v4/s0/e$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/v4/s0/e$b;-><init>(Le/a/v4/s0/e;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/e;->j:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getTrueSdkVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/s0/e;->p:Ls1/w/f;

    iget-object v1, p0, Le/a/v4/s0/e;->i:Lq3/a/y;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/e;->o:Ljava/util/Locale;

    return-object v0
.end method

.method public h()V
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/v4/s0/g;->b:Le/a/v4/s0/m/a/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Le/a/v4/s0/m/a/f;->T1(Z)V

    .line 3
    iget-object v0, p0, Le/a/v4/s0/e;->j:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getScopes()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "scopesList"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v8, 0x3e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v2, " "

    invoke-static/range {v1 .. v8}, Le/q/f/a/d/a;->M1([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v6, Le/a/v4/s0/c;

    const/4 v2, 0x0

    invoke-direct {v6, p0, v0, v1, v2}, Le/a/v4/s0/c;-><init>(Le/a/v4/s0/e;Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;Ljava/lang/String;Ls1/w/d;)V

    const/4 v7, 0x3

    move-object v3, p0

    move-object v4, v9

    move-object v5, v10

    move-object v8, v11

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/e;->j:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getSdkVariantVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "interactionType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/v4/s0/g;->x()Le/a/v4/p0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/v4/p0/b;->b(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Le/a/v4/s0/g;->b:Le/a/v4/s0/m/a/f;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Le/a/v4/s0/m/a/f;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/v4/s0/e;->j:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getScopes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ls1/u/i;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/e;->m:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;->getRequestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public n()V
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/sdk/oAuth/networking/data/RejectionReason;->REJECTED:Lcom/truecaller/sdk/oAuth/networking/data/RejectionReason;

    invoke-virtual {v0}, Lcom/truecaller/sdk/oAuth/networking/data/RejectionReason;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/v4/s0/e;->A(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    sget-object v1, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedByPressingFooterError;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedByPressingFooterError;

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;-><init>(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    .line 3
    iput-object v0, p0, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0, v1}, Le/a/v4/s0/e;->B(IIZ)V

    .line 5
    iget-object v0, p0, Le/a/v4/s0/g;->b:Le/a/v4/s0/m/a/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/v4/s0/m/a/f;->V1()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 9

    .line 1
    sget-object v0, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedWhileLoadingError;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedWhileLoadingError;

    iget-boolean v1, p0, Le/a/v4/s0/e;->n:Z

    if-nez v1, :cond_3

    .line 2
    iget-boolean v1, p0, Le/a/v4/s0/g;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Le/a/v4/s0/e;->getCoroutineContext()Ls1/w/f;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4}, Ls1/a/a/a/v0/f/d;->X(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 5
    sget-object v1, Lcom/truecaller/sdk/oAuth/networking/data/RejectionReason;->DISMISSED:Lcom/truecaller/sdk/oAuth/networking/data/RejectionReason;

    invoke-virtual {v1}, Lcom/truecaller/sdk/oAuth/networking/data/RejectionReason;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Le/a/v4/s0/e;->A(Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    invoke-direct {v1, v0}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;-><init>(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    .line 7
    iput-object v1, p0, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    const/16 v0, 0xd

    .line 8
    invoke-virtual {p0, v2, v0, v2}, Le/a/v4/s0/e;->B(IIZ)V

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    .line 9
    invoke-static/range {v3 .. v8}, Le/a/l4/k;->A(Le/a/v4/s0/f;IIZILjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Le/a/v4/s0/e;->m:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

    if-nez v1, :cond_2

    .line 11
    new-instance v1, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    invoke-direct {v1, v0}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;-><init>(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    .line 12
    iput-object v1, p0, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    const/4 v3, 0x0

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    .line 13
    invoke-static/range {v2 .. v7}, Le/a/l4/k;->A(Le/a/v4/s0/f;IIZILjava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_2
    sget-object v0, Lcom/truecaller/sdk/oAuth/networking/data/RejectionReason;->DISMISSED:Lcom/truecaller/sdk/oAuth/networking/data/RejectionReason;

    invoke-virtual {v0}, Lcom/truecaller/sdk/oAuth/networking/data/RejectionReason;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/v4/s0/e;->A(Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;

    sget-object v1, Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedError;->c:Lcom/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedError;

    invoke-direct {v0, v1}, Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;-><init>(Lcom/truecaller/android/sdk/oAuth/TcOAuthError;)V

    .line 16
    iput-object v0, p0, Le/a/v4/s0/e;->l:Lcom/truecaller/android/sdk/oAuth/OAuthResponse;

    const/4 v0, 0x2

    .line 17
    invoke-virtual {p0, v2, v0, v2}, Le/a/v4/s0/e;->B(IIZ)V

    .line 18
    :goto_0
    iget-object v0, p0, Le/a/v4/s0/g;->b:Le/a/v4/s0/m/a/f;

    if-eqz v0, :cond_3

    .line 19
    invoke-interface {v0}, Le/a/v4/s0/m/a/f;->V1()V

    :cond_3
    return-void
.end method

.method public p()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ls1/k;

    .line 1
    iget-object v1, p0, Le/a/v4/s0/e;->k:Le/a/t/b/e/b;

    .line 2
    iget-object v1, v1, Le/a/t/b/e/b;->b:Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 3
    sget-object v4, Le/a/v4/p0/a;->d:Le/a/v4/p0/a$a;

    .line 4
    sget-object v4, Le/a/v4/p0/a;->b:Ljava/util/Map;

    .line 5
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 8
    iget v8, v1, Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;->c:I

    if-ne v7, v8, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    if-eqz v7, :cond_0

    .line 9
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 11
    invoke-static {v1}, Ls1/u/i;->d(Ljava/lang/Iterable;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v1, v2}, Ls1/u/i;->u(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    .line 12
    :cond_3
    sget-object v1, Le/a/v4/p0/a;->d:Le/a/v4/p0/a$a;

    .line 13
    sget-object v1, Le/a/v4/p0/a;->b:Ljava/util/Map;

    .line 14
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/u/i;->u(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    :goto_2
    new-instance v4, Ls1/k;

    const-string v5, "titleText"

    invoke-direct {v4, v5, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    .line 16
    iget-object v1, p0, Le/a/v4/s0/e;->k:Le/a/t/b/e/b;

    .line 17
    iget-object v1, v1, Le/a/t/b/e/b;->b:Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    if-eqz v1, :cond_7

    .line 18
    sget-object v4, Le/a/v4/p0/a;->d:Le/a/v4/p0/a$a;

    .line 19
    sget-object v4, Le/a/v4/p0/a;->c:Ljava/util/Map;

    .line 20
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 23
    iget v8, v1, Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;->e:I

    if-ne v7, v8, :cond_5

    move v7, v3

    goto :goto_4

    :cond_5
    move v7, v2

    :goto_4
    if-eqz v7, :cond_4

    .line 24
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 25
    :cond_6
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 26
    invoke-static {v1}, Ls1/u/i;->d(Ljava/lang/Iterable;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, v2}, Ls1/u/i;->u(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_5

    .line 27
    :cond_7
    sget-object v1, Le/a/v4/p0/a;->d:Le/a/v4/p0/a$a;

    .line 28
    sget-object v1, Le/a/v4/p0/a;->c:Ljava/util/Map;

    .line 29
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/u/i;->u(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    :goto_5
    new-instance v4, Ls1/k;

    const-string v5, "contextPrefixText"

    invoke-direct {v4, v5, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v3

    const/4 v1, 0x2

    .line 31
    iget-object v4, p0, Le/a/v4/s0/e;->k:Le/a/t/b/e/b;

    .line 32
    iget-object v4, v4, Le/a/t/b/e/b;->b:Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    if-eqz v4, :cond_b

    .line 33
    sget-object v5, Le/a/v4/p0/a;->d:Le/a/v4/p0/a$a;

    .line 34
    sget-object v5, Le/a/v4/p0/a;->a:Ljava/util/Map;

    .line 35
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 36
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 38
    iget v9, v4, Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;->d:I

    if-ne v8, v9, :cond_9

    move v8, v3

    goto :goto_7

    :cond_9
    move v8, v2

    :goto_7
    if-eqz v8, :cond_8

    .line 39
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 40
    :cond_a
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 41
    invoke-static {v4}, Ls1/u/i;->d(Ljava/lang/Iterable;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v4, v2}, Ls1/u/i;->u(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_8

    .line 42
    :cond_b
    sget-object v4, Le/a/v4/p0/a;->d:Le/a/v4/p0/a$a;

    .line 43
    sget-object v4, Le/a/v4/p0/a;->a:Ljava/util/Map;

    .line 44
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v2}, Ls1/u/i;->u(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    :goto_8
    new-instance v4, Ls1/k;

    const-string v5, "ctaText"

    invoke-direct {v4, v5, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x3

    .line 46
    iget-object v2, p0, Le/a/v4/s0/e;->k:Le/a/t/b/e/b;

    .line 47
    invoke-virtual {v2}, Le/a/t/b/e/b;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "rect"

    goto :goto_9

    :cond_c
    const-string v2, "round"

    .line 48
    :goto_9
    new-instance v4, Ls1/k;

    const-string v5, "buttonShape"

    invoke-direct {v4, v5, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    .line 49
    iget-object v1, p0, Le/a/v4/s0/e;->k:Le/a/t/b/e/b;

    .line 50
    invoke-virtual {v1, v3}, Le/a/t/b/e/b;->b(I)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_d

    const-string v1, "skip"

    goto :goto_a

    .line 51
    :cond_d
    iget-object v1, p0, Le/a/v4/s0/e;->k:Le/a/t/b/e/b;

    .line 52
    invoke-virtual {v1, v2}, Le/a/t/b/e/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "uam"

    goto :goto_a

    .line 53
    :cond_e
    iget-object v1, p0, Le/a/v4/s0/e;->k:Le/a/t/b/e/b;

    const/16 v3, 0x8

    .line 54
    invoke-virtual {v1, v3}, Le/a/t/b/e/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "edm"

    goto :goto_a

    .line 55
    :cond_f
    iget-object v1, p0, Le/a/v4/s0/e;->k:Le/a/t/b/e/b;

    const/16 v3, 0x10

    .line 56
    invoke-virtual {v1, v3}, Le/a/t/b/e/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "idl"

    goto :goto_a

    :cond_10
    const-string v1, "uan"

    .line 57
    :goto_a
    new-instance v3, Ls1/k;

    const-string v4, "additionalCta"

    invoke-direct {v3, v4, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    .line 58
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/e;->j:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getClientId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public s()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/v4/s0/e;->m:Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/v4/s0/g;->x()Le/a/v4/p0/b;

    move-result-object v1

    const-string v2, "info_clicked"

    invoke-interface {v1, v2}, Le/a/v4/p0/b;->b(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;

    .line 4
    iget-object v2, p0, Le/a/v4/s0/e;->k:Le/a/t/b/e/b;

    .line 5
    iget-object v2, v2, Le/a/t/b/e/b;->b:Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;

    const-string v3, "sdkOptionsEvaluator.sdkOptionsDataBundle"

    .line 6
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v3, p0, Le/a/v4/s0/e;->k:Le/a/t/b/e/b;

    .line 8
    invoke-virtual {v3}, Le/a/t/b/e/b;->a()Z

    move-result v3

    .line 9
    invoke-direct {v1, v0, v2, v3}, Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;-><init>(Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;Lcom/truecaller/android/sdk/oAuth/SdkOptionsDataBundle;Z)V

    .line 10
    iget-object v0, p0, Le/a/v4/s0/g;->b:Le/a/v4/s0/m/a/f;

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, v1}, Le/a/v4/s0/m/a/f;->U6(Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;)V

    :cond_0
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/e;->j:Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/android/sdk/oAuth/clients/PartnerInformationV2;->getState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/s0/e;->o:Ljava/util/Locale;

    .line 2
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale.language"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    const-string v0, "language"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Le/a/v4/s0/g;->x()Le/a/v4/p0/b;

    move-result-object v0

    const-string v1, "language_changed"

    invoke-interface {v0, v1}, Le/a/v4/p0/b;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/v4/s0/g;->d:Landroid/os/Bundle;

    const-string v1, "tc_oauth_extras_user_locale"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/v4/s0/g;->b:Le/a/v4/s0/m/a/f;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Le/a/v4/s0/m/a/f;->t6()V

    :cond_0
    return-void
.end method

.method public w()Le/a/t/b/e/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v4/s0/e;->k:Le/a/t/b/e/b;

    return-object v0
.end method
