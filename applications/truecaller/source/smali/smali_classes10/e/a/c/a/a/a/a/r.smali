.class public final Le/a/c/a/a/a/a/r;
.super Le/a/c/a/a/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/a/a/a/e<",
        "Le/a/c/a/l/b$h;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lq3/a/p1;

.field public final f:Le/a/c/a/g/d2;

.field public final g:Le/a/c/h/h;

.field public final h:Le/a/b0/m/c/a;

.field public final i:Le/a/c/a/a/a/a/b;

.field public final j:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/c/a/g/d2;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/a/a/a/a/b;Le/a/c/b/j;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageLocator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchApi"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsDetail"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/d2;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Le/a/c/a/a/a/a/e;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    iput-object p1, p0, Le/a/c/a/a/a/a/r;->f:Le/a/c/a/g/d2;

    iput-object p2, p0, Le/a/c/a/a/a/a/r;->g:Le/a/c/h/h;

    iput-object p3, p0, Le/a/c/a/a/a/a/r;->h:Le/a/b0/m/c/a;

    iput-object p5, p0, Le/a/c/a/a/a/a/r;->i:Le/a/c/a/a/a/a/b;

    iput-object p6, p0, Le/a/c/a/a/a/a/r;->j:Le/a/c/b/j;

    return-void
.end method

