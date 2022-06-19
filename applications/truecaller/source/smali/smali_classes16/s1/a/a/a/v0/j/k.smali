.class public abstract Ls1/a/a/a/v0/j/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ls1/a/a/a/v0/b/b;)V
.end method

.method public abstract b(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/b;)V
.end method

.method public abstract c(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/b;)V
.end method

.method public d(Ls1/a/a/a/v0/b/b;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/b;",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "member"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overridden"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p2}, Ls1/a/a/a/v0/b/b;->V(Ljava/util/Collection;)V

    return-void
.end method
