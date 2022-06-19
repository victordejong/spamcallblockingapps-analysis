.class public Lg/e/a/a/e/k;
.super Lg/e/a/a/e/l;
.source "SourceFile"

# interfaces
.implements Lg/e/a/a/h/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e/a/a/e/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/e/a/a/e/l<",
        "Lg/e/a/a/e/i;",
        ">;",
        "Lg/e/a/a/h/b/e;"
    }
.end annotation


# instance fields
.field private F:Lg/e/a/a/e/k$a;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private H:I

.field private I:F

.field private J:F

.field private K:F

.field private L:Landroid/graphics/DashPathEffect;

.field private M:Lg/e/a/a/f/d;

.field private N:Z

.field private O:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/e/a/a/e/i;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lg/e/a/a/e/l;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lg/e/a/a/e/k$a;->LINEAR:Lg/e/a/a/e/k$a;

    iput-object p1, p0, Lg/e/a/a/e/k;->F:Lg/e/a/a/e/k$a;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lg/e/a/a/e/k;->G:Ljava/util/List;

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lg/e/a/a/e/k;->H:I

    const/high16 p2, 0x41000000    # 8.0f

    .line 5
    iput p2, p0, Lg/e/a/a/e/k;->I:F

    const/high16 p2, 0x40800000    # 4.0f

    .line 6
    iput p2, p0, Lg/e/a/a/e/k;->J:F

    const p2, 0x3e4ccccd    # 0.2f

    .line 7
    iput p2, p0, Lg/e/a/a/e/k;->K:F

    .line 8
    iput-object p1, p0, Lg/e/a/a/e/k;->L:Landroid/graphics/DashPathEffect;

    .line 9
    new-instance p1, Lg/e/a/a/f/b;

    invoke-direct {p1}, Lg/e/a/a/f/b;-><init>()V

    iput-object p1, p0, Lg/e/a/a/e/k;->M:Lg/e/a/a/f/d;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lg/e/a/a/e/k;->N:Z

    .line 11
    iput-boolean p1, p0, Lg/e/a/a/e/k;->O:Z

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg/e/a/a/e/k;->G:Ljava/util/List;

    .line 13
    iget-object p1, p0, Lg/e/a/a/e/k;->G:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 14
    iget-object p1, p0, Lg/e/a/a/e/k;->G:Ljava/util/List;

    const/16 p2, 0x8c

    const/16 v0, 0xea

    const/16 v1, 0xff

    invoke-static {p2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public B()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/k;->K:F

    return v0
.end method

.method public B0()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/k;->J:F

    return v0
.end method

.method public D()Landroid/graphics/DashPathEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/k;->L:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public F0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/e/k;->O:Z

    return v0
.end method

.method public K()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/k;->I:F

    return v0
.end method

.method public O()Lg/e/a/a/e/k$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/k;->F:Lg/e/a/a/e/k$a;

    return-object v0
.end method

.method public T0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/e/k;->O:Z

    return-void
.end method

.method public U0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/e/k;->N:Z

    return-void
.end method

.method public V0(Lg/e/a/a/e/k$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a/e/k;->F:Lg/e/a/a/e/k$a;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/k;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public j()Lg/e/a/a/f/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/k;->M:Lg/e/a/a/f/d;

    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/k;->L:Landroid/graphics/DashPathEffect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public s0(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/k;->G:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/k;->H:I

    return v0
.end method

.method public y0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/e/k;->N:Z

    return v0
.end method
