.class public abstract Le/m/a/g/q/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Le/m/a/g/q/c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Le/m/a/g/q/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public b:Le/m/a/g/q/l;


# direct methods
.method public constructor <init>(Le/m/a/g/q/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/g/q/m;->a:Le/m/a/g/q/c;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
.end method

.method public abstract b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public e(Landroid/graphics/Canvas;F)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/g/q/m;->a:Le/m/a/g/q/c;

    check-cast v0, Le/m/a/g/q/h;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    move-object v0, p0

    check-cast v0, Le/m/a/g/q/d;

    .line 4
    iget-object v1, v0, Le/m/a/g/q/m;->a:Le/m/a/g/q/c;

    check-cast v1, Le/m/a/g/q/h;

    iget v2, v1, Le/m/a/g/q/h;->g:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v1, v1, Le/m/a/g/q/h;->h:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    .line 5
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v1, v2

    .line 7
    invoke-virtual {p1, v1, v1, v2, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 8
    iget-object p1, v0, Le/m/a/g/q/m;->a:Le/m/a/g/q/c;

    check-cast p1, Le/m/a/g/q/h;

    iget v1, p1, Le/m/a/g/q/h;->i:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Le/m/a/g/q/d;->c:I

    .line 9
    iget v1, p1, Le/m/a/g/q/c;->a:I

    int-to-float v4, v1

    mul-float/2addr v4, p2

    iput v4, v0, Le/m/a/g/q/d;->d:F

    .line 10
    iget v4, p1, Le/m/a/g/q/c;->b:I

    int-to-float v4, v4

    mul-float/2addr v4, p2

    iput v4, v0, Le/m/a/g/q/d;->e:F

    .line 11
    iget p1, p1, Le/m/a/g/q/h;->g:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr p1, v3

    iput p1, v0, Le/m/a/g/q/d;->f:F

    .line 12
    iget-object p1, v0, Le/m/a/g/q/m;->b:Le/m/a/g/q/l;

    invoke-virtual {p1}, Le/m/a/g/q/l;->f()Z

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    iget-object p1, v0, Le/m/a/g/q/m;->a:Le/m/a/g/q/c;

    check-cast p1, Le/m/a/g/q/h;

    iget p1, p1, Le/m/a/g/q/c;->e:I

    if-eq p1, v4, :cond_2

    :cond_1
    iget-object p1, v0, Le/m/a/g/q/m;->b:Le/m/a/g/q/l;

    .line 13
    invoke-virtual {p1}, Le/m/a/g/q/l;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v0, Le/m/a/g/q/m;->a:Le/m/a/g/q/c;

    check-cast p1, Le/m/a/g/q/h;

    iget p1, p1, Le/m/a/g/q/c;->f:I

    if-ne p1, v2, :cond_3

    .line 14
    :cond_2
    iget p1, v0, Le/m/a/g/q/d;->f:F

    sub-float/2addr v1, p2

    iget-object p2, v0, Le/m/a/g/q/m;->a:Le/m/a/g/q/c;

    check-cast p2, Le/m/a/g/q/h;

    iget p2, p2, Le/m/a/g/q/c;->a:I

    int-to-float p2, p2

    mul-float/2addr v1, p2

    div-float/2addr v1, v3

    add-float/2addr v1, p1

    iput v1, v0, Le/m/a/g/q/d;->f:F

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, v0, Le/m/a/g/q/m;->b:Le/m/a/g/q/l;

    invoke-virtual {p1}, Le/m/a/g/q/l;->f()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v0, Le/m/a/g/q/m;->a:Le/m/a/g/q/c;

    check-cast p1, Le/m/a/g/q/h;

    iget p1, p1, Le/m/a/g/q/c;->e:I

    if-eq p1, v2, :cond_5

    :cond_4
    iget-object p1, v0, Le/m/a/g/q/m;->b:Le/m/a/g/q/l;

    .line 16
    invoke-virtual {p1}, Le/m/a/g/q/l;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v0, Le/m/a/g/q/m;->a:Le/m/a/g/q/c;

    check-cast p1, Le/m/a/g/q/h;

    iget p1, p1, Le/m/a/g/q/c;->f:I

    if-ne p1, v4, :cond_6

    .line 17
    :cond_5
    iget p1, v0, Le/m/a/g/q/d;->f:F

    sub-float/2addr v1, p2

    iget-object p2, v0, Le/m/a/g/q/m;->a:Le/m/a/g/q/c;

    check-cast p2, Le/m/a/g/q/h;

    iget p2, p2, Le/m/a/g/q/c;->a:I

    int-to-float p2, p2

    mul-float/2addr v1, p2

    div-float/2addr v1, v3

    sub-float/2addr p1, v1

    iput p1, v0, Le/m/a/g/q/d;->f:F

    :cond_6
    :goto_1
    return-void
.end method
