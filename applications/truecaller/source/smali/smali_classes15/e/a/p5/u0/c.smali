.class public final Le/a/p5/u0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/p5/u0/b;


# instance fields
.field public a:Le/l/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/p5/u0/c;->a:Le/l/a/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/l/a/d;->b(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/p5/u0/c;->a:Le/l/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/l/a/d;->e()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Ljava/util/List;Landroid/app/Activity;Le/a/p5/u0/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/p5/u0/a;",
            ">;",
            "Landroid/app/Activity;",
            "Le/a/p5/u0/e;",
            ")V"
        }
    .end annotation

    const-string v0, "showcases"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showcaseUtilCallback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/p5/u0/c;->d(Ljava/util/List;)Le/a/p5/u0/a;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 2
    invoke-interface {p1}, Le/a/p5/u0/a;->c()Le/a/p5/u0/d;

    move-result-object v0

    .line 3
    iget-object v1, v0, Le/a/p5/u0/d;->a:Landroid/view/View;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-interface {p1}, Le/a/p5/u0/a;->a()V

    .line 6
    iget-object v1, v0, Le/a/p5/u0/d;->a:Landroid/view/View;

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "context.resources"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/16 v3, 0xa0

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 9
    :goto_0
    new-instance v7, Le/a/p5/u0/c$a;

    invoke-direct {v7, p0, p3, p1}, Le/a/p5/u0/c$a;-><init>(Le/a/p5/u0/c;Le/a/p5/u0/e;Le/a/p5/u0/a;)V

    .line 10
    iget-object p1, p0, Le/a/p5/u0/c;->a:Le/l/a/d;

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Le/l/a/d;->e()Z

    move-result p1

    goto :goto_1

    :cond_2
    move p1, p3

    :goto_1
    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Le/a/p5/u0/c;->a:Le/l/a/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3}, Le/l/a/d;->b(Z)V

    .line 12
    :cond_3
    iget-object p1, v0, Le/a/p5/u0/d;->a:Landroid/view/View;

    .line 13
    iget-object v2, v0, Le/a/p5/u0/d;->c:Ljava/lang/String;

    .line 14
    iget-object v3, v0, Le/a/p5/u0/d;->d:Ljava/lang/String;

    .line 15
    new-instance v6, Le/l/a/g;

    invoke-direct {v6, p1, v2, v3}, Le/l/a/g;-><init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 16
    iget p1, v0, Le/a/p5/u0/d;->h:I

    .line 17
    iput p1, v6, Le/l/a/c;->i:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    iput v2, v6, Le/l/a/c;->c:F

    .line 19
    iput p1, v6, Le/l/a/c;->j:I

    .line 20
    iget p1, v0, Le/a/p5/u0/d;->f:I

    const-string v3, "Given negative text size"

    if-ltz p1, :cond_7

    .line 21
    iput p1, v6, Le/l/a/c;->n:I

    .line 22
    iget p1, v0, Le/a/p5/u0/d;->g:I

    if-ltz p1, :cond_6

    .line 23
    iput p1, v6, Le/l/a/c;->o:I

    .line 24
    iget p1, v0, Le/a/p5/u0/d;->j:I

    .line 25
    iput p1, v6, Le/l/a/c;->l:I

    .line 26
    iput p1, v6, Le/l/a/c;->m:I

    .line 27
    iget-object p1, v0, Le/a/p5/u0/d;->k:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 29
    iput p1, v6, Le/l/a/c;->m:I

    .line 30
    iput v2, v6, Le/l/a/c;->t:F

    .line 31
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    if-eqz p1, :cond_5

    .line 32
    iput-object p1, v6, Le/l/a/c;->g:Landroid/graphics/Typeface;

    .line 33
    iput-object p1, v6, Le/l/a/c;->h:Landroid/graphics/Typeface;

    .line 34
    iget p1, v0, Le/a/p5/u0/d;->i:I

    .line 35
    iput p1, v6, Le/l/a/c;->k:I

    .line 36
    iput-boolean p3, v6, Le/l/a/c;->p:Z

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, v6, Le/l/a/c;->q:Z

    .line 38
    iput-boolean p3, v6, Le/l/a/c;->r:Z

    .line 39
    iput-boolean p1, v6, Le/l/a/c;->s:Z

    .line 40
    iput v1, v6, Le/l/a/c;->d:I

    .line 41
    sget p1, Le/l/a/d;->A0:I

    .line 42
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 43
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const v0, 0x1020002

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup;

    .line 45
    new-instance v0, Le/l/a/d;

    move-object v2, v0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Le/l/a/d;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Le/l/a/c;Le/l/a/d$l;)V

    .line 46
    invoke-virtual {p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iput-object v0, p0, Le/a/p5/u0/c;->a:Le/l/a/d;

    return-void

    .line 48
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot use a null typeface"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-void
.end method

.method public final d(Ljava/util/List;)Le/a/p5/u0/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/p5/u0/a;",
            ">;)",
            "Le/a/p5/u0/a;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    move-object v3, v1

    check-cast v3, Le/a/p5/u0/a;

    .line 6
    invoke-interface {v3}, Le/a/p5/u0/a;->c()Le/a/p5/u0/d;

    move-result-object v3

    .line 7
    iget v3, v3, Le/a/p5/u0/d;->b:I

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 9
    move-object v5, v4

    check-cast v5, Le/a/p5/u0/a;

    .line 10
    invoke-interface {v5}, Le/a/p5/u0/a;->c()Le/a/p5/u0/d;

    move-result-object v5

    .line 11
    iget v5, v5, Le/a/p5/u0/d;->b:I

    if-le v3, v5, :cond_3

    move-object v1, v4

    move v3, v5

    .line 12
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 13
    :goto_0
    check-cast v1, Le/a/p5/u0/a;

    if-eqz v1, :cond_5

    .line 14
    invoke-interface {v1}, Le/a/p5/u0/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    .line 15
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0, p1}, Le/a/p5/u0/c;->d(Ljava/util/List;)Le/a/p5/u0/a;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v2
.end method
