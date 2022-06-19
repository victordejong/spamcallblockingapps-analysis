.class public Lcom/huawei/hms/availableupdate/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/AlertDialog$Builder;

.field public b:Landroid/app/Activity;

.field public c:Lcom/huawei/hms/availableupdate/q;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog$Builder;Landroid/app/Activity;Lcom/huawei/hms/availableupdate/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/i0;->a:Landroid/app/AlertDialog$Builder;

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/availableupdate/i0;->b:Landroid/app/Activity;

    .line 4
    iput-object p3, p0, Lcom/huawei/hms/availableupdate/i0;->c:Lcom/huawei/hms/availableupdate/q;

    return-void
.end method

.method public static synthetic a(Lcom/huawei/hms/availableupdate/i0;)Lcom/huawei/hms/availableupdate/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/availableupdate/i0;->c:Lcom/huawei/hms/availableupdate/q;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/app/AlertDialog;
    .locals 7

    const-string v0, "ReconfirmInstallDialog"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "hms_install_after_cancel"

    .line 2
    invoke-static {v2}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getStringId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "hms_cancel_after_cancel"

    .line 3
    invoke-static {v3}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getStringId(Ljava/lang/String;)I

    move-result v3

    const-string v4, "hms_cancel_install_message"

    .line 4
    invoke-static {v4}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getStringId(Ljava/lang/String;)I

    move-result v4

    .line 5
    iget-object v5, p0, Lcom/huawei/hms/availableupdate/i0;->a:Landroid/app/AlertDialog$Builder;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/huawei/hms/availableupdate/i0;->b:Landroid/app/Activity;

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/huawei/hms/availableupdate/i0;->c:Lcom/huawei/hms/availableupdate/q;

    if-nez v6, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "this mActivity is finished."

    .line 7
    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 8
    :cond_1
    iget-object v5, p0, Lcom/huawei/hms/availableupdate/i0;->a:Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/huawei/hms/availableupdate/i0;->b:Landroid/app/Activity;

    invoke-virtual {v6, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 9
    iget-object v4, p0, Lcom/huawei/hms/availableupdate/i0;->a:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/huawei/hms/availableupdate/i0$a;

    invoke-direct {v5, p0}, Lcom/huawei/hms/availableupdate/i0$a;-><init>(Lcom/huawei/hms/availableupdate/i0;)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10
    iget-object v2, p0, Lcom/huawei/hms/availableupdate/i0;->a:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/huawei/hms/availableupdate/i0$b;

    invoke-direct {v4, p0}, Lcom/huawei/hms/availableupdate/i0$b;-><init>(Lcom/huawei/hms/availableupdate/i0;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    iget-object v2, p0, Lcom/huawei/hms/availableupdate/i0;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 12
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: mBuilder, mActivity or mDialog is null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/hms/availableupdate/i0;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/hms/availableupdate/i0;->b:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/hms/availableupdate/i0;->c:Lcom/huawei/hms/availableupdate/q;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    const-string v3, "createNewDialog exception: "

    .line 13
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v3, v0}, Le/d/c/a/a;->A0(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v1
.end method
