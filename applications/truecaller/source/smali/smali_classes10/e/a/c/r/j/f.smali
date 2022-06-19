.class public abstract Le/a/c/r/j/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/c/r/j/f$b;

    invoke-direct {v0, p0}, Le/a/c/r/j/f$b;-><init>(Le/a/c/r/j/f;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/c/r/j/f;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public abstract a(Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract b()Ls1/w/f;
.end method

.method public final c()Lq3/a/i0;
    .locals 1

    iget-object v0, p0, Le/a/c/r/j/f;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/i0;

    return-object v0
.end method

.method public d()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/a/c/r/j/f;->c()Lq3/a/i0;

    move-result-object v0

    new-instance v3, Le/a/c/r/j/f$a;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Le/a/c/r/j/f$a;-><init>(Le/a/c/r/j/f;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
