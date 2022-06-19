.class public abstract Le/k/a/c/l0/t/a;
.super Le/k/a/c/l0/h;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/l0/h<",
        "TT;>;",
        "Le/k/a/c/l0/i;"
    }
.end annotation


# instance fields
.field public final c:Le/k/a/c/d;

.field public final d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Le/k/a/c/l0/t/a;Le/k/a/c/d;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/a<",
            "*>;",
            "Le/k/a/c/d;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object p1, p1, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/k/a/c/l0/h;-><init>(Ljava/lang/Class;Z)V

    .line 5
    iput-object p2, p0, Le/k/a/c/l0/t/a;->c:Le/k/a/c/d;

    .line 6
    iput-object p3, p0, Le/k/a/c/l0/t/a;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/l0/h;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/t/a;->c:Le/k/a/c/d;

    .line 3
    iput-object p1, p0, Le/k/a/c/l0/t/a;->d:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 1
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

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/l0/t/q0;->l(Le/k/a/c/a0;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Le/k/a/a/k$a;->f:Le/k/a/a/k$a;

    invoke-virtual {p1, v0}, Le/k/a/a/k$d;->b(Le/k/a/a/k$a;)Ljava/lang/Boolean;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/k/a/c/l0/t/a;->d:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p2, p1}, Le/k/a/c/l0/t/a;->r(Le/k/a/c/d;Ljava/lang/Boolean;)Le/k/a/c/n;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le/k/a/b/g;",
            "Le/k/a/c/a0;",
            "Le/k/a/c/j0/h;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->l:Le/k/a/b/m;

    .line 2
    invoke-virtual {p4, p1, v0}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object v0

    .line 3
    invoke-virtual {p4, p2, v0}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object v0

    .line 4
    invoke-virtual {p2, p1}, Le/k/a/b/g;->J(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/a;->s(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 6
    invoke-virtual {p4, p2, v0}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void
.end method

.method public final q(Le/k/a/c/a0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/a;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Le/k/a/c/z;->v:Le/k/a/c/z;

    invoke-virtual {p1, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public abstract r(Le/k/a/c/d;Ljava/lang/Boolean;)Le/k/a/c/n;
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

.method public abstract s(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
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
.end method
