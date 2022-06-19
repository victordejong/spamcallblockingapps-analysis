.class public Le/k/a/c/l0/t/s;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/l0/t/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/q0<",
        "Ljava/lang/Object;",
        ">;",
        "Le/k/a/c/l0/i;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# instance fields
.field public final c:Le/k/a/c/g0/i;

.field public final d:Le/k/a/c/j0/h;

.field public final e:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/k/a/c/d;

.field public final g:Le/k/a/c/i;

.field public final h:Z

.field public transient i:Le/k/a/c/l0/s/l;


# direct methods
.method public constructor <init>(Le/k/a/c/g0/i;Le/k/a/c/j0/h;Le/k/a/c/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/i;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;)V"
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Le/k/a/c/g0/b;->e()Le/k/a/c/i;

    move-result-object v0

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/q0;-><init>(Le/k/a/c/i;)V

    .line 12
    iput-object p1, p0, Le/k/a/c/l0/t/s;->c:Le/k/a/c/g0/i;

    .line 13
    invoke-virtual {p1}, Le/k/a/c/g0/b;->e()Le/k/a/c/i;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/l0/t/s;->g:Le/k/a/c/i;

    .line 14
    iput-object p2, p0, Le/k/a/c/l0/t/s;->d:Le/k/a/c/j0/h;

    .line 15
    iput-object p3, p0, Le/k/a/c/l0/t/s;->e:Le/k/a/c/n;

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Le/k/a/c/l0/t/s;->f:Le/k/a/c/d;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Le/k/a/c/l0/t/s;->h:Z

    .line 18
    sget-object p1, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    iput-object p1, p0, Le/k/a/c/l0/t/s;->i:Le/k/a/c/l0/s/l;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/s;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/s;",
            "Le/k/a/c/d;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;)V

    .line 4
    iget-object v0, p1, Le/k/a/c/l0/t/s;->c:Le/k/a/c/g0/i;

    iput-object v0, p0, Le/k/a/c/l0/t/s;->c:Le/k/a/c/g0/i;

    .line 5
    iget-object p1, p1, Le/k/a/c/l0/t/s;->g:Le/k/a/c/i;

    iput-object p1, p0, Le/k/a/c/l0/t/s;->g:Le/k/a/c/i;

    .line 6
    iput-object p3, p0, Le/k/a/c/l0/t/s;->d:Le/k/a/c/j0/h;

    .line 7
    iput-object p4, p0, Le/k/a/c/l0/t/s;->e:Le/k/a/c/n;

    .line 8
    iput-object p2, p0, Le/k/a/c/l0/t/s;->f:Le/k/a/c/d;

    .line 9
    iput-boolean p5, p0, Le/k/a/c/l0/t/s;->h:Z

    .line 10
    sget-object p1, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    iput-object p1, p0, Le/k/a/c/l0/t/s;->i:Le/k/a/c/l0/s/l;

    return-void
.end method


