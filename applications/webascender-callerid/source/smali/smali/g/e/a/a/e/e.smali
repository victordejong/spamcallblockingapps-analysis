.class public abstract Lg/e/a/a/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/e/a/a/h/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lg/e/a/a/e/i;",
        ">",
        "Ljava/lang/Object;",
        "Lg/e/a/a/h/b/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field protected d:Lg/e/a/a/d/i$a;

.field protected e:Z

.field protected transient f:Lg/e/a/a/f/e;

.field protected g:Landroid/graphics/Typeface;

.field private h:Lg/e/a/a/d/e$c;

.field private i:F

.field private j:F

.field private k:Landroid/graphics/DashPathEffect;

.field protected l:Z

.field protected m:Z

.field protected n:Lg/e/a/a/l/e;

.field protected o:F

.field protected p:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lg/e/a/a/e/e;->a:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lg/e/a/a/e/e;->b:Ljava/util/List;

    const-string v1, "DataSet"

    .line 4
    iput-object v1, p0, Lg/e/a/a/e/e;->c:Ljava/lang/String;

    .line 5
    sget-object v1, Lg/e/a/a/d/i$a;->LEFT:Lg/e/a/a/d/i$a;

    iput-object v1, p0, Lg/e/a/a/e/e;->d:Lg/e/a/a/d/i$a;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lg/e/a/a/e/e;->e:Z

    .line 7
    sget-object v2, Lg/e/a/a/d/e$c;->DEFAULT:Lg/e/a/a/d/e$c;

    iput-object v2, p0, Lg/e/a/a/e/e;->h:Lg/e/a/a/d/e$c;

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 8
    iput v2, p0, Lg/e/a/a/e/e;->i:F

    .line 9
    iput v2, p0, Lg/e/a/a/e/e;->j:F

    .line 10
    iput-object v0, p0, Lg/e/a/a/e/e;->k:Landroid/graphics/DashPathEffect;

    .line 11
    iput-boolean v1, p0, Lg/e/a/a/e/e;->l:Z

    .line 12
    iput-boolean v1, p0, Lg/e/a/a/e/e;->m:Z

    .line 13
    new-instance v0, Lg/e/a/a/l/e;

    invoke-direct {v0}, Lg/e/a/a/l/e;-><init>()V

    iput-object v0, p0, Lg/e/a/a/e/e;->n:Lg/e/a/a/l/e;

    const/high16 v0, 0x41880000    # 17.0f

    .line 14
    iput v0, p0, Lg/e/a/a/e/e;->o:F

    .line 15
    iput-boolean v1, p0, Lg/e/a/a/e/e;->p:Z

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/e/a/a/e/e;->a:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/e/a/a/e/e;->b:Ljava/util/List;

    .line 18
    iget-object v0, p0, Lg/e/a/a/e/e;->a:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lg/e/a/a/e/e;->b:Ljava/util/List;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lg/e/a/a/e/e;-><init>()V

    .line 21
    iput-object p1, p0, Lg/e/a/a/e/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/e;->o:F

    return v0
.end method

.method public G()Lg/e/a/a/f/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/e/a/a/e/e;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lg/e/a/a/l/i;->j()Lg/e/a/a/f/e;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lg/e/a/a/e/e;->f:Lg/e/a/a/f/e;

    return-object v0
.end method

.method public G0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/e;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/e/a/a/e/e;->a:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lg/e/a/a/e/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public H0(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/e/a/a/e/e;->G0()V

    .line 2
    iget-object v0, p0, Lg/e/a/a/e/e;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public I()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/e;->j:F

    return v0
.end method

.method public varargs I0([I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lg/e/a/a/l/a;->b([I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lg/e/a/a/e/e;->a:Ljava/util/List;

    return-void
.end method

.method public J0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/e/e;->m:Z

    return-void
.end method

.method public N()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/e;->i:F

    return v0
.end method

.method public P(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public T()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/e;->g:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public V()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/e;->f:Lg/e/a/a/f/e;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W(Lg/e/a/a/f/e;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lg/e/a/a/e/e;->f:Lg/e/a/a/f/e;

    return-void
.end method

.method public Y(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public c0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/e;->a:Ljava/util/List;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/e/e;->p:Z

    return v0
.end method

.method public o0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/e/e;->l:Z

    return v0
.end method

.method public p()Landroid/graphics/DashPathEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/e;->k:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/e/e;->m:Z

    return v0
.end method

.method public t0()Lg/e/a/a/d/i$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/e;->d:Lg/e/a/a/d/i$a;

    return-object v0
.end method

.method public u()Lg/e/a/a/d/e$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/e;->h:Lg/e/a/a/d/e$c;

    return-object v0
.end method

.method public u0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/e/e;->l:Z

    return-void
.end method

.method public w0()Lg/e/a/a/l/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/e;->n:Lg/e/a/a/l/e;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public x0()I
    .locals 2

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/e;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public z0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/e/e;->e:Z

    return v0
.end method
