.class public Le/k/a/c/d0/k;
.super Le/k/a/c/d0/u;
.source "SourceFile"


# instance fields
.field public final o:Le/k/a/c/g0/m;

.field public final p:Le/k/a/a/b$a;

.field public q:Le/k/a/c/d0/u;

.field public final r:I

.field public s:Z


# direct methods
.method public constructor <init>(Le/k/a/c/d0/k;Le/k/a/c/j;Le/k/a/c/d0/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/k;",
            "Le/k/a/c/j<",
            "*>;",
            "Le/k/a/c/d0/r;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/d0/u;Le/k/a/c/j;Le/k/a/c/d0/r;)V

    .line 13
    iget-object p2, p1, Le/k/a/c/d0/k;->o:Le/k/a/c/g0/m;

    iput-object p2, p0, Le/k/a/c/d0/k;->o:Le/k/a/c/g0/m;

    .line 14
    iget-object p2, p1, Le/k/a/c/d0/k;->p:Le/k/a/a/b$a;

    iput-object p2, p0, Le/k/a/c/d0/k;->p:Le/k/a/a/b$a;

    .line 15
    iget-object p2, p1, Le/k/a/c/d0/k;->q:Le/k/a/c/d0/u;

    iput-object p2, p0, Le/k/a/c/d0/k;->q:Le/k/a/c/d0/u;

    .line 16
    iget p2, p1, Le/k/a/c/d0/k;->r:I

    iput p2, p0, Le/k/a/c/d0/k;->r:I

    .line 17
    iget-boolean p1, p1, Le/k/a/c/d0/k;->s:Z

    iput-boolean p1, p0, Le/k/a/c/d0/k;->s:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/k;Le/k/a/c/v;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/d0/u;Le/k/a/c/v;)V

    .line 7
    iget-object p2, p1, Le/k/a/c/d0/k;->o:Le/k/a/c/g0/m;

    iput-object p2, p0, Le/k/a/c/d0/k;->o:Le/k/a/c/g0/m;

    .line 8
    iget-object p2, p1, Le/k/a/c/d0/k;->p:Le/k/a/a/b$a;

    iput-object p2, p0, Le/k/a/c/d0/k;->p:Le/k/a/a/b$a;

    .line 9
    iget-object p2, p1, Le/k/a/c/d0/k;->q:Le/k/a/c/d0/u;

    iput-object p2, p0, Le/k/a/c/d0/k;->q:Le/k/a/c/d0/u;

    .line 10
    iget p2, p1, Le/k/a/c/d0/k;->r:I

    iput p2, p0, Le/k/a/c/d0/k;->r:I

    .line 11
    iget-boolean p1, p1, Le/k/a/c/d0/k;->s:Z

    iput-boolean p1, p0, Le/k/a/c/d0/k;->s:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/v;Le/k/a/c/i;Le/k/a/c/v;Le/k/a/c/j0/e;Le/k/a/c/n0/b;Le/k/a/c/g0/m;ILe/k/a/a/b$a;Le/k/a/c/u;)V
    .locals 8

    move-object v7, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p9

    .line 1
    invoke-direct/range {v0 .. v6}, Le/k/a/c/d0/u;-><init>(Le/k/a/c/v;Le/k/a/c/i;Le/k/a/c/v;Le/k/a/c/j0/e;Le/k/a/c/n0/b;Le/k/a/c/u;)V

    move-object v0, p6

    .line 2
    iput-object v0, v7, Le/k/a/c/d0/k;->o:Le/k/a/c/g0/m;

    move v0, p7

    .line 3
    iput v0, v7, Le/k/a/c/d0/k;->r:I

    move-object/from16 v0, p8

    .line 4
    iput-object v0, v7, Le/k/a/c/d0/k;->p:Le/k/a/a/b$a;

    const/4 v0, 0x0

    .line 5
    iput-object v0, v7, Le/k/a/c/d0/k;->q:Le/k/a/c/d0/u;

    return-void
.end method

