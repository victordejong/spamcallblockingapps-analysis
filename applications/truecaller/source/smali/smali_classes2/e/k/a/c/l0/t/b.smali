.class public abstract Le/k/a/c/l0/t/b;
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
.field public final c:Le/k/a/c/i;

.field public final d:Le/k/a/c/d;

.field public final e:Z

.field public final f:Ljava/lang/Boolean;

.field public final g:Le/k/a/c/j0/h;

.field public final h:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public i:Le/k/a/c/l0/s/l;


# direct methods
.method public constructor <init>(Le/k/a/c/l0/t/b;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/b<",
            "*>;",
            "Le/k/a/c/d;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Le/k/a/c/l0/h;-><init>(Le/k/a/c/l0/h;)V

    .line 10
    iget-object v0, p1, Le/k/a/c/l0/t/b;->c:Le/k/a/c/i;

    iput-object v0, p0, Le/k/a/c/l0/t/b;->c:Le/k/a/c/i;

    .line 11
    iget-boolean p1, p1, Le/k/a/c/l0/t/b;->e:Z

    iput-boolean p1, p0, Le/k/a/c/l0/t/b;->e:Z

    .line 12
    iput-object p3, p0, Le/k/a/c/l0/t/b;->g:Le/k/a/c/j0/h;

    .line 13
    iput-object p2, p0, Le/k/a/c/l0/t/b;->d:Le/k/a/c/d;

    .line 14
    iput-object p4, p0, Le/k/a/c/l0/t/b;->h:Le/k/a/c/n;

    .line 15
    sget-object p1, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    iput-object p1, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    .line 16
    iput-object p5, p0, Le/k/a/c/l0/t/b;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/i;",
            "Z",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Le/k/a/c/l0/h;-><init>(Ljava/lang/Class;Z)V

    .line 2
    iput-object p2, p0, Le/k/a/c/l0/t/b;->c:Le/k/a/c/i;

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Le/k/a/c/i;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Le/k/a/c/l0/t/b;->e:Z

    .line 4
    iput-object p4, p0, Le/k/a/c/l0/t/b;->g:Le/k/a/c/j0/h;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/k/a/c/l0/t/b;->d:Le/k/a/c/d;

    .line 6
    iput-object p5, p0, Le/k/a/c/l0/t/b;->h:Le/k/a/c/n;

    .line 7
    sget-object p2, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    iput-object p2, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    .line 8
    iput-object p1, p0, Le/k/a/c/l0/t/b;->f:Ljava/lang/Boolean;

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
    iget-object v0, p0, Le/k/a/c/l0/t/b;->g:Le/k/a/c/j0/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Le/k/a/c/j0/h;->a(Le/k/a/c/d;)Le/k/a/c/j0/h;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v2

    .line 4
    invoke-interface {p2}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2, v3}, Le/k/a/c/b;->d(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p1, v3, v2}, Le/k/a/c/a0;->Q(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 7
    :goto_0
    iget-object v3, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    .line 8
    invoke-virtual {p0, p1, p2, v3}, Le/k/a/c/l0/t/q0;->l(Le/k/a/c/a0;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    sget-object v1, Le/k/a/a/k$a;->f:Le/k/a/a/k$a;

    invoke-virtual {v3, v1}, Le/k/a/a/k$d;->b(Le/k/a/a/k$a;)Ljava/lang/Boolean;

    move-result-object v1

    :cond_2
    if-nez v2, :cond_3

    .line 10
    iget-object v2, p0, Le/k/a/c/l0/t/b;->h:Le/k/a/c/n;

    .line 11
    :cond_3
    invoke-virtual {p0, p1, p2, v2}, Le/k/a/c/l0/t/q0;->k(Le/k/a/c/a0;Le/k/a/c/d;Le/k/a/c/n;)Le/k/a/c/n;

    move-result-object v2

    if-nez v2, :cond_4

    .line 12
    iget-object v3, p0, Le/k/a/c/l0/t/b;->c:Le/k/a/c/i;

    if-eqz v3, :cond_4

    .line 13
    iget-boolean v4, p0, Le/k/a/c/l0/t/b;->e:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Le/k/a/c/i;->E()Z

    move-result v3

    if-nez v3, :cond_4

    .line 14
    iget-object v2, p0, Le/k/a/c/l0/t/b;->c:Le/k/a/c/i;

    invoke-virtual {p1, v2, p2}, Le/k/a/c/a0;->u(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v2

    .line 15
    :cond_4
    iget-object p1, p0, Le/k/a/c/l0/t/b;->h:Le/k/a/c/n;

    if-ne v2, p1, :cond_6

    iget-object p1, p0, Le/k/a/c/l0/t/b;->d:Le/k/a/c/d;

    if-ne p2, p1, :cond_6

    iget-object p1, p0, Le/k/a/c/l0/t/b;->g:Le/k/a/c/j0/h;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Le/k/a/c/l0/t/b;->f:Ljava/lang/Boolean;

    .line 16
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    return-object p0

    .line 17
    :cond_6
    :goto_1
    invoke-virtual {p0, p2, v0, v2, v1}, Le/k/a/c/l0/t/b;->s(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)Le/k/a/c/l0/t/b;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
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
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/b;->r(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 6
    invoke-virtual {p4, p2, v0}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void
.end method

.method public final q(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/a0;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/s/l;",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/a0;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/b;->d:Le/k/a/c/d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p3, p2, v0}, Le/k/a/c/a0;->v(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p3

    .line 4
    invoke-virtual {p1, p2, p3}, Le/k/a/c/l0/s/l;->b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;

    move-result-object p2

    if-eq p1, p2, :cond_0

    .line 5
    iput-object p2, p0, Le/k/a/c/l0/t/b;->i:Le/k/a/c/l0/s/l;

    :cond_0
    return-object p3
.end method

.method public abstract r(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
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

.method public abstract s(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Ljava/lang/Boolean;)Le/k/a/c/l0/t/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;",
            "Ljava/lang/Boolean;",
            ")",
            "Le/k/a/c/l0/t/b<",
            "TT;>;"
        }
    .end annotation
.end method
