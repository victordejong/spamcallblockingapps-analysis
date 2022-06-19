.class public final Ls1/a/a/a/v0/b/h1/t;
.super Ls1/a/a/a/v0/b/h1/m;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/g0;


# static fields
.field public static final synthetic g:[Ls1/a/l;


# instance fields
.field public final c:Ls1/a/a/a/v0/l/i;

.field public final d:Ls1/a/a/a/v0/j/y/i;

.field public final e:Ls1/a/a/a/v0/b/h1/a0;

.field public final f:Ls1/a/a/a/v0/f/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    new-instance v1, Ls1/z/c/w;

    const-class v2, Ls1/a/a/a/v0/b/h1/t;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const-string v3, "fragments"

    const-string v4, "getFragments()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ls1/a/a/a/v0/b/h1/t;->g:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/b/h1/a0;Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/l/m;)V
    .locals 2

    const-string v0, "module"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 4
    invoke-virtual {p2}, Ls1/a/a/a/v0/f/b;->h()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ls1/a/a/a/v0/b/h1/m;-><init>(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;)V

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/t;->e:Ls1/a/a/a/v0/b/h1/a0;

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/t;->f:Ls1/a/a/a/v0/f/b;

    .line 5
    new-instance p1, Ls1/a/a/a/v0/b/h1/t$a;

    invoke-direct {p1, p0}, Ls1/a/a/a/v0/b/h1/t$a;-><init>(Ls1/a/a/a/v0/b/h1/t;)V

    invoke-interface {p3, p1}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/t;->c:Ls1/a/a/a/v0/l/i;

    .line 6
    new-instance p1, Ls1/a/a/a/v0/j/y/h;

    new-instance p2, Ls1/a/a/a/v0/b/h1/t$b;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/b/h1/t$b;-><init>(Ls1/a/a/a/v0/b/h1/t;)V

    invoke-direct {p1, p3, p2}, Ls1/a/a/a/v0/j/y/h;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/t;->d:Ls1/a/a/a/v0/j/y/i;

    return-void
.end method


# virtual methods
.method public J0()Ls1/a/a/a/v0/b/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/t;->e:Ls1/a/a/a/v0/b/h1/a0;

    return-object v0
.end method

.method public P()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/c0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/t;->c:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/b/h1/t;->g:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public b()Ls1/a/a/a/v0/b/k;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/t;->f:Ls1/a/a/a/v0/f/b;

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/t;->e:Ls1/a/a/a/v0/b/h1/a0;

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/t;->f:Ls1/a/a/a/v0/f/b;

    .line 5
    invoke-virtual {v1}, Ls1/a/a/a/v0/f/b;->e()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    const-string v2, "fqName.parent()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/b/h1/a0;->Q(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/g0;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public d()Ls1/a/a/a/v0/f/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/t;->f:Ls1/a/a/a/v0/f/b;

    return-object v0
.end method

.method public d0(Ls1/a/a/a/v0/b/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/a/a/a/v0/b/m<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string v0, "visitor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0, p2}, Ls1/a/a/a/v0/b/m;->b(Ls1/a/a/a/v0/b/g0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/b/g0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Ls1/a/a/a/v0/b/g0;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/t;->f:Ls1/a/a/a/v0/f/b;

    .line 3
    invoke-interface {p1}, Ls1/a/a/a/v0/b/g0;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/t;->e:Ls1/a/a/a/v0/b/h1/a0;

    .line 5
    invoke-interface {p1}, Ls1/a/a/a/v0/b/g0;->J0()Ls1/a/a/a/v0/b/a0;

    move-result-object p1

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/t;->e:Ls1/a/a/a/v0/b/h1/a0;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/t;->f:Ls1/a/a/a/v0/f/b;

    .line 4
    invoke-virtual {v1}, Ls1/a/a/a/v0/f/b;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/t;->P()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public s()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/t;->d:Ls1/a/a/a/v0/j/y/i;

    return-object v0
.end method
