.class public Lg/e/a/a/e/o;
.super Lg/e/a/a/e/h;
.source "SourceFile"

# interfaces
.implements Lg/e/a/a/h/b/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e/a/a/e/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/e/a/a/e/h<",
        "Lg/e/a/a/e/p;",
        ">;",
        "Lg/e/a/a/h/b/h;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:Z

.field private v:F

.field private w:Z

.field private x:F

.field private y:Lg/e/a/a/e/o$a;

.field private z:Lg/e/a/a/e/o$a;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/e/a/a/e/p;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lg/e/a/a/e/h;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lg/e/a/a/e/o;->v:F

    const/high16 p1, 0x41900000    # 18.0f

    .line 3
    iput p1, p0, Lg/e/a/a/e/o;->x:F

    .line 4
    sget-object p1, Lg/e/a/a/e/o$a;->INSIDE_SLICE:Lg/e/a/a/e/o$a;

    iput-object p1, p0, Lg/e/a/a/e/o;->y:Lg/e/a/a/e/o$a;

    .line 5
    iput-object p1, p0, Lg/e/a/a/e/o;->z:Lg/e/a/a/e/o$a;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lg/e/a/a/e/o;->A:Z

    const/high16 p1, -0x1000000

    .line 7
    iput p1, p0, Lg/e/a/a/e/o;->B:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    iput p1, p0, Lg/e/a/a/e/o;->C:F

    const/high16 p1, 0x42960000    # 75.0f

    .line 9
    iput p1, p0, Lg/e/a/a/e/o;->D:F

    const p1, 0x3e99999a    # 0.3f

    .line 10
    iput p1, p0, Lg/e/a/a/e/o;->E:F

    const p1, 0x3ecccccd    # 0.4f

    .line 11
    iput p1, p0, Lg/e/a/a/e/o;->F:F

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lg/e/a/a/e/o;->G:Z

    return-void
.end method


# virtual methods
.method public H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/e/o;->w:Z

    return v0
.end method

.method protected bridge synthetic L0(Lg/e/a/a/e/i;)V
    .locals 0

    .line 1
    check-cast p1, Lg/e/a/a/e/p;

    invoke-virtual {p0, p1}, Lg/e/a/a/e/o;->Q0(Lg/e/a/a/e/p;)V

    return-void
.end method

.method public M()I
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/o;->B:I

    return v0
.end method

.method public Q()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/o;->C:F

    return v0
.end method

.method protected Q0(Lg/e/a/a/e/p;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lg/e/a/a/e/h;->N0(Lg/e/a/a/e/i;)V

    return-void
.end method

.method public R()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/o;->E:F

    return v0
.end method

.method public S()Lg/e/a/a/e/o$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/o;->y:Lg/e/a/a/e/o$a;

    return-object v0
.end method

.method public a0()Lg/e/a/a/e/o$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/o;->z:Lg/e/a/a/e/o$a;

    return-object v0
.end method

.method public b0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/e/o;->G:Z

    return v0
.end method

.method public e()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/o;->v:F

    return v0
.end method

.method public e0()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/o;->F:F

    return v0
.end method

.method public h0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/e/o;->A:Z

    return v0
.end method

.method public k0()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/o;->x:F

    return v0
.end method

.method public m0()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/e/o;->D:F

    return v0
.end method
