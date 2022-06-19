.class public final Le/a/q/a/b/k;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/model/Profile;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/q/a/b/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Le/a/q/a/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/model/Profile;",
            ">;",
            "Le/a/q/a/b/l;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profiles"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spinnerItemSelectedListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Le/a/q/a/b/k;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/q/a/b/k;->b:Ljava/util/List;

    iput-object p3, p0, Le/a/q/a/b/k;->c:Le/a/q/a/b/l;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/contactfeedback/model/Profile;Le/a/q/a/b/m;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/q/a/b/k;->a:Landroid/content/Context;

    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    const-string v1, "GlideApp.with(context)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, p1, Lcom/truecaller/contactfeedback/model/Profile;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, -0x1

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "$this$loadAsAvatar"

    .line 4
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    invoke-static {v0, v1, v3}, Le/a/m0/a1$k;->O0(Le/f/a/i;Landroid/net/Uri;Ljava/lang/Integer;)Le/f/a/h;

    move-result-object v0

    .line 6
    sget v1, Lcom/truecaller/contactfeedback/R$drawable;->ic_tcx_default_avatar_48dp:I

    invoke-virtual {v0, v1}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/h;

    .line 7
    invoke-virtual {v0, v1}, Le/f/a/r/a;->k(I)Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/h;

    .line 8
    iget-object v1, p2, Le/a/q/a/b/m;->b:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v0, v1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 10
    iget-object v0, p0, Le/a/q/a/b/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p2, Le/a/q/a/b/m;->a:Landroid/widget/TextView;

    .line 12
    sget p2, Lcom/truecaller/contactfeedback/R$string;->spam_categories_anonymous_message:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p2, p2, Le/a/q/a/b/m;->a:Landroid/widget/TextView;

    .line 14
    sget v1, Lcom/truecaller/contactfeedback/R$string;->spam_categories_user_name_message:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 15
    iget-object p1, p1, Lcom/truecaller/contactfeedback/model/Profile;->a:Ljava/lang/String;

    aput-object p1, v2, v3

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q/a/b/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string v0, "parent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Le/a/q/a/b/k;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    sget v1, Lcom/truecaller/contactfeedback/R$layout;->item_dropdown_profile_name:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string p3, "inflater.inflate(R.layou\u2026file_name, parent, false)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p3, Le/a/q/a/b/m;

    invoke-direct {p3, p2}, Le/a/q/a/b/m;-><init>(Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    const-string v1, "null cannot be cast to non-null type com.truecaller.contactfeedback.presentation.addcomment.ViewHolder"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Le/a/q/a/b/m;

    .line 6
    :goto_0
    iget-object v1, p0, Le/a/q/a/b/k;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/contactfeedback/model/Profile;

    .line 7
    invoke-virtual {p0, v1, p3}, Le/a/q/a/b/k;->a(Lcom/truecaller/contactfeedback/model/Profile;Le/a/q/a/b/m;)V

    const/4 p3, 0x1

    if-nez p1, :cond_1

    move v2, p3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    .line 8
    iget-object v2, p0, Le/a/q/a/b/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/truecaller/contactfeedback/R$dimen;->simple_chip_tcx_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v0

    .line 9
    :goto_2
    invoke-virtual {p0}, Le/a/q/a/b/k;->getCount()I

    move-result v3

    sub-int/2addr v3, p3

    if-ne p1, v3, :cond_3

    move v3, p3

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    if-eqz v3, :cond_4

    .line 10
    iget-object v3, p0, Le/a/q/a/b/k;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/truecaller/contactfeedback/R$dimen;->simple_chip_tcx_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_4

    :cond_4
    move v3, v0

    .line 11
    :goto_4
    invoke-virtual {p2, v0, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 12
    new-instance v2, Le/a/q/a/b/j;

    invoke-direct {v2, p0, v1, p1}, Le/a/q/a/b/j;-><init>(Le/a/q/a/b/k;Lcom/truecaller/contactfeedback/model/Profile;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_5

    move v1, p3

    goto :goto_5

    :cond_5
    move v1, v0

    :goto_5
    if-eqz v1, :cond_6

    .line 13
    sget v1, Lcom/truecaller/contactfeedback/R$drawable;->profile_name_top_item_bg:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14
    :cond_6
    invoke-virtual {p0}, Le/a/q/a/b/k;->getCount()I

    move-result v1

    sub-int/2addr v1, p3

    if-ne p1, v1, :cond_7

    move v0, p3

    :cond_7
    if-eqz v0, :cond_8

    .line 15
    sget p1, Lcom/truecaller/contactfeedback/R$drawable;->profile_name_bottom_item_bg:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_8
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q/a/b/k;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/contactfeedback/model/Profile;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x1

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const-string p2, "parent"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/q/a/b/k;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/contactfeedback/model/Profile;

    .line 2
    iget-object p2, p0, Le/a/q/a/b/k;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/truecaller/contactfeedback/R$layout;->item_selected_profile_name:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string p3, "view"

    .line 3
    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "itemView"

    .line 4
    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget p3, Lcom/truecaller/contactfeedback/R$id;->name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "itemView.findViewById(R.id.name)"

    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/truecaller/contactfeedback/R$id;->avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "itemView.findViewById(R.id.avatar)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    .line 7
    iget-object v2, p0, Le/a/q/a/b/k;->a:Landroid/content/Context;

    invoke-static {v2}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v2

    const-string v3, "GlideApp.with(context)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 8
    iget-object v4, p1, Lcom/truecaller/contactfeedback/model/Profile;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const/4 v5, -0x1

    .line 9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "$this$loadAsAvatar"

    .line 10
    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 11
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_1
    invoke-static {v2, v3, v5}, Le/a/m0/a1$k;->O0(Le/f/a/i;Landroid/net/Uri;Ljava/lang/Integer;)Le/f/a/h;

    move-result-object v2

    .line 12
    sget v3, Lcom/truecaller/contactfeedback/R$drawable;->ic_tcx_default_avatar_48dp:I

    invoke-virtual {v2, v3}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object v2

    check-cast v2, Le/f/a/h;

    .line 13
    invoke-virtual {v2, v3}, Le/f/a/r/a;->k(I)Le/f/a/r/a;

    move-result-object v2

    check-cast v2, Le/f/a/h;

    .line 14
    invoke-virtual {v2, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 15
    iget-object v0, p0, Le/a/q/a/b/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p1, :cond_2

    .line 16
    sget p1, Lcom/truecaller/contactfeedback/R$string;->spam_categories_anonymous_message:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_2
    sget v2, Lcom/truecaller/contactfeedback/R$string;->spam_categories_user_name_message:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    iget-object p1, p1, Lcom/truecaller/contactfeedback/model/Profile;->a:Ljava/lang/String;

    aput-object p1, v3, v1

    .line 19
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2
.end method
