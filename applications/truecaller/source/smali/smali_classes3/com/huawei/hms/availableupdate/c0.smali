.class public Lcom/huawei/hms/availableupdate/c0;
.super Lcom/huawei/hms/availableupdate/q;
.source "SourceFile"


# static fields
.field public static f:Z


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lcom/huawei/hms/availableupdate/c0;

.field public e:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/availableupdate/q;-><init>()V

    const-string v0, "hms_update_title"

    .line 2
    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/availableupdate/c0;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/huawei/hms/availableupdate/c0;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/availableupdate/c0;->e:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic a(Lcom/huawei/hms/availableupdate/c0;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/c0;->e:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic a(Z)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/huawei/hms/availableupdate/c0;->b(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/huawei/hms/availableupdate/c0;)Lcom/huawei/hms/availableupdate/c0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/availableupdate/c0;->d:Lcom/huawei/hms/availableupdate/c0;

    return-object p0
.end method

.method public static b(Z)V
    .locals 0

    .line 2
    sput-boolean p0, Lcom/huawei/hms/availableupdate/c0;->f:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/c0;->c:Ljava/lang/String;

    return-void
.end method

.method public g()Landroid/app/AlertDialog;
    .locals 7

    .line 1
    iput-object p0, p0, Lcom/huawei/hms/availableupdate/c0;->d:Lcom/huawei/hms/availableupdate/c0;

    const-string v0, "hms_update_message_new"

    .line 2
    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getStringId(Ljava/lang/String;)I

    move-result v0

    const-string v1, "hms_install"

    .line 3
    invoke-static {v1}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getStringId(Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/q;->e()Landroid/app/Activity;

    move-result-object v2

    .line 5
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/q;->f()I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 6
    invoke-static {}, Lcom/huawei/hms/availableupdate/t;->b()Lcom/huawei/hms/availableupdate/t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hms/availableupdate/t;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/huawei/hms/availableupdate/c0;->f:Z

    if-eqz v4, :cond_1

    .line 7
    iget-object v4, p0, Lcom/huawei/hms/availableupdate/c0;->e:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    return-object v4

    .line 8
    :cond_0
    new-instance v4, Lcom/huawei/hms/availableupdate/i0;

    iget-object v5, p0, Lcom/huawei/hms/availableupdate/c0;->d:Lcom/huawei/hms/availableupdate/c0;

    invoke-direct {v4, v3, v2, v5}, Lcom/huawei/hms/availableupdate/i0;-><init>(Landroid/app/AlertDialog$Builder;Landroid/app/Activity;Lcom/huawei/hms/availableupdate/q;)V

    invoke-virtual {v4}, Lcom/huawei/hms/availableupdate/i0;->a()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/hms/availableupdate/c0;->e:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    return-object v4

    :cond_1
    const/4 v4, 0x0

    .line 9
    invoke-static {v4}, Lcom/huawei/hms/availableupdate/c0;->b(Z)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 10
    iget-object v6, p0, Lcom/huawei/hms/availableupdate/c0;->c:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-virtual {v2, v0, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 11
    new-instance v0, Lcom/huawei/hms/availableupdate/c0$a;

    invoke-direct {v0, p0}, Lcom/huawei/hms/availableupdate/c0$a;-><init>(Lcom/huawei/hms/availableupdate/c0;)V

    invoke-virtual {v3, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "hms_cancel"

    .line 12
    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getStringId(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/huawei/hms/availableupdate/c0$b;

    invoke-direct {v1, p0, v3, v2}, Lcom/huawei/hms/availableupdate/c0$b;-><init>(Lcom/huawei/hms/availableupdate/c0;Landroid/app/AlertDialog$Builder;Landroid/app/Activity;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 13
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
