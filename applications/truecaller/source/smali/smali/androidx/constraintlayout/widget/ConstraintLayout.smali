.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$a;,
        Landroidx/constraintlayout/widget/ConstraintLayout$b;
    }
.end annotation


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/i/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ln3/i/b/h/e;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:Ln3/i/c/d;

.field public k:Ln3/i/c/c;

.field public l:I

.field public m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public o:I

.field public p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ln3/i/b/h/d;",
            ">;"
        }
    .end annotation
.end field

.field public q:Landroidx/constraintlayout/widget/ConstraintLayout$b;

.field public r:I

.field public s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ln3/i/b/h/e;

    invoke-direct {p1}, Ln3/i/b/h/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 v0, 0x101

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ln3/i/c/d;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln3/i/c/c;

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 15
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 16
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 17
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroid/util/SparseArray;

    .line 18
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 19
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 20
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 21
    invoke-virtual {p0, v0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->S0(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 25
    new-instance p1, Ln3/i/b/h/e;

    invoke-direct {p1}, Ln3/i/b/h/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 27
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v0, 0x7fffffff

    .line 28
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 29
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 v0, 0x101

    .line 31
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ln3/i/c/d;

    .line 33
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln3/i/c/c;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 36
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 37
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 40
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 41
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 42
    invoke-virtual {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->S0(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 46
    new-instance p1, Ln3/i/b/h/e;

    invoke-direct {p1}, Ln3/i/b/h/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 48
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v0, 0x7fffffff

    .line 49
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 50
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 v0, 0x101

    .line 52
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ln3/i/c/d;

    .line 54
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln3/i/c/c;

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 57
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 58
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 61
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 62
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 63
    invoke-virtual {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->S0(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 67
    new-instance p1, Ln3/i/b/h/e;

    invoke-direct {p1}, Ln3/i/b/h/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 69
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v0, 0x7fffffff

    .line 70
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 71
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 v0, 0x101

    .line 73
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ln3/i/c/d;

    .line 75
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln3/i/c/c;

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 78
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 79
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 82
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 83
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 84
    invoke-virtual {p0, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->S0(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getPaddingWidth()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    if-lez v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method


# virtual methods
.method public N0(ZLandroid/view/View;Ln3/i/b/h/d;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Ln3/i/b/h/d;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$a;",
            "Landroid/util/SparseArray<",
            "Ln3/i/b/h/d;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    sget-object v5, Ln3/i/b/h/d$a;->d:Ln3/i/b/h/d$a;

    sget-object v6, Ln3/i/b/h/d$a;->b:Ln3/i/b/h/d$a;

    sget-object v7, Ln3/i/b/h/d$a;->a:Ln3/i/b/h/d$a;

    sget-object v8, Ln3/i/b/h/d$a;->c:Ln3/i/b/h/d$a;

    sget-object v9, Ln3/i/b/h/c$a;->d:Ln3/i/b/h/c$a;

    sget-object v10, Ln3/i/b/h/c$a;->b:Ln3/i/b/h/c$a;

    sget-object v11, Ln3/i/b/h/c$a;->e:Ln3/i/b/h/c$a;

    sget-object v12, Ln3/i/b/h/c$a;->c:Ln3/i/b/h/c$a;

    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a()V

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v13

    .line 3
    iput v13, v2, Ln3/i/b/h/d;->j0:I

    .line 4
    iget-boolean v13, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a0:Z

    const/4 v14, 0x1

    if-eqz v13, :cond_0

    .line 5
    iput-boolean v14, v2, Ln3/i/b/h/d;->B:Z

    const/16 v13, 0x8

    .line 6
    iput v13, v2, Ln3/i/b/h/d;->j0:I

    .line 7
    :cond_0
    iput-object v1, v2, Ln3/i/b/h/d;->h0:Ljava/lang/Object;

    .line 8
    instance-of v13, v1, Ln3/i/c/b;

    if-eqz v13, :cond_1

    .line 9
    check-cast v1, Ln3/i/c/b;

    .line 10
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    .line 11
    iget-boolean v13, v13, Ln3/i/b/h/e;->L0:Z

    .line 12
    invoke-virtual {v1, v2, v13}, Ln3/i/c/b;->o(Ln3/i/b/h/d;Z)V

    .line 13
    :cond_1
    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    const/4 v13, -0x1

    if-eqz v1, :cond_4

    .line 14
    move-object v1, v2

    check-cast v1, Ln3/i/b/h/g;

    .line 15
    iget v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i0:I

    .line 16
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j0:I

    .line 17
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k0:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v6, v3, v5

    if-eqz v6, :cond_2

    if-lez v6, :cond_28

    .line 18
    iput v3, v1, Ln3/i/b/h/g;->H0:F

    .line 19
    iput v13, v1, Ln3/i/b/h/g;->I0:I

    .line 20
    iput v13, v1, Ln3/i/b/h/g;->J0:I

    goto/16 :goto_f

    :cond_2
    if-eq v2, v13, :cond_3

    if-le v2, v13, :cond_28

    .line 21
    iput v5, v1, Ln3/i/b/h/g;->H0:F

    .line 22
    iput v2, v1, Ln3/i/b/h/g;->I0:I

    .line 23
    iput v13, v1, Ln3/i/b/h/g;->J0:I

    goto/16 :goto_f

    :cond_3
    if-eq v4, v13, :cond_28

    if-le v4, v13, :cond_28

    .line 24
    iput v5, v1, Ln3/i/b/h/g;->H0:F

    .line 25
    iput v13, v1, Ln3/i/b/h/g;->I0:I

    .line 26
    iput v4, v1, Ln3/i/b/h/g;->J0:I

    goto/16 :goto_f

    .line 27
    :cond_4
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b0:I

    .line 28
    iget v15, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c0:I

    .line 29
    iget v14, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d0:I

    .line 30
    iget v13, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e0:I

    move-object/from16 v16, v6

    .line 31
    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f0:I

    move-object/from16 v17, v7

    .line 32
    iget v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g0:I

    move-object/from16 v18, v5

    .line 33
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h0:F

    move-object/from16 v19, v8

    .line 34
    iget v8, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    move/from16 v20, v5

    const/4 v5, -0x1

    if-eq v8, v5, :cond_5

    .line 35
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/b/h/d;

    if-eqz v1, :cond_11

    .line 36
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->o:F

    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->n:I

    .line 37
    sget-object v6, Ln3/i/b/h/c$a;->g:Ln3/i/b/h/c$a;

    .line 38
    invoke-virtual {v2, v6}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v7

    .line 39
    invoke-virtual {v1, v6}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 40
    invoke-virtual {v7, v1, v5, v6, v8}, Ln3/i/b/h/c;->b(Ln3/i/b/h/c;IIZ)Z

    .line 41
    iput v4, v2, Ln3/i/b/h/d;->z:F

    goto/16 :goto_4

    :cond_5
    const/4 v8, 0x1

    if-eq v1, v5, :cond_6

    .line 42
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/b/h/d;

    if-eqz v1, :cond_7

    .line 43
    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 44
    invoke-virtual {v2, v10}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v5

    .line 45
    invoke-virtual {v1, v10}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    .line 46
    invoke-virtual {v5, v1, v15, v6, v8}, Ln3/i/b/h/c;->b(Ln3/i/b/h/c;IIZ)Z

    goto :goto_0

    :cond_6
    move v1, v5

    if-eq v15, v1, :cond_8

    .line 47
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/b/h/d;

    if-eqz v1, :cond_7

    .line 48
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 49
    invoke-virtual {v2, v10}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v15

    .line 50
    invoke-virtual {v1, v9}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    .line 51
    invoke-virtual {v15, v1, v5, v6, v8}, Ln3/i/b/h/c;->b(Ln3/i/b/h/c;IIZ)Z

    :cond_7
    :goto_0
    const/4 v1, -0x1

    :cond_8
    if-eq v14, v1, :cond_9

    .line 52
    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/i/b/h/d;

    if-eqz v5, :cond_a

    .line 53
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 54
    invoke-virtual {v2, v9}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v8

    .line 55
    invoke-virtual {v5, v10}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v5

    const/4 v14, 0x1

    .line 56
    invoke-virtual {v8, v5, v6, v7, v14}, Ln3/i/b/h/c;->b(Ln3/i/b/h/c;IIZ)Z

    goto :goto_1

    :cond_9
    const/4 v14, 0x1

    if-eq v13, v1, :cond_a

    .line 57
    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/b/h/d;

    if-eqz v1, :cond_a

    .line 58
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 59
    invoke-virtual {v2, v9}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v6

    .line 60
    invoke-virtual {v1, v9}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    .line 61
    invoke-virtual {v6, v1, v5, v7, v14}, Ln3/i/b/h/c;->b(Ln3/i/b/h/c;IIZ)Z

    .line 62
    :cond_a
    :goto_1
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_b

    .line 63
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/b/h/d;

    if-eqz v1, :cond_c

    .line 64
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    .line 65
    invoke-virtual {v2, v12}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v7

    .line 66
    invoke-virtual {v1, v12}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    const/4 v8, 0x1

    .line 67
    invoke-virtual {v7, v1, v5, v6, v8}, Ln3/i/b/h/c;->b(Ln3/i/b/h/c;IIZ)Z

    goto :goto_2

    .line 68
    :cond_b
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_c

    .line 69
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/b/h/d;

    if-eqz v1, :cond_c

    .line 70
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    .line 71
    invoke-virtual {v2, v12}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v7

    .line 72
    invoke-virtual {v1, v11}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    const/4 v8, 0x1

    .line 73
    invoke-virtual {v7, v1, v5, v6, v8}, Ln3/i/b/h/c;->b(Ln3/i/b/h/c;IIZ)Z

    .line 74
    :cond_c
    :goto_2
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_d

    .line 75
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/b/h/d;

    if-eqz v1, :cond_e

    .line 76
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    .line 77
    invoke-virtual {v2, v11}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v7

    .line 78
    invoke-virtual {v1, v12}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    const/4 v8, 0x1

    .line 79
    invoke-virtual {v7, v1, v5, v6, v8}, Ln3/i/b/h/c;->b(Ln3/i/b/h/c;IIZ)Z

    goto :goto_3

    .line 80
    :cond_d
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_e

    .line 81
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/b/h/d;

    if-eqz v1, :cond_e

    .line 82
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    .line 83
    invoke-virtual {v2, v11}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v7

    .line 84
    invoke-virtual {v1, v11}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    const/4 v8, 0x1

    .line 85
    invoke-virtual {v7, v1, v5, v6, v8}, Ln3/i/b/h/c;->b(Ln3/i/b/h/c;IIZ)Z

    .line 86
    :cond_e
    :goto_3
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_f

    .line 87
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 88
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/i/b/h/d;

    if-eqz v4, :cond_f

    if-eqz v1, :cond_f

    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v5, :cond_f

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v5, 0x1

    .line 91
    iput-boolean v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    .line 92
    iput-boolean v5, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    .line 93
    sget-object v6, Ln3/i/b/h/c$a;->f:Ln3/i/b/h/c$a;

    invoke-virtual {v2, v6}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v7

    .line 94
    invoke-virtual {v4, v6}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 95
    invoke-virtual {v7, v4, v6, v8, v5}, Ln3/i/b/h/c;->b(Ln3/i/b/h/c;IIZ)Z

    .line 96
    iput-boolean v5, v2, Ln3/i/b/h/d;->A:Z

    .line 97
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    .line 98
    iput-boolean v5, v1, Ln3/i/b/h/d;->A:Z

    .line 99
    invoke-virtual {v2, v12}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    invoke-virtual {v1}, Ln3/i/b/h/c;->k()V

    .line 100
    invoke-virtual {v2, v11}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    invoke-virtual {v1}, Ln3/i/b/h/c;->k()V

    :cond_f
    const/4 v1, 0x0

    cmpl-float v4, v20, v1

    if-ltz v4, :cond_10

    move/from16 v4, v20

    .line 101
    iput v4, v2, Ln3/i/b/h/d;->f0:F

    .line 102
    :cond_10
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    cmpl-float v5, v4, v1

    if-ltz v5, :cond_11

    .line 103
    iput v4, v2, Ln3/i/b/h/d;->g0:F

    :cond_11
    :goto_4
    if-eqz p1, :cond_13

    .line 104
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_12

    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    if-eq v5, v4, :cond_13

    .line 105
    :cond_12
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    .line 106
    iput v1, v2, Ln3/i/b/h/d;->W:I

    .line 107
    iput v4, v2, Ln3/i/b/h/d;->X:I

    .line 108
    :cond_13
    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:Z

    const/4 v4, -0x2

    if-nez v1, :cond_16

    .line 109
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_15

    .line 110
    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:Z

    if-eqz v1, :cond_14

    .line 111
    iget-object v1, v2, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v5, 0x0

    aput-object v19, v1, v5

    goto :goto_5

    :cond_14
    const/4 v5, 0x0

    .line 112
    iget-object v1, v2, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v18, v1, v5

    .line 113
    :goto_5
    invoke-virtual {v2, v10}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v1, Ln3/i/b/h/c;->g:I

    .line 114
    invoke-virtual {v2, v9}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v1, Ln3/i/b/h/c;->g:I

    goto :goto_6

    :cond_15
    const/4 v5, 0x0

    .line 115
    iget-object v1, v2, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v19, v1, v5

    .line 116
    invoke-virtual {v2, v5}, Ln3/i/b/h/d;->S(I)V

    goto :goto_6

    :cond_16
    const/4 v5, 0x0

    .line 117
    iget-object v1, v2, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v17, v1, v5

    .line 118
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v2, v1}, Ln3/i/b/h/d;->S(I)V

    .line 119
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v1, v4, :cond_17

    .line 120
    iget-object v1, v2, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v16, v1, v5

    .line 121
    :cond_17
    :goto_6
    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:Z

    if-nez v1, :cond_1a

    .line 122
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_19

    .line 123
    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->T:Z

    if-eqz v1, :cond_18

    .line 124
    iget-object v1, v2, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v6, 0x1

    aput-object v19, v1, v6

    goto :goto_7

    :cond_18
    const/4 v6, 0x1

    .line 125
    iget-object v1, v2, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v18, v1, v6

    .line 126
    :goto_7
    invoke-virtual {v2, v12}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v1, Ln3/i/b/h/c;->g:I

    .line 127
    invoke-virtual {v2, v11}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v1

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v4, v1, Ln3/i/b/h/c;->g:I

    goto :goto_8

    :cond_19
    const/4 v6, 0x1

    .line 128
    iget-object v1, v2, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v19, v1, v6

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v2, v1}, Ln3/i/b/h/d;->N(I)V

    goto :goto_8

    :cond_1a
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 130
    iget-object v1, v2, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v17, v1, v6

    .line 131
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v2, v1}, Ln3/i/b/h/d;->N(I)V

    .line 132
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v1, v4, :cond_1b

    .line 133
    iget-object v1, v2, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v16, v1, v6

    .line 134
    :cond_1b
    :goto_8
    iget-object v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1c

    goto/16 :goto_c

    .line 136
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x2c

    .line 137
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_1f

    add-int/lit8 v7, v4, -0x1

    if-ge v6, v7, :cond_1f

    const/4 v7, 0x0

    .line 138
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v7, "W"

    .line 139
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    const/4 v7, 0x1

    const/4 v13, 0x0

    goto :goto_9

    :cond_1d
    const-string v7, "H"

    .line 140
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v7, 0x1

    const/4 v13, 0x1

    goto :goto_9

    :cond_1e
    move v13, v5

    const/4 v7, 0x1

    :goto_9
    add-int/2addr v6, v7

    goto :goto_a

    :cond_1f
    const/4 v7, 0x1

    move v13, v5

    const/4 v6, 0x0

    :goto_a
    const/16 v5, 0x3a

    .line 141
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_21

    sub-int/2addr v4, v7

    if-ge v5, v4, :cond_21

    .line 142
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v5, v7

    .line 143
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_22

    .line 145
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 146
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-lez v6, :cond_22

    cmpl-float v6, v1, v5

    if-lez v6, :cond_22

    const/4 v5, 0x1

    if-ne v13, v5, :cond_20

    div-float/2addr v1, v4

    .line 147
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_b

    :cond_20
    div-float/2addr v4, v1

    .line 148
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 149
    :cond_21
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_22

    .line 151
    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    :cond_22
    const/4 v1, 0x0

    :goto_b
    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_24

    .line 152
    iput v1, v2, Ln3/i/b/h/d;->U:F

    .line 153
    iput v13, v2, Ln3/i/b/h/d;->V:I

    goto :goto_d

    :cond_23
    :goto_c
    const/4 v4, 0x0

    .line 154
    iput v4, v2, Ln3/i/b/h/d;->U:F

    .line 155
    :cond_24
    :goto_d
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->D:F

    .line 156
    iget-object v4, v2, Ln3/i/b/h/d;->A0:[F

    const/4 v6, 0x0

    aput v1, v4, v6

    .line 157
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->E:F

    const/4 v5, 0x1

    .line 158
    aput v1, v4, v5

    .line 159
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->F:I

    .line 160
    iput v1, v2, Ln3/i/b/h/d;->w0:I

    .line 161
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:I

    .line 162
    iput v1, v2, Ln3/i/b/h/d;->x0:I

    .line 163
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:I

    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->J:I

    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:I

    iget v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->N:F

    .line 164
    iput v1, v2, Ln3/i/b/h/d;->l:I

    .line 165
    iput v4, v2, Ln3/i/b/h/d;->o:I

    const v4, 0x7fffffff

    if-ne v5, v4, :cond_25

    move v5, v6

    .line 166
    :cond_25
    iput v5, v2, Ln3/i/b/h/d;->p:I

    .line 167
    iput v7, v2, Ln3/i/b/h/d;->q:F

    const/4 v5, 0x0

    cmpl-float v8, v7, v5

    const/4 v5, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    if-lez v8, :cond_26

    cmpg-float v7, v7, v9

    if-gez v7, :cond_26

    if-nez v1, :cond_26

    .line 168
    iput v5, v2, Ln3/i/b/h/d;->l:I

    .line 169
    :cond_26
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:I

    iget v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->K:I

    iget v8, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:I

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->O:F

    .line 170
    iput v1, v2, Ln3/i/b/h/d;->m:I

    .line 171
    iput v7, v2, Ln3/i/b/h/d;->r:I

    if-ne v8, v4, :cond_27

    goto :goto_e

    :cond_27
    move v6, v8

    .line 172
    :goto_e
    iput v6, v2, Ln3/i/b/h/d;->s:I

    .line 173
    iput v3, v2, Ln3/i/b/h/d;->t:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_28

    cmpg-float v3, v3, v9

    if-gez v3, :cond_28

    if-nez v1, :cond_28

    .line 174
    iput v5, v2, Ln3/i/b/h/d;->m:I

    :cond_28
    :goto_f
    return-void
.end method

.method public O0()Landroidx/constraintlayout/widget/ConstraintLayout$a;
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    return-object v0
.end method

.method public P0(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    check-cast p2, Ljava/lang/String;

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Q0(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final R0(Landroid/view/View;)Ln3/i/b/h/d;
    .locals 0

    if-ne p1, p0, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    :goto_0
    return-object p1
.end method

.method public final S0(Landroid/util/AttributeSet;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    .line 2
    iput-object p0, v0, Ln3/i/b/h/d;->h0:Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v0, v1}, Ln3/i/b/h/e;->f0(Ln3/i/b/h/m/b$b;)V

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ln3/i/c/d;

    if-eqz p1, :cond_8

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    if-ge v1, p2, :cond_7

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 9
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v2, v3, :cond_0

    .line 10
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    goto :goto_2

    .line 11
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v2, v3, :cond_1

    .line 12
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    goto :goto_2

    .line 13
    :cond_1
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v2, v3, :cond_2

    .line 14
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    goto :goto_2

    .line 15
    :cond_2
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v2, v3, :cond_3

    .line 16
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    goto :goto_2

    .line 17
    :cond_3
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v2, v3, :cond_4

    .line 18
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    goto :goto_2

    .line 19
    :cond_4
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layoutDescription:I

    if-ne v2, v3, :cond_5

    .line 20
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_6

    .line 21
    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->V0(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 22
    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln3/i/c/c;

    goto :goto_2

    .line 23
    :cond_5
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v2, v3, :cond_6

    .line 24
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 25
    :try_start_1
    new-instance v3, Ln3/i/c/d;

    invoke-direct {v3}, Ln3/i/c/d;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ln3/i/c/d;

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ln3/i/c/d;->k(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 27
    :catch_1
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ln3/i/c/d;

    .line 28
    :goto_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {p1, p2}, Ln3/i/b/h/e;->g0(I)V

    return-void
.end method

.method public T0()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    if-ne v2, v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public U0(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v1, Ln3/i/c/c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1}, Ln3/i/c/c;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln3/i/c/c;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln3/i/c/c;

    goto :goto_0

    .line 3
    :cond_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln3/i/c/c;

    :goto_0
    return-void
.end method

.method public V0(I)V
    .locals 2

    .line 1
    new-instance v0, Ln3/i/c/c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Ln3/i/c/c;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln3/i/c/c;

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b1(IIIIZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 2
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    const/4 v0, 0x0

    .line 3
    invoke-static {p3, p1, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    .line 4
    invoke-static {p4, p2, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    .line 5
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 6
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_0

    or-int/2addr p1, p3

    :cond_0
    if-eqz p6, :cond_1

    or-int/2addr p2, p3

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 8
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 9
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    return-void
.end method

.method public c1(Ln3/i/b/h/e;III)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    sget-object v3, Ln3/i/b/h/d$a;->a:Ln3/i/b/h/d$a;

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 2
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 3
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 4
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int v11, v8, v10

    .line 7
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v12

    .line 8
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 9
    iput v8, v13, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    .line 10
    iput v10, v13, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:I

    .line 11
    iput v12, v13, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    .line 12
    iput v11, v13, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    move/from16 v10, p3

    .line 13
    iput v10, v13, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    move/from16 v10, p4

    .line 14
    iput v10, v13, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-gtz v10, :cond_1

    if-lez v13, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->T0()Z

    move-result v14

    if-eqz v14, :cond_2

    move v10, v13

    :cond_2
    :goto_1
    sub-int/2addr v5, v12

    sub-int/2addr v7, v11

    .line 19
    sget-object v11, Ln3/i/b/h/d$a;->b:Ln3/i/b/h/d$a;

    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v13, v12, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 20
    iget v12, v12, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/high16 v15, -0x80000000

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v4, v15, :cond_6

    if-eqz v4, :cond_4

    if-eq v4, v9, :cond_3

    move-object v9, v3

    const/4 v15, 0x0

    goto :goto_2

    .line 22
    :cond_3
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v9, v12

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v17, v3

    move v3, v15

    move v15, v9

    move-object/from16 v9, v17

    goto :goto_5

    :cond_4
    if-nez v14, :cond_5

    .line 23
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    const/4 v15, 0x0

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    move-object v9, v11

    :goto_2
    move-object/from16 v17, v3

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    if-nez v14, :cond_7

    .line 24
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_3

    :cond_7
    move v9, v5

    :goto_3
    move-object/from16 v17, v3

    move v15, v9

    move-object v9, v11

    :goto_4
    const/high16 v3, -0x80000000

    :goto_5
    if-eq v6, v3, :cond_b

    if-eqz v6, :cond_9

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v6, v3, :cond_8

    move-object/from16 v3, v17

    const/4 v14, 0x0

    goto :goto_6

    .line 25
    :cond_8
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v3, v13

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v14, v3

    move-object/from16 p4, v11

    move-object/from16 v3, v17

    goto :goto_8

    :cond_9
    if-nez v14, :cond_a

    .line 26
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const/4 v14, 0x0

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    move-object/from16 p4, v11

    move-object/from16 v3, p4

    move/from16 v14, v16

    goto :goto_8

    :cond_a
    const/4 v14, 0x0

    move-object v3, v11

    :goto_6
    move-object/from16 p4, v11

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    if-nez v14, :cond_c

    .line 27
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_7

    :cond_c
    move v14, v7

    :goto_7
    move-object/from16 p4, v11

    move-object/from16 v3, p4

    .line 28
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ln3/i/b/h/d;->w()I

    move-result v11

    move/from16 v18, v7

    const/4 v7, 0x1

    if-ne v15, v11, :cond_d

    invoke-virtual/range {p1 .. p1}, Ln3/i/b/h/d;->q()I

    move-result v11

    if-eq v14, v11, :cond_e

    .line 29
    :cond_d
    iget-object v11, v1, Ln3/i/b/h/e;->J0:Ln3/i/b/h/m/e;

    .line 30
    iput-boolean v7, v11, Ln3/i/b/h/m/e;->c:Z

    :cond_e
    const/4 v11, 0x0

    .line 31
    iput v11, v1, Ln3/i/b/h/d;->W:I

    .line 32
    iput v11, v1, Ln3/i/b/h/d;->X:I

    .line 33
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v7, v12

    move/from16 v20, v5

    .line 34
    iget-object v5, v1, Ln3/i/b/h/d;->y:[I

    aput v7, v5, v11

    .line 35
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v7, v13

    const/16 v19, 0x1

    .line 36
    aput v7, v5, v19

    .line 37
    invoke-virtual {v1, v11}, Ln3/i/b/h/d;->Q(I)V

    .line 38
    invoke-virtual {v1, v11}, Ln3/i/b/h/d;->P(I)V

    .line 39
    iget-object v5, v1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v9, v5, v11

    .line 40
    invoke-virtual {v1, v15}, Ln3/i/b/h/d;->S(I)V

    .line 41
    iget-object v5, v1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v3, v5, v19

    .line 42
    invoke-virtual {v1, v14}, Ln3/i/b/h/d;->N(I)V

    .line 43
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    sub-int/2addr v3, v12

    invoke-virtual {v1, v3}, Ln3/i/b/h/d;->Q(I)V

    .line 44
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    sub-int/2addr v3, v13

    invoke-virtual {v1, v3}, Ln3/i/b/h/d;->P(I)V

    .line 45
    iput v10, v1, Ln3/i/b/h/e;->N0:I

    .line 46
    iput v8, v1, Ln3/i/b/h/e;->O0:I

    .line 47
    iget-object v3, v1, Ln3/i/b/h/e;->I0:Ln3/i/b/h/m/b;

    .line 48
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v5, Ln3/i/b/h/c$a;->e:Ln3/i/b/h/c$a;

    sget-object v7, Ln3/i/b/h/c$a;->d:Ln3/i/b/h/c$a;

    sget-object v8, Ln3/i/b/h/d$a;->c:Ln3/i/b/h/d$a;

    iget-object v9, v1, Ln3/i/b/h/e;->K0:Ln3/i/b/h/m/b$b;

    .line 50
    iget-object v10, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 51
    invoke-virtual/range {p1 .. p1}, Ln3/i/b/h/d;->w()I

    move-result v11

    .line 52
    invoke-virtual/range {p1 .. p1}, Ln3/i/b/h/d;->q()I

    move-result v12

    const/16 v13, 0x80

    .line 53
    invoke-static {v2, v13}, Ln3/i/b/h/j;->b(II)Z

    move-result v13

    const/16 v14, 0x40

    if-nez v13, :cond_10

    .line 54
    invoke-static {v2, v14}, Ln3/i/b/h/j;->b(II)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v2, 0x1

    :goto_a
    if-eqz v2, :cond_19

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v10, :cond_19

    .line 55
    iget-object v15, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ln3/i/b/h/d;

    .line 56
    invoke-virtual {v15}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v0

    move/from16 v22, v2

    if-ne v0, v8, :cond_11

    const/4 v0, 0x1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    .line 57
    :goto_c
    invoke-virtual {v15}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v2

    if-ne v2, v8, :cond_12

    const/4 v2, 0x1

    goto :goto_d

    :cond_12
    const/4 v2, 0x0

    :goto_d
    if-eqz v0, :cond_13

    if-eqz v2, :cond_13

    .line 58
    iget v0, v15, Ln3/i/b/h/d;->U:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_e

    :cond_13
    const/4 v0, 0x0

    .line 59
    :goto_e
    invoke-virtual {v15}, Ln3/i/b/h/d;->B()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    goto :goto_f

    .line 60
    :cond_14
    invoke-virtual {v15}, Ln3/i/b/h/d;->C()Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v0, :cond_15

    goto :goto_f

    .line 61
    :cond_15
    instance-of v0, v15, Ln3/i/b/h/k;

    if-eqz v0, :cond_16

    goto :goto_f

    .line 62
    :cond_16
    invoke-virtual {v15}, Ln3/i/b/h/d;->B()Z

    move-result v0

    if-nez v0, :cond_18

    .line 63
    invoke-virtual {v15}, Ln3/i/b/h/d;->C()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_f

    :cond_17
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v22

    goto :goto_b

    :cond_18
    :goto_f
    const/high16 v0, 0x40000000    # 2.0f

    const/16 v22, 0x0

    goto :goto_10

    :cond_19
    move/from16 v22, v2

    const/high16 v0, 0x40000000    # 2.0f

    :goto_10
    if-ne v4, v0, :cond_1a

    if-eq v6, v0, :cond_1b

    :cond_1a
    if-eqz v13, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    goto :goto_11

    :cond_1c
    const/4 v0, 0x0

    :goto_11
    and-int v0, v22, v0

    if-eqz v0, :cond_3c

    .line 64
    iget-object v14, v1, Ln3/i/b/h/d;->y:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move/from16 v15, v20

    .line 65
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 66
    iget-object v15, v1, Ln3/i/b/h/d;->y:[I

    const/16 v19, 0x1

    aget v15, v15, v19

    move/from16 v2, v18

    .line 67
    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v4, v15, :cond_1e

    .line 68
    invoke-virtual/range {p1 .. p1}, Ln3/i/b/h/d;->w()I

    move-result v15

    if-eq v15, v14, :cond_1d

    .line 69
    invoke-virtual {v1, v14}, Ln3/i/b/h/d;->S(I)V

    .line 70
    invoke-virtual/range {p1 .. p1}, Ln3/i/b/h/e;->c0()V

    :cond_1d
    const/high16 v14, 0x40000000    # 2.0f

    goto :goto_12

    :cond_1e
    move v14, v15

    :goto_12
    if-ne v6, v14, :cond_1f

    .line 71
    invoke-virtual/range {p1 .. p1}, Ln3/i/b/h/d;->q()I

    move-result v15

    if-eq v15, v2, :cond_1f

    .line 72
    invoke-virtual {v1, v2}, Ln3/i/b/h/d;->N(I)V

    .line 73
    invoke-virtual/range {p1 .. p1}, Ln3/i/b/h/e;->c0()V

    :cond_1f
    if-ne v4, v14, :cond_35

    if-ne v6, v14, :cond_35

    .line 74
    iget-object v2, v1, Ln3/i/b/h/e;->J0:Ln3/i/b/h/m/e;

    .line 75
    sget-object v14, Ln3/i/b/h/d$a;->d:Ln3/i/b/h/d$a;

    const/4 v15, 0x1

    and-int/2addr v13, v15

    .line 76
    iget-boolean v15, v2, Ln3/i/b/h/m/e;->b:Z

    if-nez v15, :cond_21

    iget-boolean v15, v2, Ln3/i/b/h/m/e;->c:Z

    if-eqz v15, :cond_20

    goto :goto_13

    :cond_20
    move/from16 v18, v0

    const/4 v15, 0x0

    goto :goto_15

    .line 77
    :cond_21
    :goto_13
    iget-object v15, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v15, v15, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_14
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_22

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v22, v15

    move-object/from16 v15, v18

    check-cast v15, Ln3/i/b/h/d;

    .line 78
    invoke-virtual {v15}, Ln3/i/b/h/d;->m()V

    move/from16 v18, v0

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, v15, Ln3/i/b/h/d;->a:Z

    .line 80
    iget-object v0, v15, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    invoke-virtual {v0}, Ln3/i/b/h/m/k;->n()V

    .line 81
    iget-object v0, v15, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    invoke-virtual {v0}, Ln3/i/b/h/m/m;->m()V

    move/from16 v0, v18

    move-object/from16 v15, v22

    goto :goto_14

    :cond_22
    move/from16 v18, v0

    .line 82
    iget-object v0, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    invoke-virtual {v0}, Ln3/i/b/h/d;->m()V

    .line 83
    iget-object v0, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    const/4 v15, 0x0

    iput-boolean v15, v0, Ln3/i/b/h/d;->a:Z

    .line 84
    iget-object v0, v0, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    invoke-virtual {v0}, Ln3/i/b/h/m/k;->n()V

    .line 85
    iget-object v0, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v0, v0, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    invoke-virtual {v0}, Ln3/i/b/h/m/m;->m()V

    .line 86
    iput-boolean v15, v2, Ln3/i/b/h/m/e;->c:Z

    .line 87
    :goto_15
    iget-object v0, v2, Ln3/i/b/h/m/e;->d:Ln3/i/b/h/e;

    invoke-virtual {v2, v0}, Ln3/i/b/h/m/e;->b(Ln3/i/b/h/e;)Z

    .line 88
    iget-object v0, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    .line 89
    iput v15, v0, Ln3/i/b/h/d;->W:I

    .line 90
    iput v15, v0, Ln3/i/b/h/d;->X:I

    .line 91
    invoke-virtual {v0, v15}, Ln3/i/b/h/d;->p(I)Ln3/i/b/h/d$a;

    move-result-object v0

    .line 92
    iget-object v15, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    move-object/from16 v22, v5

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Ln3/i/b/h/d;->p(I)Ln3/i/b/h/d$a;

    move-result-object v15

    .line 93
    iget-boolean v5, v2, Ln3/i/b/h/m/e;->b:Z

    if-eqz v5, :cond_23

    .line 94
    invoke-virtual {v2}, Ln3/i/b/h/m/e;->c()V

    .line 95
    :cond_23
    iget-object v5, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    invoke-virtual {v5}, Ln3/i/b/h/d;->x()I

    move-result v5

    move-object/from16 v23, v7

    .line 96
    iget-object v7, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    invoke-virtual {v7}, Ln3/i/b/h/d;->y()I

    move-result v7

    move-object/from16 v24, v9

    .line 97
    iget-object v9, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v9, v9, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v9, v9, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-virtual {v9, v5}, Ln3/i/b/h/m/f;->c(I)V

    .line 98
    iget-object v9, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v9, v9, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v9, v9, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-virtual {v9, v7}, Ln3/i/b/h/m/f;->c(I)V

    .line 99
    invoke-virtual {v2}, Ln3/i/b/h/m/e;->g()V

    move-object/from16 v9, p4

    if-eq v0, v9, :cond_25

    if-ne v15, v9, :cond_24

    goto :goto_16

    :cond_24
    move-object/from16 v26, v3

    move/from16 p4, v11

    move/from16 v25, v12

    goto/16 :goto_19

    :cond_25
    :goto_16
    move/from16 p4, v13

    if-eqz v13, :cond_27

    .line 100
    iget-object v13, v2, Ln3/i/b/h/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_26
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_27

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ln3/i/b/h/m/o;

    .line 101
    invoke-virtual/range {v25 .. v25}, Ln3/i/b/h/m/o;->k()Z

    move-result v25

    if-nez v25, :cond_26

    const/4 v13, 0x0

    goto :goto_17

    :cond_27
    move/from16 v13, p4

    :goto_17
    if-eqz v13, :cond_28

    if-ne v0, v9, :cond_28

    move/from16 p4, v11

    .line 102
    iget-object v11, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    move/from16 v25, v12

    .line 103
    iget-object v12, v11, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    move-object/from16 v26, v3

    const/4 v3, 0x0

    aput-object v17, v12, v3

    .line 104
    invoke-virtual {v2, v11, v3}, Ln3/i/b/h/m/e;->d(Ln3/i/b/h/e;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ln3/i/b/h/d;->S(I)V

    .line 105
    iget-object v3, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v11, v3, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v11, v11, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    invoke-virtual {v3}, Ln3/i/b/h/d;->w()I

    move-result v3

    invoke-virtual {v11, v3}, Ln3/i/b/h/m/g;->c(I)V

    goto :goto_18

    :cond_28
    move-object/from16 v26, v3

    move/from16 p4, v11

    move/from16 v25, v12

    :goto_18
    if-eqz v13, :cond_29

    if-ne v15, v9, :cond_29

    .line 106
    iget-object v3, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    .line 107
    iget-object v11, v3, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v12, 0x1

    aput-object v17, v11, v12

    .line 108
    invoke-virtual {v2, v3, v12}, Ln3/i/b/h/m/e;->d(Ln3/i/b/h/e;I)I

    move-result v11

    invoke-virtual {v3, v11}, Ln3/i/b/h/d;->N(I)V

    .line 109
    iget-object v3, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v11, v3, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v11, v11, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    invoke-virtual {v3}, Ln3/i/b/h/d;->q()I

    move-result v3

    invoke-virtual {v11, v3}, Ln3/i/b/h/m/g;->c(I)V

    .line 110
    :cond_29
    :goto_19
    iget-object v3, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v11, v3, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v12, 0x0

    aget-object v13, v11, v12

    move-object/from16 v27, v9

    move-object/from16 v9, v17

    if-eq v13, v9, :cond_2b

    aget-object v11, v11, v12

    if-ne v11, v14, :cond_2a

    goto :goto_1a

    :cond_2a
    const/4 v3, 0x0

    goto :goto_1b

    .line 111
    :cond_2b
    :goto_1a
    invoke-virtual {v3}, Ln3/i/b/h/d;->w()I

    move-result v3

    add-int/2addr v3, v5

    .line 112
    iget-object v11, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v11, v11, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v11, v11, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    invoke-virtual {v11, v3}, Ln3/i/b/h/m/f;->c(I)V

    .line 113
    iget-object v11, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v11, v11, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v11, v11, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    sub-int/2addr v3, v5

    invoke-virtual {v11, v3}, Ln3/i/b/h/m/g;->c(I)V

    .line 114
    invoke-virtual {v2}, Ln3/i/b/h/m/e;->g()V

    .line 115
    iget-object v3, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v5, v3, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v11, 0x1

    aget-object v12, v5, v11

    if-eq v12, v9, :cond_2c

    aget-object v5, v5, v11

    if-ne v5, v14, :cond_2d

    .line 116
    :cond_2c
    invoke-virtual {v3}, Ln3/i/b/h/d;->q()I

    move-result v3

    add-int/2addr v3, v7

    .line 117
    iget-object v5, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v5, v5, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v5, v5, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    invoke-virtual {v5, v3}, Ln3/i/b/h/m/f;->c(I)V

    .line 118
    iget-object v5, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v5, v5, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v5, v5, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    sub-int/2addr v3, v7

    invoke-virtual {v5, v3}, Ln3/i/b/h/m/g;->c(I)V

    .line 119
    :cond_2d
    invoke-virtual {v2}, Ln3/i/b/h/m/e;->g()V

    const/4 v3, 0x1

    .line 120
    :goto_1b
    iget-object v5, v2, Ln3/i/b/h/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/i/b/h/m/o;

    .line 121
    iget-object v9, v7, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v11, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    if-ne v9, v11, :cond_2e

    iget-boolean v9, v7, Ln3/i/b/h/m/o;->g:Z

    if-nez v9, :cond_2e

    goto :goto_1c

    .line 122
    :cond_2e
    invoke-virtual {v7}, Ln3/i/b/h/m/o;->e()V

    goto :goto_1c

    .line 123
    :cond_2f
    iget-object v5, v2, Ln3/i/b/h/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_30
    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/i/b/h/m/o;

    if-nez v3, :cond_31

    .line 124
    iget-object v9, v7, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v11, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    if-ne v9, v11, :cond_31

    goto :goto_1d

    .line 125
    :cond_31
    iget-object v9, v7, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-boolean v9, v9, Ln3/i/b/h/m/f;->j:Z

    if-nez v9, :cond_32

    goto :goto_1e

    .line 126
    :cond_32
    iget-object v9, v7, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    iget-boolean v9, v9, Ln3/i/b/h/m/f;->j:Z

    if-nez v9, :cond_33

    instance-of v9, v7, Ln3/i/b/h/m/i;

    if-nez v9, :cond_33

    goto :goto_1e

    .line 127
    :cond_33
    iget-object v9, v7, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    iget-boolean v9, v9, Ln3/i/b/h/m/f;->j:Z

    if-nez v9, :cond_30

    instance-of v9, v7, Ln3/i/b/h/m/c;

    if-nez v9, :cond_30

    instance-of v7, v7, Ln3/i/b/h/m/i;

    if-nez v7, :cond_30

    :goto_1e
    const/4 v3, 0x0

    goto :goto_1f

    :cond_34
    const/4 v3, 0x1

    .line 128
    :goto_1f
    iget-object v5, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    invoke-virtual {v5, v0}, Ln3/i/b/h/d;->O(Ln3/i/b/h/d$a;)V

    .line 129
    iget-object v0, v2, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    invoke-virtual {v0, v15}, Ln3/i/b/h/d;->R(Ln3/i/b/h/d$a;)V

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x2

    goto/16 :goto_23

    :cond_35
    move-object/from16 v27, p4

    move/from16 v18, v0

    move-object/from16 v26, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v7

    move-object/from16 v24, v9

    move/from16 p4, v11

    move/from16 v25, v12

    .line 130
    iget-object v0, v1, Ln3/i/b/h/e;->J0:Ln3/i/b/h/m/e;

    .line 131
    iget-boolean v2, v0, Ln3/i/b/h/m/e;->b:Z

    if-eqz v2, :cond_37

    .line 132
    iget-object v2, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v2, v2, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/d;

    .line 133
    invoke-virtual {v3}, Ln3/i/b/h/d;->m()V

    const/4 v5, 0x0

    .line 134
    iput-boolean v5, v3, Ln3/i/b/h/d;->a:Z

    .line 135
    iget-object v7, v3, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v9, v7, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    iput-boolean v5, v9, Ln3/i/b/h/m/f;->j:Z

    .line 136
    iput-boolean v5, v7, Ln3/i/b/h/m/o;->g:Z

    .line 137
    invoke-virtual {v7}, Ln3/i/b/h/m/k;->n()V

    .line 138
    iget-object v3, v3, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v7, v3, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    iput-boolean v5, v7, Ln3/i/b/h/m/f;->j:Z

    .line 139
    iput-boolean v5, v3, Ln3/i/b/h/m/o;->g:Z

    .line 140
    invoke-virtual {v3}, Ln3/i/b/h/m/m;->m()V

    goto :goto_20

    :cond_36
    const/4 v5, 0x0

    .line 141
    iget-object v2, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    invoke-virtual {v2}, Ln3/i/b/h/d;->m()V

    .line 142
    iget-object v2, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iput-boolean v5, v2, Ln3/i/b/h/d;->a:Z

    .line 143
    iget-object v2, v2, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v3, v2, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    iput-boolean v5, v3, Ln3/i/b/h/m/f;->j:Z

    .line 144
    iput-boolean v5, v2, Ln3/i/b/h/m/o;->g:Z

    .line 145
    invoke-virtual {v2}, Ln3/i/b/h/m/k;->n()V

    .line 146
    iget-object v2, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v2, v2, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v3, v2, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    iput-boolean v5, v3, Ln3/i/b/h/m/f;->j:Z

    .line 147
    iput-boolean v5, v2, Ln3/i/b/h/m/o;->g:Z

    .line 148
    invoke-virtual {v2}, Ln3/i/b/h/m/m;->m()V

    .line 149
    invoke-virtual {v0}, Ln3/i/b/h/m/e;->c()V

    goto :goto_21

    :cond_37
    const/4 v5, 0x0

    .line 150
    :goto_21
    iget-object v2, v0, Ln3/i/b/h/m/e;->d:Ln3/i/b/h/e;

    invoke-virtual {v0, v2}, Ln3/i/b/h/m/e;->b(Ln3/i/b/h/e;)Z

    .line 151
    iget-object v2, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    .line 152
    iput v5, v2, Ln3/i/b/h/d;->W:I

    .line 153
    iput v5, v2, Ln3/i/b/h/d;->X:I

    .line 154
    iget-object v2, v2, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v2, v2, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-virtual {v2, v5}, Ln3/i/b/h/m/f;->c(I)V

    .line 155
    iget-object v0, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v0, v0, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v0, v0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-virtual {v0, v5}, Ln3/i/b/h/m/f;->c(I)V

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v4, v0, :cond_38

    .line 156
    invoke-virtual {v1, v13, v5}, Ln3/i/b/h/e;->b0(ZI)Z

    move-result v2

    const/4 v3, 0x1

    and-int/lit8 v19, v2, 0x1

    move v2, v3

    move/from16 v5, v19

    goto :goto_22

    :cond_38
    const/4 v3, 0x1

    move v5, v3

    const/4 v2, 0x0

    :goto_22
    if-ne v6, v0, :cond_39

    .line 157
    invoke-virtual {v1, v13, v3}, Ln3/i/b/h/e;->b0(ZI)Z

    move-result v7

    and-int v3, v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_39
    move v3, v5

    :goto_23
    if-eqz v3, :cond_3d

    if-ne v4, v0, :cond_3a

    const/4 v4, 0x1

    goto :goto_24

    :cond_3a
    const/4 v4, 0x0

    :goto_24
    if-ne v6, v0, :cond_3b

    const/4 v0, 0x1

    goto :goto_25

    :cond_3b
    const/4 v0, 0x0

    .line 158
    :goto_25
    invoke-virtual {v1, v4, v0}, Ln3/i/b/h/e;->T(ZZ)V

    goto :goto_26

    :cond_3c
    move-object/from16 v27, p4

    move/from16 v18, v0

    move-object/from16 v26, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v7

    move-object/from16 v24, v9

    move/from16 p4, v11

    move/from16 v25, v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_3d
    :goto_26
    if-eqz v3, :cond_3e

    const/4 v0, 0x2

    if-eq v2, v0, :cond_6b

    .line 159
    :cond_3e
    iget v0, v1, Ln3/i/b/h/e;->T0:I

    if-lez v10, :cond_4d

    .line 160
    iget-object v2, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x40

    .line 161
    invoke-virtual {v1, v3}, Ln3/i/b/h/e;->e0(I)Z

    move-result v3

    .line 162
    iget-object v4, v1, Ln3/i/b/h/e;->K0:Ln3/i/b/h/m/b$b;

    const/4 v15, 0x0

    :goto_27
    if-ge v15, v2, :cond_4a

    .line 163
    iget-object v5, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/i/b/h/d;

    .line 164
    instance-of v6, v5, Ln3/i/b/h/g;

    if-eqz v6, :cond_3f

    goto :goto_28

    .line 165
    :cond_3f
    instance-of v6, v5, Ln3/i/b/h/a;

    if-eqz v6, :cond_40

    goto :goto_28

    .line 166
    :cond_40
    iget-boolean v6, v5, Ln3/i/b/h/d;->C:Z

    if-eqz v6, :cond_41

    goto :goto_28

    :cond_41
    if-eqz v3, :cond_42

    .line 167
    iget-object v6, v5, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    if-eqz v6, :cond_42

    iget-object v7, v5, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    if-eqz v7, :cond_42

    iget-object v6, v6, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    iget-boolean v6, v6, Ln3/i/b/h/m/f;->j:Z

    if-eqz v6, :cond_42

    iget-object v6, v7, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    iget-boolean v6, v6, Ln3/i/b/h/m/f;->j:Z

    if-eqz v6, :cond_42

    :goto_28
    const/4 v7, 0x0

    goto :goto_2c

    :cond_42
    const/4 v6, 0x0

    .line 168
    invoke-virtual {v5, v6}, Ln3/i/b/h/d;->p(I)Ln3/i/b/h/d$a;

    move-result-object v7

    const/4 v6, 0x1

    .line 169
    invoke-virtual {v5, v6}, Ln3/i/b/h/d;->p(I)Ln3/i/b/h/d$a;

    move-result-object v9

    if-ne v7, v8, :cond_43

    .line 170
    iget v11, v5, Ln3/i/b/h/d;->l:I

    if-eq v11, v6, :cond_43

    if-ne v9, v8, :cond_43

    iget v11, v5, Ln3/i/b/h/d;->m:I

    if-eq v11, v6, :cond_43

    move v11, v6

    goto :goto_29

    :cond_43
    const/4 v11, 0x0

    :goto_29
    if-nez v11, :cond_46

    .line 171
    invoke-virtual {v1, v6}, Ln3/i/b/h/e;->e0(I)Z

    move-result v12

    if-eqz v12, :cond_46

    instance-of v6, v5, Ln3/i/b/h/k;

    if-nez v6, :cond_46

    if-ne v7, v8, :cond_44

    .line 172
    iget v6, v5, Ln3/i/b/h/d;->l:I

    if-nez v6, :cond_44

    if-eq v9, v8, :cond_44

    .line 173
    invoke-virtual {v5}, Ln3/i/b/h/d;->B()Z

    move-result v6

    if-nez v6, :cond_44

    const/4 v11, 0x1

    :cond_44
    if-ne v9, v8, :cond_45

    .line 174
    iget v6, v5, Ln3/i/b/h/d;->m:I

    if-nez v6, :cond_45

    if-eq v7, v8, :cond_45

    .line 175
    invoke-virtual {v5}, Ln3/i/b/h/d;->B()Z

    move-result v6

    if-nez v6, :cond_45

    const/4 v11, 0x1

    :cond_45
    if-eq v7, v8, :cond_47

    if-ne v9, v8, :cond_46

    goto :goto_2a

    :cond_46
    const/4 v7, 0x0

    goto :goto_2b

    .line 176
    :cond_47
    :goto_2a
    iget v6, v5, Ln3/i/b/h/d;->U:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_48

    const/4 v11, 0x1

    :cond_48
    :goto_2b
    if-eqz v11, :cond_49

    :goto_2c
    move-object/from16 v9, v26

    const/4 v6, 0x0

    goto :goto_2d

    :cond_49
    move-object/from16 v9, v26

    const/4 v6, 0x0

    .line 177
    invoke-virtual {v9, v4, v5, v6}, Ln3/i/b/h/m/b;->a(Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;I)Z

    :goto_2d
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v26, v9

    goto/16 :goto_27

    :cond_4a
    move-object/from16 v9, v26

    const/4 v6, 0x0

    .line 178
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 179
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v15, v6

    :goto_2e
    if-ge v15, v2, :cond_4c

    .line 180
    iget-object v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 181
    instance-of v5, v3, Ln3/i/c/g;

    if-eqz v5, :cond_4b

    .line 182
    check-cast v3, Ln3/i/c/g;

    invoke-virtual {v3}, Ln3/i/c/g;->a()V

    :cond_4b
    add-int/lit8 v15, v15, 0x1

    goto :goto_2e

    .line 183
    :cond_4c
    iget-object v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 184
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4e

    move v15, v6

    :goto_2f
    if-ge v15, v2, :cond_4e

    .line 186
    iget-object v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 187
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/c/b;

    .line 189
    invoke-virtual {v3}, Ln3/i/c/b;->q()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2f

    :cond_4d
    move-object/from16 v9, v26

    const/4 v6, 0x0

    .line 190
    :cond_4e
    invoke-virtual {v9, v1}, Ln3/i/b/h/m/b;->c(Ln3/i/b/h/e;)V

    .line 191
    iget-object v2, v9, Ln3/i/b/h/m/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v3, p4

    move/from16 v4, v25

    if-lez v10, :cond_4f

    .line 192
    invoke-virtual {v9, v1, v3, v4}, Ln3/i/b/h/m/b;->b(Ln3/i/b/h/e;II)V

    :cond_4f
    if-lez v2, :cond_6a

    .line 193
    invoke-virtual/range {p1 .. p1}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v5

    move-object/from16 v7, v27

    if-ne v5, v7, :cond_50

    const/4 v15, 0x1

    goto :goto_30

    :cond_50
    move v15, v6

    .line 194
    :goto_30
    invoke-virtual/range {p1 .. p1}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v5

    if-ne v5, v7, :cond_51

    const/4 v5, 0x1

    goto :goto_31

    :cond_51
    move v5, v6

    .line 195
    :goto_31
    invoke-virtual/range {p1 .. p1}, Ln3/i/b/h/d;->w()I

    move-result v7

    iget-object v8, v9, Ln3/i/b/h/m/b;->c:Ln3/i/b/h/e;

    .line 196
    iget v8, v8, Ln3/i/b/h/d;->d0:I

    .line 197
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 198
    invoke-virtual/range {p1 .. p1}, Ln3/i/b/h/d;->q()I

    move-result v8

    iget-object v10, v9, Ln3/i/b/h/m/b;->c:Ln3/i/b/h/e;

    .line 199
    iget v10, v10, Ln3/i/b/h/d;->e0:I

    .line 200
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v10, v6

    move v11, v10

    :goto_32
    if-ge v10, v2, :cond_57

    .line 201
    iget-object v12, v9, Ln3/i/b/h/m/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ln3/i/b/h/d;

    .line 202
    instance-of v13, v12, Ln3/i/b/h/k;

    if-nez v13, :cond_52

    move/from16 v17, v0

    move-object/from16 v14, v22

    move-object/from16 v13, v23

    move-object/from16 v6, v24

    goto/16 :goto_37

    .line 203
    :cond_52
    invoke-virtual {v12}, Ln3/i/b/h/d;->w()I

    move-result v13

    .line 204
    invoke-virtual {v12}, Ln3/i/b/h/d;->q()I

    move-result v14

    move/from16 v17, v0

    move-object/from16 v6, v24

    const/4 v0, 0x1

    .line 205
    invoke-virtual {v9, v6, v12, v0}, Ln3/i/b/h/m/b;->a(Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;I)Z

    move-result v21

    or-int v0, v11, v21

    .line 206
    invoke-virtual {v12}, Ln3/i/b/h/d;->w()I

    move-result v11

    move/from16 p2, v0

    .line 207
    invoke-virtual {v12}, Ln3/i/b/h/d;->q()I

    move-result v0

    if-eq v11, v13, :cond_54

    .line 208
    invoke-virtual {v12, v11}, Ln3/i/b/h/d;->S(I)V

    if-eqz v15, :cond_53

    .line 209
    invoke-virtual {v12}, Ln3/i/b/h/d;->u()I

    move-result v11

    if-le v11, v7, :cond_53

    .line 210
    invoke-virtual {v12}, Ln3/i/b/h/d;->u()I

    move-result v11

    move-object/from16 v13, v23

    .line 211
    invoke-virtual {v12, v13}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ln3/i/b/h/c;->e()I

    move-result v21

    add-int v11, v21, v11

    .line 212
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_33

    :cond_53
    move-object/from16 v13, v23

    :goto_33
    const/4 v11, 0x1

    goto :goto_34

    :cond_54
    move-object/from16 v13, v23

    move/from16 v11, p2

    :goto_34
    if-eq v0, v14, :cond_56

    .line 213
    invoke-virtual {v12, v0}, Ln3/i/b/h/d;->N(I)V

    if-eqz v5, :cond_55

    .line 214
    invoke-virtual {v12}, Ln3/i/b/h/d;->o()I

    move-result v0

    if-le v0, v8, :cond_55

    .line 215
    invoke-virtual {v12}, Ln3/i/b/h/d;->o()I

    move-result v0

    move-object/from16 v14, v22

    .line 216
    invoke-virtual {v12, v14}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v11

    invoke-virtual {v11}, Ln3/i/b/h/c;->e()I

    move-result v11

    add-int/2addr v11, v0

    .line 217
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v8, v0

    goto :goto_35

    :cond_55
    move-object/from16 v14, v22

    :goto_35
    const/4 v11, 0x1

    goto :goto_36

    :cond_56
    move-object/from16 v14, v22

    .line 218
    :goto_36
    check-cast v12, Ln3/i/b/h/k;

    .line 219
    iget-boolean v0, v12, Ln3/i/b/h/k;->P0:Z

    or-int/2addr v0, v11

    move v11, v0

    :goto_37
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v24, v6

    move-object/from16 v23, v13

    move-object/from16 v22, v14

    move/from16 v0, v17

    const/4 v6, 0x0

    goto/16 :goto_32

    :cond_57
    move/from16 v17, v0

    move-object/from16 v14, v22

    move-object/from16 v13, v23

    move-object/from16 v6, v24

    const/4 v0, 0x0

    const/4 v10, 0x2

    :goto_38
    if-ge v0, v10, :cond_66

    move v12, v11

    const/4 v11, 0x0

    :goto_39
    if-ge v11, v2, :cond_64

    .line 220
    iget-object v10, v9, Ln3/i/b/h/m/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln3/i/b/h/d;

    move/from16 p2, v2

    .line 221
    instance-of v2, v10, Ln3/i/b/h/h;

    if-eqz v2, :cond_58

    instance-of v2, v10, Ln3/i/b/h/k;

    if-eqz v2, :cond_5c

    :cond_58
    instance-of v2, v10, Ln3/i/b/h/g;

    if-eqz v2, :cond_59

    goto :goto_3a

    .line 222
    :cond_59
    iget v2, v10, Ln3/i/b/h/d;->j0:I

    const/16 v1, 0x8

    if-ne v2, v1, :cond_5a

    goto :goto_3a

    :cond_5a
    if-eqz v18, :cond_5b

    .line 223
    iget-object v1, v10, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v1, v1, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    iget-boolean v1, v1, Ln3/i/b/h/m/f;->j:Z

    if-eqz v1, :cond_5b

    iget-object v1, v10, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v1, v1, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    iget-boolean v1, v1, Ln3/i/b/h/m/f;->j:Z

    if-eqz v1, :cond_5b

    goto :goto_3a

    .line 224
    :cond_5b
    instance-of v1, v10, Ln3/i/b/h/k;

    if-eqz v1, :cond_5d

    :cond_5c
    :goto_3a
    move/from16 p4, v3

    move/from16 v25, v4

    goto/16 :goto_3c

    .line 225
    :cond_5d
    invoke-virtual {v10}, Ln3/i/b/h/d;->w()I

    move-result v1

    .line 226
    invoke-virtual {v10}, Ln3/i/b/h/d;->q()I

    move-result v2

    move/from16 p4, v3

    .line 227
    iget v3, v10, Ln3/i/b/h/d;->c0:I

    move/from16 v25, v4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5e

    const/4 v4, 0x2

    .line 228
    :cond_5e
    invoke-virtual {v9, v6, v10, v4}, Ln3/i/b/h/m/b;->a(Ln3/i/b/h/m/b$b;Ln3/i/b/h/d;I)Z

    move-result v4

    or-int/2addr v4, v12

    .line 229
    invoke-virtual {v10}, Ln3/i/b/h/d;->w()I

    move-result v12

    move/from16 p3, v4

    .line 230
    invoke-virtual {v10}, Ln3/i/b/h/d;->q()I

    move-result v4

    if-eq v12, v1, :cond_60

    .line 231
    invoke-virtual {v10, v12}, Ln3/i/b/h/d;->S(I)V

    if-eqz v15, :cond_5f

    .line 232
    invoke-virtual {v10}, Ln3/i/b/h/d;->u()I

    move-result v1

    if-le v1, v7, :cond_5f

    .line 233
    invoke-virtual {v10}, Ln3/i/b/h/d;->u()I

    move-result v1

    .line 234
    invoke-virtual {v10, v13}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v12

    invoke-virtual {v12}, Ln3/i/b/h/c;->e()I

    move-result v12

    add-int/2addr v12, v1

    .line 235
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_5f
    const/4 v1, 0x1

    goto :goto_3b

    :cond_60
    move/from16 v1, p3

    :goto_3b
    if-eq v4, v2, :cond_62

    .line 236
    invoke-virtual {v10, v4}, Ln3/i/b/h/d;->N(I)V

    if-eqz v5, :cond_61

    .line 237
    invoke-virtual {v10}, Ln3/i/b/h/d;->o()I

    move-result v1

    if-le v1, v8, :cond_61

    .line 238
    invoke-virtual {v10}, Ln3/i/b/h/d;->o()I

    move-result v1

    .line 239
    invoke-virtual {v10, v14}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v2

    invoke-virtual {v2}, Ln3/i/b/h/c;->e()I

    move-result v2

    add-int/2addr v2, v1

    .line 240
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v8, v1

    :cond_61
    const/4 v1, 0x1

    .line 241
    :cond_62
    iget-boolean v2, v10, Ln3/i/b/h/d;->A:Z

    if-eqz v2, :cond_63

    .line 242
    iget v2, v10, Ln3/i/b/h/d;->c0:I

    if-eq v3, v2, :cond_63

    const/4 v12, 0x1

    goto :goto_3c

    :cond_63
    move v12, v1

    :goto_3c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, v25

    const/4 v10, 0x2

    goto/16 :goto_39

    :cond_64
    move/from16 p2, v2

    move/from16 p4, v3

    move/from16 v25, v4

    if-eqz v12, :cond_65

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v25

    .line 243
    invoke-virtual {v9, v1, v2, v3}, Ln3/i/b/h/m/b;->b(Ln3/i/b/h/e;II)V

    add-int/lit8 v0, v0, 0x1

    move v4, v3

    const/4 v10, 0x2

    const/4 v11, 0x0

    move v3, v2

    move/from16 v2, p2

    goto/16 :goto_38

    :cond_65
    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v25

    move v11, v12

    goto :goto_3d

    :cond_66
    move v2, v3

    move v3, v4

    :goto_3d
    if-eqz v11, :cond_69

    .line 244
    invoke-virtual {v9, v1, v2, v3}, Ln3/i/b/h/m/b;->b(Ln3/i/b/h/e;II)V

    .line 245
    invoke-virtual/range {p1 .. p1}, Ln3/i/b/h/d;->w()I

    move-result v0

    if-ge v0, v7, :cond_67

    .line 246
    invoke-virtual {v1, v7}, Ln3/i/b/h/d;->S(I)V

    const/16 v16, 0x1

    goto :goto_3e

    :cond_67
    const/16 v16, 0x0

    .line 247
    :goto_3e
    invoke-virtual/range {p1 .. p1}, Ln3/i/b/h/d;->q()I

    move-result v0

    if-ge v0, v8, :cond_68

    .line 248
    invoke-virtual {v1, v8}, Ln3/i/b/h/d;->N(I)V

    const/4 v7, 0x1

    goto :goto_3f

    :cond_68
    move/from16 v7, v16

    :goto_3f
    if-eqz v7, :cond_69

    .line 249
    invoke-virtual {v9, v1, v2, v3}, Ln3/i/b/h/m/b;->b(Ln3/i/b/h/e;II)V

    :cond_69
    move/from16 v0, v17

    .line 250
    :cond_6a
    invoke-virtual {v1, v0}, Ln3/i/b/h/e;->g0(I)V

    :cond_6b
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    return p1
.end method

.method public d1(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    .line 4
    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/i/c/b;

    .line 4
    invoke-virtual {v4}, Ln3/i/c/b;->r()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x44870000    # 1080.0f

    const/high16 v6, 0x44f00000    # 1920.0f

    move v7, v2

    :goto_1
    if-ge v7, v1, :cond_3

    .line 10
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 11
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    goto/16 :goto_2

    .line 12
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 13
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 14
    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    .line 15
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 16
    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 17
    aget-object v9, v8, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    .line 18
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    .line 19
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    .line 20
    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    div-float/2addr v9, v5

    mul-float/2addr v9, v3

    float-to-int v9, v9

    int-to-float v10, v10

    div-float/2addr v10, v6

    mul-float/2addr v10, v4

    float-to-int v10, v10

    int-to-float v11, v11

    div-float/2addr v11, v5

    mul-float/2addr v11, v3

    float-to-int v11, v11

    int-to-float v8, v8

    div-float/2addr v8, v6

    mul-float/2addr v8, v4

    float-to-int v8, v8

    .line 21
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    .line 22
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v9

    int-to-float v13, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v12, p1

    move v11, v13

    move v13, v14

    move/from16 v18, v14

    move v14, v11

    move-object/from16 v19, v15

    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v19

    .line 23
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    int-to-float v8, v10

    move v13, v9

    move/from16 v16, v8

    .line 24
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v15, v18

    .line 25
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v13, v18

    move/from16 v16, v11

    .line 26
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v10, -0xff0100

    move-object/from16 v15, v19

    .line 27
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v11

    move-object v10, v15

    move v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v10

    .line 28
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v16, v11

    .line 29
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public e1(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln3/i/c/c;

    if-eqz v0, :cond_0

    int-to-float p2, p2

    int-to-float p3, p3

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ln3/i/c/c;->b(IFF)V

    :cond_0
    return-void
.end method

.method public forceLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->O0()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    .line 2
    iget v0, v0, Ln3/i/b/h/e;->T0:I

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_3

    .line 3
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 4
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 5
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a0:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, Ln3/i/b/h/d;->x()I

    move-result v0

    .line 9
    invoke-virtual {v1}, Ln3/i/b/h/d;->y()I

    move-result v2

    .line 10
    invoke-virtual {v1}, Ln3/i/b/h/d;->w()I

    move-result v3

    add-int/2addr v3, v0

    .line 11
    invoke-virtual {v1}, Ln3/i/b/h/d;->q()I

    move-result v1

    add-int/2addr v1, v2

    .line 12
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 13
    instance-of v4, p5, Ln3/i/c/g;

    if-eqz v4, :cond_2

    .line 14
    check-cast p5, Ln3/i/c/g;

    .line 15
    invoke-virtual {p5}, Ln3/i/c/g;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 16
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    .line 19
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/i/c/b;

    .line 20
    invoke-virtual {p2, p0}, Ln3/i/c/b;->p(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v6, p1

    move/from16 v8, p2

    .line 1
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 3
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iput-boolean v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    if-nez v0, :cond_3

    .line 7
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    if-ne v0, v6, :cond_2

    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    if-ne v3, v8, :cond_2

    .line 8
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    invoke-virtual {v0}, Ln3/i/b/h/d;->w()I

    move-result v3

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    invoke-virtual {v0}, Ln3/i/b/h/d;->q()I

    move-result v4

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    .line 9
    iget-boolean v5, v0, Ln3/i/b/h/e;->U0:Z

    .line 10
    iget-boolean v9, v0, Ln3/i/b/h/e;->V0:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v6, v9

    .line 11
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->b1(IIIIZZ)V

    return-void

    :cond_2
    if-ne v0, v6, :cond_3

    .line 12
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_3

    .line 13
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_3

    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 14
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 15
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 16
    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    invoke-virtual {v3}, Ln3/i/b/h/d;->q()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 17
    iput v6, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 18
    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 19
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    invoke-virtual {v0}, Ln3/i/b/h/d;->w()I

    move-result v3

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    invoke-virtual {v0}, Ln3/i/b/h/d;->q()I

    move-result v4

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    .line 20
    iget-boolean v5, v0, Ln3/i/b/h/e;->U0:Z

    .line 21
    iget-boolean v9, v0, Ln3/i/b/h/e;->V0:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v6, v9

    .line 22
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->b1(IIIIZZ)V

    return-void

    .line 23
    :cond_3
    iput v6, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 24
    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 25
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->T0()Z

    move-result v3

    .line 26
    iput-boolean v3, v0, Ln3/i/b/h/e;->L0:Z

    .line 27
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    if-eqz v0, :cond_1e

    .line 28
    iput-boolean v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_5

    .line 30
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_4

    move v9, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v9, v1

    :goto_3
    if-eqz v9, :cond_1d

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v10

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    move v0, v1

    :goto_4
    if-ge v0, v11, :cond_7

    .line 34
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 35
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->R0(Landroid/view/View;)Ln3/i/b/h/d;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_5

    .line 36
    :cond_6
    invoke-virtual {v3}, Ln3/i/b/h/d;->G()V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, -0x1

    if-eqz v10, :cond_d

    move v3, v1

    :goto_6
    if-ge v3, v11, :cond_d

    .line 37
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 38
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v1, v5, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->d1(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v12, 0x2f

    .line 40
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v0, :cond_8

    add-int/lit8 v12, v12, 0x1

    .line 41
    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 42
    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-nez v4, :cond_9

    .line 43
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    goto :goto_7

    .line 44
    :cond_9
    iget-object v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-nez v12, :cond_a

    .line 45
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_a

    if-eq v12, v7, :cond_a

    .line 46
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v4, v7, :cond_a

    .line 47
    invoke-virtual {v7, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_a
    if-ne v12, v7, :cond_b

    .line 48
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    goto :goto_7

    :cond_b
    if-nez v12, :cond_c

    const/4 v4, 0x0

    goto :goto_7

    .line 49
    :cond_c
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    .line 50
    :goto_7
    iput-object v5, v4, Ln3/i/b/h/d;->k0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 51
    :cond_d
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    if-eq v3, v0, :cond_f

    move v3, v1

    :goto_8
    if-ge v3, v11, :cond_f

    .line 52
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    if-ne v5, v12, :cond_e

    instance-of v5, v4, Ln3/i/c/e;

    if-eqz v5, :cond_e

    .line 54
    check-cast v4, Ln3/i/c/e;

    invoke-virtual {v4}, Ln3/i/c/e;->getConstraintSet()Ln3/i/c/d;

    move-result-object v4

    iput-object v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ln3/i/c/d;

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 55
    :cond_f
    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ln3/i/c/d;

    if-eqz v3, :cond_10

    .line 56
    invoke-virtual {v3, v7, v2}, Ln3/i/c/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    .line 57
    :cond_10
    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    .line 58
    iget-object v3, v3, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 59
    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    move v4, v1

    :goto_9
    if-ge v4, v3, :cond_16

    .line 60
    iget-object v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/i/c/b;

    .line 61
    invoke-virtual {v5}, Landroid/view/View;->isInEditMode()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 62
    iget-object v12, v5, Ln3/i/c/b;->e:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ln3/i/c/b;->setIds(Ljava/lang/String;)V

    .line 63
    :cond_11
    iget-object v12, v5, Ln3/i/c/b;->d:Ln3/i/b/h/h;

    if-nez v12, :cond_12

    goto :goto_b

    .line 64
    :cond_12
    invoke-interface {v12}, Ln3/i/b/h/h;->b()V

    move v12, v1

    .line 65
    :goto_a
    iget v13, v5, Ln3/i/c/b;->b:I

    if-ge v12, v13, :cond_15

    .line 66
    iget-object v13, v5, Ln3/i/c/b;->a:[I

    aget v13, v13, v12

    .line 67
    invoke-virtual {v7, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->Q0(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_13

    .line 68
    iget-object v15, v5, Ln3/i/c/b;->h:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 69
    invoke-virtual {v5, v7, v13}, Ln3/i/c/b;->j(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_13

    .line 70
    iget-object v14, v5, Ln3/i/c/b;->a:[I

    aput v15, v14, v12

    .line 71
    iget-object v14, v5, Ln3/i/c/b;->h:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v7, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->Q0(I)Landroid/view/View;

    move-result-object v14

    :cond_13
    if-eqz v14, :cond_14

    .line 73
    iget-object v1, v5, Ln3/i/c/b;->d:Ln3/i/b/h/h;

    invoke-virtual {v7, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->R0(Landroid/view/View;)Ln3/i/b/h/d;

    move-result-object v13

    invoke-interface {v1, v13}, Ln3/i/b/h/h;->a(Ln3/i/b/h/d;)V

    :cond_14
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x0

    goto :goto_a

    .line 74
    :cond_15
    iget-object v1, v5, Ln3/i/c/b;->d:Ln3/i/b/h/h;

    iget-object v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    invoke-interface {v1, v5}, Ln3/i/b/h/h;->c(Ln3/i/b/h/e;)V

    :goto_b
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    goto :goto_9

    :cond_16
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v11, :cond_19

    .line 75
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 76
    instance-of v4, v3, Ln3/i/c/g;

    if-eqz v4, :cond_18

    .line 77
    check-cast v3, Ln3/i/c/g;

    .line 78
    iget v4, v3, Ln3/i/c/g;->a:I

    if-ne v4, v0, :cond_17

    .line 79
    invoke-virtual {v3}, Landroid/view/View;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_17

    .line 80
    iget v4, v3, Ln3/i/c/g;->c:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :cond_17
    iget v4, v3, Ln3/i/c/g;->a:I

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Ln3/i/c/g;->b:Landroid/view/View;

    if-eqz v4, :cond_18

    .line 82
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 83
    iput-boolean v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a0:Z

    .line 84
    iget-object v4, v3, Ln3/i/c/g;->b:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_18
    const/4 v5, 0x0

    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_19
    const/4 v5, 0x0

    .line 86
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 87
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroid/util/SparseArray;

    iget-object v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    iget-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v5

    :goto_e
    if-ge v0, v11, :cond_1a

    .line 89
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 90
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->R0(Landroid/view/View;)Ln3/i/b/h/d;

    move-result-object v2

    .line 91
    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1a
    move v12, v5

    :goto_f
    if-ge v12, v11, :cond_1d

    .line 92
    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 93
    invoke-virtual {v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->R0(Landroid/view/View;)Ln3/i/b/h/d;

    move-result-object v3

    if-nez v3, :cond_1b

    goto :goto_10

    .line 94
    :cond_1b
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 95
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    .line 96
    iget-object v1, v0, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, v3, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    if-eqz v1, :cond_1c

    .line 98
    check-cast v1, Ln3/i/b/h/l;

    .line 99
    iget-object v1, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v3}, Ln3/i/b/h/d;->G()V

    .line 101
    :cond_1c
    iput-object v0, v3, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    .line 102
    iget-object v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->N0(ZLandroid/view/View;Ln3/i/b/h/d;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V

    :goto_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_1d
    if-eqz v9, :cond_1e

    .line 103
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    .line 104
    iget-object v1, v0, Ln3/i/b/h/e;->I0:Ln3/i/b/h/m/b;

    invoke-virtual {v1, v0}, Ln3/i/b/h/m/b;->c(Ln3/i/b/h/e;)V

    .line 105
    :cond_1e
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {v7, v0, v1, v6, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->c1(Ln3/i/b/h/e;III)V

    .line 106
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    invoke-virtual {v0}, Ln3/i/b/h/d;->w()I

    move-result v3

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    invoke-virtual {v0}, Ln3/i/b/h/d;->q()I

    move-result v4

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    .line 107
    iget-boolean v5, v0, Ln3/i/b/h/e;->U0:Z

    .line 108
    iget-boolean v9, v0, Ln3/i/b/h/e;->V0:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v6, v9

    .line 109
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->b1(IIIIZZ)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->R0(Landroid/view/View;)Ln3/i/b/h/d;

    move-result-object v0

    .line 3
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    instance-of v0, v0, Ln3/i/b/h/g;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 6
    new-instance v1, Ln3/i/b/h/g;

    invoke-direct {v1}, Ln3/i/b/h/g;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Ln3/i/b/h/d;

    .line 7
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    .line 8
    check-cast v1, Ln3/i/b/h/g;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    invoke-virtual {v1, v0}, Ln3/i/b/h/g;->W(I)V

    .line 9
    :cond_0
    instance-of v0, p1, Ln3/i/c/b;

    if-eqz v0, :cond_1

    .line 10
    move-object v0, p1

    check-cast v0, Ln3/i/c/b;

    .line 11
    invoke-virtual {v0}, Ln3/i/c/b;->t()V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 13
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    .line 14
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->R0(Landroid/view/View;)Ln3/i/b/h/d;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    .line 5
    iget-object v1, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Ln3/i/b/h/d;->G()V

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setConstraintSet(Ln3/i/c/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ln3/i/c/d;

    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Ln3/i/c/f;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ln3/i/c/c;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ln3/i/b/h/e;

    .line 3
    iput p1, v0, Ln3/i/b/h/e;->T0:I

    const/16 p1, 0x200

    .line 4
    invoke-virtual {v0, p1}, Ln3/i/b/h/e;->e0(I)Z

    move-result p1

    sput-boolean p1, Ln3/i/b/d;->p:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
