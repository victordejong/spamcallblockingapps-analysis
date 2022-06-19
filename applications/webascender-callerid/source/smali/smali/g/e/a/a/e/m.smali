.class public abstract Lg/e/a/a/e/m;
.super Lg/e/a/a/e/d;
.source "SourceFile"

# interfaces
.implements Lg/e/a/a/h/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lg/e/a/a/e/i;",
        ">",
        "Lg/e/a/a/e/d<",
        "TT;>;",
        "Lg/e/a/a/h/b/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected w:Z

.field protected x:Z

.field protected y:F

.field protected z:Landroid/graphics/DashPathEffect;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
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
    invoke-direct {p0, p1, p2}, Lg/e/a/a/e/d;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lg/e/a/a/e/m;->w:Z

    .line 3
    iput-boolean p1, p0, Lg/e/a/a/e/m;->x:Z

    const/high16 p1, 0x3f000000    # 0.5f

    .line 4
    iput p1, p0, Lg/e/a/a/e/m;->y:F

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lg/e/a/a/e/m;->z:Landroid/graphics/DashPathEffect;

    .line 6
    invoke-static {p1}, Lg/e/a/a/l/i;->e(F)F

    move-result p1

    iput p1, p0, Lg/e/a/a/e/m;->y:F

    return-void
.end method


# virtual methods
.method public A0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/e/m;->w:Z

    return v0
.end method

.method public D0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/e/m;->x:Z

    return v0
.end method

.method public Z()Landroid/graphics/DashPathEffect;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/m;->z:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public y()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/m;->y:F

    return v0
.end method
