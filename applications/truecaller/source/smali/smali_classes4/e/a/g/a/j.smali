.class public final Le/a/g/a/j;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/g/a/m;


# direct methods
.method public constructor <init>(Le/a/g/a/m;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g/a/j;->a:Le/a/g/a/m;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/g/a/j;->a:Le/a/g/a/m;

    .line 2
    iget-object v1, v0, Le/a/g/a/m;->y:Ls1/w/f;

    .line 3
    new-instance v3, Le/a/g/a/j$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/g/a/j$a;-><init>(Le/a/g/a/j;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
