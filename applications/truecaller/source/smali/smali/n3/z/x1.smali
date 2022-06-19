.class public final Ln3/z/x1;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ln3/z/l0$a;
.implements Ln3/z/z0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/z/x1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;",
        "Ln3/z/l0$a<",
        "Ljava/lang/Object;",
        ">;",
        "Ln3/z/z0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/z/k2$b$b<",
            "*TT;>;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/z/x1;->a:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ln3/z/x1;->e:Z

    return-void
.end method

.method public constructor <init>(Ln3/z/x1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/x1<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/z/x1;->a:Ljava/util/List;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Ln3/z/x1;->e:Z

    .line 7
    iget-object v1, p1, Ln3/z/x1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget v0, p1, Ln3/z/x1;->b:I

    .line 9
    iput v0, p0, Ln3/z/x1;->b:I

    .line 10
    iget v0, p1, Ln3/z/x1;->c:I

    .line 11
    iput v0, p0, Ln3/z/x1;->c:I

    .line 12
    iget v0, p1, Ln3/z/x1;->d:I

    iput v0, p0, Ln3/z/x1;->d:I

    .line 13
    iget-boolean v0, p1, Ln3/z/x1;->e:Z

    iput-boolean v0, p0, Ln3/z/x1;->e:Z

    .line 14
    iget v0, p1, Ln3/z/x1;->f:I

    .line 15
    iput v0, p0, Ln3/z/x1;->f:I

    .line 16
    iget p1, p1, Ln3/z/x1;->g:I

    iput p1, p0, Ln3/z/x1;->g:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Ln3/z/x1;->b:I

    .line 2
    iget v1, p0, Ln3/z/x1;->f:I

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Ln3/z/x1;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/z/x1;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/z/x1;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/z/x1;->c:I

    return v0
.end method

.method public e(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/z/x1;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Ln3/z/x1;->a:Ljava/util/List;

    .line 4
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/z/k2$b$b;

    .line 5
    iget-object v2, v2, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Ln3/z/x1;->a:Ljava/util/List;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/z/k2$b$b;

    .line 9
    iget-object v0, v0, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/z/x1;->e:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Ln3/z/x1;->c:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Ln3/z/x1;->a:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/z/k2$b$b;

    .line 4
    iget-object v0, v0, Ln3/z/k2$b$b;->c:Ljava/lang/Object;

    :goto_1
    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/z/x1;->e:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Ln3/z/x1;->b:I

    .line 3
    iget v1, p0, Ln3/z/x1;->d:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Ln3/z/x1;->a:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/z/k2$b$b;

    .line 5
    iget-object v0, v0, Ln3/z/k2$b$b;->b:Ljava/lang/Object;

    :goto_1
    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Ln3/z/x1;->b:I

    sub-int v0, p1, v0

    if-ltz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Ln3/z/x1;->a()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ltz v0, :cond_1

    .line 3
    iget p1, p0, Ln3/z/x1;->f:I

    if-lt v0, p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Ln3/z/x1;->e(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: "

    const-string v2, ", Size: "

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Ln3/z/x1;->a()I

    move-result v1

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(ILn3/z/k2$b$b;IILn3/z/x1$a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ln3/z/k2$b$b<",
            "*TT;>;II",
            "Ln3/z/x1$a;",
            "Z)V"
        }
    .end annotation

    const-string v0, "page"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput p1, p0, Ln3/z/x1;->b:I

    .line 2
    iget-object p1, p0, Ln3/z/x1;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    iget-object p1, p0, Ln3/z/x1;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iput p3, p0, Ln3/z/x1;->c:I

    .line 5
    iput p4, p0, Ln3/z/x1;->d:I

    .line 6
    iget-object p1, p2, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Ln3/z/x1;->f:I

    .line 8
    iput-boolean p6, p0, Ln3/z/x1;->e:Z

    .line 9
    iget-object p1, p2, Ln3/z/k2$b$b;->a:Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Ln3/z/x1;->g:I

    .line 11
    invoke-virtual {p0}, Ln3/z/x1;->a()I

    move-result p1

    .line 12
    check-cast p5, Ln3/z/u;

    invoke-virtual {p5, p1}, Ln3/z/u;->p(I)V

    return-void
.end method

.method public final bridge size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/z/x1;->a()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const-string v0, "leading "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Ln3/z/x1;->b:I

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", storage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Ln3/z/x1;->f:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trailing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Ln3/z/x1;->c:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    iget-object v2, p0, Ln3/z/x1;->a:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v3, " "

    invoke-static/range {v2 .. v9}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
