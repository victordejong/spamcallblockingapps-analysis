.class public final Le/m/a/c/r1/t/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public final b:[F

.field public final c:Le/m/a/c/q1/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/q1/b0<",
            "[F>;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Le/m/a/c/r1/t/c;->a:[F

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Le/m/a/c/r1/t/c;->b:[F

    .line 4
    new-instance v0, Le/m/a/c/q1/b0;

    invoke-direct {v0}, Le/m/a/c/q1/b0;-><init>()V

    iput-object v0, p0, Le/m/a/c/r1/t/c;->c:Le/m/a/c/q1/b0;

    return-void
.end method

.method public static a([F[F)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v1, 0xa

    .line 2
    aget v2, p1, v1

    aget v3, p1, v1

    mul-float/2addr v2, v3

    const/16 v3, 0x8

    aget v4, p1, v3

    aget v5, p1, v3

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    float-to-double v4, v4

    .line 3
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 4
    aget v4, p1, v1

    div-float/2addr v4, v2

    aput v4, p0, v0

    .line 5
    aget v0, p1, v3

    div-float/2addr v0, v2

    const/4 v4, 0x2

    aput v0, p0, v4

    .line 6
    aget v0, p1, v3

    neg-float v0, v0

    div-float/2addr v0, v2

    aput v0, p0, v3

    .line 7
    aget p1, p1, v1

    div-float/2addr p1, v2

    aput p1, p0, v1

    return-void
.end method
