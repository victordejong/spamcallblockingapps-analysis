.class public abstract Lcom/freshchat/consumer/sdk/m/y;
.super Le/m/a/g/e/e;
.source "SourceFile"


# instance fields
.field private orientation:I

.field private pq:Landroid/widget/FrameLayout;

.field private pr:Landroid/util/DisplayMetrics;

.field private ps:I

.field private pt:I

.field private pu:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/m/a/g/e/e;-><init>()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/y;->pr:Landroid/util/DisplayMetrics;

    const/4 v0, 0x1

    iput v0, p0, Lcom/freshchat/consumer/sdk/m/y;->pu:I

    return-void
.end method

.method private S(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/m/y;->T(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->ca(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/b/i;->cb(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr p1, v1

    iget v0, p0, Lcom/freshchat/consumer/sdk/m/y;->pu:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    iget v0, p0, Lcom/freshchat/consumer/sdk/m/y;->ps:I

    if-ge v0, p1, :cond_2

    move p1, v0

    :cond_2
    return p1
.end method

.method private T(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/y;->pr:Landroid/util/DisplayMetrics;

    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/y;->pr:Landroid/util/DisplayMetrics;

    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v0, p1, :cond_0

    :goto_0
    return v0
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/m/y;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/m/y;->pt:I

    return p1
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/m/y;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/m/y;->pq:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/m/y;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/y;->pq:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private hT()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/y;->pq:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    iget v1, p0, Lcom/freshchat/consumer/sdk/m/y;->orientation:I

    invoke-direct {p0, v1}, Lcom/freshchat/consumer/sdk/m/y;->S(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/m/y;->pq:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public R(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/freshchat/consumer/sdk/m/y;->pu:I

    iget v0, p0, Lcom/freshchat/consumer/sdk/m/y;->pt:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/freshchat/consumer/sdk/m/y;->ps:I

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/y;->hT()V

    return-void
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/m/y;->orientation:I

    return v0
.end method

.method public hS()V
    .locals 2

    iget v0, p0, Lcom/freshchat/consumer/sdk/m/y;->pu:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/freshchat/consumer/sdk/m/y;->pu:I

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/y;->hT()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/freshchat/consumer/sdk/m/y;->orientation:I

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/y;->hT()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Ln3/r/a/k;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/y;->pr:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Le/m/a/g/e/e;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Le/m/a/g/e/d;

    new-instance v0, Lcom/freshchat/consumer/sdk/m/z;

    invoke-direct {v0, p0, p1}, Lcom/freshchat/consumer/sdk/m/z;-><init>(Lcom/freshchat/consumer/sdk/m/y;Le/m/a/g/e/d;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/m/y;->orientation:I

    return-void
.end method
