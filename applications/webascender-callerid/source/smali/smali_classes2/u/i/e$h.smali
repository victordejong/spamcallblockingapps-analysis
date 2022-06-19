.class Lu/i/e$h;
.super Lu/i/e$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu/i/e$c;-><init>(I)V

    return-void
.end method


# virtual methods
.method d(I)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lu/i/t;->d(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method e(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 1
    invoke-static {p1, p2}, Lu/i/t;->e(J)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method f(Lu/i/t;I)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lu/i/e$c;->b:I

    invoke-virtual {p1, v0}, Lu/i/t;->l(I)V

    .line 2
    invoke-virtual {p1, p2}, Lu/i/t;->q(I)V

    return-void
.end method

.method g(Lu/i/t;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lu/i/e$c;->b:I

    invoke-virtual {p1, v0}, Lu/i/t;->l(I)V

    .line 2
    invoke-virtual {p1, p2, p3}, Lu/i/t;->r(J)V

    return-void
.end method
