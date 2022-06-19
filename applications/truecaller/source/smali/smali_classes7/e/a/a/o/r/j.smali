.class public final Le/a/a/o/r/j;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/o/r/i;


# direct methods
.method public constructor <init>(Le/a/a/o/r/i;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o/r/j;->b:Le/a/a/o/r/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/o/r/j;->b:Le/a/a/o/r/i;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Le/a/a/o/r/i$b;

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Le/a/a/o/r/i$b;-><init>(Le/a/a/o/r/i;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
