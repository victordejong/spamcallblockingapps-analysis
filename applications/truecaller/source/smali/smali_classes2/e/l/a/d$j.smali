.class public Le/l/a/d$j;
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
    iput-object p1, p0, Le/l/a/d$j;->a:Le/l/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 8

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2
    iget-object v2, p0, Le/l/a/d$j;->a:Le/l/a/d;

    iget v3, v2, Le/l/a/d;->U:I

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    mul-float/2addr v4, v3

    iput v4, v2, Le/l/a/d;->T:F

    sub-float v0, v1, v0

    .line 3
    iget-object v3, v2, Le/l/a/d;->q:Le/l/a/c;

    iget v3, v3, Le/l/a/c;->c:F

    mul-float/2addr v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Le/l/a/d;->W:I

    .line 4
    iget-object v2, v2, Le/l/a/d;->S:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 5
    iget-object v2, p0, Le/l/a/d$j;->a:Le/l/a/d;

    iget-object v3, v2, Le/l/a/d;->S:Landroid/graphics/Path;

    iget-object v5, v2, Le/l/a/d;->V:[I

    const/4 v6, 0x0

    aget v6, v5, v6

    int-to-float v6, v6

    const/4 v7, 0x1

    aget v5, v5, v7

    int-to-float v5, v5

    iget v2, v2, Le/l/a/d;->T:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v6, v5, v2, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 6
    iget-object v2, p0, Le/l/a/d$j;->a:Le/l/a/d;

    sub-float v3, v1, p1

    iget v5, v2, Le/l/a/d;->e:I

    int-to-float v6, v5

    mul-float/2addr v6, v3

    iput v6, v2, Le/l/a/d;->i0:F

    mul-float v6, v3, v4

    float-to-int v6, v6

    .line 7
    iput v6, v2, Le/l/a/d;->j0:I

    add-float/2addr p1, v1

    int-to-float v1, v5

    mul-float/2addr p1, v1

    .line 8
    iput p1, v2, Le/l/a/d;->g0:F

    .line 9
    iget p1, v2, Le/l/a/d;->h0:I

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, v2, Le/l/a/d;->h0:I

    mul-float/2addr v0, v4

    float-to-int p1, v0

    .line 10
    iput p1, v2, Le/l/a/d;->k0:I

    .line 11
    invoke-virtual {v2}, Le/l/a/d;->a()V

    .line 12
    iget-object p1, p0, Le/l/a/d$j;->a:Le/l/a/d;

    iget-object v0, p1, Le/l/a/d;->Q:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Le/l/a/d;->d(Landroid/graphics/Rect;)V

    return-void
.end method
