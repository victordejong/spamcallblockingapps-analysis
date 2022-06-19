.class public abstract Lq3/b/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/j/e;
.implements Lq3/b/j/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract d(Lq3/b/g;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/b/g<",
            "-TT;>;TT;)V"
        }
    .end annotation
.end method

.method public final f(Lq3/b/i/d;II)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lq3/b/j/a;->r(Lq3/b/i/d;I)Z

    move-object p1, p0

    check-cast p1, Lq3/b/l/l/p;

    .line 2
    iget-boolean p2, p1, Lq3/b/l/l/p;->c:Z

    if-eqz p2, :cond_0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lq3/b/l/l/p;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 3
    iget-object p1, p1, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public final g(Lq3/b/i/d;IZ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lq3/b/j/a;->r(Lq3/b/i/d;I)Z

    move-object p1, p0

    check-cast p1, Lq3/b/l/l/p;

    .line 2
    iget-boolean p2, p1, Lq3/b/l/l/p;->c:Z

    if-eqz p2, :cond_0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lq3/b/l/l/p;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 3
    iget-object p1, p1, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public final h(Lq3/b/i/d;ILjava/lang/String;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lq3/b/j/a;->r(Lq3/b/i/d;I)Z

    invoke-virtual {p0, p3}, Lq3/b/j/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Lq3/b/i/d;IJ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lq3/b/j/a;->r(Lq3/b/i/d;I)Z

    move-object p1, p0

    check-cast p1, Lq3/b/l/l/p;

    .line 2
    iget-boolean p2, p1, Lq3/b/l/l/p;->c:Z

    if-eqz p2, :cond_0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lq3/b/l/l/p;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 3
    iget-object p1, p1, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public abstract k(Ljava/lang/String;)V
.end method

.method public final l(Lq3/b/i/d;ILq3/b/g;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/b/i/d;",
            "I",
            "Lq3/b/g<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lq3/b/j/a;->r(Lq3/b/i/d;I)Z

    .line 2
    move-object p1, p0

    check-cast p1, Lq3/b/l/l/p;

    .line 3
    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p3}, Lq3/b/g;->a()Lq3/b/i/d;

    move-result-object p2

    invoke-interface {p2}, Lq3/b/i/d;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p1, p3, p4}, Lq3/b/l/l/p;->d(Lq3/b/g;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    .line 8
    invoke-virtual {p1}, Lq3/b/l/l/p;->o()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1, p3, p4}, Lq3/b/l/l/p;->d(Lq3/b/g;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final q(Lq3/b/i/d;ILq3/b/g;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/b/i/d;",
            "I",
            "Lq3/b/g<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lq3/b/j/a;->r(Lq3/b/i/d;I)Z

    .line 2
    invoke-virtual {p0, p3, p4}, Lq3/b/j/a;->d(Lq3/b/g;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract r(Lq3/b/i/d;I)Z
.end method
