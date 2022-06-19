.class public final Le/a/c/a/a/a/a/a;
.super Le/a/c/a/a/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/a/a/a/e<",
        "Lcom/truecaller/insights/ui/models/AdapterItem$i;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Le/a/c/a/g/a2;

.field public final f:Le/a/c/a/c/h/j;


# direct methods
.method public constructor <init>(Le/a/c/a/g/a2;Le/a/c/a/c/h/j;Le/a/c/a/i/h;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleAwareToolTipController"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/a2;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Le/a/c/a/a/a/a/e;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    iput-object p1, p0, Le/a/c/a/a/a/a/a;->e:Le/a/c/a/g/a2;

    iput-object p2, p0, Le/a/c/a/a/a/a/a;->f:Le/a/c/a/c/h/j;

    return-void
.end method

.method public static final U4(Le/a/c/a/a/a/a/a;Lcom/truecaller/insights/ui/models/AdapterItem$i;Le/a/c/a/c/g/c;)V
    .locals 10

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$i;->a:I

    .line 3
    sget v0, Lcom/truecaller/insights/ui/R$string;->transactions:I

    const-string v1, ""

    if-ne p1, v0, :cond_0

    const-string v2, "recent_transactions"

    goto :goto_0

    .line 4
    :cond_0
    sget v2, Lcom/truecaller/insights/ui/R$string;->updates:I

    if-ne p1, v2, :cond_1

    const-string v2, "recent_updates"

    goto :goto_0

    .line 5
    :cond_1
    sget v2, Lcom/truecaller/insights/ui/R$string;->reminders:I

    if-ne p1, v2, :cond_2

    const-string v2, "upcoming_smart_card"

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    if-ne p1, v0, :cond_4

    const-string v1, "Bank"

    :cond_3
    :goto_2
    move-object v5, v1

    goto :goto_3

    .line 6
    :cond_4
    sget v0, Lcom/truecaller/insights/ui/R$string;->updates:I

    if-ne p1, v0, :cond_5

    const-string v1, "update"

    goto :goto_2

    .line 7
    :cond_5
    sget v0, Lcom/truecaller/insights/ui/R$string;->reminders:I

    if-ne p1, v0, :cond_3

    const-string v1, "Bill"

    goto :goto_2

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "insights_tab"

    const-string v9, "view_all"

    move-object v3, p0

    .line 8
    invoke-virtual/range {v3 .. v9}, Le/a/c/a/a/a/a/e;->P4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p2, Le/a/c/a/c/g/c;->b:Ls1/z/b/l;

    .line 10
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "itemView.context"

    invoke-static {p0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final V4(Landroid/view/ViewGroup;)Le/a/c/a/g/a2;
    .locals 10

    const-string v0, "parent"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "parent.context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->B0(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    sget v1, Lcom/truecaller/insights/ui/R$layout;->reminder_title_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 3
    sget v0, Lcom/truecaller/insights/ui/R$id;->actionBt:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    const-string v1, "Missing required view with ID: "

    if-eqz v4, :cond_2

    .line 5
    sget v0, Lcom/truecaller/insights/ui/R$id;->bar:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/Group;

    if-eqz v5, :cond_2

    .line 7
    sget v0, Lcom/truecaller/insights/ui/R$id;->dummyView:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 9
    sget v0, Lcom/truecaller/insights/ui/R$id;->line:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    .line 11
    sget v0, Lcom/truecaller/insights/ui/R$id;->secondaryBtnContainer:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 13
    sget v0, Lcom/truecaller/insights/ui/R$id;->secondaryBtnIcon:I

    .line 14
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v3, :cond_1

    .line 15
    sget v0, Lcom/truecaller/insights/ui/R$id;->secondaryBtnTitle:I

    .line 16
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 17
    new-instance v0, Le/a/c/a/g/n1;

    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct {v0, v2, v3, v8}, Le/a/c/a/g/n1;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;)V

    .line 18
    sget v2, Lcom/truecaller/insights/ui/R$id;->title:I

    .line 19
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 20
    new-instance v1, Le/a/c/a/g/a2;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v1

    move-object v8, v0

    invoke-direct/range {v2 .. v9}, Le/a/c/a/g/a2;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Group;Landroid/view/View;Landroid/widget/ImageView;Le/a/c/a/g/n1;Landroid/widget/TextView;)V

    const-string p0, "ReminderTitleItemBinding\u2026rapper()), parent, false)"

    .line 21
    invoke-static {v1, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_0
    move v0, v2

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 23
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public S4(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public W4(Lcom/truecaller/insights/ui/models/AdapterItem$i;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v0, "item"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v8, v6, Le/a/c/a/a/a/a/a;->e:Le/a/c/a/g/a2;

    .line 2
    iget-object v0, v8, Le/a/c/a/g/a2;->e:Landroid/widget/TextView;

    .line 3
    iget v1, v7, Lcom/truecaller/insights/ui/models/AdapterItem$i;->a:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object v9, v7, Lcom/truecaller/insights/ui/models/AdapterItem$i;->d:Le/a/c/a/c/g/c;

    const-string v10, "itemView"

    const-string v11, "null cannot be cast to non-null type android.view.ViewGroup"

    const-string v12, "actionBt"

    if-eqz v9, :cond_1

    .line 6
    iget-object v13, v8, Le/a/c/a/g/a2;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    new-instance v14, Le/a/c/a/a/a/a/a$a;

    const/4 v1, 0x0

    move-object v0, v14

    move-object v2, v9

    move-object v3, v8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Le/a/c/a/a/a/a/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, v7, Lcom/truecaller/insights/ui/models/AdapterItem$i;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v16

    iget-object v0, v8, Le/a/c/a/g/a2;->b:Landroid/widget/ImageView;

    invoke-static {v0, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    .line 10
    iget-object v1, v6, Le/a/c/a/a/a/a/a;->f:Le/a/c/a/c/h/j;

    .line 11
    new-instance v2, Le/a/c/a/c/g/d;

    .line 12
    new-instance v14, Ljava/lang/ref/WeakReference;

    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v3, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v14, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/truecaller/insights/ui/R$dimen;->dp8:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    .line 15
    sget-object v20, Le/a/c/a/a/a/a/o;->b:Le/a/c/a/a/a/a/o;

    const/16 v19, 0x0

    move-object v13, v2

    move-object/from16 v17, v3

    .line 16
    invoke-direct/range {v13 .. v20}, Le/a/c/a/c/g/d;-><init>(Ljava/lang/ref/WeakReference;Lcom/truecaller/common/ui/tooltip/TooltipDirection;ILjava/lang/ref/WeakReference;FLjava/lang/Long;Ls1/z/b/a;)V

    .line 17
    invoke-interface {v1, v2}, Le/a/c/a/c/h/j;->aa(Le/a/c/a/c/g/d;)V

    .line 18
    :cond_0
    iget-object v0, v8, Le/a/c/a/g/a2;->b:Landroid/widget/ImageView;

    invoke-static {v0, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 19
    iget-object v12, v8, Le/a/c/a/g/a2;->b:Landroid/widget/ImageView;

    new-instance v13, Le/a/c/a/a/a/a/a$a;

    const/4 v1, 0x1

    move-object v0, v13

    move-object v2, v9

    move-object v3, v8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Le/a/c/a/a/a/a/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, v8, Le/a/c/a/g/a2;->b:Landroid/widget/ImageView;

    invoke-static {v0, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 21
    :goto_0
    iget-object v0, v7, Lcom/truecaller/insights/ui/models/AdapterItem$i;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v15

    iget-object v0, v8, Le/a/c/a/g/a2;->d:Le/a/c/a/g/n1;

    const-string v1, "secondaryBtnContainer"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, v0, Le/a/c/a/g/n1;->a:Lcom/google/android/material/card/MaterialCardView;

    const-string v1, "secondaryBtnContainer.root"

    .line 24
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    .line 25
    iget-object v1, v6, Le/a/c/a/a/a/a/a;->f:Le/a/c/a/c/h/j;

    .line 26
    new-instance v2, Le/a/c/a/c/g/d;

    .line 27
    new-instance v13, Ljava/lang/ref/WeakReference;

    iget-object v3, v6, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v3, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v13, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 28
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 29
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/truecaller/insights/ui/R$dimen;->dp8:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    const-wide/16 v4, 0x1388

    .line 30
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 31
    sget-object v19, Le/a/c/a/a/a/a/n;->b:Le/a/c/a/a/a/a/n;

    move-object v12, v2

    move-object/from16 v16, v3

    .line 32
    invoke-direct/range {v12 .. v19}, Le/a/c/a/c/g/d;-><init>(Ljava/lang/ref/WeakReference;Lcom/truecaller/common/ui/tooltip/TooltipDirection;ILjava/lang/ref/WeakReference;FLjava/lang/Long;Ls1/z/b/a;)V

    .line 33
    invoke-interface {v1, v2}, Le/a/c/a/c/h/j;->aa(Le/a/c/a/c/g/d;)V

    .line 34
    :cond_2
    iget-object v0, v6, Le/a/c/a/a/a/a/a;->e:Le/a/c/a/g/a2;

    iget-object v0, v0, Le/a/c/a/g/a2;->d:Le/a/c/a/g/n1;

    .line 35
    iget-object v1, v7, Lcom/truecaller/insights/ui/models/AdapterItem$i;->e:Le/a/c/a/c/g/b;

    if-eqz v1, :cond_3

    .line 36
    iget-object v2, v0, Le/a/c/a/g/n1;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 37
    iget v3, v1, Le/a/c/a/c/g/b;->b:I

    .line 38
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 39
    iget-object v2, v0, Le/a/c/a/g/n1;->c:Landroid/widget/TextView;

    .line 40
    iget v3, v1, Le/a/c/a/c/g/b;->a:I

    .line 41
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 42
    iget-object v2, v0, Le/a/c/a/g/n1;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 43
    new-instance v3, Le/a/c/a/a/a/a/a$b;

    invoke-direct {v3, v1, v6, v7}, Le/a/c/a/a/a/a/a$b;-><init>(Le/a/c/a/c/g/b;Le/a/c/a/a/a/a/a;Lcom/truecaller/insights/ui/models/AdapterItem$i;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_3
    iget-object v0, v0, Le/a/c/a/g/n1;->a:Lcom/google/android/material/card/MaterialCardView;

    const-string v1, "root"

    .line 45
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v1, v7, Lcom/truecaller/insights/ui/models/AdapterItem$i;->e:Le/a/c/a/c/g/b;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 47
    :goto_1
    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
