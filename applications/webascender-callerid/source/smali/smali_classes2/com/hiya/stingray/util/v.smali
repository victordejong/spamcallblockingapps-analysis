.class public final Lcom/hiya/stingray/util/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(D)D
    .locals 2

    const-wide v0, 0x3fe3e2456f75d9a1L    # 0.621371

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static final b(D)F
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    float-to-double v1, v0

    mul-double p0, p0, v1

    .line 1
    invoke-static {p0, p1}, Lkotlin/x/a;->a(D)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    return p0
.end method
