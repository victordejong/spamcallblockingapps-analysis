.class public Le/k/a/c/l0/t/n;
.super Le/k/a/c/l0/t/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/b<",
        "Ljava/util/EnumSet<",
        "+",
        "Ljava/lang/Enum<",
        "*>;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/k/a/c/i;)V
    .locals 6

    .line 1
    const-class v1, Ljava/util/EnumSet;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/t/b;-><init>(Ljava/lang/Class;Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/n;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/n;",
            "Le/k/a/c/d;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p5}, Le/k/a/c/l0/t/b;-><init>(Le/k/a/c/l0/t/b;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/util/EnumSet;

    .line 2
    invoke-virtual {p2}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/EnumSet;

    .line 2
    invoke-virtual {p1}, Ljava/util/EnumSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Le/k/a/c/l0/t/b;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    sget-object v1, Le/k/a/c/z;->v:Le/k/a/c/z;

    .line 4
    invoke-virtual {p3, v1}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Le/k/a/c/l0/t/b;->f:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/n;->t(Ljava/util/EnumSet;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p2, p1, v0}, Le/k/a/b/g;->L1(Ljava/lang/Object;I)V

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/n;->t(Ljava/util/EnumSet;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 8
    invoke-virtual {p2}, Le/k/a/b/g;->p0()V

    :goto_0
    return-void
.end method

.method public p(Le/k/a/c/j0/h;)Le/k/a/c/l0/h;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic r(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/EnumSet;

    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/n;->t(Ljava/util/EnumSet;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void
.end method

.method public s(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)Le/k/a/c/l0/t/b;
    .locals 7

    .line 1
    new-instance v6, Le/k/a/c/l0/t/n;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le/k/a/c/l0/t/n;-><init>(Le/k/a/c/l0/t/n;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V

    return-object v6
.end method

.method public t(Ljava/util/EnumSet;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "+",
            "Ljava/lang/Enum<",
            "*>;>;",
            "Le/k/a/b/g;",
            "Le/k/a/c/a0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/b;->h:Le/k/a/c/n;

    .line 2
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Le/k/a/c/l0/t/b;->d:Le/k/a/c/d;

    invoke-virtual {p3, v0, v2}, Le/k/a/c/a0;->v(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v0

    .line 4
    :cond_0
    invoke-virtual {v0, v1, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_0

    :cond_1
    return-void
.end method
