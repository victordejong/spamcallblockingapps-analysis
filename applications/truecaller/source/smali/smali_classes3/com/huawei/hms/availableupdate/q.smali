.class public abstract Lcom/huawei/hms/availableupdate/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/AlertDialog;

.field public b:Lcom/huawei/hms/availableupdate/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "androidhwext:style/Theme.Emui"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/q;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/AlertDialog;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/q;->a:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 10
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/q;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 11
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/q;->a:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 13
    new-instance v0, Lcom/huawei/hms/availableupdate/q$b;

    invoke-direct {v0, p0}, Lcom/huawei/hms/availableupdate/q$b;-><init>(Lcom/huawei/hms/availableupdate/q;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 14
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public a(Lcom/huawei/hms/availableupdate/p;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/q;->b:Lcom/huawei/hms/availableupdate/p;

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/q;->e()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/q;->e()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/q;->g()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/availableupdate/q;->a:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 6
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/q;->a:Landroid/app/AlertDialog;

    new-instance v0, Lcom/huawei/hms/availableupdate/q$a;

    invoke-direct {v0, p0}, Lcom/huawei/hms/availableupdate/q$a;-><init>(Lcom/huawei/hms/availableupdate/q;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 7
    iget-object p1, p0, Lcom/huawei/hms/availableupdate/q;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "AbstractDialog"

    const-string v0, "In show, The activity is null or finishing."

    .line 8
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/q;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/q;->b:Lcom/huawei/hms/availableupdate/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/huawei/hms/availableupdate/p;->a(Lcom/huawei/hms/availableupdate/q;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/q;->b:Lcom/huawei/hms/availableupdate/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/huawei/hms/availableupdate/p;->b(Lcom/huawei/hms/availableupdate/q;)V

    :cond_0
    return-void
.end method

.method public e()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/q;->b:Lcom/huawei/hms/availableupdate/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hms/availableupdate/p;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/q;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/availableupdate/q;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public abstract g()Landroid/app/AlertDialog;
.end method
