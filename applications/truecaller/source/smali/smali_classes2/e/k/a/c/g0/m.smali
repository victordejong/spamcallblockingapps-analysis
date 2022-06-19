.class public final Le/k/a/c/g0/m;
.super Le/k/a/c/g0/i;
.source "SourceFile"


# instance fields
.field public final c:Le/k/a/c/g0/n;

.field public final d:Le/k/a/c/i;

.field public final e:I


# direct methods
.method public constructor <init>(Le/k/a/c/g0/n;Le/k/a/c/i;Le/k/a/c/g0/e0;Le/k/a/c/g0/p;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4}, Le/k/a/c/g0/i;-><init>(Le/k/a/c/g0/e0;Le/k/a/c/g0/p;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/g0/m;->c:Le/k/a/c/g0/n;

    .line 3
    iput-object p2, p0, Le/k/a/c/g0/m;->d:Le/k/a/c/i;

    .line 4
    iput p5, p0, Le/k/a/c/g0/m;->e:I

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/m;->d:Le/k/a/c/i;

    .line 2
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public e()Le/k/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/m;->d:Le/k/a/c/i;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Le/k/a/c/g0/m;

    invoke-static {p1, v1}, Le/k/a/c/n0/g;->u(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Le/k/a/c/g0/m;

    .line 3
    iget-object v1, p1, Le/k/a/c/g0/m;->c:Le/k/a/c/g0/n;

    iget-object v3, p0, Le/k/a/c/g0/m;->c:Le/k/a/c/g0/n;

    invoke-virtual {v1, v3}, Le/k/a/c/g0/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p1, p1, Le/k/a/c/g0/m;->e:I

    iget v1, p0, Le/k/a/c/g0/m;->e:I

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/m;->c:Le/k/a/c/g0/n;

    invoke-virtual {v0}, Le/k/a/c/g0/i;->g()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/m;->c:Le/k/a/c/g0/n;

    invoke-virtual {v0}, Le/k/a/c/g0/b;->hashCode()I

    move-result v0

    iget v1, p0, Le/k/a/c/g0/m;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/reflect/Member;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/m;->c:Le/k/a/c/g0/n;

    invoke-virtual {v0}, Le/k/a/c/g0/i;->i()Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call getValue() on constructor parameter of "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/g0/m;->g()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Le/k/a/c/g0/p;)Le/k/a/c/g0/b;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/i;->b:Le/k/a/c/g0/p;

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/g0/m;->c:Le/k/a/c/g0/n;

    iget v1, p0, Le/k/a/c/g0/m;->e:I

    .line 3
    iget-object v2, v0, Le/k/a/c/g0/n;->c:[Le/k/a/c/g0/p;

    aput-object p1, v2, v1

    .line 4
    invoke-virtual {v0, v1}, Le/k/a/c/g0/n;->p(I)Le/k/a/c/g0/m;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "[parameter #"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Le/k/a/c/g0/m;->e:I

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", annotations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/g0/i;->b:Le/k/a/c/g0/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