.method public static final U4(Landroid/view/ViewGroup;)Le/a/c/a/g/d2;
    .locals 10

    const-string v0, "parent"

    invoke-static {p0, v0}, Le/d/c/a/a;->e1(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1
    sget v1, Lcom/truecaller/insights/ui/R$layout;->update_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 2
    sget v0, Lcom/truecaller/insights/ui/R$id;->dateTime:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 4
    sget v0, Lcom/truecaller/insights/ui/R$id;->icon:I

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v5, :cond_0

    .line 6
    sget v0, Lcom/truecaller/insights/ui/R$id;->subTitle:I

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 8
    sget v0, Lcom/truecaller/insights/ui/R$id;->textCategory:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 10
    sget v0, Lcom/truecaller/insights/ui/R$id;->textCategoryContainer:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    .line 12
    sget v0, Lcom/truecaller/insights/ui/R$id;->title:I

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 14
    new-instance v0, Le/a/c/a/g/d2;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Le/a/c/a/g/d2;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    const-string p0, "UpdateItemBinding\n      \u2026.context), parent, false)"

    .line 15
    invoke-static {v0, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public S4(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v9, p0

    .line 1
    move-object/from16 v10, p1

    check-cast v10, Le/a/c/a/l/b$h;

    const-string v0, "item"

    .line 2
    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v9, Le/a/c/a/a/a/a/r;->i:Le/a/c/a/a/a/a/b;

    .line 4
    iget-object v1, v0, Le/a/c/a/a/a/a/b;->a:Ljava/lang/String;

    .line 5
    iget-object v2, v10, Le/a/c/a/l/b$h;->j:Le/a/c/r/m/b;

    .line 6
    iget-object v2, v2, Le/a/c/r/m/b;->a:Ljava/lang/String;

    .line 7
    iget-object v3, v10, Le/a/c/a/l/b$h;->b:Ljava/lang/String;

    .line 8
    iget-boolean v4, v10, Le/a/c/a/l/b$h;->i:Z

    .line 9
    iget-object v5, v0, Le/a/c/a/a/a/a/b;->b:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object/from16 v0, p0

    .line 10
    invoke-static/range {v0 .. v8}, Le/a/c/a/a/a/a/e;->Q4(Le/a/c/a/a/a/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 11
    iget-object v11, v9, Le/a/c/a/a/a/a/r;->g:Le/a/c/h/h;

    iget-object v0, v9, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    const-string v2, "itemView.context"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v12

    .line 12
    iget-wide v13, v10, Le/a/c/a/l/b$h;->a:J

    .line 13
    iget-wide v0, v10, Le/a/c/a/l/b$h;->f:J

    .line 14
    iget-object v2, v9, Le/a/c/a/a/a/a/r;->i:Le/a/c/a/a/a/a/b;

    .line 15
    iget-object v2, v2, Le/a/c/a/a/a/a/b;->b:Ljava/lang/String;

    .line 16
    iget v3, v10, Le/a/c/a/l/b$h;->h:I

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v18, v3

    goto :goto_2

    :cond_2
    move/from16 v18, v6

    :goto_2
    move-wide v15, v0

    move-object/from16 v17, v2

    .line 18
    invoke-interface/range {v11 .. v18}, Le/a/c/h/h;->a(Landroid/content/Context;JJLjava/lang/String;I)V

    return-void
.end method

.method public V4(Le/a/c/a/l/b$h;)V
    .locals 13

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/a/a/a/a/r;->e:Lq3/a/p1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v3, Le/a/c/a/a/a/a/d;

    invoke-direct {v3, p0, p1}, Le/a/c/a/a/a/a/d;-><init>(Le/a/c/a/a/a/a/e;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Le/a/c/a/a/a/a/r;->f:Le/a/c/a/g/d2;

    iget-object v0, v0, Le/a/c/a/g/d2;->f:Landroid/widget/TextView;

    const-string v3, "binding.title"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, p1, Le/a/c/a/l/b$h;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Le/a/c/a/a/a/a/r;->f:Le/a/c/a/g/d2;

    iget-object v0, v0, Le/a/c/a/g/d2;->d:Landroid/widget/TextView;

    const-string v3, "binding.subTitle"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget v4, p1, Le/a/c/a/l/b$h;->k:I

    .line 8
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 9
    iget-object v0, p0, Le/a/c/a/a/a/a/r;->f:Le/a/c/a/g/d2;

    iget-object v0, v0, Le/a/c/a/g/d2;->d:Landroid/widget/TextView;

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v3, p1, Le/a/c/a/l/b$h;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Le/a/c/a/a/a/a/r;->f:Le/a/c/a/g/d2;

    iget-object v0, v0, Le/a/c/a/g/d2;->e:Landroid/widget/TextView;

    const-string v3, "binding.textCategory"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v3, p1, Le/a/c/a/l/b$h;->j:Le/a/c/r/m/b;

    .line 14
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v5, "itemView"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "itemView.context"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Le/a/c/a/r/f;->b(Le/a/c/r/m/b;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Le/a/c/a/a/a/a/r;->f:Le/a/c/a/g/d2;

    iget-object v0, v0, Le/a/c/a/g/d2;->b:Landroid/widget/TextView;

    const-string v3, "binding.dateTime"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v3, p1, Le/a/c/a/l/b$h;->e:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0}, Le/a/c/a/a/a/a/e;->N4()Le/a/b0/a/b/a;

    move-result-object v0

    .line 19
    iget-object v3, p1, Le/a/c/a/l/b$h;->b:Ljava/lang/String;

    const-string v4, ""

    const/4 v7, 0x2

    .line 20
    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v9, "Uri.EMPTY"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "name"

    .line 21
    invoke-static {v4, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "identifier"

    invoke-static {v3, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "icon"

    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v9, Le/a/b0/m/a/a;

    invoke-direct {v9, v3, v4, v8}, Le/a/b0/m/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 23
    invoke-virtual {p0, v9}, Le/a/c/a/a/a/a/e;->O4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v7, v2}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 24
    invoke-virtual {v0, v1}, Le/a/b0/a/b/a;->pk(Z)V

    .line 25
    iget-object v1, p0, Le/a/c/a/a/a/a/r;->f:Le/a/c/a/g/d2;

    iget-object v1, v1, Le/a/c/a/g/d2;->c:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v1, v0}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 26
    iget-object v1, p0, Le/a/c/a/a/a/a/r;->h:Le/a/b0/m/c/a;

    .line 27
    iget-object v2, p1, Le/a/c/a/l/b$h;->b:Ljava/lang/String;

    .line 28
    new-instance v3, Le/a/c/a/a/a/a/r$a;

    invoke-direct {v3, v0, p0, p1}, Le/a/c/a/a/a/a/r$a;-><init>(Le/a/b0/a/b/a;Le/a/c/a/a/a/a/r;Le/a/c/a/l/b$h;)V

    invoke-interface {v1, v2, v3}, Le/a/b0/m/c/a;->Iz(Ljava/lang/String;Ls1/z/b/l;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, p0, Le/a/c/a/a/a/a/r;->e:Lq3/a/p1;

    .line 29
    iget-object v0, p0, Le/a/c/a/a/a/a/e;->c:Ljava/util/Map;

    .line 30
    iget-wide v1, p1, Le/a/c/a/l/b$h;->a:J

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/c/a/a/a/a/r;->i:Le/a/c/a/a/a/a/b;

    .line 32
    iget-boolean v1, v0, Le/a/c/a/a/a/a/b;->c:Z

    if-eqz v1, :cond_1

    .line 33
    iget-object v8, v0, Le/a/c/a/a/a/a/b;->a:Ljava/lang/String;

    .line 34
    iget-object v1, p1, Le/a/c/a/l/b$h;->j:Le/a/c/r/m/b;

    .line 35
    iget-object v9, v1, Le/a/c/r/m/b;->a:Ljava/lang/String;

    .line 36
    iget-object v10, p1, Le/a/c/a/l/b$h;->b:Ljava/lang/String;

    .line 37
    iget-boolean v11, p1, Le/a/c/a/l/b$h;->i:Z

    .line 38
    iget-object v12, v0, Le/a/c/a/a/a/a/b;->b:Ljava/lang/String;

    move-object v7, p0

    .line 39
    invoke-virtual/range {v7 .. v12}, Le/a/c/a/a/a/a/e;->R4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 40
    iget-object v0, p0, Le/a/c/a/a/a/a/e;->c:Ljava/util/Map;

    .line 41
    iget-wide v1, p1, Le/a/c/a/l/b$h;->a:J

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_1
    iget-wide v0, p1, Le/a/c/a/l/b$h;->a:J

    .line 44
    iget-object p1, p0, Le/a/c/a/a/a/a/r;->j:Le/a/c/b/j;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Le/a/c/b/j;->h0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 45
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v2, Le/a/c/a/a/a/a/s;

    invoke-direct {v2, p0, v0, v1}, Le/a/c/a/a/a/a/s;-><init>(Le/a/c/a/a/a/a/r;J)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    return-void
.end method
