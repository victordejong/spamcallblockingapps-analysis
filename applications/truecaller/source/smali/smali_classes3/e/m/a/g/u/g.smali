.class public final Le/m/a/g/u/g;
.super Le/m/a/g/u/f;
.source "SourceFile"


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/m/a/g/u/f;-><init>()V

    const v0, 0x3a83126f    # 0.001f

    sub-float/2addr p1, v0

    .line 2
    iput p1, p0, Le/m/a/g/u/g;->a:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(FFFLe/m/a/g/u/o;)V
    .locals 8

    .line 1
    iget p1, p0, Le/m/a/g/u/g;->a:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    div-double/2addr v4, v2

    double-to-float p1, v4

    .line 2
    iget p3, p0, Le/m/a/g/u/g;->a:F

    float-to-double v0, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p3, v0

    sub-float v0, p2, p1

    .line 3
    iget v1, p0, Le/m/a/g/u/g;->a:F

    float-to-double v4, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    iget v1, p0, Le/m/a/g/u/g;->a:F

    float-to-double v4, v1

    sub-double/2addr v6, v4

    neg-double v4, v6

    double-to-float v1, v4

    add-float/2addr v1, p3

    invoke-virtual {p4, v0, v1}, Le/m/a/g/u/o;->e(FF)V

    .line 4
    iget v0, p0, Le/m/a/g/u/g;->a:F

    float-to-double v0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    iget v0, p0, Le/m/a/g/u/g;->a:F

    float-to-double v0, v0

    sub-double/2addr v4, v0

    neg-double v0, v4

    double-to-float v0, v0

    invoke-virtual {p4, p2, v0}, Le/m/a/g/u/o;->d(FF)V

    add-float/2addr p2, p1

    .line 5
    iget p1, p0, Le/m/a/g/u/g;->a:F

    float-to-double v0, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iget p1, p0, Le/m/a/g/u/g;->a:F

    float-to-double v0, p1

    sub-double/2addr v2, v0

    neg-double v0, v2

    double-to-float p1, v0

    add-float/2addr p1, p3

    invoke-virtual {p4, p2, p1}, Le/m/a/g/u/o;->d(FF)V

    return-void
.end method
