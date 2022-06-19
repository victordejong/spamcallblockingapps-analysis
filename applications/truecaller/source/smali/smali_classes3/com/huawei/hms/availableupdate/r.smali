.class public Lcom/huawei/hms/availableupdate/r;
.super Lcom/huawei/hms/availableupdate/p;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/availableupdate/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.apptouch.intent.action.update_hms"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 8
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public a(Lcom/huawei/hms/availableupdate/q;)V
    .locals 2

    const-string v0, "AppTouchWizard"

    const-string v1, "Enter onCancel."

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    instance-of p1, p1, Lcom/huawei/hms/availableupdate/c0;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/r;->d()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/huawei/hms/availableupdate/q;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->a()V

    .line 14
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/availableupdate/q;

    .line 15
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/p;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/huawei/hms/availableupdate/c0;

    if-eqz v0, :cond_0

    const-string v0, "hms_update_title"

    .line 16
    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/availableupdate/p;->h:Ljava/lang/String;

    .line 17
    move-object v1, p1

    check-cast v1, Lcom/huawei/hms/availableupdate/c0;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/availableupdate/c0;->a(Ljava/lang/String;)V

    .line 18
    :cond_0
    invoke-virtual {p1, p0}, Lcom/huawei/hms/availableupdate/q;->a(Lcom/huawei/hms/availableupdate/p;)V

    .line 19
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/p;->d:Lcom/huawei/hms/availableupdate/q;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    const-string v0, "In showDialog, Failed to show the dialog."

    .line 20
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppTouchWizard"

    invoke-static {p1, v0, v1}, Le/d/c/a/a;->A0(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public b(Lcom/huawei/hms/availableupdate/q;)V
    .locals 2

    const-string v0, "AppTouchWizard"

    const-string v1, "Enter onDoWork."

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lcom/huawei/hms/availableupdate/c0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/huawei/hms/availableupdate/q;->b()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/r;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget p1, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/availableupdate/p;->a(II)V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->b()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/huawei/hms/availableupdate/p;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 4
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.huawei.appmarket.intent.action.AppDetail"

    .line 5
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "APP_PACKAGENAME"

    .line 6
    :try_start_1
    iget-object v4, p0, Lcom/huawei/hms/availableupdate/p;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v2}, Lcom/huawei/hms/availableupdate/r;->a(Landroid/content/Intent;)V

    .line 8
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/r;->getRequestCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v0, "AppTouchWizard"

    const-string v2, "can not open AppTouch detail page"

    .line 9
    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public d()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/huawei/hms/availableupdate/p;->c(II)V

    return-void
.end method

.method public getRequestCode()I
    .locals 1

    const/16 v0, 0x7d7

    return v0
.end method

.method public onBridgeActivityCreate(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/huawei/hms/availableupdate/p;->onBridgeActivityCreate(Landroid/app/Activity;)V

    .line 2
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/p;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    .line 3
    iput v0, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    .line 4
    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/UpdateBean;->isNeedConfirm()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huawei/hms/availableupdate/p;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    const-class p1, Lcom/huawei/hms/availableupdate/c0;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/r;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/r;->c()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget p1, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/availableupdate/p;->a(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBridgeActivityDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/huawei/hms/availableupdate/p;->onBridgeActivityDestroy()V

    return-void
.end method

.method public onBridgeActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/availableupdate/p;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/availableupdate/p;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hms/activity/IBridgeActivityDelegate;->onBridgeActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget p2, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    const/4 p3, 0x7

    const/4 v0, 0x0

    if-ne p2, p3, :cond_2

    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/r;->getRequestCode()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 4
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/p;->g:Ljava/lang/String;

    iget p2, p0, Lcom/huawei/hms/availableupdate/p;->i:I

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/availableupdate/p;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget p1, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/availableupdate/p;->c(II)V

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    const/16 p2, 0x8

    invoke-virtual {p0, p2, p1}, Lcom/huawei/hms/availableupdate/p;->c(II)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public onBridgeConfigurationChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/huawei/hms/availableupdate/p;->onBridgeConfigurationChanged()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/availableupdate/p;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/availableupdate/p;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/activity/IBridgeActivityDelegate;->onKeyUp(ILandroid/view/KeyEvent;)V

    return-void

    :cond_0
    const/4 p2, 0x4

    if-ne p2, p1, :cond_1

    const-string p1, "AppTouchWizard"

    const-string p2, "In onKeyUp, Call finish."

    .line 3
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->b()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
