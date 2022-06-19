.class public Lcom/hiya/stingray/manager/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/d3$b;,
        Lcom/hiya/stingray/manager/d3$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/manager/g3;

.field private final c:Lcom/hiya/stingray/manager/i1;

.field private final d:Lcom/hiya/stingray/ui/login/o;

.field private final e:Lcom/hiya/stingray/manager/o3;

.field private final f:Lcom/hiya/stingray/q/d/a;

.field private final g:Lcom/hiya/stingray/manager/k1;

.field private final h:Lcom/hiya/stingray/manager/a4;

.field private final i:Lcom/hiya/stingray/manager/s1;

.field private final j:Lcom/hiya/stingray/manager/e1;

.field private final k:Lcom/hiya/stingray/manager/x3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/g3;Lcom/hiya/stingray/manager/i1;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/o3;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/manager/k1;Lcom/hiya/stingray/manager/a4;Lcom/hiya/stingray/manager/s1;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/manager/x3;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paywallManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSettingsManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionHandler"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberVerificationManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonSharedPreferences"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appsFlyerManager"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectManager"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callScreeningServiceManager"

    invoke-static {p9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p10, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfigManager"

    invoke-static {p11, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/d3;->b:Lcom/hiya/stingray/manager/g3;

    iput-object p3, p0, Lcom/hiya/stingray/manager/d3;->c:Lcom/hiya/stingray/manager/i1;

    iput-object p4, p0, Lcom/hiya/stingray/manager/d3;->d:Lcom/hiya/stingray/ui/login/o;

    iput-object p5, p0, Lcom/hiya/stingray/manager/d3;->e:Lcom/hiya/stingray/manager/o3;

    iput-object p6, p0, Lcom/hiya/stingray/manager/d3;->f:Lcom/hiya/stingray/q/d/a;

    iput-object p7, p0, Lcom/hiya/stingray/manager/d3;->g:Lcom/hiya/stingray/manager/k1;

    iput-object p8, p0, Lcom/hiya/stingray/manager/d3;->h:Lcom/hiya/stingray/manager/a4;

    iput-object p9, p0, Lcom/hiya/stingray/manager/d3;->i:Lcom/hiya/stingray/manager/s1;

    iput-object p10, p0, Lcom/hiya/stingray/manager/d3;->j:Lcom/hiya/stingray/manager/e1;

    iput-object p11, p0, Lcom/hiya/stingray/manager/d3;->k:Lcom/hiya/stingray/manager/x3;

    return-void
.end method

.method private final c()[Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->d:Lcom/hiya/stingray/ui/login/o;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/o;->c()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "permissionHandler.requiredPermissions"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    const-string v6, "android.permission.READ_CALL_LOG"

    .line 4
    invoke-static {v5, v6}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private final f()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->g:Lcom/hiya/stingray/manager/k1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/k1;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/d3;->w()V

    return-void
.end method

.method private final l(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/manager/d3;->f()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/manager/d3$a;->BATTERY_OPTIMIZATION:Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/d3$a;->getRequestCode()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private final m(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/hiya/stingray/ui/login/o;)V
    .locals 2

    const-string v0, "android.permission.READ_CALL_LOG"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/d3$a;->CALL_LOG_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/d3$a;->getRequestCode()I

    move-result v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    return-void
.end method

.method private final n(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/hiya/stingray/ui/login/o;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/manager/d3;->c()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/d3$a;->CALLS_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/d3$a;->getRequestCode()I

    move-result v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/hiya/stingray/ui/login/o;->c()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/d3$a;->CALLS_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/d3$a;->getRequestCode()I

    move-result v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method private final o(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "role"

    .line 1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/role/RoleManager;

    const-string v0, "android.app.role.CALL_SCREENING"

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/manager/d3$a;->DEFAULT_CALLER_ID_APP:Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/d3$a;->getRequestCode()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.role.RoleManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final p(Landroid/app/Activity;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 3
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final q(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/login/verification/VerificationActivity;->r:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$a;

    sget-object v1, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;->ONBAORDING:Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;

    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/ui/login/verification/VerificationActivity$a;->a(Landroid/content/Context;Lcom/hiya/stingray/ui/login/verification/VerificationActivity$b;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/manager/d3$a;->PHONE_VERIFICATION:Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/d3$a;->getRequestCode()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/manager/d3$b;)Z
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/d3;->j(Lcom/hiya/stingray/manager/d3$b;)Ljava/util/List;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/manager/d3$a;

    .line 4
    invoke-virtual {p0, v3}, Lcom/hiya/stingray/manager/d3;->i(Lcom/hiya/stingray/manager/d3$a;)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/s/k;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public final b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->d:Lcom/hiya/stingray/ui/login/o;

    iget-object v1, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/o;->c()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->f:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->v()J

    move-result-wide v0

    .line 3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/hiya/stingray/manager/d3;->k:Lcom/hiya/stingray/manager/x3;

    const-string v4, "permission_warning_period_hrs"

    invoke-virtual {v3, v4}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-eqz v8, :cond_2

    cmp-long v0, v2, v6

    if-eqz v0, :cond_1

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/d3;->t()V

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->f:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->g()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->f:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->h()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->c:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/i1;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->b:Lcom/hiya/stingray/manager/g3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/g3;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->b:Lcom/hiya/stingray/manager/g3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/g3;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->d:Lcom/hiya/stingray/ui/login/o;

    iget-object v1, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/login/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->e:Lcom/hiya/stingray/manager/o3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o3;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->h:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->h:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final h()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/hiya/stingray/manager/d3$a;->values()[Lcom/hiya/stingray/manager/d3$a;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {p0, v4}, Lcom/hiya/stingray/manager/d3;->i(Lcom/hiya/stingray/manager/d3$a;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/hiya/stingray/manager/d3$c;->f:Lcom/hiya/stingray/manager/d3$c;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const-string v2, ","

    invoke-static/range {v1 .. v9}, Lkotlin/s/k;->R(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "permissions_granted"

    invoke-static {v1, v0}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    invoke-static {v0}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final i(Lcom/hiya/stingray/manager/d3$a;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/e3;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x17

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/hiya/client/callerid/ui/e0/i;->a:Lcom/hiya/client/callerid/ui/e0/i;

    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/hiya/client/callerid/ui/e0/i;->a(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/hiya/stingray/manager/d3;->i:Lcom/hiya/stingray/manager/s1;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/s1;->c()Z

    move-result v0

    goto :goto_0

    .line 4
    :pswitch_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-static {p1, v0}, Landroidx/core/content/a;->j(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 7
    :pswitch_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_2

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 9
    :pswitch_4
    iget-object p1, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05000f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/manager/d3;->e:Lcom/hiya/stingray/manager/o3;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/o3;->b()Z

    move-result v0

    goto :goto_0

    .line 11
    :pswitch_5
    iget-object p1, p0, Lcom/hiya/stingray/manager/d3;->d:Lcom/hiya/stingray/ui/login/o;

    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    const-string v1, "android.permission.READ_CALL_LOG"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 12
    :pswitch_6
    iget-object p1, p0, Lcom/hiya/stingray/manager/d3;->d:Lcom/hiya/stingray/ui/login/o;

    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/hiya/stingray/manager/d3;->c()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    :cond_2
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lcom/hiya/stingray/manager/d3$b;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/manager/d3$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/manager/d3$a;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/hiya/stingray/manager/e3;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_4

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/hiya/stingray/manager/d3$a;

    .line 3
    iget-object v5, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/hiya/stingray/manager/d3$a;->PHONE_VERIFICATION:Lcom/hiya/stingray/manager/d3$a;

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    aput-object v5, p1, v1

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v1, v5, :cond_1

    sget-object v6, Lcom/hiya/stingray/manager/d3$a;->DISPLAY_OVER_APPS_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    aput-object v6, p1, v3

    if-lt v1, v5, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/manager/d3;->f()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hiya/stingray/manager/d3$a;->BATTERY_OPTIMIZATION:Lcom/hiya/stingray/manager/d3$a;

    goto :goto_2

    :cond_2
    move-object v0, v4

    :goto_2
    aput-object v0, p1, v2

    const/4 v0, 0x3

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_3

    .line 6
    sget-object v4, Lcom/hiya/stingray/manager/d3$a;->DEFAULT_CALLER_ID_APP:Lcom/hiya/stingray/manager/d3$a;

    :cond_3
    aput-object v4, p1, v0

    .line 7
    invoke-static {p1}, Lkotlin/s/k;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_5
    new-array p1, v2, [Lcom/hiya/stingray/manager/d3$a;

    .line 8
    sget-object v0, Lcom/hiya/stingray/manager/d3$a;->CALLS_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

    aput-object v0, p1, v1

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_6

    sget-object v4, Lcom/hiya/stingray/manager/d3$a;->CALL_LOG_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

    :cond_6
    aput-object v4, p1, v3

    .line 10
    invoke-static {p1}, Lkotlin/s/k;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public final r(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->f:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/manager/d3;->k()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->f:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/a;->Q(Z)V

    return-void
.end method

.method public final s(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->f:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/a;->R(Z)V

    return-void
.end method

.method public final t()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->f:Lcom/hiya/stingray/q/d/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/q/d/a;->i0(J)V

    .line 2
    new-instance v0, Landroidx/core/app/j$e;

    iget-object v1, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    const-string v2, "select_expired"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/j$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    const v2, 0x7f060048

    invoke-static {v1, v2}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->i(I)Landroidx/core/app/j$e;

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0x7f110028

    .line 5
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f110223

    .line 6
    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->k(Ljava/lang/CharSequence;)Landroidx/core/app/j$e;

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    const v3, 0x7f110224

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->l(Ljava/lang/CharSequence;)Landroidx/core/app/j$e;

    .line 8
    new-instance v1, Landroidx/core/app/j$c;

    invoke-direct {v1}, Landroidx/core/app/j$c;-><init>()V

    .line 9
    iget-object v3, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    new-array v7, v2, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v6

    .line 11
    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v1, v3}, Landroidx/core/app/j$c;->g(Ljava/lang/CharSequence;)Landroidx/core/app/j$c;

    .line 13
    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->B(Landroidx/core/app/j$f;)Landroidx/core/app/j$e;

    .line 14
    invoke-virtual {v0, v2}, Landroidx/core/app/j$e;->f(Z)Landroidx/core/app/j$e;

    const v1, 0x7f08012b

    .line 15
    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->z(I)Landroidx/core/app/j$e;

    .line 16
    iget-object v1, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    .line 17
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    const-class v4, Lcom/hiya/stingray/ui/LauncherActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x8000000

    .line 18
    invoke-static {v1, v6, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->j(Landroid/app/PendingIntent;)Landroidx/core/app/j$e;

    const-string v1, "NotificationCompat.Build\u2026                        )"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/hiya/stingray/manager/d3;->a:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/app/NotificationManager;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_1

    const/16 v2, 0x1b62

    .line 20
    invoke-virtual {v0}, Landroidx/core/app/j$e;->b()Landroid/app/Notification;

    move-result-object v0

    .line 21
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->j:Lcom/hiya/stingray/manager/e1;

    const-string v1, "permission_warning_notification_show"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/e1;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final u(Lcom/hiya/stingray/manager/d3$a;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/e3;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    new-instance p1, Lkotlin/k;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2, p3}, Lkotlin/k;-><init>(Ljava/lang/String;ILkotlin/w/c/g;)V

    throw p1

    .line 3
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/hiya/stingray/manager/d3;->o(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/hiya/stingray/manager/d3;->l(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/hiya/stingray/manager/d3;->p(Landroid/app/Activity;)V

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/hiya/stingray/manager/d3;->q(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 7
    :pswitch_5
    iget-object p1, p0, Lcom/hiya/stingray/manager/d3;->d:Lcom/hiya/stingray/ui/login/o;

    invoke-direct {p0, p2, p3, p1}, Lcom/hiya/stingray/manager/d3;->m(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/hiya/stingray/ui/login/o;)V

    goto :goto_0

    .line 8
    :pswitch_6
    iget-object p1, p0, Lcom/hiya/stingray/manager/d3;->d:Lcom/hiya/stingray/ui/login/o;

    invoke-direct {p0, p2, p3, p1}, Lcom/hiya/stingray/manager/d3;->n(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/hiya/stingray/ui/login/o;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v(Lcom/hiya/stingray/manager/d3$b;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/e3;->d:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/manager/d3;->d:Lcom/hiya/stingray/ui/login/o;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/o;->c()[Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/d3$a;->CALLS_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/d3$a;->getRequestCode()I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only supported for Type.GET_STARTED"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3;->j:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/d3;->h()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/e1;->f(Ljava/util/Map;)V

    return-void
.end method
