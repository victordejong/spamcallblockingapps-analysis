.class public final Le/a/c/a/c/h/l/g;
.super Le/a/c/a/a/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/a/a/a/e<",
        "Le/a/c/a/l/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lq3/a/p1;

.field public final f:Le/a/c/a/g/c2;

.field public final g:Le/a/c/h/h;

.field public final h:Le/a/b0/m/c/a;

.field public final i:Le/a/c/x/a;

.field public final j:Le/a/c/a/i/h;

.field public final k:Le/a/c/a/a/a/a/b;

.field public final l:Le/a/c/b/j;

.field public final m:Le/a/c/j/b;

.field public final n:Le/a/c/a/n/c/d/a;


# direct methods
.method public constructor <init>(Le/a/c/a/g/c2;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/x/a;Le/a/c/a/i/h;Le/a/c/a/a/a/a/b;Le/a/c/b/j;Le/a/c/j/b;Le/a/c/a/n/c/d/a;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageLocator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchApi"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageInfoLoader"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsDetail"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deeplinkEnricher"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collapseState"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/c2;->a:Lcom/google/android/material/card/MaterialCardView;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p5}, Le/a/c/a/a/a/a/e;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    iput-object p1, p0, Le/a/c/a/c/h/l/g;->f:Le/a/c/a/g/c2;

    iput-object p2, p0, Le/a/c/a/c/h/l/g;->g:Le/a/c/h/h;

    iput-object p3, p0, Le/a/c/a/c/h/l/g;->h:Le/a/b0/m/c/a;

    iput-object p4, p0, Le/a/c/a/c/h/l/g;->i:Le/a/c/x/a;

    iput-object p5, p0, Le/a/c/a/c/h/l/g;->j:Le/a/c/a/i/h;

    iput-object p6, p0, Le/a/c/a/c/h/l/g;->k:Le/a/c/a/a/a/a/b;

    iput-object p7, p0, Le/a/c/a/c/h/l/g;->l:Le/a/c/b/j;

    iput-object p8, p0, Le/a/c/a/c/h/l/g;->m:Le/a/c/j/b;

    iput-object p9, p0, Le/a/c/a/c/h/l/g;->n:Le/a/c/a/n/c/d/a;

    return-void
.end method

.method public static final U4(Le/a/c/a/c/h/l/g;Ljava/util/List;I)Le/a/c/a/l/c;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget p0, Lcom/truecaller/insights/ui/R$id;->dismiss:I

    const-string v0, "Collection contains no element matching the predicate."

    if-ne p2, p0, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/a/l/c;

    .line 4
    iget-object p2, p1, Le/a/c/a/l/c;->b:Le/a/c/r/j/a;

    .line 5
    instance-of p2, p2, Le/a/c/r/j/a$c;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    sget p0, Lcom/truecaller/insights/ui/R$id;->send_feedback:I

    if-ne p2, p0, :cond_5

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/a/l/c;

    .line 9
    iget-object p2, p1, Le/a/c/a/l/c;->b:Le/a/c/r/j/a;

    .line 10
    instance-of p2, p2, Le/a/c/r/j/a$g;

    if-eqz p2, :cond_3

    :goto_0
    return-object p1

    .line 11
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Overflow action type not supported "

    invoke-static {p1, p2}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final V4(Landroid/view/ViewGroup;)Le/a/c/a/g/c2;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "parent"

    invoke-static {v0, v1}, Le/d/c/a/a;->e1(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1
    sget v2, Lcom/truecaller/insights/ui/R$layout;->upcoming_reminder_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/truecaller/insights/ui/R$id;->actionStatus:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 4
    sget v1, Lcom/truecaller/insights/ui/R$id;->dummyView:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 6
    sget v1, Lcom/truecaller/insights/ui/R$id;->icon:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v7, :cond_0

    .line 8
    sget v1, Lcom/truecaller/insights/ui/R$id;->moreActionsBt:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 10
    sget v1, Lcom/truecaller/insights/ui/R$id;->primaryAction:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    if-eqz v9, :cond_0

    .line 12
    sget v1, Lcom/truecaller/insights/ui/R$id;->primaryTag:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 14
    sget v1, Lcom/truecaller/insights/ui/R$id;->secSubTitle:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 16
    sget v1, Lcom/truecaller/insights/ui/R$id;->secTitle:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 18
    sget v1, Lcom/truecaller/insights/ui/R$id;->secondaryAction:I

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/material/button/MaterialButton;

    if-eqz v13, :cond_0

    .line 20
    sget v1, Lcom/truecaller/insights/ui/R$id;->secondarySection:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/constraintlayout/widget/Group;

    if-eqz v14, :cond_0

    .line 22
    sget v1, Lcom/truecaller/insights/ui/R$id;->secondaryTag:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 24
    sget v1, Lcom/truecaller/insights/ui/R$id;->title:I

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 26
    new-instance v1, Le/a/c/a/g/c2;

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Le/a/c/a/g/c2;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/view/View;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/ImageView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroidx/constraintlayout/widget/Group;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-string v0, "UpcomingReminderItemBind\u2026.context), parent, false)"

    .line 27
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public S4(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Le/a/c/a/l/b$g;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/c/a/c/h/l/g;->k:Le/a/c/a/a/a/a/b;

    .line 4
    iget-object v2, v0, Le/a/c/a/a/a/a/b;->a:Ljava/lang/String;

    .line 5
    iget-object v3, p1, Le/a/c/a/l/b$g;->p:Ljava/lang/String;

    .line 6
    iget-object v4, p1, Le/a/c/a/l/b$g;->f:Ljava/lang/String;

    .line 7
    iget-boolean v5, p1, Le/a/c/a/l/b$g;->r:Z

    .line 8
    iget-object v6, v0, Le/a/c/a/a/a/a/b;->b:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    .line 9
    invoke-static/range {v1 .. v9}, Le/a/c/a/a/a/a/e;->Q4(Le/a/c/a/a/a/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 10
    iget-wide v0, p1, Le/a/c/a/l/b$g;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_2

    .line 11
    :cond_0
    iget-object v1, p0, Le/a/c/a/c/h/l/g;->g:Le/a/c/h/h;

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    const-string v3, "itemView.context"

    invoke-static {v0, v2, v3}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 13
    iget-wide v3, p1, Le/a/c/a/l/b$g;->a:J

    .line 14
    iget-wide v5, p1, Le/a/c/a/l/b$g;->m:J

    .line 15
    iget p1, p1, Le/a/c/a/l/b$g;->q:I

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v0, v7, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v8, p1

    :cond_3
    const-string v7, "insights_tab"

    .line 17
    invoke-interface/range {v1 .. v8}, Le/a/c/h/h;->a(Landroid/content/Context;JJLjava/lang/String;I)V

    :goto_2
    return-void
.end method

.method public W4(Le/a/c/a/l/b$g;)V
    .locals 12

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/a/c/h/l/g;->f:Le/a/c/a/g/c2;

    .line 2
    iget-object v1, p0, Le/a/c/a/c/h/l/g;->e:Lq3/a/p1;

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    invoke-static {v1, v2, v6, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v3, Le/a/c/a/a/a/a/d;

    invoke-direct {v3, p0, p1}, Le/a/c/a/a/a/a/d;-><init>(Le/a/c/a/a/a/a/e;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v1, p0, Le/a/c/a/c/h/l/g;->f:Le/a/c/a/g/c2;

    .line 5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v7, "itemView"

    const-string v4, "ctx"

    invoke-static {v3, v7, v4}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    .line 6
    iget-object v4, p1, Le/a/c/a/l/b$g;->b:Le/a/c/r/c;

    .line 7
    iget v4, v4, Le/a/c/r/c;->b:I

    .line 8
    invoke-static {v3, v4}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v4

    .line 9
    iget-object v5, p1, Le/a/c/a/l/b$g;->b:Le/a/c/r/c;

    .line 10
    iget-object v5, v5, Le/a/c/r/c;->c:Ljava/lang/Integer;

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 12
    invoke-static {v3, v5}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v8

    .line 13
    :goto_0
    iget-object v9, v1, Le/a/c/a/g/c2;->g:Landroid/widget/TextView;

    const-string v10, "primaryTag"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v9}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v11, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {v9, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Landroid/graphics/drawable/GradientDrawable;

    .line 15
    invoke-virtual {v9}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 17
    iget-object v5, v1, Le/a/c/a/g/c2;->g:Landroid/widget/TextView;

    invoke-static {v5, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v9, p1, Le/a/c/a/l/b$g;->b:Le/a/c/r/c;

    .line 19
    iget-object v9, v9, Le/a/c/r/c;->a:Ljava/lang/String;

    .line 20
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v5, v1, Le/a/c/a/g/c2;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object v4, p1, Le/a/c/a/l/b$g;->c:Le/a/c/r/c;

    const-string v5, "secondaryTag"

    if-eqz v4, :cond_3

    .line 23
    iget v9, v4, Le/a/c/r/c;->b:I

    .line 24
    invoke-static {v3, v9}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v9

    .line 25
    iget-object v10, p1, Le/a/c/a/l/b$g;->c:Le/a/c/r/c;

    .line 26
    iget-object v10, v10, Le/a/c/r/c;->c:Ljava/lang/Integer;

    if-eqz v10, :cond_2

    .line 27
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 28
    invoke-static {v3, v10}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v8

    .line 29
    :goto_1
    iget-object v10, v1, Le/a/c/a/g/c2;->l:Landroid/widget/TextView;

    invoke-static {v10, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v10}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Landroid/graphics/drawable/GradientDrawable;

    .line 31
    invoke-virtual {v10}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {v10, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 33
    iget-object v3, v1, Le/a/c/a/g/c2;->l:Landroid/widget/TextView;

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v4, v4, Le/a/c/r/c;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v3, v1, Le/a/c/a/g/c2;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget-object v1, v1, Le/a/c/a/g/c2;->l:Landroid/widget/TextView;

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 38
    :cond_3
    iget-object v1, v1, Le/a/c/a/g/c2;->l:Landroid/widget/TextView;

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 39
    :goto_2
    iget-object v1, p0, Le/a/c/a/c/h/l/g;->n:Le/a/c/a/n/c/d/a;

    .line 40
    iget-boolean v1, v1, Le/a/c/a/n/c/d/a;->b:Z

    .line 41
    invoke-virtual {p0, v1}, Le/a/c/a/a/a/a/e;->T4(Z)V

    .line 42
    iget-object v1, v0, Le/a/c/a/g/c2;->i:Landroid/widget/TextView;

    const-string v3, "secTitle"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v3, p1, Le/a/c/a/l/b$g;->e:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p1, Le/a/c/a/l/b$g;->g:Ljava/lang/String;

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v6

    goto :goto_3

    :cond_4
    move v1, v8

    :goto_3
    const-string v9, "itemView.context"

    if-eqz v1, :cond_5

    .line 47
    iget-object v1, v0, Le/a/c/a/g/c2;->h:Landroid/widget/TextView;

    const-string v3, "secSubTitle"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v3, p1, Le/a/c/a/l/b$g;->g:Ljava/lang/String;

    .line 49
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, v0, Le/a/c/a/g/c2;->h:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v3, v7, v9}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    .line 51
    iget v4, p1, Le/a/c/a/l/b$g;->l:I

    .line 52
    invoke-static {v3, v4}, Le/a/i5/e/a;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    :cond_5
    invoke-virtual {p0}, Le/a/c/a/a/a/a/e;->N4()Le/a/b0/a/b/a;

    move-result-object v1

    .line 54
    iget-object v3, p1, Le/a/c/a/l/b$g;->f:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x2

    .line 55
    sget-object v10, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v11, "Uri.EMPTY"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "name"

    .line 56
    invoke-static {v4, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "identifier"

    invoke-static {v3, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "icon"

    invoke-static {v10, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v11, Le/a/b0/m/a/a;

    invoke-direct {v11, v3, v4, v10}, Le/a/b0/m/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    invoke-virtual {p0, v11}, Le/a/c/a/a/a/a/e;->O4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v3

    invoke-static {v1, v3, v8, v5, v2}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 59
    invoke-virtual {v1, v6}, Le/a/b0/a/b/a;->pk(Z)V

    .line 60
    iget-object v2, v0, Le/a/c/a/g/c2;->d:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v2, v1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 61
    iget-object v2, p1, Le/a/c/a/l/b$g;->d:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    move v2, v8

    goto :goto_5

    :cond_7
    :goto_4
    move v2, v6

    :goto_5
    const-string v3, "title"

    if-eqz v2, :cond_8

    .line 63
    iget-object v2, v0, Le/a/c/a/g/c2;->m:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v3, p1, Le/a/c/a/l/b$g;->f:Ljava/lang/String;

    .line 65
    invoke-static {v3}, Ls1/f0/r;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 66
    :cond_8
    iget-object v2, v0, Le/a/c/a/g/c2;->m:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v3, p1, Le/a/c/a/l/b$g;->d:Ljava/lang/String;

    .line 68
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_6
    iget-object v2, p0, Le/a/c/a/c/h/l/g;->h:Le/a/b0/m/c/a;

    .line 70
    iget-object v3, p1, Le/a/c/a/l/b$g;->f:Ljava/lang/String;

    .line 71
    new-instance v4, Le/a/c/a/c/h/l/g$a;

    invoke-direct {v4, v0, v1, p0, p1}, Le/a/c/a/c/h/l/g$a;-><init>(Le/a/c/a/g/c2;Le/a/b0/a/b/a;Le/a/c/a/c/h/l/g;Le/a/c/a/l/b$g;)V

    invoke-interface {v2, v3, v4}, Le/a/b0/m/c/a;->Iz(Ljava/lang/String;Ls1/z/b/l;)Lq3/a/p1;

    move-result-object v1

    iput-object v1, p0, Le/a/c/a/c/h/l/g;->e:Lq3/a/p1;

    .line 72
    iget-object v0, v0, Le/a/c/a/g/c2;->e:Landroid/widget/ImageView;

    new-instance v1, Le/a/c/a/c/h/l/g$b;

    invoke-direct {v1, p0, p1}, Le/a/c/a/c/h/l/g$b;-><init>(Le/a/c/a/c/h/l/g;Le/a/c/a/l/b$g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Le/a/c/a/a/a/a/e;->c:Ljava/util/Map;

    .line 74
    iget-wide v1, p1, Le/a/c/a/l/b$g;->a:J

    .line 75
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Le/a/c/a/c/h/l/g;->k:Le/a/c/a/a/a/a/b;

    .line 76
    iget-boolean v1, v0, Le/a/c/a/a/a/a/b;->c:Z

    if-eqz v1, :cond_9

    .line 77
    iget-object v1, v0, Le/a/c/a/a/a/a/b;->a:Ljava/lang/String;

    .line 78
    iget-object v2, p1, Le/a/c/a/l/b$g;->p:Ljava/lang/String;

    .line 79
    iget-object v3, p1, Le/a/c/a/l/b$g;->f:Ljava/lang/String;

    .line 80
    iget-boolean v4, p1, Le/a/c/a/l/b$g;->r:Z

    .line 81
    iget-object v5, v0, Le/a/c/a/a/a/a/b;->b:Ljava/lang/String;

    move-object v0, p0

    .line 82
    invoke-virtual/range {v0 .. v5}, Le/a/c/a/a/a/a/e;->R4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 83
    iget-object v0, p0, Le/a/c/a/a/a/a/e;->c:Ljava/util/Map;

    .line 84
    iget-wide v1, p1, Le/a/c/a/l/b$g;->a:J

    .line 85
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_9
    iget-object v0, p0, Le/a/c/a/c/h/l/g;->f:Le/a/c/a/g/c2;

    .line 87
    iget-object v1, v0, Le/a/c/a/g/c2;->f:Lcom/google/android/material/button/MaterialButton;

    const-string v2, "primaryAction"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v3, p1, Le/a/c/a/l/b$g;->i:Le/a/c/a/l/c;

    .line 89
    iget-object v3, v3, Le/a/c/a/l/c;->a:Ljava/lang/String;

    .line 90
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, v0, Le/a/c/a/g/c2;->j:Lcom/google/android/material/button/MaterialButton;

    const-string v3, "secondaryAction"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v4, p1, Le/a/c/a/l/b$g;->j:Le/a/c/a/l/c;

    .line 93
    iget-object v4, v4, Le/a/c/a/l/c;->a:Ljava/lang/String;

    .line 94
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p1, Le/a/c/a/l/b$g;->i:Le/a/c/a/l/c;

    .line 96
    iget-object v1, v1, Le/a/c/a/l/c;->b:Le/a/c/r/j/a;

    .line 97
    sget-object v4, Le/a/c/r/j/a$d;->c:Le/a/c/r/j/a$d;

    invoke-static {v1, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "dummyView"

    if-eqz v1, :cond_a

    .line 98
    iget-object v1, v0, Le/a/c/a/g/c2;->f:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 99
    iget-object v1, v0, Le/a/c/a/g/c2;->c:Landroid/view/View;

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_7

    .line 100
    :cond_a
    iget-object v1, v0, Le/a/c/a/g/c2;->f:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 101
    iget-object v1, v0, Le/a/c/a/g/c2;->c:Landroid/view/View;

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 102
    :goto_7
    iget-object v1, p1, Le/a/c/a/l/b$g;->j:Le/a/c/a/l/c;

    .line 103
    iget-object v1, v1, Le/a/c/a/l/c;->b:Le/a/c/r/j/a;

    .line 104
    invoke-static {v1, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 105
    iget-object v1, v0, Le/a/c/a/g/c2;->j:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_8

    .line 106
    :cond_b
    iget-object v1, v0, Le/a/c/a/g/c2;->j:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 107
    :goto_8
    iget-object v1, v0, Le/a/c/a/g/c2;->f:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v2, p1, Le/a/c/a/l/b$g;->i:Le/a/c/a/l/c;

    .line 109
    new-instance v4, Le/a/c/a/c/h/l/i;

    invoke-direct {v4, p0, v2, p1}, Le/a/c/a/c/h/l/i;-><init>(Le/a/c/a/c/h/l/g;Le/a/c/a/l/c;Le/a/c/a/l/b$g;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, v0, Le/a/c/a/g/c2;->j:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v1, p1, Le/a/c/a/l/b$g;->j:Le/a/c/a/l/c;

    .line 112
    new-instance v2, Le/a/c/a/c/h/l/i;

    invoke-direct {v2, p0, v1, p1}, Le/a/c/a/c/h/l/i;-><init>(Le/a/c/a/c/h/l/g;Le/a/c/a/l/c;Le/a/c/a/l/b$g;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Le/a/c/a/c/h/l/g;->f:Le/a/c/a/g/c2;

    .line 114
    iget-object v1, p1, Le/a/c/a/l/b$g;->h:Ljava/lang/String;

    .line 115
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_9

    :cond_c
    move v6, v8

    :goto_9
    const-string v1, "secondarySection"

    const-string v2, "actionStatus"

    if-eqz v6, :cond_d

    .line 116
    iget-object v3, v0, Le/a/c/a/g/c2;->k:Landroidx/constraintlayout/widget/Group;

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 117
    iget-object v1, v0, Le/a/c/a/g/c2;->b:Landroid/widget/TextView;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    goto :goto_a

    .line 118
    :cond_d
    iget-object v3, v0, Le/a/c/a/g/c2;->k:Landroidx/constraintlayout/widget/Group;

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 119
    iget-object v1, v0, Le/a/c/a/g/c2;->b:Landroid/widget/TextView;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 120
    iget-object v1, p1, Le/a/c/a/l/b$g;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 121
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v3, v0, Le/a/c/a/g/c2;->b:Landroid/widget/TextView;

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v1}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    :cond_e
    :goto_a
    iget-object v0, v0, Le/a/c/a/g/c2;->b:Landroid/widget/TextView;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v1, p1, Le/a/c/a/l/b$g;->h:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-wide v0, p1, Le/a/c/a/l/b$g;->a:J

    .line 126
    iget-object v2, p0, Le/a/c/a/c/h/l/g;->l:Le/a/c/b/j;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Le/a/c/b/j;->h0(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 127
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v3, Le/a/c/a/c/h/l/h;

    invoke-direct {v3, p0, v0, v1}, Le/a/c/a/c/h/l/h;-><init>(Le/a/c/a/c/h/l/g;J)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_f
    return-void
.end method
