.class public Le/a/y/e/h;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Le/a/y/e/m;
.implements Landroidx/viewpager/widget/ViewPager$i;
.implements Le/a/y/e/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/h$c;,
        Le/a/y/e/h$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/content/Context;

.field public c:Le/a/y/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/y/b/z<",
            "Le/a/y/e/i;",
            ">;"
        }
    .end annotation
.end field

.field public d:Le/a/y/e/k$a;

.field public e:Le/a/y/e/h$c;

.field public f:I

.field public g:[Landroid/view/View;

.field public h:J

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Le/a/y/e/k$a;Le/a/y/b/z;J)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Le/a/y/e/k$a;",
            "Le/a/y/b/z<",
            "Le/a/y/e/i;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1
    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, v8, Le/a/y/e/h;->h:J

    const/4 v10, 0x0

    .line 3
    iput-boolean v10, v8, Le/a/y/e/h;->i:Z

    .line 4
    iput-boolean v10, v8, Le/a/y/e/h;->j:Z

    const/4 v11, -0x1

    .line 5
    iput v11, v8, Le/a/y/e/h;->k:I

    const/4 v12, 0x1

    .line 6
    iput-boolean v12, v8, Le/a/y/e/h;->l:Z

    move-object/from16 v0, p2

    .line 7
    iput-object v0, v8, Le/a/y/e/h;->a:Landroid/view/View;

    .line 8
    iput-object v9, v8, Le/a/y/e/h;->b:Landroid/content/Context;

    move-object/from16 v0, p4

    .line 9
    iput-object v0, v8, Le/a/y/e/h;->c:Le/a/y/b/z;

    move-object/from16 v0, p3

    .line 10
    iput-object v0, v8, Le/a/y/e/h;->d:Le/a/y/e/k$a;

    move-wide/from16 v0, p5

    .line 11
    iput-wide v0, v8, Le/a/y/e/h;->h:J

    const-string v0, "layout_inflater"

    .line 12
    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 13
    sget v1, Lcom/truecaller/flashsdk/R$layout;->layout_emoji_keyboard:I

    const/4 v13, 0x0

    invoke-virtual {v0, v1, v13, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 14
    sget v0, Lcom/truecaller/flashsdk/R$id;->pager:I

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroidx/viewpager/widget/ViewPager;

    .line 15
    invoke-virtual {v15, v8}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$i;)V

    .line 16
    new-instance v6, Le/a/y/e/h$b;

    const/4 v7, 0x6

    new-array v5, v7, [Le/a/y/e/k;

    new-instance v16, Le/a/y/e/l;

    iget-object v4, v8, Le/a/y/e/h;->d:Le/a/y/e/k$a;

    iget-object v3, v8, Le/a/y/e/h;->c:Le/a/y/b/z;

    iget-wide v1, v8, Le/a/y/e/h;->h:J

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v19, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v17, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    move-object v11, v6

    move-wide/from16 v6, v19

    invoke-direct/range {v0 .. v7}, Le/a/y/e/l;-><init>(Landroid/content/Context;[Le/a/y/e/i;Le/a/y/e/m;Le/a/y/e/k$a;Le/a/y/b/z;J)V

    aput-object v16, v18, v10

    new-instance v16, Le/a/y/e/k;

    sget-object v2, Le/a/y/e/n;->c:[Le/a/y/e/i;

    iget-object v4, v8, Le/a/y/e/h;->d:Le/a/y/e/k$a;

    iget-object v5, v8, Le/a/y/e/h;->c:Le/a/y/b/z;

    iget-wide v6, v8, Le/a/y/e/h;->h:J

    move-object/from16 v0, v16

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v7}, Le/a/y/e/k;-><init>(Landroid/content/Context;[Le/a/y/e/i;Le/a/y/e/m;Le/a/y/e/k$a;Le/a/y/b/z;J)V

    aput-object v16, v18, v12

    new-instance v16, Le/a/y/e/k;

    sget-object v2, Le/a/y/e/n;->a:[Le/a/y/e/i;

    iget-object v4, v8, Le/a/y/e/h;->d:Le/a/y/e/k$a;

    iget-object v5, v8, Le/a/y/e/h;->c:Le/a/y/b/z;

    iget-wide v6, v8, Le/a/y/e/h;->h:J

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v7}, Le/a/y/e/k;-><init>(Landroid/content/Context;[Le/a/y/e/i;Le/a/y/e/m;Le/a/y/e/k$a;Le/a/y/b/z;J)V

    const/16 v19, 0x2

    aput-object v16, v18, v19

    new-instance v16, Le/a/y/e/k;

    sget-object v2, Le/a/y/e/n;->b:[Le/a/y/e/i;

    iget-object v4, v8, Le/a/y/e/h;->d:Le/a/y/e/k$a;

    iget-object v5, v8, Le/a/y/e/h;->c:Le/a/y/b/z;

    iget-wide v6, v8, Le/a/y/e/h;->h:J

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v7}, Le/a/y/e/k;-><init>(Landroid/content/Context;[Le/a/y/e/i;Le/a/y/e/m;Le/a/y/e/k$a;Le/a/y/b/z;J)V

    const/16 v20, 0x3

    aput-object v16, v18, v20

    new-instance v16, Le/a/y/e/k;

    sget-object v2, Le/a/y/e/n;->d:[Le/a/y/e/i;

    iget-object v4, v8, Le/a/y/e/h;->d:Le/a/y/e/k$a;

    iget-object v5, v8, Le/a/y/e/h;->c:Le/a/y/b/z;

    iget-wide v6, v8, Le/a/y/e/h;->h:J

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v7}, Le/a/y/e/k;-><init>(Landroid/content/Context;[Le/a/y/e/i;Le/a/y/e/m;Le/a/y/e/k$a;Le/a/y/b/z;J)V

    const/16 v21, 0x4

    aput-object v16, v18, v21

    new-instance v16, Le/a/y/e/k;

    sget-object v2, Le/a/y/e/n;->e:[Le/a/y/e/i;

    iget-object v4, v8, Le/a/y/e/h;->d:Le/a/y/e/k$a;

    iget-object v5, v8, Le/a/y/e/h;->c:Le/a/y/b/z;

    iget-wide v6, v8, Le/a/y/e/h;->h:J

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v7}, Le/a/y/e/k;-><init>(Landroid/content/Context;[Le/a/y/e/i;Le/a/y/e/m;Le/a/y/e/k$a;Le/a/y/b/z;J)V

    const/4 v0, 0x5

    aput-object v16, v18, v0

    .line 17
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v11, v8, v1, v13}, Le/a/y/e/h$b;-><init>(Le/a/y/e/h;Ljava/util/List;Le/a/y/e/h$a;)V

    .line 18
    invoke-virtual {v15, v11}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Ln3/k0/a/a;)V

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/view/View;

    .line 19
    iput-object v1, v8, Le/a/y/e/h;->g:[Landroid/view/View;

    .line 20
    sget v2, Lcom/truecaller/flashsdk/R$id;->tab_recents:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v10

    .line 21
    iget-object v1, v8, Le/a/y/e/h;->g:[Landroid/view/View;

    sget v2, Lcom/truecaller/flashsdk/R$id;->tab_people:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v12

    .line 22
    iget-object v1, v8, Le/a/y/e/h;->g:[Landroid/view/View;

    sget v2, Lcom/truecaller/flashsdk/R$id;->tab_nature:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v19

    .line 23
    iget-object v1, v8, Le/a/y/e/h;->g:[Landroid/view/View;

    sget v2, Lcom/truecaller/flashsdk/R$id;->tab_objects:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v20

    .line 24
    iget-object v1, v8, Le/a/y/e/h;->g:[Landroid/view/View;

    sget v2, Lcom/truecaller/flashsdk/R$id;->tab_cars:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v21

    .line 25
    iget-object v1, v8, Le/a/y/e/h;->g:[Landroid/view/View;

    sget v2, Lcom/truecaller/flashsdk/R$id;->tab_punctuation:I

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    move v1, v10

    .line 26
    :goto_0
    iget-object v2, v8, Le/a/y/e/h;->g:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 27
    aget-object v2, v2, v1

    new-instance v3, Le/a/y/e/c;

    invoke-direct {v3, v15, v1}, Le/a/y/e/c;-><init>(Landroidx/viewpager/widget/ViewPager;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_0
    sget v1, Lcom/truecaller/flashsdk/R$id;->backspace:I

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Le/a/y/e/a;

    invoke-direct {v2, v8}, Le/a/y/e/a;-><init>(Le/a/y/e/h;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v1, v8, Le/a/y/e/h;->c:Le/a/y/b/z;

    invoke-interface {v1}, Le/a/y/b/z;->c()I

    move-result v1

    if-nez v1, :cond_1

    .line 30
    invoke-virtual {v8, v10}, Le/a/y/e/h;->g(I)V

    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v15, v1, v10}, Landroidx/viewpager/widget/ViewPager;->w(IZ)V

    .line 32
    :goto_1
    invoke-virtual {v8, v14}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 33
    invoke-virtual {v8, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/flashsdk/R$dimen;->keyboard_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, -0x1

    .line 35
    invoke-virtual {v8, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 36
    invoke-virtual {v8, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 37
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/y/e/h;->e:Le/a/y/e/h$c;

    return-void
.end method

.method public d(Landroid/content/Context;Le/a/y/e/i;J)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/y/e/h;->c:Le/a/y/b/z;

    invoke-interface {p1, p2}, Le/a/y/b/z;->push(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/y/e/h;->c:Le/a/y/b/z;

    invoke-interface {p1, p3, p4}, Le/a/y/b/z;->d(J)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/a/y/e/h;->l:Z

    const/16 v1, 0x50

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/y/e/h;->a:Landroid/view/View;

    iget v3, p0, Le/a/y/e/h;->f:I

    neg-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/y/e/h;->a:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/y/e/h;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/y/e/h;->e()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/a/y/e/h;->j:Z

    :goto_0
    return-void
.end method

.method public g(I)V
    .locals 3

    .line 1
    iget v0, p0, Le/a/y/e/h;->k:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/y/e/h;->g:[Landroid/view/View;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/y/e/h;->g:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 5
    iput p1, p0, Le/a/y/e/h;->k:I

    .line 6
    iget-object v0, p0, Le/a/y/e/h;->c:Le/a/y/b/z;

    invoke-interface {v0, p1}, Le/a/y/b/z;->a(I)V

    return-void
.end method

.method public h()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/y/e/h;->i:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
