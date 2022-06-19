.class public final Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    sget v1, Lcom/hiya/stingray/o;->s:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    const v2, 0x7f0901ae

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "blockFabMenu.findViewByI\u2026d.fab_expand_menu_button)"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x7f11004f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->n1()Lcom/hiya/stingray/ui/local/blocking/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/blocking/a;->b()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    const-string v2, "blockFabMenu"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f06002a

    const v3, 0x7f060095

    const v4, 0x7f06019a

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->g1(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;III)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    sget v1, Lcom/hiya/stingray/o;->a1:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "fabMenuContainer"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->j1(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    sget v1, Lcom/hiya/stingray/o;->s:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    const v2, 0x7f0901ae

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "blockFabMenu.findViewByI\u2026d.fab_expand_menu_button)"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const v4, 0x7f110050

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    sget v2, Lcom/hiya/stingray/o;->T0:I

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;

    const-string v2, "enterNumberButton"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hiya/stingray/util/e0;->m(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->n1()Lcom/hiya/stingray/ui/local/blocking/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/blocking/a;->c()V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    const-string v4, "blockFabMenu"

    invoke-static {v2, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f06019a

    const v5, 0x7f060095

    const v6, 0x7f06005c

    invoke-static {v0, v2, v4, v5, v6}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->g1(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;III)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->w()V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    sget v1, Lcom/hiya/stingray/o;->a1:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060093

    invoke-static {v2, v4, v3}, Landroidx/core/content/c/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v2, "fabMenuContainer"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e$a;-><init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$e;->a:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    sget v1, Lcom/hiya/stingray/o;->w:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "blockListTextView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3
.end method
