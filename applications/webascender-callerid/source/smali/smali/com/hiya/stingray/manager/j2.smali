.class public Lcom/hiya/stingray/manager/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/manager/s2;

.field private final c:Lcom/hiya/stingray/q/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/q/d/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonSharedPreferences"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/j2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/j2;->b:Lcom/hiya/stingray/manager/s2;

    iput-object p3, p0, Lcom/hiya/stingray/manager/j2;->c:Lcom/hiya/stingray/q/d/a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/j2;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/manager/j2;->c:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/j2;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/j2;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    iget-object v1, p0, Lcom/hiya/stingray/manager/j2;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/j2;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hiya/client/callerid/ui/e;->n(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/manager/j2;->f(Z)V

    :goto_1
    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/j2;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hiya/client/callerid/ui/e0/i;->a:Lcom/hiya/client/callerid/ui/e0/i;

    iget-object v1, p0, Lcom/hiya/stingray/manager/j2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/e0/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/e0/i;->a:Lcom/hiya/client/callerid/ui/e0/i;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/e0/i;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/manager/j2;->b:Lcom/hiya/stingray/manager/s2;

    sget-object v2, Lcom/hiya/stingray/manager/s2$c;->IN_CALL_UI:Lcom/hiya/stingray/manager/s2$c;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/hiya/stingray/manager/s2;->r(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final e(Landroidx/fragment/app/Fragment;I)Z
    .locals 5

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_2

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/j2;->a:Landroid/content/Context;

    const-string v3, "role"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Landroid/app/role/RoleManager;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/app/role/RoleManager;

    if-eqz v0, :cond_1

    const-string v1, "android.app.role.DIALER"

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    :cond_1
    return v1

    .line 5
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lcom/hiya/stingray/manager/j2;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    .line 7
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Intent(TelecomManager.AC\u2026ame\n                    )"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/hiya/stingray/manager/j2;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_3

    return v1

    .line 9
    :cond_3
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2
.end method

.method public f(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/j2;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/j2;->c:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/a;->Y(Z)V

    .line 3
    sget-object p1, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    iget-object v0, p0, Lcom/hiya/stingray/manager/j2;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/j2;->a()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/hiya/client/callerid/ui/e;->n(Landroid/content/Context;Z)V

    return-void
.end method
