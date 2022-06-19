.class final Lcom/google/protobuf/y$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/u$b<",
        "Lcom/google/protobuf/y$d;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Lcom/google/protobuf/a0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a0$d<",
            "*>;"
        }
    .end annotation
.end field

.field final g:I

.field final h:Lcom/google/protobuf/s1$b;

.field final i:Z

.field final j:Z


# virtual methods
.method public X()Lcom/google/protobuf/s1$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$d;->h:Lcom/google/protobuf/s1$b;

    invoke-virtual {v0}, Lcom/google/protobuf/s1$b;->getJavaType()Lcom/google/protobuf/s1$c;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/protobuf/y$d;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/y$d;->g:I

    iget p1, p1, Lcom/google/protobuf/y$d;->g:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/y$d;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/y$d;->c(Lcom/google/protobuf/y$d;)I

    move-result p1

    return p1
.end method

.method public d()Lcom/google/protobuf/a0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/a0$d<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$d;->f:Lcom/google/protobuf/a0$d;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/protobuf/y$d;->g:I

    return v0
.end method

.method public isPacked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/y$d;->j:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/y$d;->i:Z

    return v0
.end method

.method public r()Lcom/google/protobuf/s1$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/y$d;->h:Lcom/google/protobuf/s1$b;

    return-object v0
.end method

.method public z(Lcom/google/protobuf/r0$a;Lcom/google/protobuf/r0;)Lcom/google/protobuf/r0$a;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/y$a;

    check-cast p2, Lcom/google/protobuf/y;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/y$a;->E(Lcom/google/protobuf/y;)Lcom/google/protobuf/y$a;

    return-object p1
.end method
