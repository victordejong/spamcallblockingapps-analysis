.class public final Le/a/c/a/j/c/a;
.super Ln3/b0/a/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/b0/a/p<",
        "Le/a/c/a/j/b/d;",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "-",
            "Le/a/c/a/j/b/d;",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/b0/m/c/a;


# direct methods
.method public constructor <init>(Le/a/b0/m/c/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "searchApi"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/a/j/c/b;

    invoke-direct {v0}, Le/a/c/a/j/c/b;-><init>()V

    invoke-direct {p0, v0}, Ln3/b0/a/p;-><init>(Ln3/b0/a/h$e;)V

    iput-object p1, p0, Le/a/c/a/j/c/a;->b:Le/a/b0/m/c/a;

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ln3/b0/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/a/j/b/d;

    .line 2
    instance-of v0, p1, Le/a/c/a/j/b/c;

    if-eqz v0, :cond_0

    sget p1, Lcom/truecaller/insights/ui/R$layout;->layout_quick_filter_category_item:I

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Le/a/c/a/j/b/j;

    if-eqz v0, :cond_1

    sget p1, Lcom/truecaller/insights/ui/R$layout;->layout_quick_filter_sender_item:I

    goto :goto_0

    .line 4
    :cond_1
    instance-of p1, p1, Le/a/c/a/j/b/e;

    if-eqz p1, :cond_2

    sget p1, Lcom/truecaller/insights/ui/R$layout;->layout_quick_filter_shimmer_placeholder_item:I

    :goto_0
    return p1

    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 25

    move-object/from16 v0, p1

    const-string v1, "holder"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 1
    invoke-virtual {v1, v2}, Ln3/b0/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/a/j/b/d;

    .line 2
    instance-of v3, v2, Le/a/c/a/j/b/c;

    const/4 v4, 0x0

    const-string v5, "filterItem"

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    check-cast v0, Le/a/c/a/j/c/k/b;

    check-cast v2, Le/a/c/a/j/b/c;

    .line 3
    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v2}, Le/a/c/a/j/c/k/d;->N4(Le/a/c/a/j/b/d;)V

    .line 5
    iget-object v3, v0, Le/a/c/a/j/c/k/b;->b:Le/a/c/a/g/h1;

    .line 6
    iget-object v5, v3, Le/a/c/a/g/h1;->b:Lcom/google/android/material/card/MaterialCardView;

    const-string v7, "category"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-boolean v7, v2, Le/a/c/a/j/b/c;->c:Z

    .line 8
    invoke-virtual {v5, v7}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 9
    iget-object v5, v3, Le/a/c/a/g/h1;->c:Landroid/widget/CheckedTextView;

    const-string v7, "categoryLabel"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-boolean v8, v2, Le/a/c/a/j/b/c;->c:Z

    .line 11
    invoke-virtual {v5, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 12
    iget-object v5, v0, Le/a/c/a/j/c/k/d;->a:Landroid/content/Context;

    .line 13
    iget-object v8, v2, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    .line 14
    invoke-virtual {v8}, Lcom/truecaller/insights/insightsui/CategoryModel;->getTagCategory()Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object v8

    invoke-static {v8}, Le/a/c/a/r/f;->a(Lcom/truecaller/insights/smartcards/SmartCardCategory;)I

    move-result v8

    .line 15
    sget-object v9, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 16
    invoke-static {v5, v8}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 17
    iget-object v8, v0, Le/a/c/a/j/c/k/d;->a:Landroid/content/Context;

    .line 18
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/truecaller/insights/ui/R$dimen;->dp14:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    if-eqz v5, :cond_0

    .line 19
    invoke-virtual {v5, v6, v6, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 20
    :cond_0
    iget-object v6, v0, Le/a/c/a/j/c/k/b;->b:Le/a/c/a/g/h1;

    iget-object v6, v6, Le/a/c/a/g/h1;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {v6, v5, v4, v4, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object v4, v3, Le/a/c/a/g/h1;->c:Landroid/widget/CheckedTextView;

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v5, v2, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    .line 23
    invoke-virtual {v5}, Lcom/truecaller/insights/insightsui/CategoryModel;->getTagCategory()Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object v5

    .line 24
    iget-object v6, v0, Le/a/c/a/j/c/k/d;->a:Landroid/content/Context;

    .line 25
    invoke-static {v5, v6}, Le/a/c/a/r/f;->c(Lcom/truecaller/insights/smartcards/SmartCardCategory;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v3, v3, Le/a/c/a/g/h1;->b:Lcom/google/android/material/card/MaterialCardView;

    new-instance v4, Le/a/c/a/j/c/k/a;

    invoke-direct {v4, v0, v2}, Le/a/c/a/j/c/k/a;-><init>(Le/a/c/a/j/c/k/b;Le/a/c/a/j/b/c;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 27
    :cond_1
    instance-of v3, v2, Le/a/c/a/j/b/j;

    if-eqz v3, :cond_6

    check-cast v0, Le/a/c/a/j/c/k/g;

    check-cast v2, Le/a/c/a/j/b/j;

    .line 28
    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v2}, Le/a/c/a/j/c/k/d;->N4(Le/a/c/a/j/b/d;)V

    .line 30
    iget-object v3, v0, Le/a/c/a/j/c/k/g;->c:Le/a/c/a/g/i1;

    .line 31
    iget-object v5, v3, Le/a/c/a/g/i1;->b:Lcom/google/android/material/card/MaterialCardView;

    const-string v7, "sender"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-boolean v7, v2, Le/a/c/a/j/b/j;->e:Z

    .line 33
    invoke-virtual {v5, v7}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 34
    iget-object v5, v3, Le/a/c/a/g/i1;->d:Landroid/widget/CheckedTextView;

    const-string v7, "senderLabel"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-boolean v8, v2, Le/a/c/a/j/b/j;->e:Z

    .line 36
    invoke-virtual {v5, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 37
    iget-object v5, v3, Le/a/c/a/g/i1;->d:Landroid/widget/CheckedTextView;

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v7, v2, Le/a/c/a/j/b/j;->d:Ljava/lang/String;

    .line 39
    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v3, v3, Le/a/c/a/g/i1;->b:Lcom/google/android/material/card/MaterialCardView;

    new-instance v5, Le/a/c/a/j/c/k/e;

    invoke-direct {v5, v0, v2}, Le/a/c/a/j/c/k/e;-><init>(Le/a/c/a/j/c/k/g;Le/a/c/a/j/b/j;)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v2, v2, Le/a/c/a/j/b/j;->c:Le/a/c/q/h;

    .line 42
    iget-object v2, v2, Le/a/c/q/h;->b:Ljava/util/Set;

    .line 43
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 44
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v6

    :goto_0
    if-eqz v5, :cond_2

    move-object v4, v3

    .line 45
    :cond_4
    check-cast v4, Ljava/lang/String;

    const-string v2, ""

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move-object v4, v2

    .line 46
    :goto_1
    new-instance v3, Le/a/b0/a/b/a;

    new-instance v5, Le/a/p5/i0;

    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v8, "itemView"

    const-string v9, "itemView.context"

    invoke-static {v7, v8, v9}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v5}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    const/4 v5, 0x2

    .line 47
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move-object v8, v7

    const-string v9, "Uri.EMPTY"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "name"

    .line 48
    invoke-static {v2, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "identifier"

    invoke-static {v4, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "icon"

    invoke-static {v7, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {v4, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v2, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v7, v2

    const/4 v14, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v16, v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0xffbc

    move-object v9, v4

    invoke-direct/range {v7 .. v24}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    const/4 v7, 0x0

    .line 51
    invoke-static {v3, v2, v6, v5, v7}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    const/4 v2, 0x1

    .line 52
    invoke-virtual {v3, v2}, Le/a/b0/a/b/a;->pk(Z)V

    .line 53
    iget-object v2, v0, Le/a/c/a/j/c/k/g;->c:Le/a/c/a/g/i1;

    iget-object v2, v2, Le/a/c/a/g/i1;->c:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v2, v3}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 54
    iget-object v2, v0, Le/a/c/a/j/c/k/g;->d:Le/a/b0/m/c/a;

    new-instance v5, Le/a/c/a/j/c/k/f;

    invoke-direct {v5, v0, v3}, Le/a/c/a/j/c/k/f;-><init>(Le/a/c/a/j/c/k/g;Le/a/b0/a/b/a;)V

    invoke-interface {v2, v4, v5}, Le/a/b0/m/c/a;->Iz(Ljava/lang/String;Ls1/z/b/l;)Lq3/a/p1;

    move-result-object v2

    iput-object v2, v0, Le/a/c/a/j/c/k/g;->b:Lq3/a/p1;

    goto :goto_2

    .line 55
    :cond_6
    instance-of v3, v2, Le/a/c/a/j/b/e;

    if-eqz v3, :cond_7

    check-cast v0, Le/a/c/a/j/c/k/c;

    invoke-virtual {v0, v2}, Le/a/c/a/j/c/k/d;->N4(Le/a/c/a/j/b/d;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 7

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v1, Lcom/truecaller/insights/ui/R$layout;->layout_quick_filter_category_item:I

    const-string v2, "Missing required view with ID: "

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Le/a/c/a/j/c/a;->a:Ls1/z/b/p;

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/c/a/j/c/k/b;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    move-object v1, p1

    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 7
    sget v3, Lcom/truecaller/insights/ui/R$id;->categoryLabel:I

    .line 8
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    if-eqz v4, :cond_0

    .line 9
    new-instance v2, Le/a/c/a/g/h1;

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct {v2, p1, v1, v4}, Le/a/c/a/g/h1;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/CheckedTextView;)V

    const-string p1, "LayoutQuickFilterCategor\u2026.context), parent, false)"

    .line 10
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {v0, v2, p2}, Le/a/c/a/j/c/k/b;-><init>(Le/a/c/a/g/h1;Ls1/z/b/p;)V

    goto/16 :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 14
    :cond_1
    sget v1, Lcom/truecaller/insights/ui/R$layout;->layout_quick_filter_sender_item:I

    if-ne p2, v1, :cond_3

    iget-object p2, p0, Le/a/c/a/j/c/a;->b:Le/a/b0/m/c/a;

    iget-object v4, p0, Le/a/c/a/j/c/a;->a:Ls1/z/b/p;

    .line 15
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchApi"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Le/a/c/a/j/c/k/g;

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 18
    invoke-virtual {v5, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 19
    move-object v1, p1

    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 20
    sget v3, Lcom/truecaller/insights/ui/R$id;->senderIcon:I

    .line 21
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v5, :cond_2

    .line 22
    sget v3, Lcom/truecaller/insights/ui/R$id;->senderLabel:I

    .line 23
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    if-eqz v6, :cond_2

    .line 24
    new-instance v2, Le/a/c/a/g/i1;

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct {v2, p1, v1, v5, v6}, Le/a/c/a/g/i1;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/CheckedTextView;)V

    const-string p1, "LayoutQuickFilterSenderI\u2026.context), parent, false)"

    .line 25
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {v0, v2, p2, v4}, Le/a/c/a/j/c/k/g;-><init>(Le/a/c/a/g/i1;Le/a/b0/m/c/a;Ls1/z/b/p;)V

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 29
    :cond_3
    sget v1, Lcom/truecaller/insights/ui/R$layout;->layout_quick_filter_shimmer_placeholder_item:I

    if-ne p2, v1, :cond_4

    .line 30
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Le/a/c/a/j/c/k/c;

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 33
    invoke-virtual {p2, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "rootView"

    .line 34
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    check-cast p1, Lcom/truecaller/common/ui/ShimmerLoadingView;

    .line 36
    new-instance p2, Le/a/c/a/g/j1;

    invoke-direct {p2, p1, p1}, Le/a/c/a/g/j1;-><init>(Lcom/truecaller/common/ui/ShimmerLoadingView;Lcom/truecaller/common/ui/ShimmerLoadingView;)V

    const-string p1, "LayoutQuickFilterShimmer\u2026.context), parent, false)"

    .line 37
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {v0, p2}, Le/a/c/a/j/c/k/c;-><init>(Le/a/c/a/g/j1;)V

    :goto_0
    return-object v0

    .line 39
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "View type not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