.method public static I(Le/k/a/c/v;Le/k/a/c/i;Le/k/a/c/v;Le/k/a/c/j0/e;Le/k/a/c/n0/b;Le/k/a/c/g0/m;ILe/k/a/a/b$a;Le/k/a/c/u;)Le/k/a/c/d0/k;
    .locals 11

    .line 1
    new-instance v10, Le/k/a/c/d0/k;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Le/k/a/c/d0/k;-><init>(Le/k/a/c/v;Le/k/a/c/i;Le/k/a/c/v;Le/k/a/c/j0/e;Le/k/a/c/n0/b;Le/k/a/c/g0/m;ILe/k/a/a/b$a;Le/k/a/c/u;)V

    return-object v10
.end method


# virtual methods
.method public A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/d0/k;->H()V

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/k;->q:Le/k/a/c/d0/u;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/d0/u;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public D(Le/k/a/c/v;)Le/k/a/c/d0/u;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/k;

    invoke-direct {v0, p0, p1}, Le/k/a/c/d0/k;-><init>(Le/k/a/c/d0/k;Le/k/a/c/v;)V

    return-object v0
.end method

.method public E(Le/k/a/c/d0/r;)Le/k/a/c/d0/u;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/d0/k;

    iget-object v1, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    invoke-direct {v0, p0, v1, p1}, Le/k/a/c/d0/k;-><init>(Le/k/a/c/d0/k;Le/k/a/c/j;Le/k/a/c/d0/r;)V

    return-object v0
.end method

.method public G(Le/k/a/c/j;)Le/k/a/c/d0/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/j<",
            "*>;)",
            "Le/k/a/c/d0/u;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/u;->g:Le/k/a/c/j;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v1, p0, Le/k/a/c/d0/u;->i:Le/k/a/c/d0/r;

    if-ne v0, v1, :cond_1

    move-object v1, p1

    .line 3
    :cond_1
    new-instance v0, Le/k/a/c/d0/k;

    invoke-direct {v0, p0, p1, v1}, Le/k/a/c/d0/k;-><init>(Le/k/a/c/d0/k;Le/k/a/c/j;Le/k/a/c/d0/r;)V

    return-object v0
.end method

.method public final H()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/k;->q:Le/k/a/c/d0/u;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "No fallback setter/field defined for creator property "

    .line 2
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 4
    iget-object v2, v2, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 5
    invoke-static {v2}, Le/k/a/c/n0/g;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Le/k/a/c/d0/u;->d:Le/k/a/c/i;

    .line 7
    new-instance v3, Le/k/a/c/e0/b;

    invoke-direct {v3, v0, v1, v2}, Le/k/a/c/e0/b;-><init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/c/i;)V

    .line 8
    throw v3

    :cond_0
    return-void
.end method

.method public c()Le/k/a/c/g0/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/k;->o:Le/k/a/c/g0/m;

    return-object v0
.end method

.method public getMetadata()Le/k/a/c/u;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/v;->a:Le/k/a/c/u;

    .line 2
    iget-object v1, p0, Le/k/a/c/d0/k;->q:Le/k/a/c/d0/u;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Le/k/a/c/g0/v;->getMetadata()Le/k/a/c/u;

    move-result-object v1

    .line 4
    iget-object v1, v1, Le/k/a/c/u;->e:Le/k/a/c/u$a;

    .line 5
    invoke-virtual {v0, v1}, Le/k/a/c/u;->b(Le/k/a/c/u$a;)Le/k/a/c/u;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public i(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/d0/k;->H()V

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/k;->q:Le/k/a/c/d0/u;

    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/u;->h(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public j(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/d0/k;->H()V

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/k;->q:Le/k/a/c/d0/u;

    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/u;->h(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Le/k/a/c/d0/u;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(Le/k/a/c/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/k;->q:Le/k/a/c/d0/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/k/a/c/d0/u;->l(Le/k/a/c/f;)V

    :cond_0
    return-void
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/d0/k;->r:I

    return v0
.end method

.method public o()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/k;->p:Le/k/a/a/b$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Le/k/a/a/b$a;->a:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "[creator property, name "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 3
    iget-object v1, v1, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Le/k/a/c/n0/g;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; inject id \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/k/a/c/d0/k;->o()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/d0/k;->s:Z

    return v0
.end method

.method public x()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/k;->p:Le/k/a/a/b$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Le/k/a/a/b$a;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/k/a/c/d0/k;->s:Z

    return-void
.end method

.method public z(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/d0/k;->H()V

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/k;->q:Le/k/a/c/d0/u;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/d0/u;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
