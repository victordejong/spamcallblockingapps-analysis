.class public final Le/a/v/a/j;
.super Le/a/b0/i/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:Le/a/v/a/q;


# direct methods
.method public constructor <init>(Le/a/v/a/q;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/v/a/j;->d:Le/a/v/a/q;

    const-wide/16 v0, 0x12c

    .line 2
    invoke-direct {p0, p2, v0, v1}, Le/a/b0/i/b;-><init>(Landroid/os/Handler;J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/v/a/j;->d:Le/a/v/a/q;

    .line 2
    iget-object v1, v0, Le/a/v/a/q;->i:Ls1/w/f;

    .line 3
    new-instance v3, Le/a/v/a/j$a;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Le/a/v/a/j$a;-><init>(Le/a/v/a/j;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
