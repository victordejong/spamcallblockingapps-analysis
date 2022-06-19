.class public Ln3/i/c/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/i/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public final b:Ln3/i/c/d$d;

.field public final c:Ln3/i/c/d$c;

.field public final d:Ln3/i/c/d$b;

.field public final e:Ln3/i/c/d$e;

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ln3/i/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/i/c/d$d;

    invoke-direct {v0}, Ln3/i/c/d$d;-><init>()V

    iput-object v0, p0, Ln3/i/c/d$a;->b:Ln3/i/c/d$d;

    .line 3
    new-instance v0, Ln3/i/c/d$c;

    invoke-direct {v0}, Ln3/i/c/d$c;-><init>()V

    iput-object v0, p0, Ln3/i/c/d$a;->c:Ln3/i/c/d$c;

    .line 4
    new-instance v0, Ln3/i/c/d$b;

    invoke-direct {v0}, Ln3/i/c/d$b;-><init>()V

    iput-object v0, p0, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    .line 5
    new-instance v0, Ln3/i/c/d$e;

    invoke-direct {v0}, Ln3/i/c/d$e;-><init>()V

    iput-object v0, p0, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ln3/i/c/d$a;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget v1, v0, Ln3/i/c/d$b;->h:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    .line 2
    iget v1, v0, Ln3/i/c/d$b;->i:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    .line 3
    iget v1, v0, Ln3/i/c/d$b;->j:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    .line 4
    iget v1, v0, Ln3/i/c/d$b;->k:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    .line 5
    iget v1, v0, Ln3/i/c/d$b;->l:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    .line 6
    iget v1, v0, Ln3/i/c/d$b;->m:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    .line 7
    iget v1, v0, Ln3/i/c/d$b;->n:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    .line 8
    iget v1, v0, Ln3/i/c/d$b;->o:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    .line 9
    iget v1, v0, Ln3/i/c/d$b;->p:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    .line 10
    iget v1, v0, Ln3/i/c/d$b;->q:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    .line 11
    iget v1, v0, Ln3/i/c/d$b;->r:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    .line 12
    iget v1, v0, Ln3/i/c/d$b;->s:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:I

    .line 13
    iget v1, v0, Ln3/i/c/d$b;->t:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    .line 14
    iget v1, v0, Ln3/i/c/d$b;->D:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 15
    iget v1, v0, Ln3/i/c/d$b;->E:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 16
    iget v1, v0, Ln3/i/c/d$b;->F:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 17
    iget v1, v0, Ln3/i/c/d$b;->G:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 18
    iget v1, v0, Ln3/i/c/d$b;->O:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->x:I

    .line 19
    iget v1, v0, Ln3/i/c/d$b;->N:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->y:I

    .line 20
    iget v1, v0, Ln3/i/c/d$b;->K:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    .line 21
    iget v1, v0, Ln3/i/c/d$b;->M:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    .line 22
    iget v1, v0, Ln3/i/c/d$b;->u:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->z:F

    .line 23
    iget v1, v0, Ln3/i/c/d$b;->v:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    .line 24
    iget v1, v0, Ln3/i/c/d$b;->x:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    .line 25
    iget v0, v0, Ln3/i/c/d$b;->y:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->n:I

    .line 26
    iget-object v0, p0, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget v1, v0, Ln3/i/c/d$b;->z:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->o:F

    .line 27
    iget-object v1, v0, Ln3/i/c/d$b;->w:Ljava/lang/String;

    iput-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:Ljava/lang/String;

    .line 28
    iget v1, v0, Ln3/i/c/d$b;->A:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:I

    .line 29
    iget v1, v0, Ln3/i/c/d$b;->B:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    .line 30
    iget v1, v0, Ln3/i/c/d$b;->P:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->E:F

    .line 31
    iget v1, v0, Ln3/i/c/d$b;->Q:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->D:F

    .line 32
    iget v1, v0, Ln3/i/c/d$b;->S:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:I

    .line 33
    iget v1, v0, Ln3/i/c/d$b;->R:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->F:I

    .line 34
    iget-boolean v1, v0, Ln3/i/c/d$b;->h0:Z

    iput-boolean v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:Z

    .line 35
    iget-boolean v1, v0, Ln3/i/c/d$b;->i0:Z

    iput-boolean v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->T:Z

    .line 36
    iget v1, v0, Ln3/i/c/d$b;->T:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:I

    .line 37
    iget v1, v0, Ln3/i/c/d$b;->U:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:I

    .line 38
    iget v1, v0, Ln3/i/c/d$b;->V:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:I

    .line 39
    iget v1, v0, Ln3/i/c/d$b;->W:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:I

    .line 40
    iget v1, v0, Ln3/i/c/d$b;->X:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->J:I

    .line 41
    iget v1, v0, Ln3/i/c/d$b;->Y:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->K:I

    .line 42
    iget v1, v0, Ln3/i/c/d$b;->Z:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->N:F

    .line 43
    iget v1, v0, Ln3/i/c/d$b;->a0:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->O:F

    .line 44
    iget v1, v0, Ln3/i/c/d$b;->C:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    .line 45
    iget v1, v0, Ln3/i/c/d$b;->g:F

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:F

    .line 46
    iget v1, v0, Ln3/i/c/d$b;->e:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:I

    .line 47
    iget v1, v0, Ln3/i/c/d$b;->f:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b:I

    .line 48
    iget v1, v0, Ln3/i/c/d$b;->c:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 49
    iget v1, v0, Ln3/i/c/d$b;->d:I

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 50
    iget-object v0, v0, Ln3/i/c/d$b;->g0:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    iput-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->U:Ljava/lang/String;

    .line 52
    :cond_0
    iget-object v0, p0, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget v0, v0, Ln3/i/c/d$b;->I:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 53
    iget-object v0, p0, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget v0, v0, Ln3/i/c/d$b;->H:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 54
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a()V

    return-void
