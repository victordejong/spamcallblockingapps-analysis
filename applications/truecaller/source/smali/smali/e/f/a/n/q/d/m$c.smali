.class public Le/f/a/n/q/d/m$c;
.super Le/f/a/n/q/d/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/q/d/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/a/n/q/d/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)Le/f/a/n/q/d/m$f;
    .locals 0

    .line 1
    sget-object p1, Le/f/a/n/q/d/m$f;->b:Le/f/a/n/q/d/m$f;

    return-object p1
.end method

.method public b(IIII)F
    .locals 0

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method
