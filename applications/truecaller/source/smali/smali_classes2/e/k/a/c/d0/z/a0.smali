.class public Le/k/a/c/d0/z/a0;
.super Le/k/a/c/d0/z/b0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/i;
.implements Le/k/a/c/d0/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/d0/z/b0<",
        "TT;>;",
        "Le/k/a/c/d0/i;",
        "Le/k/a/c/d0/s;"
    }
.end annotation


# instance fields
.field public final d:Le/k/a/c/n0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n0/i<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Le/k/a/c/i;

.field public final f:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/n0/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n0/i<",
            "*TT;>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/b0;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/z/a0;->d:Le/k/a/c/n0/i;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/k/a/c/d0/z/a0;->e:Le/k/a/c/i;

    .line 4
    iput-object p1, p0, Le/k/a/c/d0/z/a0;->f:Le/k/a/c/j;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/n0/i;Le/k/a/c/i;Le/k/a/c/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/n0/i<",
            "Ljava/lang/Object;",
            "TT;>;",
            "Le/k/a/c/i;",
            "Le/k/a/c/j<",
            "*>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p2}, Le/k/a/c/d0/z/b0;-><init>(Le/k/a/c/i;)V

    .line 6
    iput-object p1, p0, Le/k/a/c/d0/z/a0;->d:Le/k/a/c/n0/i;

    .line 7
    iput-object p2, p0, Le/k/a/c/d0/z/a0;->e:Le/k/a/c/i;

    .line 8
    iput-object p3, p0, Le/k/a/c/d0/z/a0;->f:Le/k/a/c/j;

    return-void
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
    iget-object v0, p0, Le/k/a/c/d0/z/a0;->f:Le/k/a/c/j;

    const-string v1, "withDelegate"

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Le/k/a/c/d0/z/a0;->e:Le/k/a/c/i;

    invoke-virtual {p1, v0, p2, v2}, Le/k/a/c/g;->G(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object p1

    .line 3
    iget-object p2, p0, Le/k/a/c/d0/z/a0;->f:Le/k/a/c/j;

    if-eq p1, p2, :cond_0

    .line 4
    iget-object p2, p0, Le/k/a/c/d0/z/a0;->d:Le/k/a/c/n0/i;

    iget-object v0, p0, Le/k/a/c/d0/z/a0;->e:Le/k/a/c/i;

    .line 5
    const-class v2, Le/k/a/c/d0/z/a0;

    invoke-static {v2, p0, v1}, Le/k/a/c/n0/g;->M(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Le/k/a/c/d0/z/a0;

    invoke-direct {v1, p2, v0, p1}, Le/k/a/c/d0/z/a0;-><init>(Le/k/a/c/n0/i;Le/k/a/c/i;Le/k/a/c/j;)V

    return-object v1

    :cond_0
    return-object p0

    .line 7
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/z/a0;->d:Le/k/a/c/n0/i;

    invoke-virtual {p1}, Le/k/a/c/g;->i()Le/k/a/c/m0/o;

    move-result-object v2

    invoke-interface {v0, v2}, Le/k/a/c/n0/i;->a(Le/k/a/c/m0/o;)Le/k/a/c/i;

    move-result-object v0

    .line 8
    iget-object v2, p0, Le/k/a/c/d0/z/a0;->d:Le/k/a/c/n0/i;

    .line 9
    invoke-virtual {p1, v0, p2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object p1

    .line 10
    const-class p2, Le/k/a/c/d0/z/a0;

    invoke-static {p2, p0, v1}, Le/k/a/c/n0/g;->M(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance p2, Le/k/a/c/d0/z/a0;

    invoke-direct {p2, v2, v0, p1}, Le/k/a/c/d0/z/a0;-><init>(Le/k/a/c/n0/i;Le/k/a/c/i;Le/k/a/c/j;)V

    return-object p2
.end method

.method public b(Le/k/a/c/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/a0;->f:Le/k/a/c/j;

    if-eqz v0, :cond_0

    instance-of v1, v0, Le/k/a/c/d0/s;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Le/k/a/c/d0/s;

    invoke-interface {v0, p1}, Le/k/a/c/d0/s;->b(Le/k/a/c/g;)V

    :cond_0
    return-void
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/a0;->f:Le/k/a/c/j;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Le/k/a/c/d0/z/a0;->d:Le/k/a/c/n0/i;

    invoke-interface {p2, p1}, Le/k/a/c/n0/i;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/a0;->e:Le/k/a/c/i;

    .line 2
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/k/a/c/d0/z/a0;->f:Le/k/a/c/j;

    invoke-virtual {v0, p1, p2, p3}, Le/k/a/c/j;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot update object of type %s (using deserializer for type %s)"

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v0, p0, Le/k/a/c/d0/z/a0;->e:Le/k/a/c/i;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 7
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Le/k/a/c/d0/z/a0;->f:Le/k/a/c/j;

    invoke-virtual {p3, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Le/k/a/c/d0/z/a0;->d:Le/k/a/c/n0/i;

    invoke-interface {p2, p1}, Le/k/a/c/n0/i;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/a0;->f:Le/k/a/c/j;

    invoke-virtual {v0}, Le/k/a/c/j;->m()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/a0;->f:Le/k/a/c/j;

    invoke-virtual {v0}, Le/k/a/c/j;->o()Le/k/a/c/m0/f;

    move-result-object v0

    return-object v0
.end method

.method public p(Le/k/a/c/f;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/a0;->f:Le/k/a/c/j;

    invoke-virtual {v0, p1}, Le/k/a/c/j;->p(Le/k/a/c/f;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