# virtual methods
.method public b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 4
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
    iget-object v0, p0, Le/k/a/c/l0/t/s;->d:Le/k/a/c/j0/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Le/k/a/c/j0/h;->a(Le/k/a/c/d;)Le/k/a/c/j0/h;

    move-result-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Le/k/a/c/l0/t/s;->e:Le/k/a/c/n;

    if-nez v1, :cond_6

    .line 4
    sget-object v2, Le/k/a/c/p;->r:Le/k/a/c/p;

    invoke-virtual {p1, v2}, Le/k/a/c/a0;->L(Le/k/a/c/p;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Le/k/a/c/l0/t/s;->g:Le/k/a/c/i;

    invoke-virtual {v2}, Le/k/a/c/i;->C()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Le/k/a/c/l0/t/s;->f:Le/k/a/c/d;

    if-eq p2, p1, :cond_2

    .line 6
    iget-boolean p1, p0, Le/k/a/c/l0/t/s;->h:Z

    invoke-virtual {p0, p2, v0, v1, p1}, Le/k/a/c/l0/t/s;->q(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Z)Le/k/a/c/l0/t/s;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p0

    .line 7
    :cond_3
    :goto_0
    iget-object v1, p0, Le/k/a/c/l0/t/s;->g:Le/k/a/c/i;

    invoke-virtual {p1, v1, p2}, Le/k/a/c/a0;->y(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    .line 8
    iget-object v1, p0, Le/k/a/c/l0/t/s;->g:Le/k/a/c/i;

    .line 9
    iget-object v1, v1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 11
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_5

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_5

    goto :goto_1

    .line 12
    :cond_4
    const-class v2, Ljava/lang/String;

    if-eq v1, v2, :cond_5

    const-class v2, Ljava/lang/Integer;

    if-eq v1, v2, :cond_5

    const-class v2, Ljava/lang/Boolean;

    if-eq v1, v2, :cond_5

    const-class v2, Ljava/lang/Double;

    if-eq v1, v2, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    invoke-static {p1}, Le/k/a/c/n0/g;->y(Ljava/lang/Object;)Z

    move-result v3

    .line 14
    :goto_1
    invoke-virtual {p0, p2, v0, p1, v3}, Le/k/a/c/l0/t/s;->q(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Z)Le/k/a/c/l0/t/s;

    move-result-object p1

    return-object p1

    .line 15
    :cond_6
    invoke-virtual {p1, v1, p2}, Le/k/a/c/a0;->H(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    .line 16
    iget-boolean v1, p0, Le/k/a/c/l0/t/s;->h:Z

    invoke-virtual {p0, p2, v0, p1, v1}, Le/k/a/c/l0/t/s;->q(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Z)Le/k/a/c/l0/t/s;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/s;->c:Le/k/a/c/g0/i;

    invoke-virtual {v0, p2}, Le/k/a/c/g0/i;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/l0/t/s;->e:Le/k/a/c/n;

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/k/a/c/l0/t/s;->p(Le/k/a/c/a0;Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0
    :try_end_0
    .catch Le/k/a/c/k; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Le/k/a/c/x;

    invoke-direct {p2, p1}, Le/k/a/c/x;-><init>(Le/k/a/c/k;)V

    throw p2

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Le/k/a/c/n;->d(Le/k/a/c/a0;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/k/a/c/l0/t/s;->c:Le/k/a/c/g0/i;

    invoke-virtual {v0, p1}, Le/k/a/c/g0/i;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/l0/t/s;->e:Le/k/a/c/n;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Le/k/a/c/l0/t/s;->p(Le/k/a/c/a0;Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    .line 5
    :cond_1
    iget-object v1, p0, Le/k/a/c/l0/t/s;->d:Le/k/a/c/j0/h;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0, p1, p2, p3, v1}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    :goto_0
    return-void

    :catch_0
    move-exception p2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/k/a/c/l0/t/s;->c:Le/k/a/c/g0/i;

    invoke-virtual {v1}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, p2, p1, v0}, Le/k/a/c/l0/t/q0;->o(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/k/a/c/l0/t/s;->c:Le/k/a/c/g0/i;

    invoke-virtual {v0, p1}, Le/k/a/c/g0/i;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Le/k/a/c/l0/t/s;->e:Le/k/a/c/n;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Le/k/a/c/l0/t/s;->p(Le/k/a/c/a0;Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v2, p0, Le/k/a/c/l0/t/s;->h:Z

    if-eqz v2, :cond_2

    .line 6
    sget-object v2, Le/k/a/b/m;->p:Le/k/a/b/m;

    .line 7
    invoke-virtual {p4, p1, v2}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object p1

    .line 8
    invoke-virtual {p4, p2, p1}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object p1

    .line 9
    invoke-virtual {v1, v0, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 10
    invoke-virtual {p4, p2, p1}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void

    .line 11
    :cond_2
    :goto_0
    new-instance v2, Le/k/a/c/l0/t/s$a;

    invoke-direct {v2, p4, p1}, Le/k/a/c/l0/t/s$a;-><init>(Le/k/a/c/j0/h;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1, v0, p2, p3, v2}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    return-void

    :catch_0
    move-exception p2

    .line 13
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Le/k/a/c/l0/t/s;->c:Le/k/a/c/g0/i;

    invoke-virtual {v0}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, p2, p1, p4}, Le/k/a/c/l0/t/q0;->o(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public p(Le/k/a/c/a0;Ljava/lang/Class;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Ljava/lang/Class<",
            "*>;)",
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
    iget-object v0, p0, Le/k/a/c/l0/t/s;->i:Le/k/a/c/l0/s/l;

    invoke-virtual {v0, p2}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/k/a/c/l0/t/s;->g:Le/k/a/c/i;

    invoke-virtual {v0}, Le/k/a/c/i;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/c/l0/t/s;->g:Le/k/a/c/i;

    invoke-virtual {p1, v0, p2}, Le/k/a/c/a0;->s(Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object p2

    .line 4
    iget-object v0, p0, Le/k/a/c/l0/t/s;->f:Le/k/a/c/d;

    invoke-virtual {p1, p2, v0}, Le/k/a/c/a0;->y(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v0

    .line 5
    iget-object p1, p0, Le/k/a/c/l0/t/s;->i:Le/k/a/c/l0/s/l;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p2, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 8
    invoke-virtual {p1, p2, v0}, Le/k/a/c/l0/s/l;->b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;

    move-result-object p1

    .line 9
    iput-object p1, p0, Le/k/a/c/l0/t/s;->i:Le/k/a/c/l0/s/l;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Le/k/a/c/l0/t/s;->f:Le/k/a/c/d;

    invoke-virtual {p1, p2, v0}, Le/k/a/c/a0;->z(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v0

    .line 11
    iget-object p1, p0, Le/k/a/c/l0/t/s;->i:Le/k/a/c/l0/s/l;

    .line 12
    invoke-virtual {p1, p2, v0}, Le/k/a/c/l0/s/l;->b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;

    move-result-object p1

    .line 13
    iput-object p1, p0, Le/k/a/c/l0/t/s;->i:Le/k/a/c/l0/s/l;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public q(Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Z)Le/k/a/c/l0/t/s;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d;",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;Z)",
            "Le/k/a/c/l0/t/s;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/s;->f:Le/k/a/c/d;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Le/k/a/c/l0/t/s;->d:Le/k/a/c/j0/h;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Le/k/a/c/l0/t/s;->e:Le/k/a/c/n;

    if-ne v0, p3, :cond_0

    iget-boolean v0, p0, Le/k/a/c/l0/t/s;->h:Z

    if-ne p4, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/k/a/c/l0/t/s;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Le/k/a/c/l0/t/s;-><init>(Le/k/a/c/l0/t/s;Le/k/a/c/d;Le/k/a/c/j0/h;Le/k/a/c/n;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "(@JsonValue serializer for method "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/k/a/c/l0/t/s;->c:Le/k/a/c/g0/i;

    invoke-virtual {v1}, Le/k/a/c/g0/i;->g()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/l0/t/s;->c:Le/k/a/c/g0/i;

    invoke-virtual {v1}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
