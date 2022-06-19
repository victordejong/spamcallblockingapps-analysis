.class public final Ls1/a/a/a/v0/j/y/f;
.super Ls1/a/a/a/v0/j/j;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/j/y/e;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/j/y/e;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/j/y/f;->a:Ls1/a/a/a/v0/j/y/e;

    iput-object p2, p0, Ls1/a/a/a/v0/j/y/f;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ls1/a/a/a/v0/j/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/b;)V
    .locals 1

    const-string v0, "fakeOverride"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ls1/a/a/a/v0/j/l;->r(Ls1/a/a/a/v0/b/b;Ls1/z/b/l;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/b;)V
    .locals 2

    const-string v0, "fromSuper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromCurrent"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conflict in scope of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/j/y/f;->a:Ls1/a/a/a/v0/j/y/e;

    .line 2
    iget-object v1, v1, Ls1/a/a/a/v0/j/y/e;->c:Ls1/a/a/a/v0/b/e;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
