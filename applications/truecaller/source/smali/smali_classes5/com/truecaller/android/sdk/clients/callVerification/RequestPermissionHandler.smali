.class public final Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;,
        Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/r/a/l;

.field public final d:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$a;


# direct methods
.method public constructor <init>(Ln3/r/a/l;Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$a;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->c:Ln3/r/a/l;

    iput-object p2, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->d:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$a;

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->b:Ljava/util/Set;

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string p2, "android.permission.READ_PHONE_STATE"

    const-string v0, "android.permission.READ_CALL_LOG"

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    const-string p1, "android.permission.ANSWER_PHONE_CALLS"

    .line 4
    filled-new-array {p1, v0, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "android.permission.CALL_PHONE"

    .line 6
    filled-new-array {v0, p2, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->c:Ln3/r/a/l;

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragmentManager"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "FragTag"

    .line 3
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->K(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Le/a/t/b/c/k/e;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Le/a/t/b/c/k/e;

    invoke-direct {v2}, Le/a/t/b/c/k/e;-><init>()V

    .line 5
    new-instance v4, Ln3/r/a/a;

    invoke-direct {v4, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {v4, v3, v2, v1, v0}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {v4, v0}, Ln3/r/a/f0;->e(Ljava/lang/String;)Ln3/r/a/f0;

    .line 8
    invoke-virtual {v4}, Ln3/r/a/a;->f()I

    :goto_0
    const-string v0, "requestPermissionHandler"

    .line 9
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p0, v2, Le/a/t/b/c/k/e;->a:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;

    .line 11
    iget-object v0, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->b:Ljava/util/Set;

    new-array v1, v3, [Ljava/lang/String;

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v2, Le/a/t/b/c/k/e;->b:[Ljava/lang/String;

    .line 13
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/String;

    .line 14
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    const/16 v0, 0xc8

    .line 15
    invoke-virtual {v2, p1, v0}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/util/Set;Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->c:Ln3/r/a/l;

    const-string v4, "SHARED_PREFS_RUNTIME_PERMISSION"

    .line 5
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "context.getSharedPrefere\u2026N\", Context.MODE_PRIVATE)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->c:Ln3/r/a/l;

    .line 9
    sget v3, Ln3/k/a/b;->c:I

    .line 10
    invoke-virtual {v2, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->c:Ln3/r/a/l;

    invoke-static {v2, v1}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    move v3, v4

    :cond_4
    if-nez v3, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_5
    iget-object v2, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->c:Ln3/r/a/l;

    invoke-static {v2, v1}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    move v3, v4

    :cond_6
    if-eqz v3, :cond_0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public final c(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->c:Ln3/r/a/l;

    const-string v1, "SHARED_PREFS_RUNTIME_PERMISSION"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "context.getSharedPrefere\u2026N\", Context.MODE_PRIVATE)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->d:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->b:Ljava/util/Set;

    sget-object v2, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;->GRANTED:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;

    invoke-virtual {p0, v1, v2}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->b(Ljava/util/Set;Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->b:Ljava/util/Set;

    sget-object v3, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;->UN_GRANTED:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;

    invoke-virtual {p0, v2, v3}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->b(Ljava/util/Set;Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$a;->b(Ljava/util/Set;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->c:Ln3/r/a/l;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "activity.packageManager"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->c:Ln3/r/a/l;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity.packageName"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x1000

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "packageManager.getPackag\u2026eManager.GET_PERMISSIONS)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5
    array-length v1, v0

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    if-nez v1, :cond_5

    .line 6
    iget-object v1, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-static {v0, v2}, Le/q/f/a/d/a;->Q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_4

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_5
    :goto_3
    move v0, v4

    :goto_4
    if-eqz v0, :cond_b

    .line 9
    iget-object v0, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->b:Ljava/util/Set;

    sget-object v1, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;->UN_GRANTED:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->b(Ljava/util/Set;Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;)Ljava/util/Set;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;->PERMANENT_DENIED:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->b(Ljava/util/Set;Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;)Ljava/util/Set;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 12
    iget-object v1, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->d:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$a;

    if-eqz v1, :cond_6

    invoke-interface {v1, v0}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$a;->a(Ljava/util/Set;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_7

    .line 13
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    .line 14
    :cond_7
    sget-object v1, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;->TEMPORARY_DENIED:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->b(Ljava/util/Set;Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$Status;)Ljava/util/Set;

    move-result-object v0

    .line 15
    move-object v1, v0

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_9

    .line 16
    iget-object v1, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->d:Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$a;

    if-eqz v1, :cond_8

    invoke-interface {v1, v0}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler$a;->c(Ljava/util/Set;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_8
    if-eqz v2, :cond_9

    .line 17
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move v3, v4

    .line 18
    :goto_6
    iput-boolean v3, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->a:Z

    if-nez v3, :cond_a

    .line 19
    iget-object v0, p0, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->b:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/truecaller/android/sdk/clients/callVerification/RequestPermissionHandler;->a(Ljava/util/Set;)V

    :cond_a
    return-void

    .line 20
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Desired Permissions not requested in Android Manifest!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
