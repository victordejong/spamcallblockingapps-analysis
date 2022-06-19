.class public abstract Lg/e/a/a/e/l;
.super Lg/e/a/a/e/m;
.source "SourceFile"

# interfaces
.implements Lg/e/a/a/h/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lg/e/a/a/e/i;",
        ">",
        "Lg/e/a/a/e/m<",
        "TT;>;",
        "Lg/e/a/a/h/b/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private A:I

.field protected B:Landroid/graphics/drawable/Drawable;

.field private C:I

.field private D:F

.field private E:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lg/e/a/a/e/m;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 p1, 0x8c

    const/16 p2, 0xea

    const/16 v0, 0xff

    .line 2
    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lg/e/a/a/e/l;->A:I

    const/16 p1, 0x55

    .line 3
    iput p1, p0, Lg/e/a/a/e/l;->C:I

    const/high16 p1, 0x40200000    # 2.5f

    .line 4
    iput p1, p0, Lg/e/a/a/e/l;->D:F

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lg/e/a/a/e/l;->E:Z

    return-void
.end method


# virtual methods
.method public E()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/l;->B:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/e/l;->E:Z

    return v0
.end method

.method public Q0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/e/a/a/e/l;->E:Z

    return-void
.end method

.method public R0(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a/e/l;->B:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public S0(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x41200000    # 10.0f

    .line 1
    :cond_1
    invoke-static {p1}, Lg/e/a/a/l/i;->e(F)F

    move-result p1

    iput p1, p0, Lg/e/a/a/e/l;->D:F

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/l;->A:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/l;->C:I

    return v0
.end method

.method public n()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/l;->D:F

    return v0
.end method
