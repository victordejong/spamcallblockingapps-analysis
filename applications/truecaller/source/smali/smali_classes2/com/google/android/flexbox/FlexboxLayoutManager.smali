.class public Lcom/google/android/flexbox/FlexboxLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$o;
.source "SourceFile"

# interfaces
.implements Le/m/a/e/a;
.implements Landroidx/recyclerview/widget/RecyclerView$y$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$c;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$b;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field public static final y:Landroid/graphics/Rect;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/e/b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/m/a/e/c;

.field public i:Landroidx/recyclerview/widget/RecyclerView$v;

.field public j:Landroidx/recyclerview/widget/RecyclerView$z;

.field public k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

.field public l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

.field public m:Ln3/b0/a/u;

.field public n:Ln3/b0/a/u;

.field public o:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Landroid/content/Context;

.field public v:Landroid/view/View;

.field public w:I

.field public x:Le/m/a/e/c$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    .line 4
    new-instance v1, Le/m/a/e/c;

    invoke-direct {v1, p0}, Le/m/a/e/c;-><init>(Le/m/a/e/a;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    .line 5
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 6
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:I

    const/high16 v1, -0x80000000

    .line 7
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:I

    .line 8
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:I

    .line 9
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    .line 10
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:Landroid/util/SparseArray;

    .line 11
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->w:I

    .line 12
    new-instance v0, Le/m/a/e/c$b;

    invoke-direct {v0}, Le/m/a/e/c$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Le/m/a/e/c$b;

    .line 13
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$o;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$o$d;

    move-result-object p2

    .line 14
    iget p3, p2, Landroidx/recyclerview/widget/RecyclerView$o$d;->a:I

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$o$d;->c:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    .line 16
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->x(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 17
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->x(I)V

    goto :goto_0

    .line 18
    :cond_2
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$o$d;->c:Z

    if-eqz p2, :cond_3

    .line 19
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->x(I)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 20
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->x(I)V

    .line 21
    :goto_0
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:I

    if-eq p2, p4, :cond_5

    if-eqz p2, :cond_4

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->removeAllViews()V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k()V

    .line 24
    :goto_1
    iput p4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:I

    .line 25
    iput-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 26
    iput-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Ln3/b0/a/u;

    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->requestLayout()V

    .line 28
    :cond_5
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->c:I

    const/4 p3, 0x4

    if-eq p2, p3, :cond_6

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->removeAllViews()V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k()V

    .line 31
    iput p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->c:I

    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->requestLayout()V

    .line 33
    :cond_6
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$o;->setAutoMeasureEnabled(Z)V

    .line 34
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->u:Landroid/content/Context;

    return-void
.end method

.method public static isMeasurementUpToDate(III)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$p;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->isMeasurementCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public final A(Lcom/google/android/flexbox/FlexboxLayoutManager$b;ZZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->w()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:Z

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 6
    iget v1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    sub-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 8
    invoke-virtual {v1}, Ln3/b0/a/u;->k()I

    move-result v1

    sub-int/2addr v0, v1

    .line 9
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->a:I

    goto :goto_1

    .line 10
    :cond_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 11
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    .line 12
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 13
    invoke-virtual {v1}, Ln3/b0/a/u;->k()I

    move-result v1

    sub-int/2addr v0, v1

    .line 14
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->a:I

    .line 15
    :goto_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 16
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a:I

    .line 17
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    const/4 v0, 0x1

    .line 18
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    const/4 v0, -0x1

    .line 19
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    .line 20
    iget v1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    .line 21
    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    const/high16 v1, -0x80000000

    .line 22
    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    .line 23
    iget v1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b:I

    .line 24
    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    if-eqz p2, :cond_2

    if-lez v1, :cond_2

    .line 25
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    .line 26
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 27
    iget p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b:I

    if-le p2, p1, :cond_2

    .line 28
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/e/b;

    .line 29
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 30
    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    add-int/2addr p3, v0

    iput p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    .line 31
    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    .line 32
    iget p1, p1, Le/m/a/e/b;->h:I

    sub-int/2addr p3, p1

    .line 33
    iput p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;IILe/m/a/e/b;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, p2

    .line 4
    iget p2, p4, Le/m/a/e/b;->e:I

    add-int/2addr p2, p1

    iput p2, p4, Le/m/a/e/b;->e:I

    .line 5
    iget p2, p4, Le/m/a/e/b;->f:I

    add-int/2addr p2, p1

    iput p2, p4, Le/m/a/e/b;->f:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, p2

    .line 7
    iget p2, p4, Le/m/a/e/b;->e:I

    add-int/2addr p2, p1

    iput p2, p4, Le/m/a/e/b;->e:I

    .line 8
    iget p2, p4, Le/m/a/e/b;->f:I

    add-int/2addr p2, p1

    iput p2, p4, Le/m/a/e/b;->f:I

    :goto_0
    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->i:Landroidx/recyclerview/widget/RecyclerView$v;

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, p1, v3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$v;->l(IZJ)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    return-object p1
.end method

.method public c(III)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getHeightMode()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    move-result v1

    .line 3
    invoke-static {p1, v0, p2, p3, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildMeasureSpec(IIIIZ)I

    move-result p1

    return p1
.end method

.method public canScrollHorizontally()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->v:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-le v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public canScrollVertically()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->v:Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-le v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$p;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    return p1
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result p1

    return p1
.end method

.method public final computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->n(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->p(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {p1, v0}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 8
    invoke-virtual {v0, v2}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 9
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v0}, Ln3/b0/a/u;->l()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->n(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->p(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 8
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v4, v0}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 9
    invoke-virtual {v4, v2}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v0, v4

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 11
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v4, v4, Le/m/a/e/c;->c:[I

    aget p1, v4, p1

    if-eqz p1, :cond_3

    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    aget v1, v4, v3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 13
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 14
    invoke-virtual {v0}, Ln3/b0/a/u;->k()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 15
    invoke-virtual {v1, v2}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 16
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->n(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->p(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-nez v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v3

    invoke-virtual {p0, v1, v3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->r(IIZ)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    .line 9
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v4, v0}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 10
    invoke-virtual {v4, v2}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result p1

    return p1
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p1

    :goto_0
    add-int/2addr p1, v0

    return p1
.end method

.method public e(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/view/View;II)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p1

    :goto_0
    add-int/2addr p1, p2

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    goto :goto_0
.end method

.method public findLastVisibleItemPosition()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->r(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v0}, Ln3/b0/a/u;->k()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->t(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result p2

    goto :goto_1

    :cond_1
    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v0}, Ln3/b0/a/u;->g()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_4

    neg-int v0, v0

    .line 5
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->t(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result p2

    neg-int p2, p2

    :goto_1
    add-int/2addr p1, p2

    if-eqz p4, :cond_3

    .line 6
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {p3}, Ln3/b0/a/u;->g()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_3

    .line 7
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {p1, p3}, Ln3/b0/a/u;->p(I)V

    add-int/2addr p3, p2

    return p3

    :cond_3
    return p2

    :cond_4
    return v1
.end method

.method public final fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v0}, Ln3/b0/a/u;->g()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    neg-int v0, v0

    .line 3
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->t(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result p2

    goto :goto_0

    :cond_0
    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v0}, Ln3/b0/a/u;->k()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_3

    .line 5
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->t(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result p2

    neg-int p2, p2

    :goto_0
    add-int/2addr p1, p2

    if-eqz p4, :cond_2

    .line 6
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {p3}, Ln3/b0/a/u;->k()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_2

    .line 7
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Ln3/b0/a/u;->p(I)V

    sub-int/2addr p2, p1

    :cond_2
    return p2

    :cond_3
    return v1
.end method

.method public g(III)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getWidthMode()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 3
    invoke-static {p1, v0, p2, p3, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildMeasureSpec(IIIIZ)I

    move-result p1

    return p1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$p;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$p;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAlignContent()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getAlignItems()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->c:I

    return v0
.end method

.method public getFlexDirection()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:I

    return v0
.end method

.method public getFlexItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v0

    return v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/m/a/e/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    return-object v0
.end method

.method public getFlexWrap()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:I

    return v0
.end method

.method public getLargestMainSize()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    .line 2
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 3
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/e/b;

    .line 4
    iget v3, v3, Le/m/a/e/b;->e:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getMaxLine()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d:I

    return v0
.end method

.method public getSumOfCrossSize()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/e/b;

    .line 3
    iget v3, v3, Le/m/a/e/b;->g:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public h(Le/m/a/e/b;)V
    .locals 0

    return-void
.end method

.method public i(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public j()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d:I

    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:I

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ln3/b0/a/s;

    invoke-direct {v0, p0}, Ln3/b0/a/s;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 5
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 6
    new-instance v0, Ln3/b0/a/t;

    invoke-direct {v0, p0}, Ln3/b0/a/t;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 7
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Ln3/b0/a/u;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Ln3/b0/a/t;

    invoke-direct {v0, p0}, Ln3/b0/a/t;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 9
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 10
    new-instance v0, Ln3/b0/a/s;

    invoke-direct {v0, p0}, Ln3/b0/a/s;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 11
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Ln3/b0/a/u;

    goto :goto_0

    .line 12
    :cond_2
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:I

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Ln3/b0/a/t;

    invoke-direct {v0, p0}, Ln3/b0/a/t;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 14
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 15
    new-instance v0, Ln3/b0/a/s;

    invoke-direct {v0, p0}, Ln3/b0/a/s;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 16
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Ln3/b0/a/u;

    goto :goto_0

    .line 17
    :cond_3
    new-instance v0, Ln3/b0/a/s;

    invoke-direct {v0, p0}, Ln3/b0/a/s;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 18
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 19
    new-instance v0, Ln3/b0/a/t;

    invoke-direct {v0, p0}, Ln3/b0/a/t;-><init>(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 20
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Ln3/b0/a/u;

    :goto_0
    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;Lcom/google/android/flexbox/FlexboxLayoutManager$c;)I
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    .line 2
    iget v5, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->a:I

    if-gez v5, :cond_0

    add-int/2addr v3, v5

    .line 3
    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    .line 4
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->v(Landroidx/recyclerview/widget/RecyclerView$v;Lcom/google/android/flexbox/FlexboxLayoutManager$c;)V

    .line 5
    :cond_1
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->a:I

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v5

    move v7, v3

    const/4 v8, 0x0

    :goto_0
    if-gtz v7, :cond_2

    .line 7
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 8
    iget-boolean v9, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:Z

    if-eqz v9, :cond_14

    .line 9
    :cond_2
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    .line 10
    iget v10, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    if-ltz v10, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v12

    if-ge v10, v12, :cond_3

    iget v10, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    if-ltz v10, :cond_3

    .line 11
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v10, v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_14

    .line 12
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    .line 13
    iget v10, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    .line 14
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/m/a/e/b;

    .line 15
    iget v10, v9, Le/m/a/e/b;->o:I

    .line 16
    iput v10, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v10

    const/4 v12, 0x0

    const/4 v13, -0x1

    if-eqz v10, :cond_a

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getPaddingLeft()I

    move-result v10

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getPaddingRight()I

    move-result v14

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getWidth()I

    move-result v15

    .line 21
    iget v6, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    .line 22
    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    if-ne v4, v13, :cond_4

    .line 23
    iget v4, v9, Le/m/a/e/b;->g:I

    sub-int/2addr v6, v4

    .line 24
    :cond_4
    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    int-to-float v10, v10

    sub-int/2addr v15, v14

    int-to-float v13, v15

    .line 25
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 26
    iget v14, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d:I

    int-to-float v14, v14

    sub-float/2addr v10, v14

    sub-float/2addr v13, v14

    .line 27
    invoke-static {v12, v12}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 28
    iget v15, v9, Le/m/a/e/b;->h:I

    move v14, v4

    const/4 v12, 0x0

    :goto_2
    add-int v11, v4, v15

    if-ge v14, v11, :cond_9

    .line 29
    invoke-virtual {v0, v14}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_5

    move/from16 v22, v3

    move/from16 v21, v4

    move/from16 v25, v14

    move/from16 v26, v15

    goto/16 :goto_5

    :cond_5
    move/from16 v21, v4

    .line 30
    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    move/from16 v16, v15

    const/4 v15, 0x1

    if-ne v4, v15, :cond_6

    .line 31
    sget-object v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 32
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$o;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 33
    :cond_6
    sget-object v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 34
    invoke-virtual {v0, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$o;->addView(Landroid/view/View;I)V

    add-int/lit8 v12, v12, 0x1

    :goto_3
    move v4, v12

    .line 35
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v15, v12, Le/m/a/e/c;->d:[J

    move/from16 v22, v3

    move/from16 v23, v4

    aget-wide v3, v15, v14

    long-to-int v15, v3

    .line 36
    invoke-virtual {v12, v3, v4}, Le/m/a/e/c;->m(J)I

    move-result v3

    .line 37
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 38
    invoke-direct {v0, v11, v15, v3, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$p;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 39
    invoke-virtual {v11, v15, v3}, Landroid/view/View;->measure(II)V

    .line 40
    :cond_7
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$o;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v3

    int-to-float v3, v12

    add-float/2addr v10, v3

    .line 41
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$o;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v3

    int-to-float v3, v12

    sub-float v3, v13, v3

    .line 42
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$o;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v12

    add-int v17, v12, v6

    .line 43
    iget-boolean v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz v12, :cond_8

    .line 44
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    .line 45
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v13, v15

    .line 46
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 47
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int v24, v13, v17

    move-object v13, v11

    move/from16 v25, v14

    move-object v14, v9

    move/from16 v26, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v24

    .line 48
    invoke-virtual/range {v12 .. v18}, Le/m/a/e/c;->u(Landroid/view/View;Le/m/a/e/b;IIII)V

    goto :goto_4

    :cond_8
    move/from16 v25, v14

    move/from16 v26, v16

    .line 49
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    .line 50
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 51
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int v18, v14, v13

    .line 52
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int v24, v13, v17

    move-object v13, v11

    move-object v14, v9

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v24

    .line 53
    invoke-virtual/range {v12 .. v18}, Le/m/a/e/c;->u(Landroid/view/View;Le/m/a/e/b;IIII)V

    .line 54
    :goto_4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$o;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v13

    add-int/2addr v13, v12

    int-to-float v12, v13

    add-float v12, v12, v19

    add-float/2addr v12, v10

    .line 55
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v4

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$o;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v10

    int-to-float v4, v4

    add-float v4, v4, v19

    sub-float/2addr v3, v4

    move v13, v3

    move v10, v12

    move/from16 v12, v23

    :goto_5
    add-int/lit8 v14, v25, 0x1

    move/from16 v4, v21

    move/from16 v3, v22

    move/from16 v15, v26

    goto/16 :goto_2

    :cond_9
    move/from16 v22, v3

    .line 56
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    .line 57
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 58
    iget v4, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    add-int/2addr v3, v4

    .line 59
    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    .line 60
    iget v3, v9, Le/m/a/e/b;->g:I

    move/from16 v21, v7

    move/from16 v23, v8

    goto/16 :goto_b

    :cond_a
    move/from16 v22, v3

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getPaddingTop()I

    move-result v3

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getPaddingBottom()I

    move-result v4

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getHeight()I

    move-result v6

    .line 64
    iget v10, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    .line 65
    iget v11, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    if-ne v11, v13, :cond_b

    .line 66
    iget v11, v9, Le/m/a/e/b;->g:I

    sub-int v13, v10, v11

    add-int/2addr v10, v11

    move v11, v10

    move v10, v13

    goto :goto_6

    :cond_b
    move v11, v10

    .line 67
    :goto_6
    iget v15, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    int-to-float v3, v3

    sub-int/2addr v6, v4

    int-to-float v4, v6

    .line 68
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 69
    iget v6, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    sub-float/2addr v4, v6

    .line 70
    invoke-static {v12, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 71
    iget v14, v9, Le/m/a/e/b;->h:I

    move v13, v15

    const/4 v12, 0x0

    :goto_7
    add-int v1, v15, v14

    if-ge v13, v1, :cond_12

    .line 72
    invoke-virtual {v0, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_c

    move/from16 v21, v7

    move/from16 v23, v8

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    const/16 v28, 0x1

    goto/16 :goto_a

    :cond_c
    move/from16 v16, v14

    .line 73
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    move/from16 v17, v15

    iget-object v15, v14, Le/m/a/e/c;->d:[J

    move/from16 v21, v7

    move/from16 v23, v8

    aget-wide v7, v15, v13

    long-to-int v15, v7

    .line 74
    invoke-virtual {v14, v7, v8}, Le/m/a/e/c;->m(J)I

    move-result v7

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 76
    invoke-direct {v0, v1, v15, v7, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$p;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 77
    invoke-virtual {v1, v15, v7}, Landroid/view/View;->measure(II)V

    .line 78
    :cond_d
    iget v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v14

    add-int/2addr v14, v7

    int-to-float v7, v14

    add-float/2addr v3, v7

    .line 79
    iget v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v14

    add-int/2addr v14, v7

    int-to-float v7, v14

    sub-float/2addr v4, v7

    .line 80
    iget v7, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    const/4 v15, 0x1

    if-ne v7, v15, :cond_e

    .line 81
    sget-object v7, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v7}, Landroidx/recyclerview/widget/RecyclerView$o;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 82
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 83
    :cond_e
    sget-object v7, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v7}, Landroidx/recyclerview/widget/RecyclerView$o;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 84
    invoke-virtual {v0, v1, v12}, Landroidx/recyclerview/widget/RecyclerView$o;->addView(Landroid/view/View;I)V

    add-int/lit8 v12, v12, 0x1

    :goto_8
    move v7, v12

    .line 85
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v12

    add-int v18, v12, v10

    .line 86
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v12

    sub-int v19, v11, v12

    .line 87
    iget-boolean v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz v14, :cond_10

    .line 88
    iget-boolean v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f:Z

    if-eqz v12, :cond_f

    .line 89
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v18, v19, v18

    .line 91
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    sub-int v20, v20, v24

    .line 92
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v25, v13

    move-object v13, v1

    move/from16 v26, v16

    move/from16 v16, v14

    move-object v14, v9

    move/from16 v28, v15

    move/from16 v27, v17

    move/from16 v15, v16

    move/from16 v16, v18

    move/from16 v17, v20

    move/from16 v18, v19

    move/from16 v19, v24

    .line 93
    invoke-virtual/range {v12 .. v19}, Le/m/a/e/c;->v(Landroid/view/View;Le/m/a/e/b;ZIIII)V

    goto/16 :goto_9

    :cond_f
    move/from16 v25, v13

    move/from16 v28, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v16, v14

    .line 94
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v17, v19, v13

    .line 96
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 97
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int v20, v14, v13

    move-object v13, v1

    move-object v14, v9

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    .line 98
    invoke-virtual/range {v12 .. v19}, Le/m/a/e/c;->v(Landroid/view/View;Le/m/a/e/b;ZIIII)V

    goto :goto_9

    :cond_10
    move/from16 v25, v13

    move/from16 v28, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v16, v14

    .line 99
    iget-boolean v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f:Z

    if-eqz v12, :cond_11

    .line 100
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    .line 101
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int v17, v13, v14

    .line 102
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int v19, v13, v18

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v20

    move-object v13, v1

    move-object v14, v9

    move/from16 v15, v16

    move/from16 v16, v18

    move/from16 v18, v19

    move/from16 v19, v20

    .line 103
    invoke-virtual/range {v12 .. v19}, Le/m/a/e/c;->v(Landroid/view/View;Le/m/a/e/b;ZIIII)V

    goto :goto_9

    .line 104
    :cond_11
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    .line 105
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 106
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int v19, v13, v18

    .line 107
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int v20, v14, v13

    move-object v13, v1

    move-object v14, v9

    move/from16 v15, v16

    move/from16 v16, v18

    move/from16 v18, v19

    move/from16 v19, v20

    .line 108
    invoke-virtual/range {v12 .. v19}, Le/m/a/e/c;->v(Landroid/view/View;Le/m/a/e/b;ZIIII)V

    .line 109
    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v13

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v13

    add-int/2addr v13, v12

    int-to-float v12, v13

    add-float/2addr v12, v6

    add-float/2addr v12, v3

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v8

    .line 111
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, v6

    sub-float/2addr v4, v1

    move v3, v12

    move v12, v7

    :goto_a
    add-int/lit8 v13, v25, 0x1

    move/from16 v7, v21

    move/from16 v8, v23

    move/from16 v14, v26

    move/from16 v15, v27

    goto/16 :goto_7

    :cond_12
    move/from16 v21, v7

    move/from16 v23, v8

    .line 112
    iget v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    .line 113
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 114
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    add-int/2addr v1, v3

    .line 115
    iput v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    .line 116
    iget v3, v9, Le/m/a/e/b;->g:I

    :goto_b
    add-int v8, v23, v3

    if-nez v5, :cond_13

    .line 117
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz v1, :cond_13

    .line 118
    iget v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    .line 119
    iget v3, v9, Le/m/a/e/b;->g:I

    .line 120
    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    mul-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 121
    iput v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    goto :goto_c

    .line 122
    :cond_13
    iget v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    .line 123
    iget v3, v9, Le/m/a/e/b;->g:I

    .line 124
    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 125
    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    .line 126
    :goto_c
    iget v1, v9, Le/m/a/e/b;->g:I

    sub-int v7, v21, v1

    move-object/from16 v1, p1

    move/from16 v3, v22

    const/high16 v4, -0x80000000

    goto/16 :goto_0

    :cond_14
    move/from16 v22, v3

    move/from16 v23, v8

    .line 127
    iget v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->a:I

    sub-int v1, v1, v23

    .line 128
    iput v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->a:I

    .line 129
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_16

    add-int v3, v3, v23

    .line 130
    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    if-gez v1, :cond_15

    add-int/2addr v3, v1

    .line 131
    iput v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    :cond_15
    move-object/from16 v1, p1

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->v(Landroidx/recyclerview/widget/RecyclerView$v;Lcom/google/android/flexbox/FlexboxLayoutManager$c;)V

    .line 133
    :cond_16
    iget v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->a:I

    sub-int v3, v22, v1

    return v3
.end method

.method public final n(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->s(III)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v2, v2, Le/m/a/e/c;->c:[I

    aget v1, v2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/e/b;

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->o(Landroid/view/View;Le/m/a/e/b;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final o(Landroid/view/View;Le/m/a/e/b;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    .line 2
    iget p2, p2, Le/m/a/e/b;->h:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p2, :cond_3

    .line 3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 6
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v3, p1}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 7
    invoke-virtual {v4, v2}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    goto :goto_1

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v3, p1}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 9
    invoke-virtual {v4, v2}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    :goto_1
    move-object p1, v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$g;Landroidx/recyclerview/widget/RecyclerView$g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->removeAllViews()V

    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->v:Landroid/view/View;

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$v;)V

    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->y(I)V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$o;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->y(I)V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->y(I)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->y(I)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$o;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->y(I)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iput-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->i:Landroidx/recyclerview/widget/RecyclerView$v;

    .line 2
    iput-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Landroidx/recyclerview/widget/RecyclerView$z;

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v3

    if-nez v3, :cond_0

    .line 4
    iget-boolean v4, v2, Landroidx/recyclerview/widget/RecyclerView$z;->g:Z

    if-eqz v4, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getLayoutDirection()I

    move-result v4

    .line 6
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_a

    if-eq v5, v8, :cond_7

    if-eq v5, v6, :cond_4

    const/4 v9, 0x3

    if-eq v5, v9, :cond_1

    .line 7
    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    .line 8
    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f:Z

    goto :goto_6

    :cond_1
    if-ne v4, v8, :cond_2

    move v4, v8

    goto :goto_0

    :cond_2
    move v4, v7

    .line 9
    :goto_0
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    .line 10
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:I

    if-ne v5, v6, :cond_3

    xor-int/2addr v4, v8

    .line 11
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    .line 12
    :cond_3
    iput-boolean v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f:Z

    goto :goto_6

    :cond_4
    if-ne v4, v8, :cond_5

    move v4, v8

    goto :goto_1

    :cond_5
    move v4, v7

    .line 13
    :goto_1
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    .line 14
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:I

    if-ne v5, v6, :cond_6

    xor-int/2addr v4, v8

    .line 15
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    .line 16
    :cond_6
    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f:Z

    goto :goto_6

    :cond_7
    if-eq v4, v8, :cond_8

    move v4, v8

    goto :goto_2

    :cond_8
    move v4, v7

    .line 17
    :goto_2
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    .line 18
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:I

    if-ne v4, v6, :cond_9

    move v4, v8

    goto :goto_3

    :cond_9
    move v4, v7

    :goto_3
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f:Z

    goto :goto_6

    :cond_a
    if-ne v4, v8, :cond_b

    move v4, v8

    goto :goto_4

    :cond_b
    move v4, v7

    .line 19
    :goto_4
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    .line 20
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:I

    if-ne v4, v6, :cond_c

    move v4, v8

    goto :goto_5

    :cond_c
    move v4, v7

    :goto_5
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f:Z

    .line 21
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()V

    .line 22
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    if-nez v4, :cond_d

    .line 23
    new-instance v4, Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$c;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V

    iput-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 24
    :cond_d
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    invoke-virtual {v4, v3}, Le/m/a/e/c;->j(I)V

    .line 25
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    invoke-virtual {v4, v3}, Le/m/a/e/c;->k(I)V

    .line 26
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    invoke-virtual {v4, v3}, Le/m/a/e/c;->i(I)V

    .line 27
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 28
    iput-boolean v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->j:Z

    .line 29
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v4, :cond_f

    .line 30
    iget v5, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a:I

    if-ltz v5, :cond_e

    if-ge v5, v3, :cond_e

    move v6, v8

    goto :goto_7

    :cond_e
    move v6, v7

    :goto_7
    if-eqz v6, :cond_f

    .line 31
    iput v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:I

    .line 32
    :cond_f
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 33
    iget-boolean v6, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f:Z

    const/high16 v9, -0x80000000

    const/4 v10, -0x1

    if-eqz v6, :cond_10

    .line 34
    iget v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:I

    if-ne v6, v10, :cond_10

    if-eqz v4, :cond_30

    .line 35
    :cond_10
    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    .line 36
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 37
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 38
    iget-boolean v6, v2, Landroidx/recyclerview/widget/RecyclerView$z;->g:Z

    if-nez v6, :cond_1f

    .line 39
    iget v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:I

    if-ne v6, v10, :cond_11

    goto/16 :goto_d

    :cond_11
    if-ltz v6, :cond_1e

    .line 40
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v11

    if-lt v6, v11, :cond_12

    goto/16 :goto_c

    .line 41
    :cond_12
    iget v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:I

    .line 42
    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a:I

    .line 43
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v11, v11, Le/m/a/e/c;->c:[I

    aget v6, v11, v6

    .line 44
    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b:I

    .line 45
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v6, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v11

    .line 46
    iget v6, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a:I

    if-ltz v6, :cond_13

    if-ge v6, v11, :cond_13

    move v6, v8

    goto :goto_8

    :cond_13
    move v6, v7

    :goto_8
    if-eqz v6, :cond_14

    .line 47
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v6}, Ln3/b0/a/u;->k()I

    move-result v6

    .line 48
    iget v5, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->b:I

    add-int/2addr v6, v5

    .line 49
    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    .line 50
    iput-boolean v8, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->g:Z

    .line 51
    iput v10, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b:I

    goto/16 :goto_b

    .line 52
    :cond_14
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:I

    if-ne v5, v9, :cond_1c

    .line 53
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:I

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$o;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 54
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v6, v5}, Ln3/b0/a/u;->c(Landroid/view/View;)I

    move-result v6

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 55
    invoke-virtual {v11}, Ln3/b0/a/u;->l()I

    move-result v11

    if-le v6, v11, :cond_15

    .line 56
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    goto/16 :goto_b

    .line 57
    :cond_15
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v6, v5}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v6

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 58
    invoke-virtual {v11}, Ln3/b0/a/u;->k()I

    move-result v11

    sub-int/2addr v6, v11

    if-gez v6, :cond_16

    .line 59
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v5}, Ln3/b0/a/u;->k()I

    move-result v5

    .line 60
    iput v5, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    .line 61
    iput-boolean v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e:Z

    goto/16 :goto_b

    .line 62
    :cond_16
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v6}, Ln3/b0/a/u;->g()I

    move-result v6

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 63
    invoke-virtual {v11, v5}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v6, v11

    if-gez v6, :cond_17

    .line 64
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v5}, Ln3/b0/a/u;->g()I

    move-result v5

    .line 65
    iput v5, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    .line 66
    iput-boolean v8, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e:Z

    goto :goto_b

    .line 67
    :cond_17
    iget-boolean v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e:Z

    if-eqz v6, :cond_18

    .line 68
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 69
    invoke-virtual {v6, v5}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v5

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 70
    invoke-virtual {v6}, Ln3/b0/a/u;->m()I

    move-result v6

    add-int/2addr v6, v5

    goto :goto_9

    :cond_18
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 71
    invoke-virtual {v6, v5}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v6

    .line 72
    :goto_9
    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    goto :goto_b

    .line 73
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1b

    .line 74
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v5

    .line 75
    iget v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:I

    if-ge v6, v5, :cond_1a

    move v5, v8

    goto :goto_a

    :cond_1a
    move v5, v7

    .line 76
    :goto_a
    iput-boolean v5, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e:Z

    .line 77
    :cond_1b
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    goto :goto_b

    .line 78
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v5

    if-nez v5, :cond_1d

    iget-boolean v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz v5, :cond_1d

    .line 79
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:I

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 80
    invoke-virtual {v6}, Ln3/b0/a/u;->h()I

    move-result v6

    sub-int/2addr v5, v6

    .line 81
    iput v5, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    goto :goto_b

    .line 82
    :cond_1d
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v5}, Ln3/b0/a/u;->k()I

    move-result v5

    iget v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:I

    add-int/2addr v5, v6

    .line 83
    iput v5, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    :goto_b
    move v5, v8

    goto :goto_e

    .line 84
    :cond_1e
    :goto_c
    iput v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:I

    .line 85
    iput v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:I

    :cond_1f
    :goto_d
    move v5, v7

    :goto_e
    if-eqz v5, :cond_20

    goto/16 :goto_19

    .line 86
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v5

    if-nez v5, :cond_21

    goto/16 :goto_17

    .line 87
    :cond_21
    iget-boolean v5, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e:Z

    if-eqz v5, :cond_22

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->p(I)Landroid/view/View;

    move-result-object v5

    goto :goto_f

    .line 89
    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$z;->b()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->n(I)Landroid/view/View;

    move-result-object v5

    :goto_f
    if-eqz v5, :cond_2e

    .line 90
    iget-object v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 91
    iget v11, v6, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:I

    if-nez v11, :cond_23

    .line 92
    iget-object v11, v6, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Ln3/b0/a/u;

    goto :goto_10

    .line 93
    :cond_23
    iget-object v11, v6, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 94
    :goto_10
    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v6

    if-nez v6, :cond_25

    iget-object v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 95
    iget-boolean v6, v6, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz v6, :cond_25

    .line 96
    iget-boolean v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e:Z

    if-eqz v6, :cond_24

    .line 97
    invoke-virtual {v11, v5}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v6

    .line 98
    invoke-virtual {v11}, Ln3/b0/a/u;->m()I

    move-result v11

    add-int/2addr v11, v6

    iput v11, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    goto :goto_11

    .line 99
    :cond_24
    invoke-virtual {v11, v5}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v6

    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    goto :goto_11

    .line 100
    :cond_25
    iget-boolean v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e:Z

    if-eqz v6, :cond_26

    .line 101
    invoke-virtual {v11, v5}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v6

    .line 102
    invoke-virtual {v11}, Ln3/b0/a/u;->m()I

    move-result v11

    add-int/2addr v11, v6

    iput v11, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    goto :goto_11

    .line 103
    :cond_26
    invoke-virtual {v11, v5}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v6

    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    .line 104
    :goto_11
    iget-object v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h:Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v6

    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a:I

    .line 105
    iput-boolean v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->g:Z

    .line 106
    iget-object v11, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 107
    iget-object v12, v11, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    .line 108
    iget-object v12, v12, Le/m/a/e/c;->c:[I

    if-eq v6, v10, :cond_27

    goto :goto_12

    :cond_27
    move v6, v7

    :goto_12
    aget v6, v12, v6

    if-eq v6, v10, :cond_28

    goto :goto_13

    :cond_28
    move v6, v7

    .line 109
    :goto_13
    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b:I

    .line 110
    iget-object v6, v11, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    .line 111
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget v11, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b:I

    if-le v6, v11, :cond_29

    .line 112
    iget-object v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 113
    iget-object v6, v6, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    .line 114
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/e/b;

    iget v6, v6, Le/m/a/e/b;->o:I

    iput v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a:I

    .line 115
    :cond_29
    iget-boolean v6, v2, Landroidx/recyclerview/widget/RecyclerView$z;->g:Z

    if-nez v6, :cond_2d

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->supportsPredictiveItemAnimations()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 117
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 118
    invoke-virtual {v6, v5}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v6

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 119
    invoke-virtual {v11}, Ln3/b0/a/u;->g()I

    move-result v11

    if-ge v6, v11, :cond_2b

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 120
    invoke-virtual {v6, v5}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v5

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 121
    invoke-virtual {v6}, Ln3/b0/a/u;->k()I

    move-result v6

    if-ge v5, v6, :cond_2a

    goto :goto_14

    :cond_2a
    move v5, v7

    goto :goto_15

    :cond_2b
    :goto_14
    move v5, v8

    :goto_15
    if-eqz v5, :cond_2d

    .line 122
    iget-boolean v5, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e:Z

    if-eqz v5, :cond_2c

    .line 123
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 124
    invoke-virtual {v5}, Ln3/b0/a/u;->g()I

    move-result v5

    goto :goto_16

    :cond_2c
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 125
    invoke-virtual {v5}, Ln3/b0/a/u;->k()I

    move-result v5

    .line 126
    :goto_16
    iput v5, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    :cond_2d
    move v5, v8

    goto :goto_18

    :cond_2e
    :goto_17
    move v5, v7

    :goto_18
    if-eqz v5, :cond_2f

    goto :goto_19

    .line 127
    :cond_2f
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    .line 128
    iput v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a:I

    .line 129
    iput v7, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b:I

    .line 130
    :goto_19
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 131
    iput-boolean v8, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f:Z

    .line 132
    :cond_30
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$o;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$v;)V

    .line 133
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 134
    iget-boolean v5, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e:Z

    if-eqz v5, :cond_31

    .line 135
    invoke-virtual {v0, v4, v7, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->A(Lcom/google/android/flexbox/FlexboxLayoutManager$b;ZZ)V

    goto :goto_1a

    .line 136
    :cond_31
    invoke-virtual {v0, v4, v7, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->z(Lcom/google/android/flexbox/FlexboxLayoutManager$b;ZZ)V

    .line 137
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getWidthMode()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getHeightMode()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getWidth()I

    move-result v6

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getHeight()I

    move-result v11

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v12

    if-eqz v12, :cond_34

    .line 142
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:I

    if-eq v12, v9, :cond_32

    if-eq v12, v6, :cond_32

    move v9, v8

    goto :goto_1b

    :cond_32
    move v9, v7

    .line 143
    :goto_1b
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 144
    iget-boolean v13, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:Z

    if-eqz v13, :cond_33

    .line 145
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->u:Landroid/content/Context;

    .line 146
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1d

    .line 147
    :cond_33
    iget v12, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->a:I

    goto :goto_1d

    .line 148
    :cond_34
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    if-eq v12, v9, :cond_35

    if-eq v12, v11, :cond_35

    move v9, v8

    goto :goto_1c

    :cond_35
    move v9, v7

    .line 149
    :goto_1c
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 150
    iget-boolean v13, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:Z

    if-eqz v13, :cond_36

    .line 151
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->u:Landroid/content/Context;

    .line 152
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1d

    .line 153
    :cond_36
    iget v12, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->a:I

    :goto_1d
    move v15, v12

    .line 154
    iput v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:I

    .line 155
    iput v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    .line 156
    iget v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->w:I

    if-ne v6, v10, :cond_3a

    iget v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:I

    if-ne v11, v10, :cond_37

    if-eqz v9, :cond_3a

    .line 157
    :cond_37
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 158
    iget-boolean v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e:Z

    if-eqz v3, :cond_38

    goto/16 :goto_21

    .line 159
    :cond_38
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 160
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Le/m/a/e/c$b;

    invoke-virtual {v3}, Le/m/a/e/c$b;->a()V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 162
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Le/m/a/e/c$b;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 163
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a:I

    .line 164
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    const/16 v16, 0x0

    move v13, v4

    move v14, v5

    move/from16 v17, v3

    move-object/from16 v18, v6

    .line 165
    invoke-virtual/range {v11 .. v18}, Le/m/a/e/c;->b(Le/m/a/e/c$b;IIIIILjava/util/List;)V

    goto :goto_1e

    .line 166
    :cond_39
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Le/m/a/e/c$b;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 167
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a:I

    .line 168
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    const/16 v16, 0x0

    move v13, v5

    move v14, v4

    move/from16 v17, v3

    move-object/from16 v18, v6

    .line 169
    invoke-virtual/range {v11 .. v18}, Le/m/a/e/c;->b(Le/m/a/e/c$b;IIIIILjava/util/List;)V

    .line 170
    :goto_1e
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Le/m/a/e/c$b;

    iget-object v3, v3, Le/m/a/e/c$b;->a:Ljava/util/List;

    iput-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    .line 171
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    .line 172
    invoke-virtual {v3, v4, v5, v7}, Le/m/a/e/c;->h(III)V

    .line 173
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    .line 174
    invoke-virtual {v3, v7}, Le/m/a/e/c;->A(I)V

    .line 175
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v4, v4, Le/m/a/e/c;->c:[I

    .line 176
    iget v5, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a:I

    .line 177
    aget v4, v4, v5

    .line 178
    iput v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b:I

    .line 179
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 180
    iput v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    goto/16 :goto_21

    :cond_3a
    if-eq v6, v10, :cond_3b

    .line 181
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 182
    iget v9, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a:I

    .line 183
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1f

    :cond_3b
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 184
    iget v6, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a:I

    .line 185
    :goto_1f
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Le/m/a/e/c$b;

    invoke-virtual {v9}, Le/m/a/e/c$b;->a()V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 187
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3c

    .line 188
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-virtual {v3, v9, v6}, Le/m/a/e/c;->d(Ljava/util/List;I)V

    .line 189
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Le/m/a/e/c$b;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 190
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a:I

    .line 191
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    move v13, v4

    move v14, v5

    move/from16 v16, v6

    move/from16 v17, v3

    move-object/from16 v18, v9

    .line 192
    invoke-virtual/range {v11 .. v18}, Le/m/a/e/c;->b(Le/m/a/e/c$b;IIIIILjava/util/List;)V

    goto :goto_20

    .line 193
    :cond_3c
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    invoke-virtual {v9, v3}, Le/m/a/e/c;->i(I)V

    .line 194
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Le/m/a/e/c$b;

    const/16 v16, 0x0

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    const/16 v17, -0x1

    move v13, v4

    move v14, v5

    move-object/from16 v18, v3

    .line 195
    invoke-virtual/range {v11 .. v18}, Le/m/a/e/c;->b(Le/m/a/e/c$b;IIIIILjava/util/List;)V

    goto :goto_20

    .line 196
    :cond_3d
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3e

    .line 197
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-virtual {v3, v9, v6}, Le/m/a/e/c;->d(Ljava/util/List;I)V

    .line 198
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Le/m/a/e/c$b;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 199
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a:I

    .line 200
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    move v13, v5

    move v14, v4

    move/from16 v16, v6

    move/from16 v17, v3

    move-object/from16 v18, v9

    .line 201
    invoke-virtual/range {v11 .. v18}, Le/m/a/e/c;->b(Le/m/a/e/c$b;IIIIILjava/util/List;)V

    goto :goto_20

    .line 202
    :cond_3e
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    invoke-virtual {v9, v3}, Le/m/a/e/c;->i(I)V

    .line 203
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Le/m/a/e/c$b;

    const/16 v16, 0x0

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    const/16 v17, -0x1

    move v13, v5

    move v14, v4

    move-object/from16 v18, v3

    .line 204
    invoke-virtual/range {v11 .. v18}, Le/m/a/e/c;->b(Le/m/a/e/c$b;IIIIILjava/util/List;)V

    .line 205
    :goto_20
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Le/m/a/e/c$b;

    iget-object v3, v3, Le/m/a/e/c$b;->a:Ljava/util/List;

    iput-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    .line 206
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    invoke-virtual {v3, v4, v5, v6}, Le/m/a/e/c;->h(III)V

    .line 207
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    invoke-virtual {v3, v6}, Le/m/a/e/c;->A(I)V

    .line 208
    :goto_21
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 209
    iget-boolean v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e:Z

    if-eqz v3, :cond_3f

    .line 210
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->m(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;Lcom/google/android/flexbox/FlexboxLayoutManager$c;)I

    .line 211
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 212
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    .line 213
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-virtual {v0, v4, v8, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->z(Lcom/google/android/flexbox/FlexboxLayoutManager$b;ZZ)V

    .line 214
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->m(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;Lcom/google/android/flexbox/FlexboxLayoutManager$c;)I

    .line 215
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 216
    iget v4, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    goto :goto_22

    .line 217
    :cond_3f
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->m(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;Lcom/google/android/flexbox/FlexboxLayoutManager$c;)I

    .line 218
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 219
    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    .line 220
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-virtual {v0, v3, v8, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->A(Lcom/google/android/flexbox/FlexboxLayoutManager$b;ZZ)V

    .line 221
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->m(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;Lcom/google/android/flexbox/FlexboxLayoutManager$c;)I

    .line 222
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 223
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    .line 224
    :goto_22
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v5

    if-lez v5, :cond_41

    .line 225
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 226
    iget-boolean v5, v5, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e:Z

    if-eqz v5, :cond_40

    .line 227
    invoke-virtual {v0, v4, v1, v2, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;Z)I

    move-result v4

    add-int/2addr v4, v3

    .line 228
    invoke-virtual {v0, v4, v1, v2, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;Z)I

    goto :goto_23

    .line 229
    :cond_40
    invoke-virtual {v0, v3, v1, v2, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutStartGap(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;Z)I

    move-result v3

    add-int/2addr v3, v4

    .line 230
    invoke-virtual {v0, v3, v1, v2, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutEndGap(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;Z)I

    :cond_41
    :goto_23
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$z;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:I

    const/high16 v0, -0x80000000

    .line 4
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:I

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->w:I

    .line 6
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 7
    iput v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a:I

    .line 8
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v2, v1}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 9
    invoke-virtual {v2}, Ln3/b0/a/u;->k()I

    move-result v2

    sub-int/2addr v1, v2

    .line 10
    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->b:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 11
    iput v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a:I

    :goto_0
    return-object v0
.end method

.method public final p(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->s(III)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v1, v1, Le/m/a/e/c;->c:[I

    aget v0, v1, v0

    .line 4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/e/b;

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->q(Landroid/view/View;Le/m/a/e/b;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final q(Landroid/view/View;Le/m/a/e/b;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v2

    iget p2, p2, Le/m/a/e/b;->h:I

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-le v1, v2, :cond_3

    .line 3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 6
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v3, p1}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 7
    invoke-virtual {v4, p2}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    goto :goto_1

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v3, p1}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 9
    invoke-virtual {v4, p2}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    :goto_1
    move-object p1, p2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final r(IIZ)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x1

    move/from16 v3, p1

    if-le v1, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    if-eq v3, v1, :cond_a

    .line 1
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getPaddingLeft()I

    move-result v6

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getPaddingTop()I

    move-result v7

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    .line 6
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$p;

    .line 7
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$o;->getDecoratedLeft(Landroid/view/View;)I

    move-result v11

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v11, v10

    .line 8
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$p;

    .line 9
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$o;->getDecoratedTop(Landroid/view/View;)I

    move-result v12

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v10

    .line 10
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$p;

    .line 11
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$o;->getDecoratedRight(Landroid/view/View;)I

    move-result v13

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v10

    .line 12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$p;

    .line 13
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$o;->getDecoratedBottom(Landroid/view/View;)I

    move-result v14

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v10

    const/4 v10, 0x0

    if-gt v6, v11, :cond_1

    if-lt v8, v13, :cond_1

    move v15, v2

    goto :goto_1

    :cond_1
    move v15, v10

    :goto_1
    if-ge v11, v8, :cond_3

    if-lt v13, v6, :cond_2

    goto :goto_2

    :cond_2
    move v6, v10

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v2

    :goto_3
    if-gt v7, v12, :cond_4

    if-lt v9, v14, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move v8, v10

    :goto_4
    if-ge v12, v9, :cond_6

    if-lt v14, v7, :cond_5

    goto :goto_5

    :cond_5
    move v7, v10

    goto :goto_6

    :cond_6
    :goto_5
    move v7, v2

    :goto_6
    if-eqz p3, :cond_7

    if-eqz v15, :cond_8

    if-eqz v8, :cond_8

    :goto_7
    move v10, v2

    goto :goto_8

    :cond_7
    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    goto :goto_7

    :cond_8
    :goto_8
    if-eqz v10, :cond_9

    return-object v5

    :cond_9
    add-int/2addr v3, v4

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    return-object v1
.end method

.method public final s(III)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()V

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$c;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v0}, Ln3/b0/a/u;->k()I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v2}, Ln3/b0/a/u;->g()I

    move-result v2

    if-le p2, p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    move-object v4, v1

    :goto_1
    if-eq p1, p2, :cond_6

    .line 6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_5

    if-ge v6, p3, :cond_5

    .line 8
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$p;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_3

    .line 9
    :cond_2
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v6, v5}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v6

    if-lt v6, v0, :cond_4

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 10
    invoke-virtual {v6, v5}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v6

    if-le v6, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v5

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    move-object v1, v5

    :cond_5
    :goto_3
    add-int/2addr p1, v3

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move-object v1, v4

    :goto_4
    return-object v1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->u(I)I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 5
    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d:I

    add-int/2addr p3, p1

    .line 6
    iput p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d:I

    .line 7
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Ln3/b0/a/u;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Ln3/b0/a/u;->p(I)V

    return p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->t(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result p1

    .line 9
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:I

    const/high16 p1, -0x80000000

    .line 2
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:I

    .line 3
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 4
    iput v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a:I

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->u(I)I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 5
    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d:I

    add-int/2addr p3, p1

    .line 6
    iput p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d:I

    .line 7
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Ln3/b0/a/u;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Ln3/b0/a/u;->p(I)V

    return p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->t(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result p1

    .line 9
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    return p1
.end method

.method public setFlexLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/m/a/e/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;I)V
    .locals 0

    .line 1
    new-instance p2, Ln3/b0/a/n;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Ln3/b0/a/n;-><init>(Landroid/content/Context;)V

    .line 3
    iput p3, p2, Landroidx/recyclerview/widget/RecyclerView$y;->a:I

    .line 4
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$y;)V

    return-void
.end method

.method public final t(ILandroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    if-nez p1, :cond_0

    goto/16 :goto_d

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()V

    .line 3
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v1, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->j:Z

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const/4 v4, -0x1

    if-eqz v1, :cond_2

    if-gez p1, :cond_3

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v4

    .line 6
    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 7
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 8
    iput v5, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v7

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getWidthMode()I

    move-result v9

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getHeightMode()I

    move-result v10

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    if-nez v7, :cond_4

    .line 12
    iget-boolean v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz v10, :cond_4

    move v10, v3

    goto :goto_3

    :cond_4
    move v10, v2

    :goto_3
    if-ne v5, v3, :cond_a

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 14
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v13, v11}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v13

    .line 15
    iput v13, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    .line 16
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v12

    .line 17
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v13, v13, Le/m/a/e/c;->c:[I

    aget v13, v13, v12

    .line 18
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/m/a/e/b;

    .line 19
    invoke-virtual {v0, v11, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->q(Landroid/view/View;Le/m/a/e/b;)Landroid/view/View;

    move-result-object v11

    .line 20
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 21
    iput v3, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    add-int/2addr v12, v3

    .line 22
    iput v12, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    .line 23
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v14, v14, Le/m/a/e/c;->c:[I

    array-length v15, v14

    if-gt v15, v12, :cond_5

    .line 24
    iput v4, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    goto :goto_4

    .line 25
    :cond_5
    aget v12, v14, v12

    .line 26
    iput v12, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    :goto_4
    if-eqz v10, :cond_7

    .line 27
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v10, v11}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v10

    .line 28
    iput v10, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    .line 29
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v12, v11}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v11

    neg-int v11, v11

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 30
    invoke-virtual {v12}, Ln3/b0/a/u;->k()I

    move-result v12

    add-int/2addr v12, v11

    .line 31
    iput v12, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    .line 32
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 33
    iget v11, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    if-ltz v11, :cond_6

    goto :goto_5

    :cond_6
    move v11, v2

    .line 34
    :goto_5
    iput v11, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    goto :goto_6

    .line 35
    :cond_7
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v10, v11}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v10

    .line 36
    iput v10, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    .line 37
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v12, v11}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v11

    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 38
    invoke-virtual {v12}, Ln3/b0/a/u;->g()I

    move-result v12

    sub-int/2addr v11, v12

    .line 39
    iput v11, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    .line 40
    :goto_6
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 41
    iget v10, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    if-eq v10, v4, :cond_8

    .line 42
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v10, v4, :cond_10

    :cond_8
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 43
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v4

    if-gt v3, v4, :cond_10

    .line 45
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 46
    iget v3, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    sub-int v14, v6, v3

    .line 47
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Le/m/a/e/c$b;

    invoke-virtual {v3}, Le/m/a/e/c$b;->a()V

    if-lez v14, :cond_10

    if-eqz v7, :cond_9

    .line 48
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Le/m/a/e/c$b;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 49
    iget v15, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    .line 50
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    const/16 v16, -0x1

    move v12, v8

    move v13, v9

    move-object/from16 v17, v3

    .line 51
    invoke-virtual/range {v10 .. v17}, Le/m/a/e/c;->b(Le/m/a/e/c$b;IIIIILjava/util/List;)V

    goto :goto_7

    .line 52
    :cond_9
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Le/m/a/e/c$b;

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 53
    iget v15, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    .line 54
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    const/16 v16, -0x1

    move v12, v9

    move v13, v8

    move-object/from16 v17, v3

    .line 55
    invoke-virtual/range {v10 .. v17}, Le/m/a/e/c;->b(Le/m/a/e/c$b;IIIIILjava/util/List;)V

    .line 56
    :goto_7
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 57
    iget v4, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    .line 58
    invoke-virtual {v3, v8, v9, v4}, Le/m/a/e/c;->h(III)V

    .line 59
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 60
    iget v4, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    .line 61
    invoke-virtual {v3, v4}, Le/m/a/e/c;->A(I)V

    goto/16 :goto_b

    .line 62
    :cond_a
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 63
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v9, v7}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v9

    .line 64
    iput v9, v8, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    .line 65
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 66
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v9, v9, Le/m/a/e/c;->c:[I

    aget v9, v9, v8

    .line 67
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/m/a/e/b;

    .line 68
    invoke-virtual {v0, v7, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->o(Landroid/view/View;Le/m/a/e/b;)Landroid/view/View;

    move-result-object v7

    .line 69
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 70
    iput v3, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    .line 71
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v11, v11, Le/m/a/e/c;->c:[I

    aget v11, v11, v8

    if-ne v11, v4, :cond_b

    move v11, v2

    :cond_b
    if-lez v11, :cond_c

    .line 72
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    add-int/lit8 v9, v11, -0x1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/e/b;

    .line 73
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 74
    iget v4, v4, Le/m/a/e/b;->h:I

    sub-int/2addr v8, v4

    .line 75
    iput v8, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    goto :goto_8

    .line 76
    :cond_c
    iput v4, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    .line 77
    :goto_8
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    if-lez v11, :cond_d

    sub-int/2addr v11, v3

    goto :goto_9

    :cond_d
    move v11, v2

    .line 78
    :goto_9
    iput v11, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    if-eqz v10, :cond_f

    .line 79
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v3, v7}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v3

    .line 80
    iput v3, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    .line 81
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v4, v7}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v4

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 82
    invoke-virtual {v7}, Ln3/b0/a/u;->g()I

    move-result v7

    sub-int/2addr v4, v7

    .line 83
    iput v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    .line 84
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 85
    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    if-ltz v4, :cond_e

    goto :goto_a

    :cond_e
    move v4, v2

    .line 86
    :goto_a
    iput v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    goto :goto_b

    .line 87
    :cond_f
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v3, v7}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v3

    .line 88
    iput v3, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    .line 89
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v4, v7}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v4

    neg-int v4, v4

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 90
    invoke-virtual {v7}, Ln3/b0/a/u;->k()I

    move-result v7

    add-int/2addr v7, v4

    .line 91
    iput v7, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    .line 92
    :cond_10
    :goto_b
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 93
    iget v4, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    sub-int v7, v6, v4

    .line 94
    iput v7, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->a:I

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 95
    invoke-virtual {v0, v7, v8, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->m(Landroidx/recyclerview/widget/RecyclerView$v;Landroidx/recyclerview/widget/RecyclerView$z;Lcom/google/android/flexbox/FlexboxLayoutManager$c;)I

    move-result v3

    add-int/2addr v3, v4

    if-gez v3, :cond_11

    return v2

    :cond_11
    if-eqz v1, :cond_12

    if-le v6, v3, :cond_13

    neg-int v1, v5

    mul-int/2addr v1, v3

    goto :goto_c

    :cond_12
    if-le v6, v3, :cond_13

    mul-int v1, v5, v3

    goto :goto_c

    :cond_13
    move/from16 v1, p1

    .line 96
    :goto_c
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Ln3/b0/a/u;->p(I)V

    .line 97
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 98
    iput v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->g:I

    return v1

    :cond_14
    :goto_d
    return v2
.end method

.method public final u(I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->v:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getHeight()I

    move-result v0

    .line 6
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move v1, v4

    :cond_3
    if-eqz v1, :cond_6

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gez p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 9
    iget p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d:I

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    neg-int p1, p1

    goto :goto_2

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 12
    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d:I

    add-int v1, v0, p1

    if-lez v1, :cond_8

    :cond_5
    neg-int p1, v0

    goto :goto_2

    :cond_6
    if-lez p1, :cond_7

    .line 13
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 14
    iget v1, v1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 15
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 17
    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d:I

    add-int v1, v0, p1

    if-ltz v1, :cond_5

    :cond_8
    :goto_2
    return p1

    :cond_9
    :goto_3
    return v1
.end method

.method public final v(Landroidx/recyclerview/widget/RecyclerView$v;Lcom/google/android/flexbox/FlexboxLayoutManager$c;)V
    .locals 11

    .line 1
    iget-boolean v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_9

    .line 3
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    if-gez v0, :cond_1

    goto/16 :goto_8

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v0}, Ln3/b0/a/u;->f()I

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_8

    :cond_2
    add-int/lit8 v4, v0, -0x1

    .line 6
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v6, v6, Le/m/a/e/c;->c:[I

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v5

    aget v5, v6, v5

    if-ne v5, v3, :cond_3

    goto/16 :goto_8

    .line 8
    :cond_3
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/e/b;

    move v6, v4

    :goto_0
    if-ltz v6, :cond_8

    .line 9
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 10
    iget v8, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v9

    if-nez v9, :cond_4

    iget-boolean v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz v9, :cond_4

    .line 12
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v9, v7}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v9

    if-gt v9, v8, :cond_5

    goto :goto_1

    .line 13
    :cond_4
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v9, v7}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 14
    invoke-virtual {v10}, Ln3/b0/a/u;->f()I

    move-result v10

    sub-int/2addr v10, v8

    if-lt v9, v10, :cond_5

    :goto_1
    move v8, v2

    goto :goto_2

    :cond_5
    move v8, v1

    :goto_2
    if-eqz v8, :cond_8

    .line 15
    iget v8, v3, Le/m/a/e/b;->o:I

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v7

    if-ne v8, v7, :cond_7

    if-gtz v5, :cond_6

    move v0, v6

    goto :goto_3

    .line 16
    :cond_6
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    add-int/2addr v5, v0

    .line 17
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/e/b;

    move-object v3, v0

    move v0, v6

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_8
    :goto_3
    if-lt v4, v0, :cond_12

    .line 18
    invoke-virtual {p0, v4, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$v;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 19
    :cond_9
    iget v0, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    if-gez v0, :cond_a

    goto/16 :goto_8

    .line 20
    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_8

    .line 21
    :cond_b
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 22
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v5, v5, Le/m/a/e/c;->c:[I

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v4

    aget v4, v5, v4

    if-ne v4, v3, :cond_c

    goto/16 :goto_8

    .line 23
    :cond_c
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/e/b;

    move v6, v1

    :goto_4
    if-ge v6, v0, :cond_11

    .line 24
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 25
    iget v8, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    .line 26
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v9

    if-nez v9, :cond_d

    iget-boolean v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz v9, :cond_d

    .line 27
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v9}, Ln3/b0/a/u;->f()I

    move-result v9

    iget-object v10, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 28
    invoke-virtual {v10, v7}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v9, v10

    if-gt v9, v8, :cond_e

    goto :goto_5

    .line 29
    :cond_d
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v9, v7}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result v9

    if-gt v9, v8, :cond_e

    :goto_5
    move v8, v2

    goto :goto_6

    :cond_e
    move v8, v1

    :goto_6
    if-eqz v8, :cond_11

    .line 30
    iget v8, v5, Le/m/a/e/b;->p:I

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v7

    if-ne v8, v7, :cond_10

    .line 31
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v4, v3, :cond_f

    move v3, v6

    goto :goto_7

    .line 32
    :cond_f
    iget v3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    add-int/2addr v4, v3

    .line 33
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/e/b;

    move-object v5, v3

    move v3, v6

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_11
    :goto_7
    if-ltz v3, :cond_12

    .line 34
    invoke-virtual {p0, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$v;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_12
    :goto_8
    return-void
.end method

.method public final w()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getHeightMode()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getWidthMode()I

    move-result v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    if-eqz v0, :cond_2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 5
    :goto_2
    iput-boolean v0, v1, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:Z

    return-void
.end method

.method public x(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:I

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->removeAllViews()V

    .line 3
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 5
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Ln3/b0/a/u;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k()V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final y(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    invoke-virtual {v1, v0}, Le/m/a/e/c;->j(I)V

    .line 4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    invoke-virtual {v1, v0}, Le/m/a/e/c;->k(I)V

    .line 5
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    invoke-virtual {v1, v0}, Le/m/a/e/c;->i(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Le/m/a/e/c;

    iget-object v0, v0, Le/m/a/e/c;->c:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    return-void

    .line 7
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->w:I

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:I

    .line 10
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v0, p1}, Ln3/b0/a/u;->b(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 12
    invoke-virtual {v0}, Ln3/b0/a/u;->h()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:I

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    invoke-virtual {v0, p1}, Ln3/b0/a/u;->e(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 14
    invoke-virtual {v0}, Ln3/b0/a/u;->k()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:I

    :goto_0
    return-void
.end method

.method public final z(Lcom/google/android/flexbox/FlexboxLayoutManager$b;ZZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->w()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->b:Z

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:Z

    if-eqz p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 6
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 8
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->a:I

    goto :goto_1

    .line 9
    :cond_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Ln3/b0/a/u;

    .line 10
    invoke-virtual {v0}, Ln3/b0/a/u;->g()I

    move-result v0

    .line 11
    iget v1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    sub-int/2addr v0, v1

    .line 12
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->a:I

    .line 13
    :goto_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 14
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a:I

    .line 15
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    const/4 v0, 0x1

    .line 16
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->h:I

    .line 17
    iput v0, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->i:I

    .line 18
    iget v1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c:I

    .line 19
    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->e:I

    const/high16 v1, -0x80000000

    .line 20
    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->f:I

    .line 21
    iget v1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b:I

    .line 22
    iput v1, p3, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    if-eqz p2, :cond_2

    .line 23
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    .line 24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v0, :cond_2

    .line 25
    iget p2, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b:I

    if-ltz p2, :cond_2

    .line 26
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ge p2, p3, :cond_2

    .line 27
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:Ljava/util/List;

    .line 28
    iget p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b:I

    .line 29
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/e/b;

    .line 30
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 31
    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    add-int/2addr p3, v0

    iput p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->c:I

    .line 32
    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    .line 33
    iget p1, p1, Le/m/a/e/b;->h:I

    add-int/2addr p3, p1

    .line 34
    iput p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$c;->d:I

    :cond_2
    return-void
.end method
