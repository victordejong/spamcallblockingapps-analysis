.class public Le/a/x3/h/c;
.super Le/a/x3/h/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/x3/h/e;-><init>()V

    return-void
.end method


# virtual methods
.method public QA()I
    .locals 1

    const v0, 0x106000d

    return v0
.end method

.method public RA()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/x3/h/e;->e:Lcom/truecaller/forcedupdate/UpdateType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    sget v0, Lcom/truecaller/forcedupdate/ui/R$drawable;->fu_img_discontinued_small:I

    return v0

    .line 3
    :cond_1
    sget v0, Lcom/truecaller/forcedupdate/ui/R$drawable;->fu_img_required_small:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/truecaller/forcedupdate/ui/R$id;->spacer:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Le/a/x3/h/e;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/truecaller/forcedupdate/ui/R$layout;->fu_update_compact:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Le/a/x3/h/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p2, p0, Le/a/x3/h/e;->e:Lcom/truecaller/forcedupdate/UpdateType;

    sget-object v0, Lcom/truecaller/forcedupdate/UpdateType;->DISCONTINUED:Lcom/truecaller/forcedupdate/UpdateType;

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Le/a/x3/h/e;->f:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/forcedupdate/ui/R$color;->fu_grey_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 4
    :cond_0
    sget p2, Lcom/truecaller/forcedupdate/ui/R$id;->spacer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
