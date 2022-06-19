.class public final Ls1/a/a/a/v0/b/b0$b;
.super Ls1/a/a/a/v0/b/h1/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/b/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ls1/a/a/a/v0/m/o;

.field public final j:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/f/e;ZI)V
    .locals 7

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v5, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/v0/b/h1/j;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;Z)V

    iput-boolean p4, p0, Ls1/a/a/a/v0/b/b0$b;->j:Z

    const/4 p2, 0x0

    .line 2
    invoke-static {p2, p5}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object p2

    .line 3
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-virtual {p2}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object p4, p2

    check-cast p4, Ls1/d0/h;

    .line 5
    iget-boolean p4, p4, Ls1/d0/h;->b:Z

    if-eqz p4, :cond_0

    .line 6
    move-object p4, p2

    check-cast p4, Ls1/u/z;

    invoke-virtual {p4}, Ls1/u/z;->a()I

    move-result v5

    .line 7
    sget-object p4, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 8
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    const/4 v2, 0x0

    .line 10
    sget-object v3, Ls1/a/a/a/v0/m/j1;->c:Ls1/a/a/a/v0/m/j1;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p5, 0x54

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    move-object v0, p0

    move-object v6, p1

    .line 11
    invoke-static/range {v0 .. v6}, Ls1/a/a/a/v0/b/h1/m0;->R0(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/f/e;ILs1/a/a/a/v0/l/m;)Ls1/a/a/a/v0/b/w0;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    iput-object p3, p0, Ls1/a/a/a/v0/b/b0$b;->h:Ljava/util/List;

    .line 13
    new-instance p2, Ls1/a/a/a/v0/m/o;

    invoke-static {p0}, Le/q/f/a/d/a;->M(Ls1/a/a/a/v0/b/i;)Ljava/util/List;

    move-result-object p3

    invoke-static {p0}, Ls1/a/a/a/v0/j/v/b;->k(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/b/a0;

    move-result-object p4

    invoke-interface {p4}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p4

    invoke-virtual {p4}, Ls1/a/a/a/v0/a/g;->f()Ls1/a/a/a/v0/m/l0;

    move-result-object p4

    invoke-static {p4}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p4

    invoke-direct {p2, p0, p3, p4, p1}, Ls1/a/a/a/v0/m/o;-><init>(Ls1/a/a/a/v0/b/e;Ljava/util/List;Ljava/util/Collection;Ls1/a/a/a/v0/l/m;)V

    iput-object p2, p0, Ls1/a/a/a/v0/b/b0$b;->i:Ls1/a/a/a/v0/m/o;

    return-void
.end method


# virtual methods
.method public A0()Ls1/a/a/a/v0/b/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Ls1/a/a/a/v0/j/y/i$b;->b:Ls1/a/a/a/v0/j/y/i$b;

    return-object p1
.end method

.method public c0()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public f()Ls1/a/a/a/v0/b/r;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/q;->e:Ls1/a/a/a/v0/b/r;

    const-string v1, "DescriptorVisibilities.PUBLIC"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    return-object v0
.end method

.method public getKind()Ls1/a/a/a/v0/b/f;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f;->a:Ls1/a/a/a/v0/b/f;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Ls1/a/a/a/v0/b/y;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/y;->a:Ls1/a/a/a/v0/b/y;

    return-object v0
.end method

.method public o()Ls1/a/a/a/v0/m/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/b0$b;->i:Ls1/a/a/a/v0/m/o;

    return-object v0
.end method

.method public p()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/d;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    return-object v0
.end method

.method public p0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "class "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/b;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (not found)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/b0$b;->h:Ljava/util/List;

    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/b0$b;->j:Z

    return v0
.end method

.method public x0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z()Ls1/a/a/a/v0/b/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public z0()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/j/y/i$b;->b:Ls1/a/a/a/v0/j/y/i$b;

    return-object v0
.end method
