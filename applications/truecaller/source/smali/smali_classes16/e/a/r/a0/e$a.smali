.class public final Le/a/r/a0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/a0/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r/a0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/r/a/l;Ls1/z/b/l;Ls1/z/b/a;Ls1/z/b/a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/r/a/l;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/String;",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "activity"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "onPhoneNumberSelected"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "onManualInputSelected"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "onNoPhoneNumbersAvailable"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-class v5, Le/a/r/a0/e;

    invoke-static {v5}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v5

    invoke-interface {v5}, Ls1/a/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentManager;->K(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Le/a/r/a0/e;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v3, Le/a/r/a0/e;

    invoke-direct {v3}, Le/a/r/a0/e;-><init>()V

    .line 3
    :goto_0
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_1

    .line 4
    invoke-virtual/range {p1 .. p1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    .line 5
    new-instance v5, Ln3/r/a/a;

    invoke-direct {v5, v4}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 6
    const-class v4, Le/a/r/a0/e;

    invoke-static {v4}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v4

    invoke-interface {v4}, Ls1/a/c;->c()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v5, v6, v3, v4, v7}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v5}, Ln3/r/a/a;->i()V

    .line 9
    :cond_1
    iput-object v0, v3, Le/a/r/a0/e;->a:Ls1/z/b/l;

    .line 10
    iput-object v1, v3, Le/a/r/a0/e;->b:Ls1/z/b/a;

    .line 11
    iput-object v2, v3, Le/a/r/a0/e;->c:Ls1/z/b/a;

    .line 12
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;-><init>()V

    .line 13
    iput-boolean v7, v0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->a:Z

    .line 14
    iget-object v1, v0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->b:[Ljava/lang/String;

    if-nez v1, :cond_2

    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->b:[Ljava/lang/String;

    .line 15
    :cond_2
    new-instance v1, Lcom/google/android/gms/auth/api/credentials/HintRequest;

    const/4 v8, 0x2

    iget-object v9, v0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->c:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    iget-boolean v11, v0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->a:Z

    iget-object v12, v0, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->b:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    move-object v7, v1

    .line 16
    invoke-direct/range {v7 .. v15}, Lcom/google/android/gms/auth/api/credentials/HintRequest;-><init>(ILcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;ZZ[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    new-instance v2, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    sget-object v4, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;->d:Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;)V

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApi;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApi;->getApiOptions()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApi;->getApiOptions()Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    .line 20
    iget-object v2, v2, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->b:Ljava/lang/String;

    .line 21
    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/internal/auth-api/zbn;->zba(Landroid/content/Context;Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;Lcom/google/android/gms/auth/api/credentials/HintRequest;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 22
    iget-object v1, v3, Le/a/r/a0/e;->d:Ln3/a/e/b;

    const-string v2, "it"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    .line 23
    new-instance v2, Landroidx/activity/result/IntentSenderRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v6, v6}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 24
    invoke-virtual {v1, v2, v3}, Ln3/a/e/b;->a(Ljava/lang/Object;Ln3/k/a/c;)V

    return-void
.end method
