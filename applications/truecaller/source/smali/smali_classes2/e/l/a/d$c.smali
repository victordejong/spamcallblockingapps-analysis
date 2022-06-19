.class public Le/l/a/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/l/a/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/l/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/l/a/d;


# direct methods
.method public constructor <init>(Le/l/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l/a/d$c;->a:Le/l/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/l/a/d$c;->a:Le/l/a/d;

    iget v1, v0, Le/l/a/d;->U:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    .line 2
    iget v2, v0, Le/l/a/d;->T:F

    cmpl-float v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_1

    .line 3
    invoke-virtual {v0}, Le/l/a/d;->a()V

    .line 4
    :cond_1
    iget-object v0, p0, Le/l/a/d$c;->a:Le/l/a/d;

    iget-object v5, v0, Le/l/a/d;->q:Le/l/a/c;

    iget v5, v5, Le/l/a/c;->c:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    .line 5
    iput v1, v0, Le/l/a/d;->T:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v1, p1

    mul-float v7, v1, v5

    .line 6
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Le/l/a/d;->W:I

    .line 7
    iget-object v0, p0, Le/l/a/d$c;->a:Le/l/a/d;

    iget-object v0, v0, Le/l/a/d;->S:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 8
    iget-object v0, p0, Le/l/a/d$c;->a:Le/l/a/d;

    iget-object v5, v0, Le/l/a/d;->S:Landroid/graphics/Path;

    iget-object v7, v0, Le/l/a/d;->V:[I

    aget v4, v7, v4

    int-to-float v4, v4

    aget v3, v7, v3

    int-to-float v3, v3

    iget v0, v0, Le/l/a/d;->T:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v4, v3, v0, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 9
    iget-object v0, p0, Le/l/a/d$c;->a:Le/l/a/d;

    mul-float v3, v1, v6

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Le/l/a/d;->j0:I

    if-eqz v2, :cond_2

    .line 10
    iget-object v0, p0, Le/l/a/d$c;->a:Le/l/a/d;

    iget v3, v0, Le/l/a/d;->e:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, v3

    iput v1, v0, Le/l/a/d;->i0:F

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Le/l/a/d$c;->a:Le/l/a/d;

    iget v1, v0, Le/l/a/d;->e:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iput v1, v0, Le/l/a/d;->i0:F

    .line 12
    iget v1, v0, Le/l/a/d;->g0:F

    mul-float/2addr v1, p1

    iput v1, v0, Le/l/a/d;->g0:F

    .line 13
    :goto_1
    iget-object v0, p0, Le/l/a/d$c;->a:Le/l/a/d;

    const v1, 0x3f333333    # 0.7f

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    cmpg-float v3, p1, v1

    if-gez v3, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    sub-float/2addr p1, v1

    const v1, 0x3e99999a    # 0.3f

    div-float/2addr p1, v1

    :goto_2
    mul-float/2addr p1, v6

    float-to-int p1, p1

    .line 15
    iput p1, v0, Le/l/a/d;->k0:I

    if-eqz v2, :cond_4

    .line 16
    iget-object p1, p0, Le/l/a/d$c;->a:Le/l/a/d;

    invoke-virtual {p1}, Le/l/a/d;->a()V

    .line 17
    :cond_4
    iget-object p1, p0, Le/l/a/d$c;->a:Le/l/a/d;

    iget-object v0, p1, Le/l/a/d;->Q:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Le/l/a/d;->d(Landroid/graphics/Rect;)V

    return-void
.end method
