.class public Le/d/b/a/b/r;
.super Le/d/b/a/b/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/d/b/a/a;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/d/b/a/b/g;-><init>()V

    const/16 v0, 0x84

    .line 2
    invoke-virtual {p0, v0}, Le/d/b/a/b/f;->b(I)V

    return-void
.end method

.method public constructor <init>(Le/d/b/a/b/m;Le/d/b/a/b/j;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Le/d/b/a/b/g;-><init>(Le/d/b/a/b/m;Le/d/b/a/b/j;)V

    return-void
.end method
