.class public final Le/a/c/a/n/c/d/b;
.super Ln3/z/w1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/z/w1<",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Le/a/c/a/n/c/d/a;

.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/c/h/h;

.field public final g:Le/a/b0/m/c/a;

.field public final h:Le/a/c/a/i/h;

.field public final i:Le/a/c/b/j;

.field public final j:Le/a/c/x/a;

.field public final k:Le/a/c/j/b;


# direct methods
.method public constructor <init>(Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/b/j;Le/a/c/x/a;Le/a/c/j/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messageLocator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressProfileLoader"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageInfoLoader"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deeplinkEnricher"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/a/a/b;

    invoke-direct {v0}, Le/a/c/a/a/b;-><init>()V

    invoke-direct {p0, v0}, Ln3/z/w1;-><init>(Ln3/b0/a/h$e;)V

    iput-object p1, p0, Le/a/c/a/n/c/d/b;->f:Le/a/c/h/h;

    iput-object p2, p0, Le/a/c/a/n/c/d/b;->g:Le/a/b0/m/c/a;

    iput-object p3, p0, Le/a/c/a/n/c/d/b;->h:Le/a/c/a/i/h;

    iput-object p4, p0, Le/a/c/a/n/c/d/b;->i:Le/a/c/b/j;

    iput-object p5, p0, Le/a/c/a/n/c/d/b;->j:Le/a/c/x/a;

    iput-object p6, p0, Le/a/c/a/n/c/d/b;->k:Le/a/c/j/b;

    .line 2
    new-instance p1, Le/a/c/a/n/c/d/a;

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-direct {p1, p2, p2, p3}, Le/a/c/a/n/c/d/a;-><init>(ZZI)V

    iput-object p1, p0, Le/a/c/a/n/c/d/b;->c:Le/a/c/a/n/c/d/a;

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ln3/z/w1;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 2
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 3
    iget-object p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 4
    instance-of p1, p1, Le/a/c/a/l/b$g;

    if-eqz p1, :cond_0

    .line 5
    sget p1, Lcom/truecaller/insights/ui/R$layout;->upcoming_reminder_item:I

    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lcom/truecaller/insights/ui/R$layout;->past_reminder_item:I

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    if-eqz v0, :cond_2

    sget p1, Lcom/truecaller/insights/ui/R$layout;->reminder_title_item:I

    goto :goto_0

    .line 8
    :cond_2
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$b;

    if-eqz v0, :cond_3

    sget p1, Lcom/truecaller/insights/ui/R$layout;->collapsible_section_item:I

    goto :goto_0

    .line 9
    :cond_3
    instance-of v0, p1, Lcom/truecaller/insights/ui/models/AdapterItem$d;

    if-eqz v0, :cond_4

    sget p1, Lcom/truecaller/insights/ui/R$layout;->date_header_item:I

    goto :goto_0

    .line 10
    :cond_4
    instance-of p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$e;

    if-eqz p1, :cond_5

    sget p1, Lcom/truecaller/insights/ui/R$layout;->empty_business_item:I

    :goto_0
    return p1

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ViewHolder type not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iput-object p1, p0, Le/a/c/a/n/c/d/b;->d:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 12

    const-string v0, "holder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Ln3/z/w1;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 2
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    const-string v1, "itemView"

    const-string v2, "item"

    if-eqz v0, :cond_e

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 3
    iget-object p2, p2, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 4
    instance-of v0, p2, Le/a/c/a/l/b$g;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Le/a/c/a/c/h/l/g;

    .line 6
    check-cast p2, Le/a/c/a/l/b$g;

    .line 7
    invoke-virtual {p1, p2}, Le/a/c/a/c/h/l/g;->W4(Le/a/c/a/l/b$g;)V

    goto/16 :goto_a

    .line 8
    :cond_0
    instance-of v0, p2, Le/a/c/a/l/b$e;

    if-eqz v0, :cond_14

    .line 9
    check-cast p1, Le/a/c/a/n/c/d/c/e;

    .line 10
    check-cast p2, Le/a/c/a/l/b$e;

    .line 11
    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p1, Le/a/c/a/n/c/d/c/e;->f:Le/a/c/a/g/r1;

    .line 13
    iget-object v2, p1, Le/a/c/a/n/c/d/c/e;->e:Lq3/a/p1;

    const/4 v3, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_1

    invoke-static {v2, v3, v9, v3}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 14
    :cond_1
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v4, Le/a/c/a/a/a/a/d;

    invoke-direct {v4, p1, p2}, Le/a/c/a/a/a/a/d;-><init>(Le/a/c/a/a/a/a/e;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v2, p1, Le/a/c/a/n/c/d/c/e;->f:Le/a/c/a/g/r1;

    .line 16
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v5, "ctx"

    invoke-static {v4, v1, v5}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    .line 17
    iget-object v5, p2, Le/a/c/a/l/b$e;->b:Le/a/c/r/c;

    .line 18
    iget v5, v5, Le/a/c/r/c;->b:I

    .line 19
    invoke-static {v4, v5}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v5

    .line 20
    iget-object v6, p2, Le/a/c/a/l/b$e;->b:Le/a/c/r/c;

    .line 21
    iget-object v6, v6, Le/a/c/r/c;->c:Ljava/lang/Integer;

    const/4 v10, 0x0

    if-eqz v6, :cond_2

    .line 22
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 23
    invoke-static {v4, v6}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v6

    goto :goto_0

    :cond_2
    move v6, v10

    .line 24
    :goto_0
    iget-object v7, v2, Le/a/c/a/g/r1;->e:Landroid/widget/TextView;

    const-string v8, "primaryTag"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v7}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v11, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {v7, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 26
    invoke-virtual {v7}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 27
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 28
    iget-object v6, v2, Le/a/c/a/g/r1;->e:Landroid/widget/TextView;

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v7, p2, Le/a/c/a/l/b$e;->b:Le/a/c/r/c;

    .line 30
    iget-object v7, v7, Le/a/c/r/c;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v6, v2, Le/a/c/a/g/r1;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    iget-object v5, p2, Le/a/c/a/l/b$e;->c:Le/a/c/r/c;

    const-string v6, "secondaryTag"

    if-eqz v5, :cond_4

    .line 34
    iget v7, v5, Le/a/c/r/c;->b:I

    .line 35
    invoke-static {v4, v7}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v7

    .line 36
    iget-object v8, p2, Le/a/c/a/l/b$e;->c:Le/a/c/r/c;

    .line 37
    iget-object v8, v8, Le/a/c/r/c;->c:Ljava/lang/Integer;

    if-eqz v8, :cond_3

    .line 38
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 39
    invoke-static {v4, v8}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v10

    .line 40
    :goto_1
    iget-object v8, v2, Le/a/c/a/g/r1;->i:Landroid/widget/TextView;

    invoke-static {v8, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Landroid/graphics/drawable/GradientDrawable;

    .line 42
    invoke-virtual {v8}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 44
    iget-object v4, v2, Le/a/c/a/g/r1;->i:Landroid/widget/TextView;

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v5, v5, Le/a/c/r/c;->a:Ljava/lang/String;

    .line 46
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v4, v2, Le/a/c/a/g/r1;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object v2, v2, Le/a/c/a/g/r1;->i:Landroid/widget/TextView;

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 49
    :cond_4
    iget-object v2, v2, Le/a/c/a/g/r1;->i:Landroid/widget/TextView;

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 50
    :goto_2
    iget-object v2, v0, Le/a/c/a/g/r1;->g:Landroid/widget/TextView;

    const-string v4, "secTitle"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v4, p2, Le/a/c/a/l/b$e;->e:Ljava/lang/String;

    .line 52
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, p1, Le/a/c/a/n/c/d/c/e;->k:Le/a/c/a/n/c/d/a;

    .line 54
    iget-boolean v2, v2, Le/a/c/a/n/c/d/a;->a:Z

    .line 55
    invoke-virtual {p1, v2}, Le/a/c/a/a/a/a/e;->T4(Z)V

    .line 56
    iget-object v2, p2, Le/a/c/a/l/b$e;->g:Ljava/lang/String;

    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    move v2, v9

    goto :goto_3

    :cond_5
    move v2, v10

    :goto_3
    const-string v11, "itemView.context"

    if-eqz v2, :cond_6

    .line 58
    iget-object v2, v0, Le/a/c/a/g/r1;->f:Landroid/widget/TextView;

    const-string v4, "secSubTitle"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v4, p2, Le/a/c/a/l/b$e;->g:Ljava/lang/String;

    .line 60
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, v0, Le/a/c/a/g/r1;->f:Landroid/widget/TextView;

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v4, v1, v11}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    .line 62
    iget v5, p2, Le/a/c/a/l/b$e;->l:I

    .line 63
    invoke-static {v4, v5}, Le/a/i5/e/a;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    :cond_6
    invoke-virtual {p1}, Le/a/c/a/a/a/a/e;->N4()Le/a/b0/a/b/a;

    move-result-object v2

    .line 65
    iget-object v4, p2, Le/a/c/a/l/b$e;->f:Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x2

    .line 66
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "Uri.EMPTY"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "name"

    .line 67
    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "identifier"

    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "icon"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v8, Le/a/b0/m/a/a;

    invoke-direct {v8, v4, v5, v7}, Le/a/b0/m/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    invoke-virtual {p1, v8}, Le/a/c/a/a/a/a/e;->O4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v4

    invoke-static {v2, v4, v10, v6, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 70
    invoke-virtual {v2, v9}, Le/a/b0/a/b/a;->pk(Z)V

    .line 71
    iget-object v3, v0, Le/a/c/a/g/r1;->d:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v3, v2}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 72
    iget-object v3, p2, Le/a/c/a/l/b$e;->d:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 73
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move v3, v10

    goto :goto_5

    :cond_8
    :goto_4
    move v3, v9

    :goto_5
    const-string v4, "title"

    if-eqz v3, :cond_9

    .line 74
    iget-object v3, v0, Le/a/c/a/g/r1;->j:Landroid/widget/TextView;

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v4, p2, Le/a/c/a/l/b$e;->f:Ljava/lang/String;

    .line 76
    invoke-static {v4}, Ls1/f0/r;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 77
    :cond_9
    iget-object v3, v0, Le/a/c/a/g/r1;->j:Landroid/widget/TextView;

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v4, p2, Le/a/c/a/l/b$e;->d:Ljava/lang/String;

    .line 79
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_6
    iget-object v3, p1, Le/a/c/a/n/c/d/c/e;->h:Le/a/b0/m/c/a;

    .line 81
    iget-object v4, p2, Le/a/c/a/l/b$e;->f:Ljava/lang/String;

    .line 82
    new-instance v5, Le/a/c/a/n/c/d/c/c;

    invoke-direct {v5, v0, v2, p1, p2}, Le/a/c/a/n/c/d/c/c;-><init>(Le/a/c/a/g/r1;Le/a/b0/a/b/a;Le/a/c/a/n/c/d/c/e;Le/a/c/a/l/b$e;)V

    invoke-interface {v3, v4, v5}, Le/a/b0/m/c/a;->Iz(Ljava/lang/String;Ls1/z/b/l;)Lq3/a/p1;

    move-result-object v2

    iput-object v2, p1, Le/a/c/a/n/c/d/c/e;->e:Lq3/a/p1;

    .line 83
    iget-object v2, p1, Le/a/c/a/a/a/a/e;->c:Ljava/util/Map;

    .line 84
    iget-wide v3, p2, Le/a/c/a/l/b$e;->a:J

    .line 85
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p1, Le/a/c/a/n/c/d/c/e;->i:Le/a/c/a/a/a/a/b;

    .line 86
    iget-boolean v3, v2, Le/a/c/a/a/a/a/b;->c:Z

    if-eqz v3, :cond_a

    .line 87
    iget-object v4, v2, Le/a/c/a/a/a/a/b;->a:Ljava/lang/String;

    .line 88
    iget-object v5, p2, Le/a/c/a/l/b$e;->p:Ljava/lang/String;

    .line 89
    iget-object v6, p2, Le/a/c/a/l/b$e;->f:Ljava/lang/String;

    .line 90
    iget-boolean v7, p2, Le/a/c/a/l/b$e;->r:Z

    .line 91
    iget-object v8, v2, Le/a/c/a/a/a/a/b;->b:Ljava/lang/String;

    move-object v3, p1

    .line 92
    invoke-virtual/range {v3 .. v8}, Le/a/c/a/a/a/a/e;->R4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 93
    iget-object v2, p1, Le/a/c/a/a/a/a/e;->c:Ljava/util/Map;

    .line 94
    iget-wide v3, p2, Le/a/c/a/l/b$e;->a:J

    .line 95
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_a
    iget-object v2, p1, Le/a/c/a/n/c/d/c/e;->f:Le/a/c/a/g/r1;

    .line 97
    iget-object v3, p2, Le/a/c/a/l/b$e;->h:Ljava/lang/String;

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    goto :goto_7

    :cond_b
    move v9, v10

    :goto_7
    const-string v3, "secondarySection"

    const-string v4, "actionStatus"

    if-eqz v9, :cond_c

    .line 99
    iget-object v5, v2, Le/a/c/a/g/r1;->h:Landroidx/constraintlayout/widget/Group;

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 100
    iget-object v3, v2, Le/a/c/a/g/r1;->b:Landroid/widget/TextView;

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    goto :goto_8

    .line 101
    :cond_c
    iget-object v5, v2, Le/a/c/a/g/r1;->h:Landroidx/constraintlayout/widget/Group;

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 102
    iget-object v3, v2, Le/a/c/a/g/r1;->b:Landroid/widget/TextView;

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 103
    iget-object v3, p2, Le/a/c/a/l/b$e;->o:Ljava/lang/Integer;

    if-eqz v3, :cond_d

    .line 104
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v5, v2, Le/a/c/a/g/r1;->b:Landroid/widget/TextView;

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v3}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    :cond_d
    :goto_8
    iget-object v2, v2, Le/a/c/a/g/r1;->b:Landroid/widget/TextView;

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v3, p2, Le/a/c/a/l/b$e;->h:Ljava/lang/String;

    .line 107
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, v0, Le/a/c/a/g/r1;->c:Landroid/widget/ImageView;

    const-string v2, "alreadyPaidCheckMark"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-boolean v2, p2, Le/a/c/a/l/b$e;->v:Z

    .line 110
    invoke-static {v0, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 111
    iget-wide v2, p2, Le/a/c/a/l/b$e;->a:J

    .line 112
    iget-object p2, p1, Le/a/c/a/n/c/d/c/e;->j:Le/a/c/b/j;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Le/a/c/b/j;->h0(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 113
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Le/a/c/a/n/c/d/c/d;

    invoke-direct {v0, p1, v2, v3}, Le/a/c/a/n/c/d/c/d;-><init>(Le/a/c/a/n/c/d/c/e;J)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_a

    .line 114
    :cond_e
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    if-eqz v0, :cond_f

    check-cast p1, Le/a/c/a/a/a/a/a;

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    invoke-virtual {p1, p2}, Le/a/c/a/a/a/a/a;->W4(Lcom/truecaller/insights/ui/models/AdapterItem$i;)V

    goto/16 :goto_a

    .line 115
    :cond_f
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$b;

    if-eqz v0, :cond_12

    check-cast p1, Le/a/c/a/n/c/d/c/b;

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$b;

    .line 116
    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p1, Le/a/c/a/n/c/d/c/b;->e:Le/a/c/a/g/u;

    .line 118
    iget-object v2, v0, Le/a/c/a/g/u;->c:Landroid/widget/TextView;

    .line 119
    iget v3, p2, Lcom/truecaller/insights/ui/models/AdapterItem$b;->b:I

    .line 120
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v2, v0, Le/a/c/a/g/u;->a:Landroid/widget/FrameLayout;

    .line 122
    new-instance v3, Le/a/c/a/n/c/d/c/a;

    invoke-direct {v3, p1, p2}, Le/a/c/a/n/c/d/c/a;-><init>(Le/a/c/a/n/c/d/c/b;Lcom/truecaller/insights/ui/models/AdapterItem$b;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget p2, p2, Lcom/truecaller/insights/ui/models/AdapterItem$b;->b:I

    .line 124
    sget v2, Lcom/truecaller/insights/ui/R$string;->reminders_details_page_upcoming:I

    if-ne p2, v2, :cond_10

    .line 125
    iget-object p2, p1, Le/a/c/a/n/c/d/c/b;->g:Le/a/c/a/n/c/d/a;

    .line 126
    iget-boolean p2, p2, Le/a/c/a/n/c/d/a;->b:Z

    goto :goto_9

    .line 127
    :cond_10
    iget-object p2, p1, Le/a/c/a/n/c/d/c/b;->g:Le/a/c/a/n/c/d/a;

    .line 128
    iget-boolean p2, p2, Le/a/c/a/n/c/d/a;->a:Z

    :goto_9
    if-eqz p2, :cond_11

    .line 129
    iget-object p2, v0, Le/a/c/a/g/u;->b:Landroid/widget/ImageView;

    sget v2, Lcom/truecaller/insights/ui/R$drawable;->ic_expand:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object p2, v0, Le/a/c/a/g/u;->c:Landroid/widget/TextView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/truecaller/insights/ui/R$attr;->tcx_textSecondary:I

    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a

    .line 131
    :cond_11
    iget-object p2, v0, Le/a/c/a/g/u;->b:Landroid/widget/ImageView;

    sget v2, Lcom/truecaller/insights/ui/R$drawable;->ic_collapse:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object p2, v0, Le/a/c/a/g/u;->c:Landroid/widget/TextView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/truecaller/insights/ui/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a

    .line 133
    :cond_12
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$d;

    if-eqz v0, :cond_13

    check-cast p1, Le/a/c/a/a/a/a/g;

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$d;

    invoke-virtual {p1, p2}, Le/a/c/a/a/a/a/g;->V4(Lcom/truecaller/insights/ui/models/AdapterItem$d;)V

    goto :goto_a

    .line 134
    :cond_13
    instance-of v0, p2, Lcom/truecaller/insights/ui/models/AdapterItem$e;

    if-eqz v0, :cond_14

    check-cast p1, Le/a/c/a/a/a/a/i;

    check-cast p2, Lcom/truecaller/insights/ui/models/AdapterItem$e;

    invoke-virtual {p1, p2}, Le/a/c/a/a/a/a/i;->O4(Lcom/truecaller/insights/ui/models/AdapterItem$e;)V

    :cond_14
    :goto_a
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "parent"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v4, Lcom/truecaller/insights/ui/R$layout;->past_reminder_item:I

    const-string v5, "reminders_page"

    const-string v6, "Missing required view with ID: "

    const/4 v7, 0x0

    if-ne v2, v4, :cond_1

    new-instance v2, Le/a/c/a/n/c/d/c/e;

    .line 2
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v4, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 5
    sget v3, Lcom/truecaller/insights/ui/R$id;->actionStatus:I

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 7
    sget v3, Lcom/truecaller/insights/ui/R$id;->alreadyPaidCheckMark:I

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 9
    sget v3, Lcom/truecaller/insights/ui/R$id;->icon:I

    .line 10
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v12, :cond_0

    .line 11
    sget v3, Lcom/truecaller/insights/ui/R$id;->primaryTag:I

    .line 12
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 13
    sget v3, Lcom/truecaller/insights/ui/R$id;->secSubTitle:I

    .line 14
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 15
    sget v3, Lcom/truecaller/insights/ui/R$id;->secTitle:I

    .line 16
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 17
    sget v3, Lcom/truecaller/insights/ui/R$id;->secondarySection:I

    .line 18
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroidx/constraintlayout/widget/Group;

    if-eqz v16, :cond_0

    .line 19
    sget v3, Lcom/truecaller/insights/ui/R$id;->secondaryTag:I

    .line 20
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 21
    sget v3, Lcom/truecaller/insights/ui/R$id;->title:I

    .line 22
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 23
    new-instance v3, Le/a/c/a/g/r1;

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/card/MaterialCardView;

    move-object v8, v3

    invoke-direct/range {v8 .. v18}, Le/a/c/a/g/r1;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-string v1, "PastReminderItemBinding\n\u2026.context), parent, false)"

    .line 24
    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v10, v0, Le/a/c/a/n/c/d/b;->f:Le/a/c/h/h;

    .line 26
    iget-object v11, v0, Le/a/c/a/n/c/d/b;->g:Le/a/b0/m/c/a;

    .line 27
    iget-object v12, v0, Le/a/c/a/n/c/d/b;->h:Le/a/c/a/i/h;

    .line 28
    new-instance v13, Le/a/c/a/a/a/a/b;

    const-string v1, "past_reminders_item"

    invoke-direct {v13, v1, v5, v7}, Le/a/c/a/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    iget-object v14, v0, Le/a/c/a/n/c/d/b;->i:Le/a/c/b/j;

    .line 30
    iget-object v15, v0, Le/a/c/a/n/c/d/b;->c:Le/a/c/a/n/c/d/a;

    move-object v8, v2

    move-object v9, v3

    .line 31
    invoke-direct/range {v8 .. v15}, Le/a/c/a/n/c/d/c/e;-><init>(Le/a/c/a/g/r1;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/a/a/a/a/b;Le/a/c/b/j;Le/a/c/a/n/c/d/a;)V

    goto/16 :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_1
    sget v4, Lcom/truecaller/insights/ui/R$layout;->upcoming_reminder_item:I

    if-ne v2, v4, :cond_2

    new-instance v2, Le/a/c/a/c/h/l/g;

    .line 35
    invoke-static/range {p1 .. p1}, Le/a/c/a/c/h/l/g;->V4(Landroid/view/ViewGroup;)Le/a/c/a/g/c2;

    move-result-object v9

    .line 36
    iget-object v10, v0, Le/a/c/a/n/c/d/b;->f:Le/a/c/h/h;

    .line 37
    iget-object v11, v0, Le/a/c/a/n/c/d/b;->g:Le/a/b0/m/c/a;

    .line 38
    iget-object v12, v0, Le/a/c/a/n/c/d/b;->j:Le/a/c/x/a;

    .line 39
    iget-object v13, v0, Le/a/c/a/n/c/d/b;->h:Le/a/c/a/i/h;

    .line 40
    new-instance v14, Le/a/c/a/a/a/a/b;

    const-string v1, "upcoming_reminders_item"

    invoke-direct {v14, v1, v5, v7}, Le/a/c/a/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    iget-object v15, v0, Le/a/c/a/n/c/d/b;->i:Le/a/c/b/j;

    .line 42
    iget-object v1, v0, Le/a/c/a/n/c/d/b;->k:Le/a/c/j/b;

    .line 43
    iget-object v3, v0, Le/a/c/a/n/c/d/b;->c:Le/a/c/a/n/c/d/a;

    move-object v8, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    .line 44
    invoke-direct/range {v8 .. v17}, Le/a/c/a/c/h/l/g;-><init>(Le/a/c/a/g/c2;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/x/a;Le/a/c/a/i/h;Le/a/c/a/a/a/a/b;Le/a/c/b/j;Le/a/c/j/b;Le/a/c/a/n/c/d/a;)V

    goto :goto_0

    .line 45
    :cond_2
    sget v4, Lcom/truecaller/insights/ui/R$layout;->collapsible_section_item:I

    if-ne v2, v4, :cond_4

    new-instance v2, Le/a/c/a/n/c/d/c/b;

    .line 46
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 48
    invoke-virtual {v3, v4, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 49
    sget v3, Lcom/truecaller/insights/ui/R$id;->actionBt:I

    .line 50
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 51
    sget v3, Lcom/truecaller/insights/ui/R$id;->title:I

    .line 52
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 53
    new-instance v3, Le/a/c/a/g/u;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1, v4, v5}, Le/a/c/a/g/u;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    const-string v1, "CollapsibleSectionItemBi\u2026.context), parent, false)"

    .line 54
    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v1, v0, Le/a/c/a/n/c/d/b;->h:Le/a/c/a/i/h;

    .line 56
    new-instance v4, Le/a/c/a/n/c/d/b$a;

    invoke-direct {v4, v0}, Le/a/c/a/n/c/d/b$a;-><init>(Le/a/c/a/n/c/d/b;)V

    .line 57
    iget-object v5, v0, Le/a/c/a/n/c/d/b;->c:Le/a/c/a/n/c/d/a;

    .line 58
    invoke-direct {v2, v3, v1, v4, v5}, Le/a/c/a/n/c/d/c/b;-><init>(Le/a/c/a/g/u;Le/a/c/a/i/h;Ls1/z/b/l;Le/a/c/a/n/c/d/a;)V

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_4
    sget v3, Lcom/truecaller/insights/ui/R$layout;->date_header_item:I

    if-ne v2, v3, :cond_5

    new-instance v2, Le/a/c/a/a/a/a/g;

    .line 62
    invoke-static/range {p1 .. p1}, Le/a/c/a/a/a/a/g;->U4(Landroid/view/ViewGroup;)Le/a/c/a/g/v;

    move-result-object v1

    .line 63
    iget-object v3, v0, Le/a/c/a/n/c/d/b;->c:Le/a/c/a/n/c/d/a;

    .line 64
    invoke-direct {v2, v1, v3}, Le/a/c/a/a/a/a/g;-><init>(Le/a/c/a/g/v;Le/a/c/a/n/c/d/a;)V

    goto :goto_0

    .line 65
    :cond_5
    sget v3, Lcom/truecaller/insights/ui/R$layout;->empty_business_item:I

    if-ne v2, v3, :cond_6

    new-instance v2, Le/a/c/a/a/a/a/i;

    .line 66
    invoke-static/range {p1 .. p1}, Le/a/c/a/a/a/a/i;->N4(Landroid/view/ViewGroup;)Le/a/c/a/g/y;

    move-result-object v1

    .line 67
    invoke-direct {v2, v1}, Le/a/c/a/a/a/a/i;-><init>(Le/a/c/a/g/y;)V

    :goto_0
    return-object v2

    .line 68
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ViewHolder type not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
