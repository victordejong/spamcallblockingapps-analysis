.class public abstract Le/a/h0/g;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Le/a/h0/i;


# instance fields
.field public a:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public C9()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;->COUNTRY:Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;

    invoke-static {v0, v1}, Lcom/truecaller/filters/blockedevents/BlockDialogActivity;->pa(Landroid/content/Context;Lcom/truecaller/filters/blockedevents/BlockDialogActivity$DialogType;)V

    return-void
.end method

.method public OA(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    check-cast v0, Ln3/b/a/h;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v1

    check-cast v1, Ln3/b/a/h;

    iget-object v2, p0, Le/a/h0/g;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v2}, Ln3/b/a/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    invoke-virtual {v0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ln3/b/a/a;->n(Z)V

    .line 5
    invoke-virtual {v0, p1}, Ln3/b/a/a;->x(I)V

    :cond_0
    return-void
.end method

.method public d0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a1270

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Le/a/h0/g;->a:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method
