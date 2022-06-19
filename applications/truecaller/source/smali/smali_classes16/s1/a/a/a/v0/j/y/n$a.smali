.class public final Ls1/a/a/a/v0/j/y/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/j/y/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static final a(Ljava/lang/String;Ljava/util/Collection;)Ls1/a/a/a/v0/j/y/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/m/e0;",
            ">;)",
            "Ls1/a/a/a/v0/j/y/i;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ls1/a/a/a/v0/m/e0;

    .line 4
    invoke-virtual {v1}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->y2(Ljava/lang/Iterable;)Ls1/a/a/a/v0/o/l;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Ls1/a/a/a/v0/j/y/b;->i(Ljava/lang/String;Ljava/util/List;)Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    .line 6
    iget p1, p1, Ls1/a/a/a/v0/o/l;->a:I

    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    return-object v0

    .line 7
    :cond_1
    new-instance p1, Ls1/a/a/a/v0/j/y/n;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Ls1/a/a/a/v0/j/y/n;-><init>(Ljava/lang/String;Ls1/a/a/a/v0/j/y/i;Ls1/z/c/f;)V

    return-object p1
.end method
