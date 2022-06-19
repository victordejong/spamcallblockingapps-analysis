.class public abstract Lq3/b/k/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/j/d;
.implements Lq3/b/j/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tag:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq3/b/j/d;",
        "Lq3/b/j/b;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TTag;>;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq3/b/k/v;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract A(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public final B()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTag;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/b/k/v;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lq3/b/k/v;->b:Z

    return-object v0
.end method

.method public final d(Lq3/b/i/d;I)J
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p0

    check-cast v0, Lq3/b/l/l/a;

    .line 2
    invoke-virtual {v0, p1, p2}, Lq3/b/l/l/a;->F(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lq3/b/k/v;->z(Ljava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final e(Lq3/b/i/d;I)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p0

    check-cast v0, Lq3/b/l/l/a;

    .line 2
    invoke-virtual {v0, p1, p2}, Lq3/b/l/l/a;->F(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lq3/b/k/v;->y(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final f()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq3/b/k/v;->B()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq3/b/k/v;->z(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h(Lq3/b/i/d;I)Ljava/lang/String;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p0

    check-cast v0, Lq3/b/l/l/a;

    .line 2
    invoke-virtual {v0, p1, p2}, Lq3/b/l/l/a;->F(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lq3/b/k/v;->A(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/b/i/d;",
            "I",
            "Lq3/b/a<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p0

    check-cast v0, Lq3/b/l/l/a;

    .line 2
    invoke-virtual {v0, p1, p2}, Lq3/b/l/l/a;->F(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lq3/b/k/v$a;

    invoke-direct {p2, p0, p3, p4}, Lq3/b/k/v$a;-><init>(Lq3/b/k/v;Lq3/b/a;Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lq3/b/k/v;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p2}, Lq3/b/k/v$a;->invoke()Ljava/lang/Object;

    move-result-object p1

    .line 6
    iget-boolean p2, p0, Lq3/b/k/v;->b:Z

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p0}, Lq3/b/k/v;->B()Ljava/lang/Object;

    :cond_0
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lq3/b/k/v;->b:Z

    return-object p1
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic k(Lq3/b/i/d;ILq3/b/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/b/i/d;",
            "I",
            "Lq3/b/a<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deserializer"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lq3/b/k/v;->l(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/b/i/d;",
            "I",
            "Lq3/b/a<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p0

    check-cast v0, Lq3/b/l/l/a;

    .line 2
    invoke-virtual {v0, p1, p2}, Lq3/b/l/l/a;->F(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lq3/b/k/v$b;

    invoke-direct {p2, p0, p3, p4}, Lq3/b/k/v$b;-><init>(Lq3/b/k/v;Lq3/b/a;Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lq3/b/k/v;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p2}, Lq3/b/k/v$b;->invoke()Ljava/lang/Object;

    move-result-object p1

    .line 6
    iget-boolean p2, p0, Lq3/b/k/v;->b:Z

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p0}, Lq3/b/k/v;->B()Ljava/lang/Object;

    :cond_0
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lq3/b/k/v;->b:Z

    return-object p1
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/b/k/v;->B()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq3/b/k/v;->A(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/b/k/v;->B()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq3/b/k/v;->y(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public p(Lq3/b/i/d;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public synthetic r(Lq3/b/i/d;ILq3/b/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/b/i/d;",
            "I",
            "Lq3/b/a<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deserializer"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lq3/b/k/v;->i(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/b/k/v;->B()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq3/b/k/v;->x(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final t(Lq3/b/i/d;I)Z
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p0

    check-cast v0, Lq3/b/l/l/a;

    .line 2
    invoke-virtual {v0, p1, p2}, Lq3/b/l/l/a;->F(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lq3/b/k/v;->x(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract w(Lq3/b/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/b/a<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract x(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)Z"
        }
    .end annotation
.end method

.method public abstract y(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)I"
        }
    .end annotation
.end method

.method public abstract z(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)J"
        }
    .end annotation
.end method
