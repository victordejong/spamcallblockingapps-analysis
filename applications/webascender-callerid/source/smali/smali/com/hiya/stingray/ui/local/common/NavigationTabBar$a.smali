.class final Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/local/common/NavigationTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private final c:I

.field private final d:Landroid/view/View;

.field private final e:Ljava/lang/Integer;

.field private final f:Ljava/lang/Integer;

.field final synthetic g:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/local/common/NavigationTabBar;ILandroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    const-string v3, "view"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p1

    .line 1
    iput-object v3, v0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->g:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v4, p2

    iput v4, v0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->c:I

    iput-object v1, v0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->d:Landroid/view/View;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->e:Ljava/lang/Integer;

    iput-object v2, v0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 3
    sget v4, Lcom/hiya/stingray/o;->w4:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "view.title"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "context.getString(id)"

    invoke-static {v4, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v5, v2, [C

    const/4 v2, 0x0

    const/16 v3, 0x20

    aput-char v3, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/c0/m;->q0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a$a;->f:Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a$a;

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const-string v11, " "

    invoke-static/range {v10 .. v18}, Lkotlin/s/k;->R(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->d()V

    return-void
.end method

.method private final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->d:Landroid/view/View;

    sget v1, Lcom/hiya/stingray/o;->G1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->g:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-static {v2}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->c(Lcom/hiya/stingray/ui/local/common/NavigationTabBar;)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->g:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-static {v2}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->a(Lcom/hiya/stingray/ui/local/common/NavigationTabBar;)I

    move-result v2

    :goto_0
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/widget/e;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3
    iget-boolean v1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->a:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->g:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->c:I

    :goto_1
    invoke-static {v1, v2}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->g:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->c:I

    invoke-static {v1, v2}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->d:Landroid/view/View;

    sget v1, Lcom/hiya/stingray/o;->w4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->g:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-static {v1}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->c(Lcom/hiya/stingray/ui/local/common/NavigationTabBar;)I

    move-result v1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->g:Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-static {v1}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->a(Lcom/hiya/stingray/ui/local/common/NavigationTabBar;)I

    move-result v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->e()V

    return-void
.end method

.method private final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->d:Landroid/view/View;

    sget v1, Lcom/hiya/stingray/o;->T4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "view.warningDot"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->b:Z

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->d:Landroid/view/View;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->c(Z)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->d()V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->b:Z

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->e()V

    return-void
.end method
