.class public final Le/m/a/g/q/i;
.super Le/m/a/g/q/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Le/m/a/g/q/c;",
        ">",
        "Le/m/a/g/q/l;"
    }
.end annotation


# static fields
.field public static final q:Ln3/p/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/p/a/d<",
            "Le/m/a/g/q/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public l:Le/m/a/g/q/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/g/q/m<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final m:Ln3/p/a/g;

.field public final n:Ln3/p/a/f;

.field public o:F

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/m/a/g/q/i$a;

    const-string v1, "indicatorLevel"

    invoke-direct {v0, v1}, Le/m/a/g/q/i$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/m/a/g/q/i;->q:Ln3/p/a/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/m/a/g/q/c;Le/m/a/g/q/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/m/a/g/q/c;",
            "Le/m/a/g/q/m<",
            "TS;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Le/m/a/g/q/l;-><init>(Landroid/content/Context;Le/m/a/g/q/c;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le/m/a/g/q/i;->p:Z

    .line 3
    iput-object p3, p0, Le/m/a/g/q/i;->l:Le/m/a/g/q/m;

    .line 4
    iput-object p0, p3, Le/m/a/g/q/m;->b:Le/m/a/g/q/l;

    .line 5
    new-instance p1, Ln3/p/a/g;

    invoke-direct {p1}, Ln3/p/a/g;-><init>()V

    iput-object p1, p0, Le/m/a/g/q/i;->m:Ln3/p/a/g;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p1, p2}, Ln3/p/a/g;->a(F)Ln3/p/a/g;

    const/high16 p3, 0x42480000    # 50.0f

    .line 7
    invoke-virtual {p1, p3}, Ln3/p/a/g;->b(F)Ln3/p/a/g;

    .line 8
    new-instance p3, Ln3/p/a/f;

    sget-object v0, Le/m/a/g/q/i;->q:Ln3/p/a/d;

    invoke-direct {p3, p0, v0}, Ln3/p/a/f;-><init>(Ljava/lang/Object;Ln3/p/a/d;)V

    iput-object p3, p0, Le/m/a/g/q/i;->n:Ln3/p/a/f;

    .line 9
    iput-object p1, p3, Ln3/p/a/f;->v:Ln3/p/a/g;

    .line 10
    iget p1, p0, Le/m/a/g/q/l;->h:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 11
    iput p2, p0, Le/m/a/g/q/l;->h:F

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object v0, p0, Le/m/a/g/q/i;->l:Le/m/a/g/q/m;

    invoke-virtual {p0}, Le/m/a/g/q/l;->c()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Le/m/a/g/q/m;->e(Landroid/graphics/Canvas;F)V

    .line 5
    iget-object v0, p0, Le/m/a/g/q/i;->l:Le/m/a/g/q/m;

    iget-object v1, p0, Le/m/a/g/q/l;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Le/m/a/g/q/m;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Le/m/a/g/q/l;->b:Le/m/a/g/q/c;

    iget-object v0, v0, Le/m/a/g/q/c;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 7
    iget v1, p0, Le/m/a/g/q/l;->j:I

    .line 8
    invoke-static {v0, v1}, Ln3/g0/y;->C(II)I

    move-result v7

    .line 9
    iget-object v2, p0, Le/m/a/g/q/i;->l:Le/m/a/g/q/m;

    iget-object v4, p0, Le/m/a/g/q/l;->i:Landroid/graphics/Paint;

    const/4 v5, 0x0

    .line 10
    iget v6, p0, Le/m/a/g/q/i;->o:F

    move-object v3, p1

    .line 11
    invoke-virtual/range {v2 .. v7}, Le/m/a/g/q/m;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/i;->l:Le/m/a/g/q/m;

    invoke-virtual {v0}, Le/m/a/g/q/m;->c()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/q/i;->l:Le/m/a/g/q/m;

    invoke-virtual {v0}, Le/m/a/g/q/m;->d()I

    move-result v0

    return v0
.end method

.method public i(ZZZ)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Le/m/a/g/q/l;->i(ZZZ)Z

    move-result p1

    .line 2
    iget-object p2, p0, Le/m/a/g/q/l;->c:Le/m/a/g/q/a;

    iget-object p3, p0, Le/m/a/g/q/l;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2, p3}, Le/m/a/g/q/a;->a(Landroid/content/ContentResolver;)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Le/m/a/g/q/i;->p:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 5
    iput-boolean p3, p0, Le/m/a/g/q/i;->p:Z

    .line 6
    iget-object p3, p0, Le/m/a/g/q/i;->m:Ln3/p/a/g;

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr v0, p2

    invoke-virtual {p3, v0}, Ln3/p/a/g;->b(F)Ln3/p/a/g;

    :goto_0
    return p1
.end method

.method public jumpToCurrentState()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/q/i;->n:Ln3/p/a/f;

    invoke-virtual {v0}, Ln3/p/a/b;->c()V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    .line 3
    iput v0, p0, Le/m/a/g/q/i;->o:F

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public onLevelChange(I)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/m/a/g/q/i;->p:Z

    const v1, 0x461c4000    # 10000.0f

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/g/q/i;->n:Ln3/p/a/f;

    invoke-virtual {v0}, Ln3/p/a/b;->c()V

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 3
    iput p1, p0, Le/m/a/g/q/i;->o:F

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/m/a/g/q/i;->n:Ln3/p/a/f;

    .line 6
    iget v2, p0, Le/m/a/g/q/i;->o:F

    mul-float/2addr v2, v1

    .line 7
    invoke-virtual {v0, v2}, Ln3/p/a/b;->h(F)Ln3/p/a/b;

    .line 8
    iget-object v0, p0, Le/m/a/g/q/i;->n:Ln3/p/a/f;

    int-to-float p1, p1

    .line 9
    iget-boolean v1, v0, Ln3/p/a/b;->f:Z

    if-eqz v1, :cond_1

    .line 10
    iput p1, v0, Ln3/p/a/f;->w:F

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, v0, Ln3/p/a/f;->v:Ln3/p/a/g;

    if-nez v1, :cond_2

    .line 12
    new-instance v1, Ln3/p/a/g;

    invoke-direct {v1, p1}, Ln3/p/a/g;-><init>(F)V

    iput-object v1, v0, Ln3/p/a/f;->v:Ln3/p/a/g;

    .line 13
    :cond_2
    iget-object v1, v0, Ln3/p/a/f;->v:Ln3/p/a/g;

    float-to-double v2, p1

    .line 14
    iput-wide v2, v1, Ln3/p/a/g;->i:D

    .line 15
    invoke-virtual {v0}, Ln3/p/a/f;->i()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