.end method

.method public final b(ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V
    .locals 1

    .line 1
    iput p1, p0, Ln3/i/c/d$a;->a:I

    .line 2
    iget-object p1, p0, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    iput v0, p1, Ln3/i/c/d$b;->h:I

    .line 3
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    iput v0, p1, Ln3/i/c/d$b;->i:I

    .line 4
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    iput v0, p1, Ln3/i/c/d$b;->j:I

    .line 5
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    iput v0, p1, Ln3/i/c/d$b;->k:I

    .line 6
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    iput v0, p1, Ln3/i/c/d$b;->l:I

    .line 7
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    iput v0, p1, Ln3/i/c/d$b;->m:I

    .line 8
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    iput v0, p1, Ln3/i/c/d$b;->n:I

    .line 9
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    iput v0, p1, Ln3/i/c/d$b;->o:I

    .line 10
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    iput v0, p1, Ln3/i/c/d$b;->p:I

    .line 11
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    iput v0, p1, Ln3/i/c/d$b;->q:I

    .line 12
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    iput v0, p1, Ln3/i/c/d$b;->r:I

    .line 13
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:I

    iput v0, p1, Ln3/i/c/d$b;->s:I

    .line 14
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    iput v0, p1, Ln3/i/c/d$b;->t:I

    .line 15
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->z:F

    iput v0, p1, Ln3/i/c/d$b;->u:F

    .line 16
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    iput v0, p1, Ln3/i/c/d$b;->v:F

    .line 17
    iget-object v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:Ljava/lang/String;

    iput-object v0, p1, Ln3/i/c/d$b;->w:Ljava/lang/String;

    .line 18
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    iput v0, p1, Ln3/i/c/d$b;->x:I

    .line 19
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->n:I

    iput v0, p1, Ln3/i/c/d$b;->y:I

    .line 20
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->o:F

    iput v0, p1, Ln3/i/c/d$b;->z:F

    .line 21
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:I

    iput v0, p1, Ln3/i/c/d$b;->A:I

    .line 22
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    iput v0, p1, Ln3/i/c/d$b;->B:I

    .line 23
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    iput v0, p1, Ln3/i/c/d$b;->C:I

    .line 24
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:F

    iput v0, p1, Ln3/i/c/d$b;->g:F

    .line 25
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:I

    iput v0, p1, Ln3/i/c/d$b;->e:I

    .line 26
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b:I

    iput v0, p1, Ln3/i/c/d$b;->f:I

    .line 27
    iget-object p1, p0, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, p1, Ln3/i/c/d$b;->c:I

    .line 28
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p1, Ln3/i/c/d$b;->d:I

    .line 29
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p1, Ln3/i/c/d$b;->D:I

    .line 30
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p1, Ln3/i/c/d$b;->E:I

    .line 31
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p1, Ln3/i/c/d$b;->F:I

    .line 32
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p1, Ln3/i/c/d$b;->G:I

    .line 33
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->E:F

    iput v0, p1, Ln3/i/c/d$b;->P:F

    .line 34
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->D:F

    iput v0, p1, Ln3/i/c/d$b;->Q:F

    .line 35
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:I

    iput v0, p1, Ln3/i/c/d$b;->S:I

    .line 36
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->F:I

    iput v0, p1, Ln3/i/c/d$b;->R:I

    .line 37
    iget-boolean v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:Z

    iput-boolean v0, p1, Ln3/i/c/d$b;->h0:Z

    .line 38
    iget-boolean v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->T:Z

    iput-boolean v0, p1, Ln3/i/c/d$b;->i0:Z

    .line 39
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:I

    iput v0, p1, Ln3/i/c/d$b;->T:I

    .line 40
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:I

    iput v0, p1, Ln3/i/c/d$b;->U:I

    .line 41
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:I

    iput v0, p1, Ln3/i/c/d$b;->V:I

    .line 42
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:I

    iput v0, p1, Ln3/i/c/d$b;->W:I

    .line 43
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->J:I

    iput v0, p1, Ln3/i/c/d$b;->X:I

    .line 44
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->K:I

    iput v0, p1, Ln3/i/c/d$b;->Y:I

    .line 45
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->N:F

    iput v0, p1, Ln3/i/c/d$b;->Z:F

    .line 46
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->O:F

    iput v0, p1, Ln3/i/c/d$b;->a0:F

    .line 47
    iget-object v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->U:Ljava/lang/String;

    iput-object v0, p1, Ln3/i/c/d$b;->g0:Ljava/lang/String;

    .line 48
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    iput v0, p1, Ln3/i/c/d$b;->K:I

    .line 49
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    iput v0, p1, Ln3/i/c/d$b;->M:I

    .line 50
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->t:I

    iput v0, p1, Ln3/i/c/d$b;->J:I

    .line 51
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->v:I

    iput v0, p1, Ln3/i/c/d$b;->L:I

    .line 52
    iget-object p1, p0, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->x:I

    iput v0, p1, Ln3/i/c/d$b;->O:I

    .line 53
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->y:I

    iput v0, p1, Ln3/i/c/d$b;->N:I

    .line 54
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    iput v0, p1, Ln3/i/c/d$b;->H:I

    .line 55
    iget-object p1, p0, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    iput p2, p1, Ln3/i/c/d$b;->I:I

    return-void
.end method

.method public final c(ILn3/i/c/e$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/i/c/d$a;->b(ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 2
    iget-object p1, p0, Ln3/i/c/d$a;->b:Ln3/i/c/d$d;

    iget v0, p2, Ln3/i/c/e$a;->m0:F

    iput v0, p1, Ln3/i/c/d$d;->d:F

    .line 3
    iget-object p1, p0, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    iget v0, p2, Ln3/i/c/e$a;->p0:F

    iput v0, p1, Ln3/i/c/d$e;->b:F

    .line 4
    iget v0, p2, Ln3/i/c/e$a;->q0:F

    iput v0, p1, Ln3/i/c/d$e;->c:F

    .line 5
    iget v0, p2, Ln3/i/c/e$a;->r0:F

    iput v0, p1, Ln3/i/c/d$e;->d:F

    .line 6
    iget v0, p2, Ln3/i/c/e$a;->s0:F

    iput v0, p1, Ln3/i/c/d$e;->e:F

    .line 7
    iget v0, p2, Ln3/i/c/e$a;->t0:F

    iput v0, p1, Ln3/i/c/d$e;->f:F

    .line 8
    iget v0, p2, Ln3/i/c/e$a;->u0:F

    iput v0, p1, Ln3/i/c/d$e;->g:F

    .line 9
    iget v0, p2, Ln3/i/c/e$a;->v0:F

    iput v0, p1, Ln3/i/c/d$e;->h:F

    .line 10
    iget v0, p2, Ln3/i/c/e$a;->w0:F

    iput v0, p1, Ln3/i/c/d$e;->i:F

    .line 11
    iget v0, p2, Ln3/i/c/e$a;->x0:F

    iput v0, p1, Ln3/i/c/d$e;->j:F

    .line 12
    iget v0, p2, Ln3/i/c/e$a;->y0:F

    iput v0, p1, Ln3/i/c/d$e;->k:F

    .line 13
    iget v0, p2, Ln3/i/c/e$a;->o0:F

    iput v0, p1, Ln3/i/c/d$e;->m:F

    .line 14
    iget-boolean p2, p2, Ln3/i/c/e$a;->n0:Z

    iput-boolean p2, p1, Ln3/i/c/d$e;->l:Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/i/c/d$a;

    invoke-direct {v0}, Ln3/i/c/d$a;-><init>()V

    .line 2
    iget-object v1, v0, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    iget-object v2, p0, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    invoke-virtual {v1, v2}, Ln3/i/c/d$b;->a(Ln3/i/c/d$b;)V

    .line 3
    iget-object v1, v0, Ln3/i/c/d$a;->c:Ln3/i/c/d$c;

    iget-object v2, p0, Ln3/i/c/d$a;->c:Ln3/i/c/d$c;

    invoke-virtual {v1, v2}, Ln3/i/c/d$c;->a(Ln3/i/c/d$c;)V

    .line 4
    iget-object v1, v0, Ln3/i/c/d$a;->b:Ln3/i/c/d$d;

    iget-object v2, p0, Ln3/i/c/d$a;->b:Ln3/i/c/d$d;

    invoke-virtual {v1, v2}, Ln3/i/c/d$d;->a(Ln3/i/c/d$d;)V

    .line 5
    iget-object v1, v0, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    iget-object v2, p0, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    invoke-virtual {v1, v2}, Ln3/i/c/d$e;->a(Ln3/i/c/d$e;)V

    .line 6
    iget v1, p0, Ln3/i/c/d$a;->a:I

    iput v1, v0, Ln3/i/c/d$a;->a:I

    return-object v0
.end method
