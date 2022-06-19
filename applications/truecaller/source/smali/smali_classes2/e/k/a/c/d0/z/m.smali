.class public Le/k/a/c/d0/z/m;
.super Le/k/a/c/d0/z/b0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/b0<",
        "Ljava/util/EnumSet<",
        "*>;>;",
        "Le/k/a/c/d0/i;"
    }
.end annotation


# instance fields
.field public final d:Le/k/a/c/i;

.field public e:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Le/k/a/c/d0/r;

.field public final g:Z

.field public final h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/z/m;Le/k/a/c/j;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/z/m;",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/d0/r;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Le/k/a/c/d0/z/b0;-><init>(Le/k/a/c/d0/z/b0;)V

    .line 10
    iget-object p1, p1, Le/k/a/c/d0/z/m;->d:Le/k/a/c/i;

    iput-object p1, p0, Le/k/a/c/d0/z/m;->d:Le/k/a/c/i;

    .line 11
    iput-object p2, p0, Le/k/a/c/d0/z/m;->e:Le/k/a/c/j;

    .line 12
    iput-object p3, p0, Le/k/a/c/d0/z/m;->f:Le/k/a/c/d0/r;

    .line 13
    invoke-static {p3}, Le/k/a/c/d0/y/t;->a(Le/k/a/c/d0/r;)Z

    move-result p1

    iput-boolean p1, p0, Le/k/a/c/d0/z/m;->g:Z

    .line 14
    iput-object p4, p0, Le/k/a/c/d0/z/m;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/i;",
            "Le/k/a/c/j<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class p2, Ljava/util/EnumSet;

    invoke-direct {p0, p2}, Le/k/a/c/d0/z/b0;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/z/m;->d:Le/k/a/c/i;

    .line 3
    invoke-virtual {p1}, Le/k/a/c/i;->B()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Le/k/a/c/d0/z/m;->e:Le/k/a/c/j;

    .line 5
    iput-object p1, p0, Le/k/a/c/d0/z/m;->h:Ljava/lang/Boolean;

    .line 6
    iput-object p1, p0, Le/k/a/c/d0/z/m;->f:Le/k/a/c/d0/r;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Le/k/a/c/d0/z/m;->g:Z

    return-void

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not Java Enum type"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/j<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/EnumSet;

    sget-object v1, Le/k/a/a/k$a;->a:Le/k/a/a/k$a;

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/b0;->h0(Le/k/a/c/g;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Le/k/a/a/k$d;->b(Le/k/a/a/k$a;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Le/k/a/c/d0/z/m;->e:Le/k/a/c/j;

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Le/k/a/c/d0/z/m;->d:Le/k/a/c/i;

    invoke-virtual {p1, v1, p2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object v1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v2, p0, Le/k/a/c/d0/z/m;->d:Le/k/a/c/i;

    invoke-virtual {p1, v1, p2, v2}, Le/k/a/c/g;->G(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v1

    .line 7
    :goto_1
    invoke-virtual {p0, p1, p2, v1}, Le/k/a/c/d0/z/b0;->f0(Le/k/a/c/g;Le/k/a/c/d;Le/k/a/c/j;)Le/k/a/c/d0/r;

    move-result-object p1

    .line 8
    iget-object p2, p0, Le/k/a/c/d0/z/m;->h:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Le/k/a/c/d0/z/m;->e:Le/k/a/c/j;

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Le/k/a/c/d0/z/m;->f:Le/k/a/c/d0/r;

    if-ne p2, v1, :cond_2

    move-object p2, p0

    goto :goto_2

    .line 9
    :cond_2
    new-instance p2, Le/k/a/c/d0/z/m;

    invoke-direct {p2, p0, v1, p1, v0}, Le/k/a/c/d0/z/m;-><init>(Le/k/a/c/d0/z/m;Le/k/a/c/j;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V

    :goto_2
    return-object p2
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/m;->d:Le/k/a/c/i;

    .line 2
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 3
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/m;->n0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/m;->m0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    :goto_0
    return-object v0
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p3, Ljava/util/EnumSet;

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->V1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/m;->n0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/m;->m0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    :goto_0
    return-object p3
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j0/e;->c(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i()Le/k/a/c/n0/a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/n0/a;->c:Le/k/a/c/n0/a;

    return-object v0
.end method

.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/k/a/c/d0/z/m;->d:Le/k/a/c/i;

    .line 2
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 3
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public final m0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/util/EnumSet;",
            ")",
            "Ljava/util/EnumSet<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-eq v0, v1, :cond_3

    .line 2
    sget-object v1, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v0, v1, :cond_2

    .line 3
    iget-boolean v0, p0, Le/k/a/c/d0/z/m;->g:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/z/m;->f:Le/k/a/c/d0/r;

    invoke-interface {v0, p2}, Le/k/a/c/d0/r;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Le/k/a/c/d0/z/m;->e:Le/k/a/c/j;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    :goto_1
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p3, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-object p3

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p3}, Ljava/util/EnumSet;->size()I

    move-result p2

    invoke-static {p1, p3, p2}, Le/k/a/c/k;->i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;

    move-result-object p1

    throw p1
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/m;->d:Le/k/a/c/i;

    .line 2
    iget-object v0, v0, Le/k/a/c/i;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public n0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/util/EnumSet;",
            ")",
            "Ljava/util/EnumSet<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/m;->h:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object v0, Le/k/a/c/h;->s:Le/k/a/c/h;

    .line 2
    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3
    sget-object v0, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    :try_start_0
    iget-object v0, p0, Le/k/a/c/d0/z/m;->e:Le/k/a/c/j;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p3, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p3}, Ljava/util/EnumSet;->size()I

    move-result p2

    invoke-static {p1, p3, p2}, Le/k/a/c/k;->i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;

    move-result-object p1

    throw p1

    .line 7
    :cond_3
    iget-object p3, p0, Le/k/a/c/d0/z/m;->d:Le/k/a/c/i;

    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->H(Le/k/a/c/i;Le/k/a/b/j;)Ljava/lang/Object;

    throw v1

    .line 8
    :cond_4
    const-class p3, Ljava/util/EnumSet;

    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v1
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->b:Le/k/a/c/m0/f;

    return-object v0
.end method

.method public p(Le/k/a/c/f;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
