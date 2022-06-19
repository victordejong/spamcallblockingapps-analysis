.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionLayout$h;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$c;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$d;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$b;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$g;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$f;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$e;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$i;
    }
.end annotation


# static fields
.field public static O0:Z


# instance fields
.field public A:I

.field public A0:I

.field public B:Z

.field public B0:I

.field public C:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ln3/i/a/b/m;",
            ">;"
        }
    .end annotation
.end field

.field public C0:I

.field public D:J

.field public D0:I

.field public E:F

.field public E0:F

.field public F0:Ln3/i/a/b/d;

.field public G0:Z

.field public H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

.field public I0:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

.field public J:F

.field public J0:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

.field public K:F

.field public K0:Z

.field public L:J

.field public L0:Landroid/graphics/RectF;

.field public M:F

.field public M0:Landroid/view/View;

.field public N:Z

.field public N0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public O:Z

.field public P:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

.field public Q:F

.field public R:F

.field public S:I

.field public T:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

.field public U:Z

.field public V:Ln3/i/a/a/g;

.field public W:Landroidx/constraintlayout/motion/widget/MotionLayout$b;

.field public g0:Ln3/i/a/b/a;

.field public h0:I

.field public i0:I

.field public j0:Z

.field public k0:F

.field public l0:F

.field public m0:J

.field public n0:F

.field public o0:Z

.field public p0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/i/a/b/n;",
            ">;"
        }
    .end annotation
.end field

.field public q0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/i/a/b/n;",
            ">;"
        }
    .end annotation
.end field

.field public r0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionLayout$h;",
            ">;"
        }
    .end annotation
.end field

.field public s0:I

.field public t:Ln3/i/a/b/q;

.field public t0:J

.field public u:Landroid/view/animation/Interpolator;

.field public u0:F

.field public v:F

.field public v0:I

.field public w:I

.field public w0:F

.field public x:I

.field public x0:Z

.field public y:I

.field public y0:I

.field public z:I

