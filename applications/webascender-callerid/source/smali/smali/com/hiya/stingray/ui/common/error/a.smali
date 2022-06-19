.class public Lcom/hiya/stingray/ui/common/error/a;
.super Lcom/hiya/stingray/ui/common/error/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/error/b;-><init>()V

    return-void
.end method

.method static synthetic v1(Lcom/hiya/stingray/ui/common/error/a;Landroidx/fragment/app/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/common/error/a;->x1(Landroidx/fragment/app/d;Ljava/lang/String;)V

    return-void
.end method

.method private w1(Landroidx/appcompat/app/b;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/common/error/a$a;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/ui/common/error/a$a;-><init>(Lcom/hiya/stingray/ui/common/error/a;Landroidx/appcompat/app/b;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_0
    return-void
.end method

.method private x1(Landroidx/fragment/app/d;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/n;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/fragment/app/n;->j0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/y;->q(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/y;->g(Ljava/lang/String;)Landroidx/fragment/app/y;

    .line 6
    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/d;->o1(Landroidx/fragment/app/y;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public g1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/error/b;->g1(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroidx/appcompat/app/b;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/b;

    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/common/error/a;->w1(Landroidx/appcompat/app/b;)V

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "ErrorAlertDialog must be an AlertDialog."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected t1()Landroidx/appcompat/app/b$a;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/error/b;->t1()Landroidx/appcompat/app/b$a;

    move-result-object v0

    const v1, 0x7f1100d5

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/b$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    return-object v0
.end method
