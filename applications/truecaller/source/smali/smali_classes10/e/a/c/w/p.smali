.class public final Le/a/c/w/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/c/q/j;

    .line 2
    instance-of v0, p1, Le/a/c/q/j$b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/q/j$b;

    .line 3
    iget-object p1, p1, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 4
    iget-object p1, p1, Le/a/c/r/b$f;->x:Lw3/b/a/b;

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Le/a/c/q/j$a;

    if-eqz v0, :cond_3

    check-cast p1, Le/a/c/q/j$a;

    .line 6
    iget-object p1, p1, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 7
    iget-object p1, p1, Le/a/c/r/b$b;->p:Lw3/b/a/b;

    .line 8
    :goto_0
    check-cast p2, Le/a/c/q/j;

    .line 9
    instance-of v0, p2, Le/a/c/q/j$b;

    if-eqz v0, :cond_1

    check-cast p2, Le/a/c/q/j$b;

    .line 10
    iget-object p2, p2, Le/a/c/q/j$b;->h:Le/a/c/r/b$f;

    .line 11
    iget-object p2, p2, Le/a/c/r/b$f;->x:Lw3/b/a/b;

    goto :goto_1

    .line 12
    :cond_1
    instance-of v0, p2, Le/a/c/q/j$a;

    if-eqz v0, :cond_2

    check-cast p2, Le/a/c/q/j$a;

    .line 13
    iget-object p2, p2, Le/a/c/q/j$a;->h:Le/a/c/r/b$b;

    .line 14
    iget-object p2, p2, Le/a/c/r/b$b;->p:Lw3/b/a/b;

    .line 15
    :goto_1
    invoke-static {p1, p2}, Le/q/f/a/d/a;->K(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1

    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
