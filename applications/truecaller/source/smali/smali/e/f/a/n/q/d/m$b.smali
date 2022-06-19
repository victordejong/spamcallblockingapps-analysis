.class public Le/f/a/n/q/d/m$b;
.super Le/f/a/n/q/d/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/q/d/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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
    .locals 1

    .line 1
    sget-object v0, Le/f/a/n/q/d/m$f;->b:Le/f/a/n/q/d/m$f;

    invoke-virtual {p0, p1, p2, p3, p4}, Le/f/a/n/q/d/m$b;->b(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-boolean p1, Le/f/a/n/q/d/m;->h:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Le/f/a/n/q/d/m$f;->a:Le/f/a/n/q/d/m$f;

    :goto_0
    return-object v0
.end method

.method public b(IIII)F
    .locals 1

    .line 1
    sget-object v0, Le/f/a/n/q/d/m;->b:Le/f/a/n/q/d/m;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Le/f/a/n/q/d/m;->b(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
