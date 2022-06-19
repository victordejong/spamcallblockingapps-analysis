.class public abstract Ln3/i/c/b;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:I

.field public c:Landroid/content/Context;

.field public d:Ln3/i/b/h/h;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:[Landroid/view/View;

.field public h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Ln3/i/c/b;->a:[I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln3/i/c/b;->g:[Landroid/view/View;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ln3/i/c/b;->h:Ljava/util/HashMap;

    .line 5
    iput-object p1, p0, Ln3/i/c/b;->c:Landroid/content/Context;

    .line 6
    invoke-virtual {p0, v0}, Ln3/i/c/b;->l(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Ln3/i/c/b;->a:[I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Ln3/i/c/b;->g:[Landroid/view/View;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln3/i/c/b;->h:Ljava/util/HashMap;

    .line 11
    iput-object p1, p0, Ln3/i/c/b;->c:Landroid/content/Context;

    .line 12
    invoke-virtual {p0, p2}, Ln3/i/c/b;->l(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/i/c/b;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Ln3/i/c/b;->k(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, Ln3/i/c/b;->h:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, v0}, Ln3/i/c/b;->f(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final f(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Ln3/i/c/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ln3/i/c/b;->a:[I

    array-length v2, v1

    if-le v0, v2, :cond_1

    .line 3
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Ln3/i/c/b;->a:[I

    .line 4
    :cond_1
    iget-object v0, p0, Ln3/i/c/b;->a:[I

    iget v1, p0, Ln3/i/c/b;->b:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Ln3/i/c/b;->b:I

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/i/c/b;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_2
    if-nez v0, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 9
    instance-of v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v5, :cond_5

    .line 10
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 11
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->U:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Ln3/i/c/b;->f(I)V

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public getReferencedIds()[I
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i/c/b;->a:[I

    iget v1, p0, Ln3/i/c/b;->b:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/view/View;)V
    .locals 2

    if-ne p1, p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln3/i/c/b;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ln3/i/c/b;->f(I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public i()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v2

    const/4 v3, 0x0

    .line 6
    :goto_0
    iget v4, p0, Ln3/i/c/b;->b:I

    if-ge v3, v4, :cond_1

    .line 7
    iget-object v4, p0, Ln3/i/c/b;->a:[I

    aget v4, v4, v3

    .line 8
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->Q0(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object v1, p0, Ln3/i/c/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 3
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    const/4 v5, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final k(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->P0(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 6
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, v0, p1}, Ln3/i/c/b;->j(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v3

    :cond_2
    if-nez v3, :cond_3

    .line 8
    :try_start_0
    const-class v0, Landroidx/constraintlayout/widget/R$id;

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    if-nez v3, :cond_4

    .line 11
    iget-object v0, p0, Ln3/i/c/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Ln3/i/c/b;->c:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    .line 13
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_4
    return v3
.end method

.method public l(Landroid/util/AttributeSet;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 4
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraint_referenced_ids:I

    if-ne v2, v3, :cond_0

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ln3/i/c/b;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v2}, Ln3/i/c/b;->setIds(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraint_referenced_tags:I

    if-ne v2, v3, :cond_1

    .line 8
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ln3/i/c/b;->f:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v2}, Ln3/i/c/b;->setReferenceTags(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method public m(Ln3/i/c/d$a;Ln3/i/b/h/i;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/i/c/d$a;",
            "Ln3/i/b/h/i;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$a;",
            "Landroid/util/SparseArray<",
            "Ln3/i/b/h/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p1, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget-object v0, p3, Ln3/i/c/d$b;->e0:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Ln3/i/c/b;->setReferencedIds([I)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object p3, p3, Ln3/i/c/d$b;->f0:Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_4

    .line 5
    iget-object p3, p1, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget-object v0, p3, Ln3/i/c/d$b;->f0:Ljava/lang/String;

    const-string v2, ","

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    array-length v2, v0

    new-array v2, v2, [I

    move v3, v1

    move v4, v3

    .line 9
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 10
    aget-object v5, v0, v3

    .line 11
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {p0, v5}, Ln3/i/c/b;->k(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 13
    aput v5, v2, v4

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_2
    array-length v0, v0

    if-eq v4, v0, :cond_3

    .line 15
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 16
    :cond_3
    iput-object v2, p3, Ln3/i/c/d$b;->e0:[I

    .line 17
    :cond_4
    :goto_1
    invoke-virtual {p2}, Ln3/i/b/h/i;->b()V

    .line 18
    iget-object p3, p1, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget-object p3, p3, Ln3/i/c/d$b;->e0:[I

    if-eqz p3, :cond_6

    .line 19
    :goto_2
    iget-object p3, p1, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget-object p3, p3, Ln3/i/c/d$b;->e0:[I

    array-length v0, p3

    if-ge v1, v0, :cond_6

    .line 20
    aget p3, p3, v1

    .line 21
    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln3/i/b/h/d;

    if-eqz p3, :cond_5

    .line 22
    invoke-virtual {p2, p3}, Ln3/i/b/h/i;->a(Ln3/i/b/h/d;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public n(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Ln3/i/c/b;->e:Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    iget v3, p0, Ln3/i/c/b;->b:I

    if-ge v2, v3, :cond_3

    .line 4
    iget-object v3, p0, Ln3/i/c/b;->a:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_2

    .line 5
    :goto_1
    iget p1, p0, Ln3/i/c/b;->b:I

    add-int/2addr p1, v0

    if-ge v2, p1, :cond_1

    .line 6
    iget-object p1, p0, Ln3/i/c/b;->a:[I

    add-int/lit8 v3, v2, 0x1

    aget v4, p1, v3

    aput v4, p1, v2

    move v2, v3

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Ln3/i/c/b;->a:[I

    aput v1, v0, p1

    .line 8
    iput p1, p0, Ln3/i/c/b;->b:I

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public o(Ln3/i/b/h/d;Z)V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Ln3/i/c/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ln3/i/c/b;->setIds(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/i/c/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Ln3/i/c/b;->setReferenceTags(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public p(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public s(Ln3/i/b/h/h;Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/i/b/h/e;",
            "Ln3/i/b/h/h;",
            "Landroid/util/SparseArray<",
            "Ln3/i/b/h/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ln3/i/b/h/h;->b()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Ln3/i/c/b;->b:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Ln3/i/c/b;->a:[I

    aget v1, v1, v0

    .line 4
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/b/h/d;

    invoke-interface {p1, v1}, Ln3/i/b/h/h;->a(Ln3/i/b/h/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIds(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ln3/i/c/b;->e:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/i/c/b;->b:I

    :goto_0
    const/16 v1, 0x2c

    .line 3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/i/c/b;->e(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln3/i/c/b;->e(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public setReferenceTags(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ln3/i/c/b;->f:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/i/c/b;->b:I

    :goto_0
    const/16 v1, 0x2c

    .line 3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/i/c/b;->g(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln3/i/c/b;->g(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public setReferencedIds([I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ln3/i/c/b;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/i/c/b;->b:I

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 4
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ln3/i/c/b;->f(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Ln3/i/c/b;->e:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Ln3/i/c/b;->f(I)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i/c/b;->d:Ln3/i/b/h/h;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 5
    iget-object v1, p0, Ln3/i/c/b;->d:Ln3/i/b/h/h;

    check-cast v1, Ln3/i/b/h/d;

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    :cond_1
    return-void
.end method
