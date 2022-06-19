.class public Le/d/b/a/b/a;
.super Le/d/b/a/b/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/d/b/a/a;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/d/b/a/b/f;-><init>()V

    const/16 v0, 0x85

    .line 2
    invoke-virtual {p0, v0}, Le/d/b/a/b/f;->b(I)V

    .line 3
    iget-object v0, p0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 v1, 0x8d

    invoke-virtual {v0, p1, v1}, Le/d/b/a/b/m;->i(II)V

    .line 4
    iget-object p1, p0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 v0, 0x98

    invoke-virtual {p1, p2, v0}, Le/d/b/a/b/m;->j([BI)V

    return-void
.end method

.method public constructor <init>(Le/d/b/a/b/m;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Le/d/b/a/b/f;-><init>(Le/d/b/a/b/m;)V

    return-void
.end method
