.class public final Le/a/c/a/k/d/b;
.super Ln3/b0/a/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/b0/a/p<",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Le/a/c/a/k/d/a;

.field public final b:Le/a/c/a/i/h;

.field public final c:Le/a/c/h/h;

.field public final d:Le/a/c/a/c/h/j;

.field public final e:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/c/a/i/h;Le/a/c/h/h;Le/a/c/a/c/h/j;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageLocator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolTipController"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/a/c/h/l/b;

    invoke-direct {v0}, Le/a/c/a/c/h/l/b;-><init>()V

    invoke-direct {p0, v0}, Ln3/b0/a/p;-><init>(Ln3/b0/a/h$e;)V

    iput-object p1, p0, Le/a/c/a/k/d/b;->b:Le/a/c/a/i/h;

    iput-object p2, p0, Le/a/c/a/k/d/b;->c:Le/a/c/h/h;

    iput-object p3, p0, Le/a/c/a/k/d/b;->d:Le/a/c/a/c/h/j;

    iput-object p4, p0, Le/a/c/a/k/d/b;->e:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ln3/b0/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 2
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    if-eqz v0, :cond_0

    sget p1, Lcom/truecaller/insights/ui/R$layout;->reminder_title_item:I

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    const-string v1, "ViewHolder type not supported"

    if-eqz v0, :cond_2

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 4
    iget-object p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 5
    instance-of p1, p1, Le/a/c/a/l/b$c;

    if-eqz p1, :cond_1

    sget p1, Lcom/truecaller/insights/ui/R$layout;->marked_important_item:I

    :goto_0
    return p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 29

    move-object/from16 v0, p1

    const-string v1, "holder"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 1
    invoke-virtual {v1, v2}, Ln3/b0/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 2
    instance-of v3, v2, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Le/a/c/a/a/a/a/a;

    check-cast v2, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    invoke-virtual {v3, v2}, Le/a/c/a/a/a/a/a;->W4(Lcom/truecaller/insights/ui/models/AdapterItem$i;)V

    goto/16 :goto_c

    .line 3
    :cond_0
    instance-of v3, v2, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    if-eqz v3, :cond_10

    check-cast v2, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 4
    iget-object v2, v2, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 5
    instance-of v3, v0, Le/a/c/a/k/d/e;

    if-eqz v3, :cond_f

    move-object v3, v0

    check-cast v3, Le/a/c/a/k/d/e;

    const-string v4, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.MarkedImportantItem"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Le/a/c/a/l/b$c;

    const-string v4, "item"

    .line 6
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v10, v3, Le/a/c/a/k/d/e;->e:Le/a/c/a/g/q1;

    .line 8
    iget-object v4, v3, Le/a/c/a/a/a/a/e;->c:Ljava/util/Map;

    .line 9
    iget-wide v5, v2, Le/a/c/a/l/b$c;->a:J

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 11
    iget-object v4, v2, Le/a/c/a/l/b$c;->h:Le/a/c/h/m/d;

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {v4}, Le/a/c/h/m/d;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "marked_as_important"

    :goto_0
    move-object v9, v4

    .line 13
    iget-object v7, v2, Le/a/c/a/l/b$c;->l:Ljava/lang/String;

    .line 14
    iget-object v4, v2, Le/a/c/a/l/b$c;->h:Le/a/c/h/m/d;

    .line 15
    instance-of v8, v4, Le/a/c/h/m/d$a;

    const-string v5, "marked_as_important"

    const-string v6, "inner_page_card"

    move-object v4, v3

    .line 16
    invoke-virtual/range {v4 .. v9}, Le/a/c/a/a/a/a/e;->R4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 17
    iget-object v4, v3, Le/a/c/a/a/a/a/e;->c:Ljava/util/Map;

    .line 18
    iget-wide v5, v2, Le/a/c/a/l/b$c;->a:J

    .line 19
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_2
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v5, Le/a/c/a/a/a/a/d;

    invoke-direct {v5, v3, v2}, Le/a/c/a/a/a/a/d;-><init>(Le/a/c/a/a/a/a/e;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v4, v10, Le/a/c/a/g/q1;->d:Landroid/widget/TextView;

    const-string v5, "contentTitle"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v5, v2, Le/a/c/a/l/b$c;->e:Ljava/lang/String;

    .line 23
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v4, v2, Le/a/c/a/l/b$c;->b:Ljava/lang/String;

    .line 25
    iget-boolean v5, v2, Le/a/c/a/l/b$c;->c:Z

    .line 26
    iget-object v6, v3, Le/a/c/a/k/d/e;->e:Le/a/c/a/g/q1;

    .line 27
    iget-object v7, v6, Le/a/c/a/g/q1;->c:Landroid/widget/TextView;

    const-string v8, "contentText"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 28
    sget-object v5, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->b:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;

    iget-object v5, v6, Le/a/c/a/g/q1;->c:Landroid/widget/TextView;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "contentText.context"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;->REMOVE:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;

    invoke-static {v5, v4, v7}, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->c(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;)Landroid/text/Spannable;

    move-result-object v4

    .line 29
    :cond_3
    iget-object v5, v6, Le/a/c/a/g/q1;->c:Landroid/widget/TextView;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v5, v6, Le/a/c/a/g/q1;->c:Landroid/widget/TextView;

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v6, Le/a/c/a/k/d/c;

    invoke-direct {v6, v4}, Le/a/c/a/k/d/c;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 32
    iget-object v4, v10, Le/a/c/a/g/q1;->b:Landroid/widget/TextView;

    const-string v5, "contentDate"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v5, v2, Le/a/c/a/l/b$c;->m:Ljava/lang/String;

    .line 34
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v3}, Le/a/c/a/a/a/a/e;->N4()Le/a/b0/a/b/a;

    move-result-object v4

    .line 36
    iget-object v5, v2, Le/a/c/a/l/b$c;->d:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 37
    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v9

    :goto_2
    const/4 v7, 0x0

    if-nez v5, :cond_6

    .line 38
    iget-object v5, v2, Le/a/c/a/l/b$c;->d:Ljava/lang/String;

    .line 39
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v12, v5

    goto :goto_3

    :cond_6
    move-object v12, v7

    .line 40
    :goto_3
    new-instance v5, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 41
    iget-object v13, v2, Le/a/c/a/l/b$c;->l:Ljava/lang/String;

    .line 42
    iget-object v8, v2, Le/a/c/a/l/b$c;->i:Le/a/c/h/m/b;

    if-eqz v8, :cond_7

    .line 43
    iget-boolean v11, v8, Le/a/c/h/m/b;->d:Z

    move/from16 v17, v11

    goto :goto_4

    :cond_7
    move/from16 v17, v6

    .line 44
    :goto_4
    iget-object v15, v2, Le/a/c/a/l/b$c;->k:Ljava/lang/String;

    const/16 v16, 0x0

    .line 45
    iget v11, v2, Le/a/c/a/l/b$c;->j:I

    const/4 v14, 0x4

    if-ne v11, v14, :cond_8

    move/from16 v20, v9

    goto :goto_5

    :cond_8
    move/from16 v20, v6

    :goto_5
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v14, 0x20

    if-ne v11, v14, :cond_9

    move/from16 v21, v9

    goto :goto_6

    :cond_9
    move/from16 v21, v6

    :goto_6
    const/16 v14, 0x80

    if-ne v11, v14, :cond_a

    move/from16 v22, v9

    goto :goto_7

    :cond_a
    move/from16 v22, v6

    :goto_7
    const/16 v14, 0x100

    if-ne v11, v14, :cond_b

    move/from16 v23, v9

    goto :goto_8

    :cond_b
    move/from16 v23, v6

    :goto_8
    const/16 v14, 0x10

    if-ne v11, v14, :cond_c

    move/from16 v24, v9

    goto :goto_9

    :cond_c
    move/from16 v24, v6

    :goto_9
    if-eqz v8, :cond_d

    .line 46
    iget-object v8, v8, Le/a/c/h/m/b;->a:Ljava/lang/String;

    move-object v14, v8

    goto :goto_a

    :cond_d
    move-object v14, v7

    :goto_a
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0xe0d0

    move-object v11, v5

    .line 47
    invoke-direct/range {v11 .. v28}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    const/4 v8, 0x2

    .line 48
    invoke-static {v4, v5, v6, v8, v7}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 49
    iget-object v5, v10, Le/a/c/a/g/q1;->g:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v5, v4}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 50
    invoke-virtual {v4, v6}, Le/a/b0/a/b/a;->pk(Z)V

    .line 51
    iget-object v4, v2, Le/a/c/a/l/b$c;->f:Landroid/graphics/drawable/Drawable;

    const-string v5, "itemView"

    const-string v6, "dividerView"

    const-string v7, "subTitleIcon"

    if-eqz v4, :cond_e

    .line 52
    iget-object v8, v10, Le/a/c/a/g/q1;->h:Landroid/widget/ImageView;

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 53
    iget-object v7, v10, Le/a/c/a/g/q1;->e:Landroid/view/View;

    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 54
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v7, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/truecaller/insights/ui/R$attr;->tcx_textSecondary:I

    invoke-static {v7, v8}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v7

    .line 55
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 56
    iget-object v6, v10, Le/a/c/a/g/q1;->h:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    .line 57
    :cond_e
    iget-object v4, v10, Le/a/c/a/g/q1;->h:Landroid/widget/ImageView;

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 58
    iget-object v4, v10, Le/a/c/a/g/q1;->e:Landroid/view/View;

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 59
    :goto_b
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v6, "itemView.context"

    invoke-static {v4, v5, v6}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/truecaller/insights/ui/R$drawable;->ic_un_star:I

    sget v6, Lcom/truecaller/insights/ui/R$attr;->tcx_textPrimary:I

    invoke-static {v4, v5, v6}, Le/a/l4/k;->N(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 60
    iget-object v5, v10, Le/a/c/a/g/q1;->i:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v4, v10, Le/a/c/a/g/q1;->i:Landroidx/appcompat/widget/AppCompatImageButton;

    new-instance v5, Le/a/c/a/k/d/d;

    invoke-direct {v5, v3, v2}, Le/a/c/a/k/d/d;-><init>(Le/a/c/a/k/d/e;Le/a/c/a/l/b$c;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c

    .line 62
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not implemented for this type"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_10
    :goto_c
    instance-of v2, v0, Le/a/c/a/a/a/a/a;

    if-eqz v2, :cond_11

    .line 64
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/truecaller/insights/ui/R$dimen;->next_title_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/truecaller/insights/ui/R$dimen;->first_title_margin_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 69
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_11
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 13

    const-string v0, "parent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v1, Lcom/truecaller/insights/ui/R$layout;->marked_important_item:I

    if-ne p2, v1, :cond_1

    new-instance p2, Le/a/c/a/k/d/e;

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "parent.context"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->B0(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    sget v0, Lcom/truecaller/insights/ui/R$id;->contentDate:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 7
    sget v0, Lcom/truecaller/insights/ui/R$id;->contentText:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 9
    sget v0, Lcom/truecaller/insights/ui/R$id;->contentTitle:I

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 11
    sget v0, Lcom/truecaller/insights/ui/R$id;->dividerView:I

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 13
    sget v0, Lcom/truecaller/insights/ui/R$id;->dummyView:I

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 15
    sget v0, Lcom/truecaller/insights/ui/R$id;->guideline:I

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v9, :cond_0

    .line 17
    sget v0, Lcom/truecaller/insights/ui/R$id;->icon:I

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v10, :cond_0

    .line 19
    sget v0, Lcom/truecaller/insights/ui/R$id;->subTitleIcon:I

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 21
    sget v0, Lcom/truecaller/insights/ui/R$id;->unMarkImportantButton:I

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v12, :cond_0

    .line 23
    new-instance v0, Le/a/c/a/g/q1;

    move-object v3, p1

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Le/a/c/a/g/q1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroidx/constraintlayout/widget/Guideline;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatImageButton;)V

    const-string p1, "MarkedImportantItemBindi\u2026rapper()), parent, false)"

    .line 24
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v4, p0, Le/a/c/a/k/d/b;->b:Le/a/c/a/i/h;

    .line 26
    iget-object v5, p0, Le/a/c/a/k/d/b;->a:Le/a/c/a/k/d/a;

    .line 27
    iget-object v6, p0, Le/a/c/a/k/d/b;->c:Le/a/c/h/h;

    .line 28
    iget-object v7, p0, Le/a/c/a/k/d/b;->e:Le/a/u3/g;

    move-object v2, p2

    move-object v3, v0

    .line 29
    invoke-direct/range {v2 .. v7}, Le/a/c/a/k/d/e;-><init>(Le/a/c/a/g/q1;Le/a/c/a/i/h;Le/a/c/a/k/d/a;Le/a/c/h/h;Le/a/u3/g;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 31
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 32
    :cond_1
    sget v0, Lcom/truecaller/insights/ui/R$layout;->reminder_title_item:I

    if-ne p2, v0, :cond_2

    new-instance p2, Le/a/c/a/a/a/a/a;

    .line 33
    invoke-static {p1}, Le/a/c/a/a/a/a/a;->V4(Landroid/view/ViewGroup;)Le/a/c/a/g/a2;

    move-result-object p1

    .line 34
    iget-object v0, p0, Le/a/c/a/k/d/b;->d:Le/a/c/a/c/h/j;

    .line 35
    iget-object v1, p0, Le/a/c/a/k/d/b;->b:Le/a/c/a/i/h;

    .line 36
    invoke-direct {p2, p1, v0, v1}, Le/a/c/a/a/a/a/a;-><init>(Le/a/c/a/g/a2;Le/a/c/a/c/h/j;Le/a/c/a/i/h;)V

    :goto_0
    return-object p2

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not implemented for this type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