.field public z0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 4
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    .line 7
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    .line 9
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/HashMap;

    const-wide/16 v3, 0x0

    .line 10
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:J

    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    .line 12
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 13
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 14
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    .line 15
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    .line 16
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    .line 17
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:Z

    .line 18
    new-instance v3, Ln3/i/a/a/g;

    invoke-direct {v3}, Ln3/i/a/a/g;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:Ln3/i/a/a/g;

    .line 19
    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionLayout$b;

    invoke-direct {v3, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$b;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Landroidx/constraintlayout/motion/widget/MotionLayout$b;

    .line 20
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Z

    .line 21
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:Z

    const/4 v3, 0x0

    .line 22
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:Ljava/util/ArrayList;

    .line 23
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:Ljava/util/ArrayList;

    .line 24
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    .line 25
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:I

    const-wide/16 v4, -0x1

    .line 26
    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:J

    .line 27
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:F

    .line 28
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:I

    .line 29
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:F

    .line 30
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Z

    .line 31
    new-instance v4, Ln3/i/a/b/d;

    invoke-direct {v4}, Ln3/i/a/b/d;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Ln3/i/a/b/d;

    .line 32
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    .line 33
    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->a:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    .line 34
    new-instance v4, Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    .line 35
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K0:Z

    .line 36
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/graphics/RectF;

    .line 37
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M0:Landroid/view/View;

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N0:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v4

    sput-boolean v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->O0:Z

    if-eqz p2, :cond_8

    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout:[I

    .line 41
    invoke-virtual {v4, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 42
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    move v5, v1

    move v6, v2

    :goto_0
    if-ge v5, v4, :cond_7

    .line 43
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 44
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_layoutDescription:I

    if-ne v7, v8, :cond_0

    .line 45
    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 46
    new-instance v8, Ln3/i/a/b/q;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, p0, v7}, Ln3/i/a/b/q;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    goto :goto_2

    .line 47
    :cond_0
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_currentState:I

    if-ne v7, v8, :cond_1

    .line 48
    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    goto :goto_2

    .line 49
    :cond_1
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_motionProgress:I

    if-ne v7, v8, :cond_2

    .line 50
    invoke-virtual {p2, v7, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    .line 51
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    goto :goto_2

    .line 52
    :cond_2
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_applyMotionScene:I

    if-ne v7, v8, :cond_3

    .line 53
    invoke-virtual {p2, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    goto :goto_2

    .line 54
    :cond_3
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_showPaths:I

    if-ne v7, v8, :cond_5

    .line 55
    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    if-nez v8, :cond_6

    .line 56
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    goto :goto_1

    :cond_4
    move v7, v1

    :goto_1
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    goto :goto_2

    .line 57
    :cond_5
    sget v8, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_motionDebug:I

    if-ne v7, v8, :cond_6

    .line 58
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59
    :cond_7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v6, :cond_8

    .line 60
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    .line 61
    :cond_8
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    if-eqz p1, :cond_12

    .line 62
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-nez p1, :cond_9

    goto/16 :goto_a

    .line 63
    :cond_9
    invoke-virtual {p1}, Ln3/i/a/b/q;->i()I

    move-result p1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {p2}, Ln3/i/a/b/q;->i()I

    move-result v2

    invoke-virtual {p2, v2}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object p2

    .line 64
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->m0(Landroid/content/Context;I)Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v2, v1

    :goto_3
    if-ge v2, p1, :cond_d

    .line 66
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 67
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v0, :cond_a

    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 69
    :cond_a
    iget-object v6, p2, Ln3/i/c/d;->c:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 70
    iget-object v6, p2, Ln3/i/c/d;->c:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/i/c/d$a;

    goto :goto_4

    :cond_b
    move-object v5, v3

    :goto_4
    if-nez v5, :cond_c

    .line 71
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->n0(Landroid/view/View;)Ljava/lang/String;

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 72
    :cond_d
    iget-object p1, p2, Ln3/i/c/d;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Integer;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    .line 73
    array-length v2, p1

    new-array v3, v2, [I

    move v4, v1

    :goto_5
    if-ge v4, v2, :cond_e

    .line 74
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    if-ge v1, v2, :cond_f

    .line 75
    aget p1, v3, v1

    .line 76
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->m0(Landroid/content/Context;I)Ljava/lang/String;

    .line 77
    aget v4, v3, v1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 78
    invoke-virtual {p2, p1}, Ln3/i/c/d;->j(I)Ln3/i/c/d$a;

    move-result-object v4

    iget-object v4, v4, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget v4, v4, Ln3/i/c/d$b;->d:I

    .line 79
    invoke-virtual {p2, p1}, Ln3/i/c/d;->j(I)Ln3/i/c/d$a;

    move-result-object p1

    iget-object p1, p1, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget p1, p1, Ln3/i/c/d$b;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 80
    :cond_f
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 81
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    .line 82
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    .line 83
    iget-object v1, v1, Ln3/i/a/b/q;->d:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/i/a/b/q$b;

    .line 85
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    iget-object v3, v3, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    .line 86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 87
    iget v4, v2, Ln3/i/a/b/q$b;->d:I

    if-ne v4, v0, :cond_10

    goto :goto_8

    .line 88
    :cond_10
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Ln3/i/a/b/q$b;->d:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 89
    :goto_8
    iget v4, v2, Ln3/i/a/b/q$b;->c:I

    if-ne v4, v0, :cond_11

    goto :goto_9

    .line 90
    :cond_11
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Ln3/i/a/b/q$b;->c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 91
    :goto_9
    iget v3, v2, Ln3/i/a/b/q$b;->d:I

    .line 92
    iget v2, v2, Ln3/i/a/b/q$b;->c:I

    .line 93
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->m0(Landroid/content/Context;I)Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->m0(Landroid/content/Context;I)Ljava/lang/String;

    .line 95
    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 96
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 97
    invoke-virtual {p1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    invoke-virtual {p2, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v4, v3}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    .line 100
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v3, v2}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    goto :goto_7

    .line 101
    :cond_12
    :goto_a
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-eqz p1, :cond_13

    .line 102
    invoke-virtual {p1}, Ln3/i/a/b/q;->i()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 103
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {p1}, Ln3/i/a/b/q;->i()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 104
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {p1}, Ln3/i/a/b/q;->d()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    :cond_13
    return-void
.end method


# virtual methods
.method public A0(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-eqz p1, :cond_1

    iget-object p1, p1, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p1, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz p1, :cond_1

    .line 3
    iget p1, p1, Ln3/i/a/b/v;->t:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public J(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public U0(I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Ln3/i/a/b/q;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Ln3/i/a/b/q;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {p1, p0}, Ln3/i/a/b/q;->m(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    invoke-virtual {v0, v1}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    invoke-virtual {v1, v2}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d(Ln3/i/c/d;Ln3/i/c/d;)V

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o1()V

    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->T0()Z

    move-result v0

    invoke-virtual {p1, v0}, Ln3/i/a/b/q;->n(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unable to parse MotionScene file"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    :cond_1
    :goto_0
    return-void
.end method

.method public V0(I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln3/i/c/c;

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g1(Z)V

    .line 2
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-nez v3, :cond_0

    return-void

    .line 4
    :cond_0
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/high16 v5, 0x41300000    # 11.0f

    const/high16 v6, 0x41200000    # 10.0f

    if-ne v3, v4, :cond_4

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 6
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:I

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:I

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v7

    .line 8
    iget-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:J

    const-wide/16 v11, -0x1

    cmp-long v3, v9, v11

    if-eqz v3, :cond_1

    sub-long v9, v7, v9

    const-wide/32 v11, 0xbebc200

    cmp-long v3, v9, v11

    if-lez v3, :cond_2

    .line 9
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:I

    int-to-float v3, v3

    long-to-float v9, v9

    const v10, 0x3089705f    # 1.0E-9f

    mul-float/2addr v9, v10

    div-float/2addr v3, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v3, v9

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    .line 10
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:F

    .line 11
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->s0:I

    .line 12
    iput-wide v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:J

    goto :goto_0

    .line 13
    :cond_1
    iput-wide v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t0:J

    .line 14
    :cond_2
    :goto_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/high16 v7, 0x42280000    # 42.0f

    .line 15
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v7

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u0:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " fps "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    invoke-static {v0, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->w0(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    invoke-static {v0, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->w0(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (progress: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " ) state="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_3

    const-string v7, "undefined"

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {v0, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->w0(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, -0x1000000

    .line 20
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1d

    int-to-float v8, v8

    invoke-virtual {v1, v7, v5, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v8, -0x77ff78

    .line 22
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1e

    int-to-float v8, v8

    invoke-virtual {v1, v7, v6, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 24
    :cond_4
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    if-le v3, v4, :cond_2c

    .line 25
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    if-nez v3, :cond_5

    .line 26
    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    invoke-direct {v3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    .line 27
    :cond_5
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->T:Landroidx/constraintlayout/motion/widget/MotionLayout$c;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/HashMap;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v8}, Ln3/i/a/b/q;->c()I

    move-result v8

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    .line 28
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_2c

    .line 29
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v10

    if-nez v10, :cond_6

    goto/16 :goto_18

    .line 30
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    iget-object v10, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v10

    const/4 v11, 0x2

    if-nez v10, :cond_7

    and-int/lit8 v10, v9, 0x1

    if-ne v10, v11, :cond_7

    .line 32
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 33
    iget v12, v12, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    .line 34
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 35
    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    add-int/lit8 v11, v11, -0x1e

    int-to-float v11, v11

    iget-object v12, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v6, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 36
    iget-object v6, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x1d

    int-to-float v6, v6

    iget-object v11, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v5, v6, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 37
    :cond_7
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v1

    move-object v7, v6

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln3/i/a/b/m;

    .line 38
    iget-object v11, v10, Ln3/i/a/b/m;->d:Ln3/i/a/b/p;

    iget v11, v11, Ln3/i/a/b/p;->b:I

    .line 39
    iget-object v12, v10, Ln3/i/a/b/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ln3/i/a/b/p;

    .line 40
    iget v13, v13, Ln3/i/a/b/p;->b:I

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_3

    .line 41
    :cond_8
    iget-object v12, v10, Ln3/i/a/b/m;->e:Ln3/i/a/b/p;

    iget v12, v12, Ln3/i/a/b/p;->b:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-lez v9, :cond_9

    if-nez v11, :cond_9

    move v11, v4

    :cond_9
    if-nez v11, :cond_a

    goto :goto_2

    .line 42
    :cond_a
    iget-object v4, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->c:[F

    iget-object v12, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->b:[I

    if-eqz v4, :cond_d

    .line 43
    iget-object v13, v10, Ln3/i/a/b/m;->h:[Ln3/i/a/a/b;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Ln3/i/a/a/b;->f()[D

    move-result-object v13

    if-eqz v12, :cond_b

    .line 44
    iget-object v14, v10, Ln3/i/a/b/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v2

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ln3/i/a/b/p;

    add-int/lit8 v16, v15, 0x1

    .line 45
    iget v0, v0, Ln3/i/a/b/p;->l:I

    aput v0, v12, v15

    move-object/from16 v0, p0

    move/from16 v15, v16

    goto :goto_4

    :cond_b
    move v0, v2

    move v12, v0

    .line 46
    :goto_5
    array-length v14, v13

    if-ge v2, v14, :cond_c

    .line 47
    iget-object v14, v10, Ln3/i/a/b/m;->h:[Ln3/i/a/a/b;

    aget-object v12, v14, v12

    aget-wide v14, v13, v2

    move-object/from16 v16, v5

    iget-object v5, v10, Ln3/i/a/b/m;->n:[D

    invoke-virtual {v12, v14, v15, v5}, Ln3/i/a/a/b;->c(D[D)V

    .line 48
    iget-object v5, v10, Ln3/i/a/b/m;->d:Ln3/i/a/b/p;

    iget-object v12, v10, Ln3/i/a/b/m;->m:[I

    iget-object v14, v10, Ln3/i/a/b/m;->n:[D

    invoke-virtual {v5, v12, v14, v4, v0}, Ln3/i/a/b/p;->d([I[D[FI)V

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v12, 0x0

    move-object/from16 v5, v16

    goto :goto_5

    :cond_c
    move-object/from16 v16, v5

    .line 49
    div-int/lit8 v0, v0, 0x2

    goto :goto_6

    :cond_d
    move-object/from16 v16, v5

    const/4 v0, 0x0

    .line 50
    :goto_6
    iput v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->l:I

    const/4 v0, 0x1

    if-lt v11, v0, :cond_2a

    .line 51
    div-int/lit8 v0, v8, 0x10

    .line 52
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:[F

    if-eqz v2, :cond_e

    array-length v2, v2

    mul-int/lit8 v4, v0, 0x2

    if-eq v2, v4, :cond_f

    :cond_e
    mul-int/lit8 v2, v0, 0x2

    .line 53
    new-array v2, v2, [F

    iput-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:[F

    .line 54
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->d:Landroid/graphics/Path;

    .line 55
    :cond_f
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->n:I

    int-to-float v2, v2

    invoke-virtual {v6, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->e:Landroid/graphics/Paint;

    const/high16 v4, 0x77000000

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->f:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a:[F

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    .line 61
    iget-object v4, v10, Ln3/i/a/b/m;->x:Ljava/util/HashMap;

    const-string v6, "translationX"

    if-nez v4, :cond_10

    const/4 v4, 0x0

    goto :goto_7

    :cond_10
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/i/a/b/r;

    .line 62
    :goto_7
    iget-object v12, v10, Ln3/i/a/b/m;->x:Ljava/util/HashMap;

    const-string v13, "translationY"

    if-nez v12, :cond_11

    const/4 v12, 0x0

    goto :goto_8

    :cond_11
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ln3/i/a/b/r;

    .line 63
    :goto_8
    iget-object v14, v10, Ln3/i/a/b/m;->y:Ljava/util/HashMap;

    if-nez v14, :cond_12

    const/4 v6, 0x0

    goto :goto_9

    :cond_12
    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/i/a/b/f;

    .line 64
    :goto_9
    iget-object v14, v10, Ln3/i/a/b/m;->y:Ljava/util/HashMap;

    if-nez v14, :cond_13

    const/4 v13, 0x0

    goto :goto_a

    :cond_13
    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ln3/i/a/b/f;

    :goto_a
    const/4 v14, 0x0

    :goto_b
    const/16 v17, 0x0

    if-ge v14, v0, :cond_22

    int-to-float v15, v14

    mul-float/2addr v15, v5

    move/from16 v19, v0

    .line 65
    iget v0, v10, Ln3/i/a/b/m;->l:F

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v21, v0, v20

    if-eqz v21, :cond_15

    move/from16 v21, v5

    .line 66
    iget v5, v10, Ln3/i/a/b/m;->k:F

    cmpg-float v22, v15, v5

    if-gez v22, :cond_14

    move/from16 v15, v17

    :cond_14
    cmpl-float v22, v15, v5

    if-lez v22, :cond_16

    move/from16 v22, v8

    move/from16 v23, v9

    float-to-double v8, v15

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v8, v24

    if-gez v8, :cond_17

    sub-float/2addr v15, v5

    mul-float/2addr v15, v0

    goto :goto_c

    :cond_15
    move/from16 v21, v5

    :cond_16
    move/from16 v22, v8

    move/from16 v23, v9

    :cond_17
    :goto_c
    float-to-double v8, v15

    .line 67
    iget-object v0, v10, Ln3/i/a/b/m;->d:Ln3/i/a/b/p;

    iget-object v0, v0, Ln3/i/a/b/p;->a:Ln3/i/a/a/c;

    .line 68
    iget-object v5, v10, Ln3/i/a/b/m;->t:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/high16 v18, 0x7fc00000    # Float.NaN

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v5

    move-object/from16 v5, v24

    check-cast v5, Ln3/i/a/b/p;

    move-wide/from16 v26, v8

    .line 69
    iget-object v8, v5, Ln3/i/a/b/p;->a:Ln3/i/a/a/c;

    if-eqz v8, :cond_19

    .line 70
    iget v9, v5, Ln3/i/a/b/p;->c:F

    cmpg-float v24, v9, v15

    if-gez v24, :cond_18

    move-object v0, v8

    move/from16 v17, v9

    goto :goto_e

    .line 71
    :cond_18
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 72
    iget v5, v5, Ln3/i/a/b/p;->c:F

    move/from16 v18, v5

    :cond_19
    :goto_e
    move-object/from16 v5, v25

    move-wide/from16 v8, v26

    goto :goto_d

    :cond_1a
    move-wide/from16 v26, v8

    if-eqz v0, :cond_1c

    .line 73
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_f

    :cond_1b
    move/from16 v20, v18

    :goto_f
    sub-float v5, v15, v17

    sub-float v20, v20, v17

    div-float v5, v5, v20

    float-to-double v8, v5

    .line 74
    invoke-virtual {v0, v8, v9}, Ln3/i/a/a/c;->a(D)D

    move-result-wide v8

    double-to-float v0, v8

    mul-float v0, v0, v20

    add-float v0, v0, v17

    float-to-double v8, v0

    goto :goto_10

    :cond_1c
    move-wide/from16 v8, v26

    .line 75
    :goto_10
    iget-object v0, v10, Ln3/i/a/b/m;->h:[Ln3/i/a/a/b;

    const/4 v5, 0x0

    aget-object v0, v0, v5

    iget-object v5, v10, Ln3/i/a/b/m;->n:[D

    invoke-virtual {v0, v8, v9, v5}, Ln3/i/a/a/b;->c(D[D)V

    .line 76
    iget-object v0, v10, Ln3/i/a/b/m;->i:Ln3/i/a/a/b;

    if-eqz v0, :cond_1d

    .line 77
    iget-object v5, v10, Ln3/i/a/b/m;->n:[D

    array-length v1, v5

    if-lez v1, :cond_1d

    .line 78
    invoke-virtual {v0, v8, v9, v5}, Ln3/i/a/a/b;->c(D[D)V

    .line 79
    :cond_1d
    iget-object v0, v10, Ln3/i/a/b/m;->d:Ln3/i/a/b/p;

    iget-object v1, v10, Ln3/i/a/b/m;->m:[I

    iget-object v5, v10, Ln3/i/a/b/m;->n:[D

    mul-int/lit8 v8, v14, 0x2

    invoke-virtual {v0, v1, v5, v2, v8}, Ln3/i/a/b/p;->d([I[D[FI)V

    if-eqz v6, :cond_1e

    .line 80
    aget v0, v2, v8

    invoke-virtual {v6, v15}, Ln3/i/a/b/f;->a(F)F

    move-result v1

    add-float/2addr v1, v0

    aput v1, v2, v8

    goto :goto_11

    :cond_1e
    if-eqz v4, :cond_1f

    .line 81
    aget v0, v2, v8

    invoke-virtual {v4, v15}, Ln3/i/a/b/r;->a(F)F

    move-result v1

    add-float/2addr v1, v0

    aput v1, v2, v8

    :cond_1f
    :goto_11
    if-eqz v13, :cond_20

    add-int/lit8 v8, v8, 0x1

    .line 82
    aget v0, v2, v8

    invoke-virtual {v13, v15}, Ln3/i/a/b/f;->a(F)F

    move-result v1

    add-float/2addr v1, v0

    aput v1, v2, v8

    goto :goto_12

    :cond_20
    if-eqz v12, :cond_21

    add-int/lit8 v8, v8, 0x1

    .line 83
    aget v0, v2, v8

    invoke-virtual {v12, v15}, Ln3/i/a/b/r;->a(F)F

    move-result v1

    add-float/2addr v1, v0

    aput v1, v2, v8

    :cond_21
    :goto_12
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move/from16 v0, v19

    move/from16 v5, v21

    move/from16 v8, v22

    move/from16 v9, v23

    goto/16 :goto_b

    :cond_22
    move/from16 v22, v8

    move/from16 v23, v9

    .line 84
    iget v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->l:I

    invoke-virtual {v3, v7, v11, v0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroid/graphics/Canvas;IILn3/i/a/b/m;)V

    .line 85
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->e:Landroid/graphics/Paint;

    const/16 v1, -0x55cd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->f:Landroid/graphics/Paint;

    const v1, -0x1f8a66

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->g:Landroid/graphics/Paint;

    const v1, -0xcc5600

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->n:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v7, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    iget v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->l:I

    invoke-virtual {v3, v7, v11, v0, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->a(Landroid/graphics/Canvas;IILn3/i/a/b/m;)V

    const/4 v0, 0x5

    if-ne v11, v0, :cond_29

    .line 91
    iget-object v0, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    :goto_13
    const/16 v1, 0x32

    if-gt v0, v1, :cond_28

    int-to-float v2, v0

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 92
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->j:[F

    const/4 v4, 0x0

    .line 93
    invoke-virtual {v10, v2, v4}, Ln3/i/a/b/m;->a(F[F)F

    move-result v2

    .line 94
    iget-object v4, v10, Ln3/i/a/b/m;->h:[Ln3/i/a/a/b;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    float-to-double v5, v2

    iget-object v2, v10, Ln3/i/a/b/m;->n:[D

    invoke-virtual {v4, v5, v6, v2}, Ln3/i/a/a/b;->c(D[D)V

    .line 95
    iget-object v2, v10, Ln3/i/a/b/m;->d:Ln3/i/a/b/p;

    iget-object v4, v10, Ln3/i/a/b/m;->m:[I

    iget-object v5, v10, Ln3/i/a/b/m;->n:[D

    .line 96
    iget v6, v2, Ln3/i/a/b/p;->e:F

    .line 97
    iget v7, v2, Ln3/i/a/b/p;->f:F

    .line 98
    iget v8, v2, Ln3/i/a/b/p;->g:F

    .line 99
    iget v2, v2, Ln3/i/a/b/p;->h:F

    const/4 v9, 0x0

    .line 100
    :goto_14
    array-length v11, v4

    const/4 v12, 0x3

    const/4 v13, 0x4

    if-ge v9, v11, :cond_27

    .line 101
    aget-wide v14, v5, v9

    double-to-float v11, v14

    .line 102
    aget v14, v4, v9

    const/4 v15, 0x1

    if-eq v14, v15, :cond_26

    const/4 v15, 0x2

    if-eq v14, v15, :cond_25

    if-eq v14, v12, :cond_24

    if-eq v14, v13, :cond_23

    goto :goto_15

    :cond_23
    move v2, v11

    goto :goto_15

    :cond_24
    move v8, v11

    goto :goto_15

    :cond_25
    move v7, v11

    goto :goto_15

    :cond_26
    move v6, v11

    :goto_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_27
    add-float/2addr v8, v6

    add-float/2addr v2, v7

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 103
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 104
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    add-float v6, v6, v17

    add-float v7, v7, v17

    add-float v8, v8, v17

    add-float v2, v2, v17

    const/4 v5, 0x0

    .line 105
    aput v6, v1, v5

    const/4 v5, 0x1

    .line 106
    aput v7, v1, v5

    const/4 v5, 0x2

    .line 107
    aput v8, v1, v5

    .line 108
    aput v7, v1, v12

    .line 109
    aput v8, v1, v13

    const/4 v5, 0x5

    .line 110
    aput v2, v1, v5

    const/4 v5, 0x6

    .line 111
    aput v6, v1, v5

    const/4 v6, 0x7

    .line 112
    aput v2, v1, v6

    .line 113
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->d:Landroid/graphics/Path;

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->j:[F

    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x1

    aget v2, v2, v8

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 114
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->d:Landroid/graphics/Path;

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->j:[F

    const/4 v7, 0x2

    aget v7, v2, v7

    aget v2, v2, v12

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 115
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->d:Landroid/graphics/Path;

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->j:[F

    aget v7, v2, v13

    const/4 v8, 0x5

    aget v2, v2, v8

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 116
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->d:Landroid/graphics/Path;

    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->j:[F

    aget v5, v2, v5

    aget v2, v2, v6

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 117
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->d:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_13

    :cond_28
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 118
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->e:Landroid/graphics/Paint;

    const/high16 v4, 0x44000000    # 512.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v4, p1

    .line 119
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->d:Landroid/graphics/Path;

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->e:Landroid/graphics/Paint;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, -0x40000000    # -2.0f

    .line 121
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->e:Landroid/graphics/Paint;

    const/high16 v5, -0x10000

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v2, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->d:Landroid/graphics/Path;

    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$c;->e:Landroid/graphics/Paint;

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object v7, v4

    goto :goto_16

    :cond_29
    move-object/from16 v4, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_16
    move v2, v0

    move v0, v1

    move-object v6, v7

    goto :goto_17

    :cond_2a
    move-object v4, v1

    move/from16 v22, v8

    move/from16 v23, v9

    const/4 v1, 0x0

    move v2, v1

    :goto_17
    move-object v1, v4

    move-object/from16 v5, v16

    move/from16 v8, v22

    move/from16 v9, v23

    move v4, v0

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_2b
    move-object v4, v1

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2c
    :goto_18
    return-void
.end method

.method public e1(III)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 4
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln3/i/c/c;

    if-eqz v0, :cond_0

    int-to-float p2, p2

    int-to-float p3, p3

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Ln3/i/c/c;->b(IFF)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p2, p1}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object p1

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p0, p2}, Ln3/i/c/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Ln3/i/c/d;)V

    .line 11
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public f1(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    if-eqz v1, :cond_1

    .line 3
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 4
    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    cmpl-float v2, v1, p1

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:Z

    .line 6
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    .line 7
    invoke-virtual {v0}, Ln3/i/a/b/q;->c()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    .line 8
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 9
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {p1}, Ln3/i/a/b/q;->f()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:Landroid/view/animation/Interpolator;

    .line 10
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    .line 11
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:J

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    .line 13
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 14
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public g1(Z)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->d:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    iget-wide v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    .line 3
    :cond_0
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v4, :cond_1

    cmpg-float v4, v2, v6

    if-gez v4, :cond_1

    .line 4
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 5
    :cond_1
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v4, :cond_2

    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    if-eqz v4, :cond_24

    if-nez p1, :cond_2

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_24

    .line 6
    :cond_2
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v9

    .line 8
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:Landroid/view/animation/Interpolator;

    instance-of v11, v4, Ln3/i/a/b/o;

    const v12, 0x3089705f    # 1.0E-9f

    if-nez v11, :cond_3

    .line 9
    iget-wide v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    sub-long v13, v9, v13

    long-to-float v11, v13

    mul-float/2addr v11, v2

    mul-float/2addr v11, v12

    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    div-float/2addr v11, v13

    .line 10
    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:F

    goto :goto_0

    :cond_3
    move v11, v3

    .line 11
    :goto_0
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    add-float/2addr v13, v11

    .line 12
    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    if-eqz v14, :cond_4

    .line 13
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    :cond_4
    cmpl-float v14, v2, v3

    if-lez v14, :cond_5

    .line 14
    iget v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpl-float v15, v13, v15

    if-gez v15, :cond_6

    :cond_5
    cmpg-float v15, v2, v3

    if-gtz v15, :cond_7

    iget v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpg-float v15, v13, v15

    if-gtz v15, :cond_7

    .line 15
    :cond_6
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    .line 16
    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    move v15, v7

    goto :goto_1

    :cond_7
    move v15, v8

    .line 17
    :goto_1
    iput v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 18
    iput v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 19
    iput-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    const v16, 0x3727c5ac    # 1.0E-5f

    if-eqz v4, :cond_d

    if-nez v15, :cond_d

    .line 20
    iget-boolean v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:Z

    if-eqz v15, :cond_a

    .line 21
    iget-wide v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:J

    sub-long v5, v9, v5

    long-to-float v5, v5

    mul-float/2addr v5, v12

    .line 22
    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 23
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 24
    iput-wide v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    .line 25
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:Landroid/view/animation/Interpolator;

    instance-of v6, v5, Ln3/i/a/b/o;

    if-eqz v6, :cond_c

    .line 26
    check-cast v5, Ln3/i/a/b/o;

    invoke-virtual {v5}, Ln3/i/a/b/o;->a()F

    move-result v5

    .line 27
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:F

    .line 28
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    mul-float/2addr v6, v9

    cmpg-float v6, v6, v16

    if-gtz v6, :cond_8

    .line 29
    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    :cond_8
    cmpl-float v6, v5, v3

    if-lez v6, :cond_9

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v9, v4, v6

    if-ltz v9, :cond_9

    .line 30
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 31
    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_9
    cmpg-float v5, v5, v3

    if-gez v5, :cond_c

    cmpg-float v5, v4, v3

    if-gtz v5, :cond_c

    .line 32
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 33
    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    move v13, v3

    goto :goto_3

    .line 34
    :cond_a
    invoke-interface {v4, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 35
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:Landroid/view/animation/Interpolator;

    instance-of v6, v5, Ln3/i/a/b/o;

    if-eqz v6, :cond_b

    .line 36
    check-cast v5, Ln3/i/a/b/o;

    invoke-virtual {v5}, Ln3/i/a/b/o;->a()F

    move-result v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:F

    goto :goto_2

    :cond_b
    add-float/2addr v13, v11

    .line 37
    invoke-interface {v5, v13}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    sub-float/2addr v5, v4

    mul-float/2addr v5, v2

    div-float/2addr v5, v11

    .line 38
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:F

    :cond_c
    :goto_2
    move v13, v4

    .line 39
    :cond_d
    :goto_3
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v16

    if-lez v4, :cond_e

    .line 40
    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->c:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    :cond_e
    if-lez v14, :cond_f

    .line 41
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpl-float v4, v13, v4

    if-gez v4, :cond_10

    :cond_f
    cmpg-float v4, v2, v3

    if-gtz v4, :cond_11

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpg-float v4, v13, v4

    if-gtz v4, :cond_11

    .line 42
    :cond_10
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    .line 43
    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    :cond_11
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v13, v4

    if-gez v5, :cond_12

    cmpg-float v4, v13, v3

    if-gtz v4, :cond_13

    .line 44
    :cond_12
    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    .line 45
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 46
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 47
    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:Z

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v9

    .line 49
    iput v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E0:F

    move v6, v8

    :goto_4
    if-ge v6, v4, :cond_15

    .line 50
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 51
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v17, v12

    check-cast v17, Ln3/i/a/b/m;

    if-eqz v17, :cond_14

    .line 52
    iget-boolean v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:Z

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Ln3/i/a/b/d;

    move-object/from16 v18, v11

    move/from16 v19, v13

    move-wide/from16 v20, v9

    move-object/from16 v22, v8

    invoke-virtual/range {v17 .. v22}, Ln3/i/a/b/m;->b(Landroid/view/View;FJLn3/i/a/b/d;)Z

    move-result v8

    or-int/2addr v8, v12

    iput-boolean v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:Z

    :cond_14
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x0

    goto :goto_4

    :cond_15
    if-lez v14, :cond_16

    .line 53
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpl-float v4, v13, v4

    if-gez v4, :cond_17

    :cond_16
    cmpg-float v4, v2, v3

    if-gtz v4, :cond_18

    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpg-float v4, v13, v4

    if-gtz v4, :cond_18

    :cond_17
    move v4, v7

    goto :goto_5

    :cond_18
    const/4 v4, 0x0

    .line 54
    :goto_5
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:Z

    if-nez v6, :cond_19

    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    if-nez v6, :cond_19

    if-eqz v4, :cond_19

    .line 55
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 56
    :cond_19
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Z

    if-eqz v6, :cond_1a

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 58
    :cond_1a
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:Z

    xor-int/2addr v4, v7

    or-int/2addr v4, v6

    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:Z

    cmpg-float v4, v13, v3

    if-gtz v4, :cond_1b

    .line 59
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1b

    .line 60
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-eq v6, v4, :cond_1b

    .line 61
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 62
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v6, v4}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object v4

    .line 63
    invoke-virtual {v4, v0}, Ln3/i/c/d;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 64
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    move v8, v7

    goto :goto_6

    :cond_1b
    const/4 v8, 0x0

    :goto_6
    float-to-double v9, v13

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v9, v11

    if-ltz v4, :cond_1c

    .line 65
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    if-eq v4, v6, :cond_1c

    .line 66
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 67
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v4, v6}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object v4

    .line 68
    invoke-virtual {v4, v0}, Ln3/i/c/d;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 69
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    move v8, v7

    .line 70
    :cond_1c
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:Z

    if-nez v4, :cond_20

    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    if-eqz v4, :cond_1d

    goto :goto_7

    :cond_1d
    if-lez v14, :cond_1e

    if-eqz v5, :cond_1f

    :cond_1e
    cmpg-float v4, v2, v3

    if-gez v4, :cond_21

    cmpl-float v4, v13, v3

    if-nez v4, :cond_21

    .line 71
    :cond_1f
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    goto :goto_8

    .line 72
    :cond_20
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 73
    :cond_21
    :goto_8
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:Z

    if-nez v1, :cond_22

    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    if-eqz v1, :cond_22

    if-lez v14, :cond_22

    if-eqz v5, :cond_23

    :cond_22
    cmpg-float v1, v2, v3

    if-gez v1, :cond_24

    cmpl-float v1, v13, v3

    if-nez v1, :cond_24

    .line 74
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->m1()V

    .line 75
    :cond_24
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_26

    .line 76
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    if-eq v1, v2, :cond_25

    goto :goto_9

    :cond_25
    move v7, v8

    .line 77
    :goto_9
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    :goto_a
    move v8, v7

    goto :goto_c

    :cond_26
    cmpg-float v1, v1, v3

    if-gtz v1, :cond_28

    .line 78
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-eq v1, v2, :cond_27

    goto :goto_b

    :cond_27
    move v7, v8

    .line 79
    :goto_b
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    goto :goto_a

    .line 80
    :cond_28
    :goto_c
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K0:Z

    or-int/2addr v1, v8

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K0:Z

    if-eqz v8, :cond_29

    .line 81
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    if-nez v1, :cond_29

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 83
    :cond_29
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    return-void
.end method

.method public getConstraintSetIds()[I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, v0, Ln3/i/a/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    iget-object v4, v0, Ln3/i/a/b/q;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    return v0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ln3/i/a/b/q$b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Ln3/i/a/b/q;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDesignTool()Ln3/i/a/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:Ln3/i/a/b/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/i/a/b/a;

    invoke-direct {v0, p0}, Ln3/i/a/b/a;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:Ln3/i/a/b/a;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->g0:Ln3/i/a/b/a;

    return-object v0
.end method

.method public getEndState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    return v0
.end method

.method public getNanoTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    return v0
.end method

.method public getStartState()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    return v0
.end method

.method public getTargetPosition()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    return v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 5
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    .line 6
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    .line 7
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 8
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c:I

    .line 9
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getVelocity()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b:F

    .line 10
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:F

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:F

    const-string v3, "motion.progress"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 15
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b:F

    const-string v3, "motion.velocity"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 16
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c:I

    const-string v3, "motion.StartState"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    const-string v2, "motion.EndState"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getTransitionTimeMs()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/i/a/b/q;->c()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    .line 3
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getVelocity()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:F

    return v0
.end method

.method public final h1()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-eqz v0, :cond_1

    .line 5
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    invoke-interface {v0, p0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 8
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    invoke-interface {v2, p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->c(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    goto :goto_0

    .line 9
    :cond_2
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:I

    .line 10
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w0:F

    .line 11
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-eqz v1, :cond_3

    .line 12
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    invoke-interface {v1, p0, v2, v3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    .line 13
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 15
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    invoke-interface {v1, p0, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public i1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:I

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 6
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-eq v0, v2, :cond_2

    if-eq v2, v1, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N0:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->n1()V

    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public j0(Landroid/view/View;II[II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-eqz v4, :cond_12

    iget-object v4, v4, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-boolean v5, v4, Ln3/i/a/b/q$b;->o:Z

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-nez v5, :cond_1

    return-void

    :cond_1
    const/4 v7, -0x1

    if-eqz v5, :cond_2

    .line 3
    iget-object v5, v4, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v5, :cond_2

    .line 4
    iget v5, v5, Ln3/i/a/b/v;->e:I

    if-eq v5, v7, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v8

    if-eq v8, v5, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v5, :cond_5

    .line 7
    iget-object v5, v5, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz v5, :cond_3

    .line 8
    iget-object v5, v5, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v5, :cond_3

    .line 9
    iget-boolean v5, v5, Ln3/i/a/b/v;->r:Z

    goto :goto_0

    :cond_3
    move v5, v9

    :goto_0
    if-eqz v5, :cond_5

    .line 10
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    cmpl-float v11, v5, v10

    if-eqz v11, :cond_4

    cmpl-float v5, v5, v8

    if-nez v5, :cond_5

    :cond_4
    invoke-virtual {v1, v7}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v5

    if-eqz v5, :cond_5

    return-void

    .line 11
    :cond_5
    iget-object v4, v4, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v4, :cond_b

    .line 12
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    iget-object v4, v4, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    .line 13
    iget-object v4, v4, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    .line 14
    iget v5, v4, Ln3/i/a/b/v;->t:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_b

    int-to-float v5, v2

    int-to-float v7, v3

    .line 15
    iget-object v11, v4, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v14

    .line 16
    iget-object v12, v4, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v13, v4, Ln3/i/a/b/v;->d:I

    iget v15, v4, Ln3/i/a/b/v;->h:F

    iget v11, v4, Ln3/i/a/b/v;->g:F

    iget-object v10, v4, Ln3/i/a/b/v;->l:[F

    move/from16 v16, v11

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/MotionLayout;->j1(IFFF[F)V

    .line 17
    iget v10, v4, Ln3/i/a/b/v;->i:F

    cmpl-float v11, v10, v8

    const v12, 0x33d6bf95    # 1.0E-7f

    if-eqz v11, :cond_7

    .line 18
    iget-object v4, v4, Ln3/i/a/b/v;->l:[F

    aget v7, v4, v9

    cmpl-float v7, v7, v8

    if-nez v7, :cond_6

    .line 19
    aput v12, v4, v9

    :cond_6
    mul-float/2addr v5, v10

    .line 20
    aget v4, v4, v9

    div-float/2addr v5, v4

    goto :goto_1

    .line 21
    :cond_7
    iget-object v5, v4, Ln3/i/a/b/v;->l:[F

    aget v10, v5, v6

    cmpl-float v10, v10, v8

    if-nez v10, :cond_8

    .line 22
    aput v12, v5, v6

    .line 23
    :cond_8
    iget v4, v4, Ln3/i/a/b/v;->j:F

    mul-float/2addr v7, v4

    aget v4, v5, v6

    div-float v5, v7, v4

    .line 24
    :goto_1
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    cmpg-float v7, v4, v8

    if-gtz v7, :cond_9

    cmpg-float v7, v5, v8

    if-ltz v7, :cond_a

    :cond_9
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_b

    cmpl-float v4, v5, v8

    if-lez v4, :cond_b

    .line 25
    :cond_a
    invoke-virtual {v1, v9}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 26
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$a;

    invoke-direct {v2, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$a;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 27
    :cond_b
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v4

    int-to-float v7, v2

    .line 29
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:F

    int-to-float v10, v3

    .line 30
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:F

    .line 31
    iget-wide v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:J

    sub-long v11, v4, v11

    long-to-double v11, v11

    const-wide v13, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v11, v13

    double-to-float v11, v11

    iput v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:F

    .line 32
    iput-wide v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:J

    .line 33
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    .line 34
    iget-object v4, v4, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz v4, :cond_f

    .line 35
    iget-object v4, v4, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v4, :cond_f

    .line 36
    iget-object v5, v4, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v5

    .line 37
    iget-boolean v11, v4, Ln3/i/a/b/v;->k:Z

    if-nez v11, :cond_c

    .line 38
    iput-boolean v6, v4, Ln3/i/a/b/v;->k:Z

    .line 39
    iget-object v11, v4, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 40
    :cond_c
    iget-object v11, v4, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v12, v4, Ln3/i/a/b/v;->d:I

    iget v14, v4, Ln3/i/a/b/v;->h:F

    iget v15, v4, Ln3/i/a/b/v;->g:F

    iget-object v13, v4, Ln3/i/a/b/v;->l:[F

    move-object/from16 v16, v13

    move v13, v5

    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionLayout;->j1(IFFF[F)V

    .line 41
    iget v11, v4, Ln3/i/a/b/v;->i:F

    iget-object v12, v4, Ln3/i/a/b/v;->l:[F

    aget v13, v12, v9

    mul-float/2addr v11, v13

    iget v13, v4, Ln3/i/a/b/v;->j:F

    aget v12, v12, v6

    mul-float/2addr v13, v12

    add-float/2addr v13, v11

    .line 42
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v11, v11, v13

    if-gez v11, :cond_d

    .line 43
    iget-object v11, v4, Ln3/i/a/b/v;->l:[F

    const v12, 0x3c23d70a    # 0.01f

    aput v12, v11, v9

    .line 44
    aput v12, v11, v6

    .line 45
    :cond_d
    iget v11, v4, Ln3/i/a/b/v;->i:F

    cmpl-float v12, v11, v8

    if-eqz v12, :cond_e

    mul-float/2addr v7, v11

    .line 46
    iget-object v10, v4, Ln3/i/a/b/v;->l:[F

    aget v10, v10, v9

    div-float/2addr v7, v10

    goto :goto_2

    .line 47
    :cond_e
    iget v7, v4, Ln3/i/a/b/v;->j:F

    mul-float/2addr v10, v7

    iget-object v7, v4, Ln3/i/a/b/v;->l:[F

    aget v7, v7, v6

    div-float v7, v10, v7

    :goto_2
    add-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    .line 48
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 49
    iget-object v7, v4, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v7

    cmpl-float v7, v5, v7

    if-eqz v7, :cond_f

    .line 50
    iget-object v4, v4, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 51
    :cond_f
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_10

    .line 52
    aput v2, p4, v9

    .line 53
    aput v3, p4, v6

    .line 54
    :cond_10
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g1(Z)V

    .line 55
    aget v1, p4, v9

    if-nez v1, :cond_11

    aget v1, p4, v6

    if-eqz v1, :cond_12

    .line 56
    :cond_11
    iput-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Z

    :cond_12
    :goto_3
    return-void
.end method

.method public j1(IFFF[F)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/HashMap;

    .line 2
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/view/View;

    .line 3
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/a/b/m;

    if-eqz v3, :cond_4

    .line 4
    iget-object v1, v3, Ln3/i/a/b/m;->u:[F

    invoke-virtual {v3, v2, v1}, Ln3/i/a/b/m;->a(F[F)F

    move-result v1

    .line 5
    iget-object v4, v3, Ln3/i/a/b/m;->h:[Ln3/i/a/a/b;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 6
    aget-object v4, v4, v5

    float-to-double v6, v1

    iget-object v1, v3, Ln3/i/a/b/m;->o:[D

    invoke-virtual {v4, v6, v7, v1}, Ln3/i/a/a/b;->e(D[D)V

    .line 7
    iget-object v1, v3, Ln3/i/a/b/m;->h:[Ln3/i/a/a/b;

    aget-object v1, v1, v5

    iget-object v4, v3, Ln3/i/a/b/m;->n:[D

    invoke-virtual {v1, v6, v7, v4}, Ln3/i/a/a/b;->c(D[D)V

    .line 8
    iget-object v1, v3, Ln3/i/a/b/m;->u:[F

    aget v1, v1, v5

    .line 9
    :goto_0
    iget-object v8, v3, Ln3/i/a/b/m;->o:[D

    array-length v4, v8

    if-ge v5, v4, :cond_0

    .line 10
    aget-wide v11, v8, v5

    float-to-double v13, v1

    mul-double/2addr v11, v13

    aput-wide v11, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v3, Ln3/i/a/b/m;->i:Ln3/i/a/a/b;

    if-eqz v1, :cond_1

    .line 12
    iget-object v4, v3, Ln3/i/a/b/m;->n:[D

    array-length v5, v4

    if-lez v5, :cond_3

    .line 13
    invoke-virtual {v1, v6, v7, v4}, Ln3/i/a/a/b;->c(D[D)V

    .line 14
    iget-object v1, v3, Ln3/i/a/b/m;->i:Ln3/i/a/a/b;

    iget-object v4, v3, Ln3/i/a/b/m;->o:[D

    invoke-virtual {v1, v6, v7, v4}, Ln3/i/a/a/b;->e(D[D)V

    .line 15
    iget-object v1, v3, Ln3/i/a/b/m;->d:Ln3/i/a/b/p;

    iget-object v7, v3, Ln3/i/a/b/m;->m:[I

    iget-object v8, v3, Ln3/i/a/b/m;->o:[D

    iget-object v9, v3, Ln3/i/a/b/m;->n:[D

    move-object v3, v1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v3 .. v9}, Ln3/i/a/b/p;->f(FF[F[I[D[D)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v1, v3, Ln3/i/a/b/m;->d:Ln3/i/a/b/p;

    iget-object v7, v3, Ln3/i/a/b/m;->m:[I

    iget-object v9, v3, Ln3/i/a/b/m;->n:[D

    move-object v3, v1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v3 .. v9}, Ln3/i/a/b/p;->f(FF[F[I[D[D)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v1, v3, Ln3/i/a/b/m;->e:Ln3/i/a/b/p;

    iget v4, v1, Ln3/i/a/b/p;->e:F

    iget-object v3, v3, Ln3/i/a/b/m;->d:Ln3/i/a/b/p;

    iget v6, v3, Ln3/i/a/b/p;->e:F

    sub-float/2addr v4, v6

    .line 18
    iget v6, v1, Ln3/i/a/b/p;->f:F

    iget v7, v3, Ln3/i/a/b/p;->f:F

    sub-float/2addr v6, v7

    .line 19
    iget v7, v1, Ln3/i/a/b/p;->g:F

    iget v8, v3, Ln3/i/a/b/p;->g:F

    sub-float/2addr v7, v8

    .line 20
    iget v1, v1, Ln3/i/a/b/p;->h:F

    iget v3, v3, Ln3/i/a/b/p;->h:F

    sub-float/2addr v1, v3

    add-float/2addr v7, v4

    add-float/2addr v1, v6

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v8, v3, p3

    mul-float/2addr v8, v4

    mul-float v7, v7, p3

    add-float/2addr v7, v8

    .line 21
    aput v7, p5, v5

    sub-float v3, v3, p4

    mul-float/2addr v3, v6

    mul-float v1, v1, p4

    add-float/2addr v1, v3

    const/4 v3, 0x1

    .line 22
    aput v1, p5, v3

    .line 23
    :cond_3
    :goto_1
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v1

    .line 24
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:F

    sub-float v3, v2, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    .line 25
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->Q:F

    .line 26
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->R:F

    goto :goto_2

    :cond_4
    if-nez v10, :cond_5

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 28
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public k1(I)Ln3/i/c/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object p1

    return-object p1
.end method

.method public final l1(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    .line 4
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, p2

    invoke-virtual {p0, v6, v7, v5, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->l1(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p1, v5

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p2, v5

    invoke-virtual {v0, v3, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 10
    :cond_2
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public m1()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    invoke-virtual {v0, p0, v1}, Ln3/i/a/b/q;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    return-void

    .line 4
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    .line 6
    iget-object v3, v2, Ln3/i/a/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/i/a/b/q$b;

    .line 7
    iget-object v5, v4, Ln3/i/a/b/q$b;->m:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 9
    iget-object v4, v4, Ln3/i/a/b/q$b;->m:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/i/a/b/q$b$a;

    .line 11
    invoke-virtual {v5, p0}, Ln3/i/a/b/q$b$a;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v3, v2, Ln3/i/a/b/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/i/a/b/q$b;

    .line 13
    iget-object v5, v4, Ln3/i/a/b/q$b;->m:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 15
    iget-object v4, v4, Ln3/i/a/b/q$b;->m:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/i/a/b/q$b$a;

    .line 17
    invoke-virtual {v5, p0}, Ln3/i/a/b/q$b$a;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    goto :goto_1

    .line 18
    :cond_5
    iget-object v3, v2, Ln3/i/a/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/i/a/b/q$b;

    .line 19
    iget-object v5, v4, Ln3/i/a/b/q$b;->m:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 21
    iget-object v5, v4, Ln3/i/a/b/q$b;->m:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/i/a/b/q$b$a;

    .line 23
    invoke-virtual {v6, p0, v0, v4}, Ln3/i/a/b/q$b$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILn3/i/a/b/q$b;)V

    goto :goto_2

    .line 24
    :cond_7
    iget-object v2, v2, Ln3/i/a/b/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/a/b/q$b;

    .line 25
    iget-object v4, v3, Ln3/i/a/b/q$b;->m:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 27
    iget-object v4, v3, Ln3/i/a/b/q$b;->m:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/i/a/b/q$b$a;

    .line 29
    invoke-virtual {v5, p0, v0, v3}, Ln3/i/a/b/q$b$a;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILn3/i/a/b/q$b;)V

    goto :goto_3

    .line 30
    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v0}, Ln3/i/a/b/q;->p()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    .line 32
    iget-object v0, v0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz v0, :cond_c

    .line 33
    iget-object v0, v0, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v0, :cond_c

    .line 34
    iget v2, v0, Ln3/i/a/b/v;->d:I

    if-eq v2, v1, :cond_a

    .line 35
    iget-object v1, v0, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_b

    .line 36
    iget-object v2, v0, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Ln3/i/a/b/v;->d:I

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->m0(Landroid/content/Context;I)Ljava/lang/String;

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    .line 37
    :cond_b
    :goto_4
    instance-of v2, v1, Landroidx/core/widget/NestedScrollView;

    if-eqz v2, :cond_c

    .line 38
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 39
    new-instance v2, Ln3/i/a/b/t;

    invoke-direct {v2, v0}, Ln3/i/a/b/t;-><init>(Ln3/i/a/b/v;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    new-instance v2, Ln3/i/a/b/u;

    invoke-direct {v2, v0}, Ln3/i/a/b/u;-><init>(Ln3/i/a/b/v;)V

    invoke-virtual {v1, v2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V

    :cond_c
    return-void
.end method

.method public final n1()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    .line 5
    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public o1()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-eqz v0, :cond_1

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v1, p0}, Ln3/i/a/b/q;->m(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p0, v1}, Ln3/i/c/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Ln3/i/c/d;)V

    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 8
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->m1()V

    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-eqz v0, :cond_3

    iget-object v0, v0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz v0, :cond_3

    .line 13
    iget v0, v0, Ln3/i/a/b/q$b;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1(F)V

    .line 15
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 16
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->c:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz v0, :cond_4

    .line 3
    iget-boolean v2, v0, Ln3/i/a/b/q$b;->o:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 4
    iget-object v0, v0, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p0, v2}, Ln3/i/a/b/v;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 8
    :cond_1
    iget v0, v0, Ln3/i/a/b/v;->e:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 9
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M0:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M0:Landroid/view/View;

    .line 11
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M0:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 12
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M0:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M0:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M0:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L0:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M0:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->l1(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 15
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-nez v2, :cond_0

    .line 3
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 5
    :try_start_1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:I

    if-ne p1, p4, :cond_1

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:I

    if-eq p1, p5, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o1()V

    .line 7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g1(Z)V

    .line 8
    :cond_2
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->h0:I

    .line 9
    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->i0:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->G0:Z

    .line 11
    throw p1
.end method

.method public onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-nez v3, :cond_0

    .line 2
    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v1, :cond_2

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v5

    .line 4
    :goto_1
    iget-boolean v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K0:Z

    if-eqz v6, :cond_3

    .line 5
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K0:Z

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->m1()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->n1()V

    move v3, v5

    .line 8
    :cond_3
    iget-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    if-eqz v6, :cond_4

    move v3, v5

    .line 9
    :cond_4
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:I

    .line 10
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A:I

    .line 11
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v6}, Ln3/i/a/b/q;->i()I

    move-result v6

    .line 12
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v7}, Ln3/i/a/b/q;->d()I

    move-result v7

    if-nez v3, :cond_7

    .line 13
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    .line 14
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e:I

    if-ne v6, v8, :cond_6

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->f:I

    if-eq v7, v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v5

    :goto_3
    if-eqz v3, :cond_8

    .line 15
    :cond_7
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v8, -0x1

    if-eq v3, v8, :cond_8

    .line 16
    invoke-super/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 17
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v2, v6}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object v2

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v3, v7}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d(Ln3/i/c/d;Ln3/i/c/d;)V

    .line 18
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e()V

    .line 19
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    .line 20
    iput v6, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e:I

    .line 21
    iput v7, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->f:I

    move v1, v4

    goto :goto_4

    :cond_8
    move v1, v5

    .line 22
    :goto_4
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Z

    if-nez v2, :cond_9

    if-eqz v1, :cond_e

    .line 23
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    .line 25
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    invoke-virtual {v1}, Ln3/i/b/h/d;->w()I

    move-result v1

    add-int/2addr v1, v3

    .line 26
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    invoke-virtual {v3}, Ln3/i/b/h/d;->q()I

    move-result v3

    add-int/2addr v3, v2

    .line 27
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C0:I

    const/high16 v6, -0x80000000

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_b

    .line 28
    :cond_a
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y0:I

    int-to-float v2, v1

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E0:F

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:I

    sub-int/2addr v8, v1

    int-to-float v1, v8

    mul-float/2addr v7, v1

    add-float/2addr v7, v2

    float-to-int v1, v7

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 30
    :cond_b
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D0:I

    if-eq v2, v6, :cond_c

    if-nez v2, :cond_d

    .line 31
    :cond_c
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->z0:I

    int-to-float v3, v2

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E0:F

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B0:I

    sub-int/2addr v7, v2

    int-to-float v2, v7

    mul-float/2addr v6, v2

    add-float/2addr v6, v3

    float-to-int v3, v6

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    .line 33
    :cond_d
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 34
    :cond_e
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    .line 36
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:Landroid/view/animation/Interpolator;

    instance-of v7, v6, Ln3/i/a/a/g;

    const v8, 0x3089705f    # 1.0E-9f

    const/4 v9, 0x0

    if-nez v7, :cond_f

    .line 37
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    sub-long v10, v2, v10

    long-to-float v7, v10

    mul-float/2addr v7, v1

    mul-float/2addr v7, v8

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    div-float/2addr v7, v10

    goto :goto_5

    :cond_f
    move v7, v9

    .line 38
    :goto_5
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    add-float/2addr v10, v7

    .line 39
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    if-eqz v7, :cond_10

    .line 40
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    :cond_10
    cmpl-float v7, v1, v9

    if-lez v7, :cond_11

    .line 41
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpl-float v11, v10, v11

    if-gez v11, :cond_12

    :cond_11
    cmpg-float v11, v1, v9

    if-gtz v11, :cond_13

    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_13

    .line 42
    :cond_12
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    goto :goto_6

    :cond_13
    move v5, v4

    :goto_6
    if-eqz v6, :cond_15

    if-nez v5, :cond_15

    .line 43
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:Z

    if-eqz v5, :cond_14

    .line 44
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:J

    sub-long/2addr v2, v10

    long-to-float v2, v2

    mul-float/2addr v2, v8

    .line 45
    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    goto :goto_7

    .line 46
    :cond_14
    invoke-interface {v6, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    :cond_15
    :goto_7
    if-lez v7, :cond_16

    .line 47
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpl-float v2, v10, v2

    if-gez v2, :cond_17

    :cond_16
    cmpg-float v1, v1, v9

    if-gtz v1, :cond_18

    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    cmpg-float v1, v10, v1

    if-gtz v1, :cond_18

    .line 48
    :cond_17
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    .line 49
    :cond_18
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E0:F

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v2

    :goto_8
    if-ge v4, v1, :cond_1a

    .line 52
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 53
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/HashMap;

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ln3/i/a/b/m;

    if-eqz v11, :cond_19

    .line 54
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->F0:Ln3/i/a/b/d;

    move v13, v10

    move-wide v14, v2

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Ln3/i/a/b/m;->b(Landroid/view/View;FJLn3/i/a/b/d;)Z

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 55
    :cond_1a
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Z

    if-eqz v1, :cond_1b

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    :cond_1b
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->T0()Z

    move-result v0

    invoke-virtual {p1, v0}, Ln3/i/a/b/q;->n(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-eqz v2, :cond_35

    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    if-eqz v3, :cond_35

    invoke-virtual {v2}, Ln3/i/a/b/q;->p()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    iget-object v3, v2, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 3
    iget-boolean v3, v3, Ln3/i/a/b/q$b;->o:Z

    xor-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 4
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v3

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 8
    iget-object v7, v2, Ln3/i/a/b/q;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    if-nez v7, :cond_1

    .line 9
    iget-object v7, v2, Ln3/i/a/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 10
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:Landroid/view/VelocityTracker;

    .line 12
    iput-object v5, v2, Ln3/i/a/b/q;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    .line 13
    :cond_1
    iget-object v5, v2, Ln3/i/a/b/q;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 14
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_2

    .line 15
    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    const/4 v5, 0x2

    const/4 v8, -0x1

    if-eq v3, v8, :cond_18

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-eqz v11, :cond_13

    if-eq v11, v5, :cond_3

    goto/16 :goto_9

    .line 17
    :cond_3
    iget-boolean v11, v2, Ln3/i/a/b/q;->m:Z

    if-eqz v11, :cond_4

    goto/16 :goto_9

    .line 18
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iget v12, v2, Ln3/i/a/b/q;->r:F

    sub-float/2addr v11, v12

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    iget v13, v2, Ln3/i/a/b/q;->q:F

    sub-float/2addr v12, v13

    float-to-double v13, v12

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-nez v13, :cond_5

    float-to-double v13, v11

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_34

    .line 20
    :cond_5
    iget-object v13, v2, Ln3/i/a/b/q;->l:Landroid/view/MotionEvent;

    if-nez v13, :cond_6

    goto/16 :goto_19

    :cond_6
    if-eq v3, v8, :cond_10

    .line 21
    iget-object v14, v2, Ln3/i/a/b/q;->b:Ln3/i/c/h;

    if-eqz v14, :cond_7

    .line 22
    invoke-virtual {v14, v3, v8, v8}, Ln3/i/c/h;->a(III)I

    move-result v14

    if-eq v14, v8, :cond_7

    goto :goto_0

    :cond_7
    move v14, v3

    .line 23
    :goto_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v10, v2, Ln3/i/a/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Ln3/i/a/b/q$b;

    .line 25
    iget v4, v5, Ln3/i/a/b/q$b;->d:I

    if-eq v4, v14, :cond_8

    .line 26
    iget v4, v5, Ln3/i/a/b/q$b;->c:I

    if-ne v4, v14, :cond_9

    .line 27
    :cond_8
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v4, 0x1

    const/4 v5, 0x2

    goto :goto_1

    .line 28
    :cond_a
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 29
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ln3/i/a/b/q$b;

    .line 30
    iget-boolean v7, v15, Ln3/i/a/b/q$b;->o:Z

    if-eqz v7, :cond_b

    goto :goto_4

    .line 31
    :cond_b
    iget-object v7, v15, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v7, :cond_f

    .line 32
    iget-boolean v8, v2, Ln3/i/a/b/q;->p:Z

    invoke-virtual {v7, v8}, Ln3/i/a/b/v;->b(Z)V

    .line 33
    iget-object v7, v15, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    .line 34
    iget-object v8, v2, Ln3/i/a/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7, v8, v4}, Ln3/i/a/b/v;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 35
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_4

    .line 36
    :cond_c
    iget-object v7, v15, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    .line 37
    iget-object v8, v2, Ln3/i/a/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7, v8, v4}, Ln3/i/a/b/v;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 38
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_4

    .line 39
    :cond_d
    iget-object v7, v15, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    .line 40
    iget v8, v7, Ln3/i/a/b/v;->i:F

    mul-float/2addr v8, v12

    iget v7, v7, Ln3/i/a/b/v;->j:F

    mul-float/2addr v7, v11

    add-float/2addr v7, v8

    .line 41
    iget v8, v15, Ln3/i/a/b/q$b;->c:I

    if-ne v8, v3, :cond_e

    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_3

    :cond_e
    const v8, 0x3f8ccccd    # 1.1f

    :goto_3
    mul-float/2addr v7, v8

    cmpl-float v8, v7, v10

    if-lez v8, :cond_f

    move v10, v7

    move-object v14, v15

    :cond_f
    :goto_4
    const/4 v8, -0x1

    goto :goto_2

    .line 42
    :cond_10
    iget-object v14, v2, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    :cond_11
    if-eqz v14, :cond_18

    .line 43
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Ln3/i/a/b/q$b;)V

    .line 44
    iget-object v3, v2, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    .line 45
    iget-object v3, v3, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    .line 46
    iget-object v4, v2, Ln3/i/a/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3, v4, v6}, Ln3/i/a/b/v;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 47
    iget-object v4, v2, Ln3/i/a/b/q;->l:Landroid/view/MotionEvent;

    .line 48
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, v2, Ln3/i/a/b/q;->l:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v3, 0x1

    goto :goto_5

    :cond_12
    const/4 v3, 0x0

    :goto_5
    iput-boolean v3, v2, Ln3/i/a/b/q;->n:Z

    .line 49
    iget-object v3, v2, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    .line 50
    iget-object v3, v3, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    .line 51
    iget v4, v2, Ln3/i/a/b/q;->q:F

    iget v5, v2, Ln3/i/a/b/q;->r:F

    .line 52
    iput v4, v3, Ln3/i/a/b/v;->m:F

    .line 53
    iput v5, v3, Ln3/i/a/b/v;->n:F

    const/4 v4, 0x0

    .line 54
    iput-boolean v4, v3, Ln3/i/a/b/v;->k:Z

    goto/16 :goto_9

    :cond_13
    const/4 v4, 0x0

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v2, Ln3/i/a/b/q;->q:F

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v2, Ln3/i/a/b/q;->r:F

    .line 57
    iput-object v1, v2, Ln3/i/a/b/q;->l:Landroid/view/MotionEvent;

    .line 58
    iput-boolean v4, v2, Ln3/i/a/b/q;->m:Z

    .line 59
    iget-object v1, v2, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    .line 60
    iget-object v1, v1, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v1, :cond_34

    .line 61
    iget-object v3, v2, Ln3/i/a/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 62
    iget v1, v1, Ln3/i/a/b/v;->f:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_14

    goto :goto_6

    .line 63
    :cond_14
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_15

    :goto_6
    const/4 v1, 0x0

    goto :goto_7

    .line 64
    :cond_15
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v6, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    move-object v1, v6

    :goto_7
    if-eqz v1, :cond_16

    .line 65
    iget-object v3, v2, Ln3/i/a/b/q;->l:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, v2, Ln3/i/a/b/q;->l:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    .line 66
    iput-object v1, v2, Ln3/i/a/b/q;->l:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, v2, Ln3/i/a/b/q;->m:Z

    goto/16 :goto_19

    .line 68
    :cond_16
    iget-object v1, v2, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    .line 69
    iget-object v1, v1, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    .line 70
    iget-object v3, v2, Ln3/i/a/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v3, v6}, Ln3/i/a/b/v;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 71
    iget-object v3, v2, Ln3/i/a/b/q;->l:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, v2, Ln3/i/a/b/q;->l:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, v2, Ln3/i/a/b/q;->n:Z

    goto :goto_8

    :cond_17
    const/4 v1, 0x0

    .line 73
    iput-boolean v1, v2, Ln3/i/a/b/q;->n:Z

    .line 74
    :goto_8
    iget-object v1, v2, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    .line 75
    iget-object v1, v1, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    .line 76
    iget v3, v2, Ln3/i/a/b/q;->q:F

    iget v2, v2, Ln3/i/a/b/q;->r:F

    .line 77
    iput v3, v1, Ln3/i/a/b/v;->m:F

    .line 78
    iput v2, v1, Ln3/i/a/b/v;->n:F

    goto/16 :goto_19

    .line 79
    :cond_18
    :goto_9
    iget-boolean v3, v2, Ln3/i/a/b/q;->m:Z

    if-eqz v3, :cond_19

    goto/16 :goto_19

    .line 80
    :cond_19
    iget-object v3, v2, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz v3, :cond_32

    .line 81
    iget-object v3, v3, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v3, :cond_32

    .line 82
    iget-boolean v4, v2, Ln3/i/a/b/q;->n:Z

    if-nez v4, :cond_32

    .line 83
    iget-object v4, v2, Ln3/i/a/b/q;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    .line 84
    sget-object v5, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->d:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 85
    iget-object v6, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_1a

    .line 86
    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 87
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_31

    const/16 v7, 0x3e8

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    if-eq v6, v9, :cond_26

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1b

    goto/16 :goto_17

    .line 88
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, v3, Ln3/i/a/b/v;->n:F

    sub-float/2addr v5, v6

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v9, v3, Ln3/i/a/b/v;->m:F

    sub-float/2addr v6, v9

    .line 90
    iget v9, v3, Ln3/i/a/b/v;->i:F

    mul-float/2addr v9, v6

    iget v10, v3, Ln3/i/a/b/v;->j:F

    mul-float/2addr v10, v5

    add-float/2addr v10, v9

    .line 91
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, v3, Ln3/i/a/b/v;->u:F

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_1c

    iget-boolean v9, v3, Ln3/i/a/b/v;->k:Z

    if-eqz v9, :cond_32

    .line 92
    :cond_1c
    iget-object v9, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v9

    .line 93
    iget-boolean v10, v3, Ln3/i/a/b/v;->k:Z

    if-nez v10, :cond_1d

    const/4 v10, 0x1

    .line 94
    iput-boolean v10, v3, Ln3/i/a/b/v;->k:Z

    .line 95
    iget-object v10, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 96
    :cond_1d
    iget v11, v3, Ln3/i/a/b/v;->d:I

    const/4 v10, -0x1

    if-eq v11, v10, :cond_1e

    .line 97
    iget-object v10, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v13, v3, Ln3/i/a/b/v;->h:F

    iget v14, v3, Ln3/i/a/b/v;->g:F

    iget-object v15, v3, Ln3/i/a/b/v;->l:[F

    move v12, v9

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionLayout;->j1(IFFF[F)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_a

    .line 98
    :cond_1e
    iget-object v10, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    iget-object v11, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    .line 99
    iget-object v11, v3, Ln3/i/a/b/v;->l:[F

    iget v12, v3, Ln3/i/a/b/v;->j:F

    mul-float/2addr v12, v10

    const/4 v13, 0x1

    aput v12, v11, v13

    .line 100
    iget v12, v3, Ln3/i/a/b/v;->i:F

    mul-float/2addr v10, v12

    const/4 v12, 0x0

    aput v10, v11, v12

    .line 101
    :goto_a
    iget v10, v3, Ln3/i/a/b/v;->i:F

    iget-object v11, v3, Ln3/i/a/b/v;->l:[F

    aget v14, v11, v12

    mul-float/2addr v10, v14

    iget v12, v3, Ln3/i/a/b/v;->j:F

    aget v11, v11, v13

    mul-float/2addr v12, v11

    add-float/2addr v12, v10

    .line 102
    iget v10, v3, Ln3/i/a/b/v;->s:F

    mul-float/2addr v12, v10

    .line 103
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1f

    .line 104
    iget-object v10, v3, Ln3/i/a/b/v;->l:[F

    const v11, 0x3c23d70a    # 0.01f

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v13, 0x1

    .line 105
    aput v11, v10, v13

    goto :goto_b

    :cond_1f
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 106
    :goto_b
    iget v10, v3, Ln3/i/a/b/v;->i:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_20

    .line 107
    iget-object v5, v3, Ln3/i/a/b/v;->l:[F

    aget v5, v5, v12

    div-float/2addr v6, v5

    goto :goto_c

    .line 108
    :cond_20
    iget-object v6, v3, Ln3/i/a/b/v;->l:[F

    aget v6, v6, v13

    div-float v6, v5, v6

    :goto_c
    add-float/2addr v9, v6

    .line 109
    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 110
    iget-object v6, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v6

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_25

    .line 111
    iget-object v6, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 112
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_21

    .line 113
    invoke-virtual {v5, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 114
    :cond_21
    iget-object v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_22

    .line 115
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    goto :goto_d

    :cond_22
    const/4 v5, 0x0

    .line 116
    :goto_d
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_23

    .line 117
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    goto :goto_e

    :cond_23
    const/4 v4, 0x0

    .line 118
    :goto_e
    iget v6, v3, Ln3/i/a/b/v;->i:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_24

    iget-object v4, v3, Ln3/i/a/b/v;->l:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    div-float/2addr v5, v4

    goto :goto_f

    :cond_24
    iget-object v5, v3, Ln3/i/a/b/v;->l:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    div-float v5, v4, v5

    .line 119
    :goto_f
    iget-object v4, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:F

    goto :goto_10

    .line 120
    :cond_25
    iget-object v4, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:F

    .line 121
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Ln3/i/a/b/v;->m:F

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Ln3/i/a/b/v;->n:F

    goto/16 :goto_17

    :cond_26
    const/4 v6, 0x0

    .line 123
    iput-boolean v6, v3, Ln3/i/a/b/v;->k:Z

    .line 124
    iget-object v6, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_27

    .line 125
    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 126
    :cond_27
    iget-object v6, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_28

    .line 127
    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    goto :goto_11

    :cond_28
    const/4 v6, 0x0

    .line 128
    :goto_11
    iget-object v4, v4, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_29

    .line 129
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    goto :goto_12

    :cond_29
    const/4 v4, 0x0

    .line 130
    :goto_12
    iget-object v7, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v7

    .line 131
    iget v10, v3, Ln3/i/a/b/v;->d:I

    const/4 v9, -0x1

    if-eq v10, v9, :cond_2a

    .line 132
    iget-object v9, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v12, v3, Ln3/i/a/b/v;->h:F

    iget v13, v3, Ln3/i/a/b/v;->g:F

    iget-object v14, v3, Ln3/i/a/b/v;->l:[F

    move v11, v7

    invoke-virtual/range {v9 .. v14}, Landroidx/constraintlayout/motion/widget/MotionLayout;->j1(IFFF[F)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_13

    .line 133
    :cond_2a
    iget-object v9, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    iget-object v10, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    .line 134
    iget-object v10, v3, Ln3/i/a/b/v;->l:[F

    iget v11, v3, Ln3/i/a/b/v;->j:F

    mul-float/2addr v11, v9

    const/4 v12, 0x1

    aput v11, v10, v12

    .line 135
    iget v11, v3, Ln3/i/a/b/v;->i:F

    mul-float/2addr v9, v11

    const/4 v11, 0x0

    aput v9, v10, v11

    .line 136
    :goto_13
    iget v9, v3, Ln3/i/a/b/v;->i:F

    iget-object v10, v3, Ln3/i/a/b/v;->l:[F

    aget v13, v10, v11

    aget v13, v10, v12

    const/4 v14, 0x0

    cmpl-float v9, v9, v14

    if-eqz v9, :cond_2b

    .line 137
    aget v4, v10, v11

    div-float/2addr v6, v4

    goto :goto_14

    .line 138
    :cond_2b
    aget v6, v10, v12

    div-float v6, v4, v6

    .line 139
    :goto_14
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_2c

    const/high16 v4, 0x40400000    # 3.0f

    div-float v4, v6, v4

    add-float/2addr v4, v7

    goto :goto_15

    :cond_2c
    move v4, v7

    :goto_15
    const/4 v9, 0x0

    cmpl-float v10, v4, v9

    if-eqz v10, :cond_2f

    cmpl-float v9, v4, v8

    if-eqz v9, :cond_2f

    .line 140
    iget v9, v3, Ln3/i/a/b/v;->c:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2f

    .line 141
    iget-object v10, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    float-to-double v11, v4

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v11, v13

    if-gez v4, :cond_2d

    const/4 v4, 0x0

    goto :goto_16

    :cond_2d
    move v4, v8

    :goto_16
    invoke-virtual {v10, v9, v4, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r1(IFF)V

    const/4 v4, 0x0

    cmpl-float v4, v4, v7

    if-gez v4, :cond_2e

    cmpg-float v4, v8, v7

    if-gtz v4, :cond_32

    .line 142
    :cond_2e
    iget-object v3, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    goto :goto_17

    :cond_2f
    const/4 v6, 0x0

    cmpl-float v6, v6, v4

    if-gez v6, :cond_30

    cmpg-float v4, v8, v4

    if-gtz v4, :cond_32

    .line 143
    :cond_30
    iget-object v3, v3, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    goto :goto_17

    .line 144
    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Ln3/i/a/b/v;->m:F

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Ln3/i/a/b/v;->n:F

    const/4 v4, 0x0

    .line 146
    iput-boolean v4, v3, Ln3/i/a/b/v;->k:Z

    .line 147
    :cond_32
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v2, Ln3/i/a/b/q;->q:F

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v2, Ln3/i/a/b/q;->r:F

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_34

    .line 150
    iget-object v1, v2, Ln3/i/a/b/q;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    if-eqz v1, :cond_34

    .line 151
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$f;

    .line 152
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_33

    .line 153
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v3, 0x0

    .line 154
    iput-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:Landroid/view/VelocityTracker;

    goto :goto_18

    :cond_33
    const/4 v3, 0x0

    .line 155
    :goto_18
    iput-object v3, v2, Ln3/i/a/b/q;->o:Landroidx/constraintlayout/motion/widget/MotionLayout$e;

    .line 156
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_34

    .line 157
    invoke-virtual {v2, v0, v1}, Ln3/i/a/b/q;->a(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    :cond_34
    :goto_19
    const/4 v1, 0x1

    return v1

    .line 158
    :cond_35
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Ln3/i/a/b/n;

    if-eqz v0, :cond_4

    .line 3
    check-cast p1, Ln3/i/a/b/n;

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->r0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-boolean v0, p1, Ln3/i/a/b/n;->i:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:Ljava/util/ArrayList;

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    iget-boolean v0, p1, Ln3/i/a/b/n;->j:Z

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:Ljava/util/ArrayList;

    .line 14
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public q1(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 5
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c:I

    .line 6
    iput p2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-eqz v0, :cond_2

    .line 8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 9
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    .line 10
    invoke-virtual {v0, p1, p2}, Ln3/i/a/b/q;->o(II)V

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v1, p1}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object p1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v1, p2}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d(Ln3/i/c/d;Ln3/i/c/d;)V

    .line 12
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o1()V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 14
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1(F)V

    :cond_2
    return-void
.end method

.method public r1(IFF)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:Z

    .line 4
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:J

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v1}, Ln3/i/a/b/q;->c()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v7, v1, v2

    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    .line 6
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    .line 7
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_8

    if-eq p1, v0, :cond_8

    if-eq p1, v3, :cond_8

    const/4 v3, 0x4

    if-eq p1, v3, :cond_7

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    goto/16 :goto_4

    .line 8
    :cond_2
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v3}, Ln3/i/a/b/q;->h()F

    move-result v3

    cmpl-float v5, p3, v4

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v5, :cond_3

    div-float v5, p3, v3

    mul-float v7, p3, v5

    mul-float/2addr v3, v5

    mul-float/2addr v3, v5

    div-float/2addr v3, v6

    sub-float/2addr v7, v3

    add-float/2addr v7, p1

    cmpl-float p1, v7, v1

    if-lez p1, :cond_4

    goto :goto_0

    :cond_3
    neg-float v1, p3

    div-float/2addr v1, v3

    mul-float v5, p3, v1

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    div-float/2addr v3, v6

    add-float/2addr v3, v5

    add-float/2addr v3, p1

    cmpg-float p1, v3, v4

    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    .line 9
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Landroidx/constraintlayout/motion/widget/MotionLayout$b;

    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v0}, Ln3/i/a/b/q;->h()F

    move-result v0

    .line 10
    iput p3, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a:F

    .line 11
    iput p2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->b:F

    .line 12
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->c:F

    .line 13
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Landroidx/constraintlayout/motion/widget/MotionLayout$b;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:Landroid/view/animation/Interpolator;

    goto/16 :goto_4

    .line 14
    :cond_5
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:Ln3/i/a/a/g;

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    .line 15
    invoke-virtual {p1}, Ln3/i/a/b/q;->h()F

    move-result v10

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    .line 16
    iget-object p1, p1, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz p1, :cond_6

    .line 17
    iget-object p1, p1, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz p1, :cond_6

    .line 18
    iget p1, p1, Ln3/i/a/b/v;->p:F

    move v11, p1

    goto :goto_1

    :cond_6
    move v11, v4

    :goto_1
    move v7, p2

    move v8, p3

    .line 19
    invoke-virtual/range {v5 .. v11}, Ln3/i/a/a/g;->b(FFFFFF)V

    .line 20
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:F

    .line 21
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 22
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    .line 23
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 24
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:Ln3/i/a/a/g;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:Landroid/view/animation/Interpolator;

    goto :goto_4

    .line 25
    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Landroidx/constraintlayout/motion/widget/MotionLayout$b;

    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v0}, Ln3/i/a/b/q;->h()F

    move-result v0

    .line 26
    iput p3, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->a:F

    .line 27
    iput p2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->b:F

    .line 28
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$b;->c:F

    .line 29
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->W:Landroidx/constraintlayout/motion/widget/MotionLayout$b;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_8
    if-ne p1, v0, :cond_9

    move p2, v4

    goto :goto_2

    :cond_9
    if-ne p1, v3, :cond_a

    move p2, v1

    .line 30
    :cond_a
    :goto_2
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:Ln3/i/a/a/g;

    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    .line 31
    invoke-virtual {v0}, Ln3/i/a/b/q;->h()F

    move-result v8

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    .line 32
    iget-object v0, v0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz v0, :cond_b

    .line 33
    iget-object v0, v0, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v0, :cond_b

    .line 34
    iget v0, v0, Ln3/i/a/b/v;->p:F

    move v9, v0

    goto :goto_3

    :cond_b
    move v9, v4

    :goto_3
    move v4, p1

    move v5, p2

    move v6, p3

    .line 35
    invoke-virtual/range {v3 .. v9}, Ln3/i/a/a/g;->b(FFFFFF)V

    .line 36
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 37
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 39
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->V:Ln3/i/a/a/g;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:Landroid/view/animation/Interpolator;

    .line 40
    :goto_4
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    .line 41
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:J

    .line 42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public requestLayout()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x0:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz v0, :cond_0

    .line 3
    iget v0, v0, Ln3/i/a/b/q$b;->q:I

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:Z

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->c:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v0}, Ln3/i/a/b/q;->f()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/i/a/b/n;

    .line 4
    invoke-virtual {v2, p1}, Ln3/i/a/b/n;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/i/a/b/n;

    .line 4
    invoke-virtual {v2, p1}, Ln3/i/a/b/n;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->d:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 6
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:F

    return-void

    :cond_1
    if-gtz v2, :cond_2

    .line 7
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_4

    .line 9
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_3

    .line 10
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 11
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_4

    .line 12
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 14
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->c:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 15
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    .line 17
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    .line 18
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    const-wide/16 v1, -0x1

    .line 19
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    .line 20
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:J

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:Landroid/view/animation/Interpolator;

    .line 22
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setScene(Ln3/i/a/b/q;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->T0()Z

    move-result v0

    invoke-virtual {p1, v0}, Ln3/i/a/b/q;->n(Z)V

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o1()V

    return-void
.end method

.method public setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->d:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    if-ne p1, v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    .line 3
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->I0:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    .line 4
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->c:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    if-ne v1, v2, :cond_1

    if-ne p1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->h1()V

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_5

    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i1()V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->h1()V

    :cond_4
    if-ne p1, v0, :cond_5

    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->i1()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setTransition(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, v0, Ln3/i/a/b/q;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/a/b/q$b;

    .line 3
    iget v2, v1, Ln3/i/a/b/q$b;->a:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget p1, v1, Ln3/i/a/b/q$b;->d:I

    .line 5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 6
    iget p1, v1, Ln3/i/a/b/q$b;->c:I

    .line 7
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-nez p1, :cond_2

    .line 10
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 11
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 12
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c:I

    .line 13
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    .line 14
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    return-void

    :cond_3
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 15
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    move p1, v3

    goto :goto_1

    .line 16
    :cond_4
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    if-ne v0, v2, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    .line 18
    iput-object v1, v0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    .line 19
    iget-object v1, v1, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v1, :cond_6

    .line 20
    iget-boolean v0, v0, Ln3/i/a/b/q;->p:Z

    invoke-virtual {v1, v0}, Ln3/i/a/b/v;->b(Z)V

    .line 21
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    invoke-virtual {v1, v2}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    invoke-virtual {v2, v4}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d(Ln3/i/c/d;Ln3/i/c/d;)V

    .line 22
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o1()V

    .line 23
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_2

    :cond_7
    move v0, p1

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 24
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->l0()Ljava/lang/String;

    .line 26
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1(F)V

    goto :goto_3

    .line 27
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_9
    :goto_3
    return-void
.end method

.method public setTransition(Ln3/i/a/b/q$b;)V
    .locals 3

    .line 28
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    .line 29
    iput-object p1, v0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz p1, :cond_0

    .line 30
    iget-object v1, p1, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz v1, :cond_0

    .line 31
    iget-boolean v0, v0, Ln3/i/a/b/q;->p:Z

    invoke-virtual {v1, v0}, Ln3/i/a/b/v;->b(Z)V

    .line 32
    :cond_0
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$i;->b:Landroidx/constraintlayout/motion/widget/MotionLayout$i;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$i;)V

    .line 33
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v1}, Ln3/i/a/b/q;->d()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 35
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 36
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 37
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 38
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 39
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    .line 40
    :goto_0
    iget p1, p1, Ln3/i/a/b/q$b;->r:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const-wide/16 v0, -0x1

    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    .line 42
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {p1}, Ln3/i/a/b/q;->i()I

    move-result p1

    .line 43
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v0}, Ln3/i/a/b/q;->d()I

    move-result v0

    .line 44
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    if-ne p1, v1, :cond_4

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    if-ne v0, v1, :cond_4

    return-void

    .line 45
    :cond_4
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 46
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    .line 47
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v1, p1, v0}, Ln3/i/a/b/q;->o(II)V

    .line 48
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    invoke-virtual {v0, v1}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    invoke-virtual {v1, v2}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d(Ln3/i/c/d;Ln3/i/c/d;)V

    .line 49
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    .line 50
    iput v0, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e:I

    .line 51
    iput v1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->f:I

    .line 52
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->e()V

    .line 53
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o1()V

    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz v1, :cond_1

    .line 3
    iput p1, v1, Ln3/i/a/b/q$b;->h:I

    goto :goto_0

    .line 4
    :cond_1
    iput p1, v0, Ln3/i/a/b/q;->j:I

    :goto_0
    return-void
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->P:Landroidx/constraintlayout/motion/widget/MotionLayout$h;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "motion.progress"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a:F

    const-string v1, "motion.velocity"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->b:F

    const-string v1, "motion.StartState"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->c:I

    const-string v1, "motion.EndState"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->a()V

    :cond_1
    return-void
.end method

.method public t(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    return-void
.end method

.method public t1(I)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$g;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->H0:Landroidx/constraintlayout/motion/widget/MotionLayout$g;

    .line 5
    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$g;->d:I

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_c

    iget-object v0, v0, Ln3/i/a/b/q;->b:Ln3/i/c/h;

    if-eqz v0, :cond_c

    .line 7
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    int-to-float v4, v2

    .line 8
    iget-object v0, v0, Ln3/i/c/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/i/c/h$a;

    if-nez v0, :cond_2

    move v3, p1

    goto :goto_2

    :cond_2
    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_8

    if-nez v5, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v5, v0, Ln3/i/c/h$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v1

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/i/c/h$b;

    .line 10
    invoke-virtual {v7, v4, v4}, Ln3/i/c/h$b;->a(FF)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 11
    iget v6, v7, Ln3/i/c/h$b;->e:I

    if-ne v3, v6, :cond_5

    goto :goto_2

    :cond_5
    move-object v6, v7

    goto :goto_0

    :cond_6
    if-eqz v6, :cond_7

    .line 12
    iget v3, v6, Ln3/i/c/h$b;->e:I

    goto :goto_2

    .line 13
    :cond_7
    iget v3, v0, Ln3/i/c/h$a;->c:I

    goto :goto_2

    .line 14
    :cond_8
    :goto_1
    iget v4, v0, Ln3/i/c/h$a;->c:I

    if-ne v4, v3, :cond_9

    goto :goto_2

    .line 15
    :cond_9
    iget-object v4, v0, Ln3/i/c/h$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/i/c/h$b;

    .line 16
    iget v5, v5, Ln3/i/c/h$b;->e:I

    if-ne v3, v5, :cond_a

    goto :goto_2

    .line 17
    :cond_b
    iget v3, v0, Ln3/i/c/h$a;->c:I

    :goto_2
    if-eq v3, v2, :cond_c

    move p1, v3

    .line 18
    :cond_c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    if-ne v0, p1, :cond_d

    goto/16 :goto_b

    .line 19
    :cond_d
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    const/4 v4, 0x0

    if-ne v3, p1, :cond_e

    .line 20
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1(F)V

    goto/16 :goto_b

    .line 21
    :cond_e
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, p1, :cond_f

    .line 22
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1(F)V

    goto/16 :goto_b

    .line 23
    :cond_f
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    if-eq v0, v2, :cond_10

    .line 24
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->q1(II)V

    .line 25
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1(F)V

    .line 26
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 27
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1(F)V

    goto/16 :goto_b

    :cond_10
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->U:Z

    .line 29
    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->M:F

    .line 30
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 31
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 32
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->L:J

    .line 33
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:J

    .line 34
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->N:Z

    .line 35
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:Landroid/view/animation/Interpolator;

    .line 36
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v3}, Ln3/i/a/b/q;->c()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v3, v6

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->E:F

    .line 37
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 38
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    invoke-virtual {v3, v2, v6}, Ln3/i/a/b/q;->o(II)V

    .line 39
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v2}, Ln3/i/a/b/q;->i()I

    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 41
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move v3, v0

    :goto_3
    if-ge v3, v2, :cond_11

    .line 42
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 43
    new-instance v7, Ln3/i/a/b/m;

    invoke-direct {v7, v6}, Ln3/i/a/b/m;-><init>(Landroid/view/View;)V

    .line 44
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_11
    const/4 v3, 0x1

    .line 45
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    .line 46
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v7, p1}, Ln3/i/a/b/q;->b(I)Ln3/i/c/d;

    move-result-object p1

    invoke-virtual {v6, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->d(Ln3/i/c/d;Ln3/i/c/d;)V

    .line 47
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->o1()V

    .line 48
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J0:Landroidx/constraintlayout/motion/widget/MotionLayout$d;

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$d;->a()V

    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v1, v0

    :goto_4
    if-ge v1, p1, :cond_14

    .line 50
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 51
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/i/a/b/m;

    if-nez v7, :cond_12

    goto/16 :goto_6

    .line 52
    :cond_12
    iget-object v8, v7, Ln3/i/a/b/m;->d:Ln3/i/a/b/p;

    iput v4, v8, Ln3/i/a/b/p;->c:F

    .line 53
    iput v4, v8, Ln3/i/a/b/p;->d:F

    .line 54
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ln3/i/a/b/p;->e(FFFF)V

    .line 55
    iget-object v7, v7, Ln3/i/a/b/m;->f:Ln3/i/a/b/l;

    .line 56
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 58
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    iput v8, v7, Ln3/i/a/b/l;->c:I

    .line 59
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_13

    move v8, v4

    goto :goto_5

    :cond_13
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v8

    :goto_5
    iput v8, v7, Ln3/i/a/b/l;->a:F

    .line 60
    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    move-result v8

    iput v8, v7, Ln3/i/a/b/l;->d:F

    .line 61
    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    move-result v8

    iput v8, v7, Ln3/i/a/b/l;->e:F

    .line 62
    invoke-virtual {v6}, Landroid/view/View;->getRotationX()F

    move-result v8

    iput v8, v7, Ln3/i/a/b/l;->f:F

    .line 63
    invoke-virtual {v6}, Landroid/view/View;->getRotationY()F

    move-result v8

    iput v8, v7, Ln3/i/a/b/l;->g:F

    .line 64
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v8

    iput v8, v7, Ln3/i/a/b/l;->h:F

    .line 65
    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v8

    iput v8, v7, Ln3/i/a/b/l;->i:F

    .line 66
    invoke-virtual {v6}, Landroid/view/View;->getPivotX()F

    move-result v8

    iput v8, v7, Ln3/i/a/b/l;->j:F

    .line 67
    invoke-virtual {v6}, Landroid/view/View;->getPivotY()F

    move-result v8

    iput v8, v7, Ln3/i/a/b/l;->k:F

    .line 68
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v8

    iput v8, v7, Ln3/i/a/b/l;->l:F

    .line 69
    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v8

    iput v8, v7, Ln3/i/a/b/l;->m:F

    .line 70
    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    iput v6, v7, Ln3/i/a/b/l;->n:F

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 71
    :cond_14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 72
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    move v6, v0

    :goto_7
    if-ge v6, v2, :cond_15

    .line 73
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/HashMap;

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/i/a/b/m;

    .line 74
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    invoke-virtual {v8, v7}, Ln3/i/a/b/q;->g(Ln3/i/a/b/m;)V

    .line 75
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    move-result-wide v8

    invoke-virtual {v7, p1, v1, v8, v9}, Ln3/i/a/b/m;->d(IIJ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 76
    :cond_15
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    .line 77
    iget-object p1, p1, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz p1, :cond_16

    .line 78
    iget p1, p1, Ln3/i/a/b/q$b;->i:F

    goto :goto_8

    :cond_16
    move p1, v4

    :goto_8
    cmpl-float v1, p1, v4

    if-eqz v1, :cond_18

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v6, -0x800001

    move v7, v0

    :goto_9
    if-ge v7, v2, :cond_17

    .line 79
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/HashMap;

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln3/i/a/b/m;

    .line 80
    iget-object v8, v8, Ln3/i/a/b/m;->e:Ln3/i/a/b/p;

    iget v9, v8, Ln3/i/a/b/p;->e:F

    .line 81
    iget v8, v8, Ln3/i/a/b/p;->f:F

    add-float/2addr v8, v9

    .line 82
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 83
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_17
    :goto_a
    if-ge v0, v2, :cond_18

    .line 84
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->C:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/i/a/b/m;

    .line 85
    iget-object v8, v7, Ln3/i/a/b/m;->e:Ln3/i/a/b/p;

    iget v9, v8, Ln3/i/a/b/p;->e:F

    .line 86
    iget v8, v8, Ln3/i/a/b/p;->f:F

    sub-float v10, v5, p1

    div-float v10, v5, v10

    .line 87
    iput v10, v7, Ln3/i/a/b/m;->l:F

    add-float/2addr v9, v8

    sub-float/2addr v9, v1

    mul-float/2addr v9, p1

    sub-float v8, v6, v1

    div-float/2addr v9, v8

    sub-float v8, p1, v9

    .line 88
    iput v8, v7, Ln3/i/a/b/m;->k:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 89
    :cond_18
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:F

    .line 90
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    .line 91
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->O:Z

    .line 92
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->m0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->y:I

    .line 3
    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->m0(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->K:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Dpos/Dt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->v:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/view/View;I)V
    .locals 9

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->t:Ln3/i/a/b/q;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:F

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:F

    div-float/2addr p2, v0

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:F

    div-float/2addr v1, v0

    .line 3
    iget-object p1, p1, Ln3/i/a/b/q;->c:Ln3/i/a/b/q$b;

    if-eqz p1, :cond_6

    .line 4
    iget-object p1, p1, Ln3/i/a/b/q$b;->l:Ln3/i/a/b/v;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Ln3/i/a/b/v;->k:Z

    .line 6
    iget-object v2, p1, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v2

    .line 7
    iget-object v3, p1, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v4, p1, Ln3/i/a/b/v;->d:I

    iget v6, p1, Ln3/i/a/b/v;->h:F

    iget v7, p1, Ln3/i/a/b/v;->g:F

    iget-object v8, p1, Ln3/i/a/b/v;->l:[F

    move v5, v2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->j1(IFFF[F)V

    .line 8
    iget v3, p1, Ln3/i/a/b/v;->i:F

    iget-object v4, p1, Ln3/i/a/b/v;->l:[F

    aget v5, v4, v0

    iget v5, p1, Ln3/i/a/b/v;->j:F

    const/4 v6, 0x1

    aget v7, v4, v6

    const/4 v7, 0x0

    cmpl-float v8, v3, v7

    if-eqz v8, :cond_1

    mul-float/2addr p2, v3

    .line 9
    aget v1, v4, v0

    div-float/2addr p2, v1

    goto :goto_0

    :cond_1
    mul-float/2addr v1, v5

    .line 10
    aget p2, v4, v6

    div-float p2, v1, p2

    .line 11
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    const/high16 v1, 0x40400000    # 3.0f

    div-float v1, p2, v1

    add-float/2addr v2, v1

    :cond_2
    cmpl-float v1, v2, v7

    if-eqz v1, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v3, v0

    .line 12
    :goto_1
    iget v4, p1, Ln3/i/a/b/v;->c:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    move v0, v6

    :cond_4
    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 13
    iget-object p1, p1, Ln3/i/a/b/v;->o:Landroidx/constraintlayout/motion/widget/MotionLayout;

    float-to-double v2, v2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v2, v5

    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    move v7, v1

    :goto_2
    invoke-virtual {p1, v4, v7, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->r1(IFF)V

    :cond_6
    return-void
.end method

.method public z0(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Z

    const/4 p6, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 2
    :cond_0
    aget p1, p7, p6

    add-int/2addr p1, p4

    aput p1, p7, p6

    const/4 p1, 0x1

    .line 3
    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    .line 4
    :cond_1
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Z

    return-void
.end method
