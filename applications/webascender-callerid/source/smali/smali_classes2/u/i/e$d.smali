.class final Lu/i/e$d;
.super Lu/i/e$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
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
.method d(Lu/i/h;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Lu/i/h;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method e(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x9

    return p1
.end method

.method f(Lu/i/t;J)V
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
    invoke-virtual {p1, p2, p3}, Lu/i/t;->o(J)V

    return-void
.end method
