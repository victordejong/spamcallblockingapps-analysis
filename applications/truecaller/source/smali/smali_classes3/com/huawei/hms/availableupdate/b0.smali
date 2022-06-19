.class public Lcom/huawei/hms/availableupdate/b0;
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
    .locals 4

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.huawei.appmarket.tv"

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.huawei.appmarket.car"

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.huawei.appmarket"

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 12
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 13
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public a(Lcom/huawei/hms/availableupdate/q;)V
    .locals 2

    const-string v0, "HiappWizard"

    const-string v1, "Enter onCancel."

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    instance-of p1, p1, Lcom/huawei/hms/availableupdate/c0;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/b0;->d()V

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

    .line 15
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->a()V

    .line 16
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/availableupdate/q;

    .line 17
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/p;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/huawei/hms/availableupdate/c0;

    if-eqz v0, :cond_0

    const-string v0, "hms_update_title"

    .line 18
    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/availableupdate/p;->h:Ljava/lang/String;

    .line 19
    move-object v1, p1

    check-cast v1, Lcom/huawei/hms/availableupdate/c0;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/availableupdate/c0;->a(Ljava/lang/String;)V

    .line 20
    :cond_0
    invoke-virtual {p1, p0}, Lcom/huawei/hms/availableupdate/q;->a(Lcom/huawei/hms/availableupdate/p;)V

    .line 21
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

    .line 22
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "HiappWizard"

    invoke-static {p1, v0, v1}, Le/d/c/a/a;->A0(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public b(Lcom/huawei/hms/availableupdate/q;)V
    .locals 2

    const-string v0, "HiappWizard"

    const-string v1, "Enter onDoWork."

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lcom/huawei/hms/availableupdate/c0;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/huawei/hms/availableupdate/q;->b()V

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/b0;->c()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/p;->a(Z)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 6
    iget p1, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/availableupdate/p;->c(II)V

    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/availableupdate/p;->a(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()Z
    .locals 8

    const-string v0, "HiappWizard"

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/p;->b()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/huawei/hms/availableupdate/p;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 4
    :cond_1
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.huawei.appmarket.intent.action.AppDetail"

    .line 5
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "APP_PACKAGENAME"

    .line 6
    :try_start_1
    iget-object v5, p0, Lcom/huawei/hms/availableupdate/p;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-static {}, Lcom/huawei/hms/android/SystemUtils;->isTVDevice()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 8
    new-instance v4, Lcom/huawei/hms/utils/PackageManagerHelper;

    invoke-direct {v4, v1}, Lcom/huawei/hms/utils/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    const-string v6, "com.hisilicon.android.hiRMService"

    .line 9
    invoke-virtual {v4, v6}, Lcom/huawei/hms/utils/PackageManagerHelper;->getPackageVersionCode(Ljava/lang/String;)I

    move-result v4

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v4, v5, :cond_2

    const-string v4, "startActivity"

    .line 11
    invoke-static {v0, v4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    .line 12
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, v3}, Lcom/huawei/hms/availableupdate/b0;->a(Landroid/content/Intent;)V

    .line 14
    invoke-virtual {v1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 15
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return v5

    :cond_2
    const-string v4, "startActivityForResult"

    .line 16
    invoke-static {v0, v4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v3}, Lcom/huawei/hms/availableupdate/b0;->a(Landroid/content/Intent;)V

    .line 18
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/b0;->getRequestCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return v5

    :catch_0
    const-string v1, "can not open hiapp"

    .line 19
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v2
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

    const/16 v0, 0x7d5

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
    const/4 v0, 0x5

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

    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/b0;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/b0;->c()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/p;->a(Z)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_2

    .line 8
    iget p1, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/availableupdate/p;->c(II)V

    goto :goto_0

    .line 9
    :cond_2
    iget p1, p0, Lcom/huawei/hms/availableupdate/p;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/availableupdate/p;->a(II)V

    :cond_3
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

    const/4 p3, 0x5

    const/4 v0, 0x0

    if-ne p2, p3, :cond_2

    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/b0;->getRequestCode()I

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

    const-string p1, "HiappWizard"

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
