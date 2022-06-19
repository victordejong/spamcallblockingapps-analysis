.class public final Lcom/hiya/stingray/ui/local/f/n/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/hiya/stingray/ui/local/f/n/g;Z)V
    .locals 1

    const-string v0, "$this$setIsLoading"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/hiya/stingray/ui/local/f/n/g;->k()Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/hiya/stingray/o;->Y2:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    const-string v0, "getItemView().progressBar"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public static final b(Lcom/hiya/stingray/ui/local/f/n/g;I)V
    .locals 1

    const-string v0, "$this$setMainIcon"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/hiya/stingray/ui/local/f/n/g;->k()Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/hiya/stingray/o;->O1:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static final c(Lcom/hiya/stingray/ui/local/f/n/g;I)V
    .locals 2

    const-string v0, "$this$setName"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/hiya/stingray/ui/local/f/n/g;->k()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/hiya/stingray/o;->P1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    invoke-interface {p0}, Lcom/hiya/stingray/ui/local/f/n/g;->k()Landroid/view/View;

    move-result-object p0

    sget p1, Lcom/hiya/stingray/o;->Q1:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string p1, "getItemView().itemSubtextTv"

    invoke-static {p0, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public static final d(Lcom/hiya/stingray/ui/local/f/n/g;Ljava/lang/String;)V
    .locals 2

    const-string v0, "$this$setName"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/hiya/stingray/ui/local/f/n/g;->k()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/hiya/stingray/o;->P1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "getItemView().itemNameTv"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-interface {p0}, Lcom/hiya/stingray/ui/local/f/n/g;->k()Landroid/view/View;

    move-result-object p0

    sget p1, Lcom/hiya/stingray/o;->Q1:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string p1, "getItemView().itemSubtextTv"

    invoke-static {p0, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public static final e(Lcom/hiya/stingray/ui/local/f/n/g;I)V
    .locals 2

    const-string v0, "$this$setSubtext"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/hiya/stingray/ui/local/f/n/g;->k()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/hiya/stingray/o;->Q1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    invoke-interface {p0}, Lcom/hiya/stingray/ui/local/f/n/g;->k()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string p1, "getItemView().itemSubtextTv"

    invoke-static {p0, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public static final f(Lcom/hiya/stingray/ui/local/f/n/g;I)V
    .locals 1

    const-string v0, "$this$setSupplementaryIcon"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/hiya/stingray/ui/local/f/n/g;->k()Landroid/view/View;

    move-result-object p0

    sget v0, Lcom/hiya/stingray/o;->P1:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method
