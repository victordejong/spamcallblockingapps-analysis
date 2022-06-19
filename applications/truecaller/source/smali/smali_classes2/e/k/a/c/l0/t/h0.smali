.class public abstract Le/k/a/c/l0/t/h0;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Collection<",
        "*>;>",
        "Le/k/a/c/l0/t/q0<",
        "TT;>;",
        "Le/k/a/c/l0/i;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Le/k/a/c/l0/t/h0;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/h0<",
            "*>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Le/k/a/c/l0/t/q0;-><init>(Le/k/a/c/l0/t/q0;)V

    .line 4
    iput-object p2, p0, Le/k/a/c/l0/t/h0;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;Z)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/t/h0;->c:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v2

    .line 3
    invoke-interface {p2}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2, v3}, Le/k/a/c/b;->d(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1, v3, v2}, Le/k/a/c/a0;->Q(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 6
    :goto_0
    iget-object v3, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    .line 7
    invoke-virtual {p0, p1, p2, v3}, Le/k/a/c/l0/t/q0;->l(Le/k/a/c/a0;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    sget-object v4, Le/k/a/a/k$a;->f:Le/k/a/a/k$a;

    invoke-virtual {v3, v4}, Le/k/a/a/k$d;->b(Le/k/a/a/k$a;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 9
    :goto_1
    invoke-virtual {p0, p1, p2, v2}, Le/k/a/c/l0/t/q0;->k(Le/k/a/c/a0;Le/k/a/c/d;Le/k/a/c/n;)Le/k/a/c/n;

    move-result-object v2

    if-nez v2, :cond_2

    .line 10
    invoke-virtual {p1, v0, p2}, Le/k/a/c/a0;->v(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v2

    .line 11
    :cond_2
    invoke-static {v2}, Le/k/a/c/n0/g;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    iget-object p1, p0, Le/k/a/c/l0/t/h0;->c:Ljava/lang/Boolean;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p0

    .line 13
    :cond_3
    invoke-virtual {p0, p2, v3}, Le/k/a/c/l0/t/h0;->p(Le/k/a/c/d;Ljava/lang/Boolean;)Le/k/a/c/n;

    move-result-object p1

    return-object p1

    .line 14
    :cond_4
    new-instance p2, Le/k/a/c/l0/t/j;

    invoke-virtual {p1, v0}, Le/k/a/c/e;->f(Ljava/lang/reflect/Type;)Le/k/a/c/i;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Le/k/a/c/l0/t/j;-><init>(Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V

    return-object p2
.end method

.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public abstract p(Le/k/a/c/d;Ljava/lang/Boolean;)Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d;",
            "Ljava/lang/Boolean;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation
.end method
