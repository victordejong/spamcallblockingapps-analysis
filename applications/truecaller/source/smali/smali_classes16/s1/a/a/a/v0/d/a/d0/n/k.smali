.class public abstract Ls1/a/a/a/v0/d/a/d0/n/k;
.super Ls1/a/a/a/v0/j/y/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/d/a/d0/n/k$a;,
        Ls1/a/a/a/v0/d/a/d0/n/k$b;
    }
.end annotation


# static fields
.field public static final synthetic m:[Ls1/a/l;


# instance fields
.field public final b:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ls1/a/a/a/v0/d/a/d0/n/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls1/a/a/a/v0/l/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/g<",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ls1/a/a/a/v0/l/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/h<",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/b/k0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ls1/a/a/a/v0/l/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/g<",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Ls1/a/a/a/v0/l/i;

.field public final h:Ls1/a/a/a/v0/l/i;

.field public final i:Ls1/a/a/a/v0/l/i;

.field public final j:Ls1/a/a/a/v0/l/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/g<",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Ls1/a/a/a/v0/d/a/d0/h;

.field public final l:Ls1/a/a/a/v0/d/a/d0/n/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Ls1/a/a/a/v0/d/a/d0/n/k;

    const/4 v1, 0x3

    new-array v1, v1, [Ls1/a/l;

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "functionNamesLazy"

    const-string v5, "getFunctionNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "propertyNamesLazy"

    const-string v5, "getPropertyNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    const-string v3, "classNamesLazy"

    const-string v4, "getClassNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v0, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Ls1/a/a/a/v0/d/a/d0/n/k;->m:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/d0/n/k;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/j/y/j;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->l:Ls1/a/a/a/v0/d/a/d0/n/k;

    .line 2
    iget-object p2, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 3
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 4
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/k$c;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/d/a/d0/n/k$c;-><init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V

    .line 5
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    .line 6
    invoke-interface {p2, v0, v1}, Ls1/a/a/a/v0/l/m;->a(Ls1/z/b/a;Ljava/lang/Object;)Ls1/a/a/a/v0/l/i;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->b:Ls1/a/a/a/v0/l/i;

    .line 7
    iget-object p2, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 8
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 9
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/k$g;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/d/a/d0/n/k$g;-><init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V

    invoke-interface {p2, v0}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->c:Ls1/a/a/a/v0/l/i;

    .line 10
    iget-object p2, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 11
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 12
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/k$f;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/d/a/d0/n/k$f;-><init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V

    invoke-interface {p2, v0}, Ls1/a/a/a/v0/l/m;->i(Ls1/z/b/l;)Ls1/a/a/a/v0/l/g;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->d:Ls1/a/a/a/v0/l/g;

    .line 13
    iget-object p2, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 14
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 15
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/k$e;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/d/a/d0/n/k$e;-><init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V

    invoke-interface {p2, v0}, Ls1/a/a/a/v0/l/m;->c(Ls1/z/b/l;)Ls1/a/a/a/v0/l/h;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->e:Ls1/a/a/a/v0/l/h;

    .line 16
    iget-object p2, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 17
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 18
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/k$i;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/d/a/d0/n/k$i;-><init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V

    invoke-interface {p2, v0}, Ls1/a/a/a/v0/l/m;->i(Ls1/z/b/l;)Ls1/a/a/a/v0/l/g;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->f:Ls1/a/a/a/v0/l/g;

    .line 19
    iget-object p2, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 20
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 21
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/k$h;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/d/a/d0/n/k$h;-><init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V

    invoke-interface {p2, v0}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->g:Ls1/a/a/a/v0/l/i;

    .line 22
    iget-object p2, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 23
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 24
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/k$k;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/d/a/d0/n/k$k;-><init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V

    invoke-interface {p2, v0}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->h:Ls1/a/a/a/v0/l/i;

    .line 25
    iget-object p2, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 26
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 27
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/k$d;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/d/a/d0/n/k$d;-><init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V

    invoke-interface {p2, v0}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->i:Ls1/a/a/a/v0/l/i;

    .line 28
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 29
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 30
    new-instance p2, Ls1/a/a/a/v0/d/a/d0/n/k$j;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/d/a/d0/n/k$j;-><init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->i(Ls1/z/b/l;)Ls1/a/a/a/v0/l/g;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->j:Ls1/a/a/a/v0/l/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->g:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/d/a/d0/n/k;->m:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/c/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/k;->a()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->f:Ls1/a/a/a/v0/l/g;

    check-cast p2, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/c/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/k;->d()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->j:Ls1/a/a/a/v0/l/g;

    check-cast p2, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {p2, p1}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public d()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->h:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/d/a/d0/n/k;->m:[Ls1/a/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->i:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/d/a/d0/n/k;->m:[Ls1/a/l;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->b:Ls1/a/a/a/v0/l/i;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public abstract h(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation
.end method

.method public abstract i(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation
.end method

.method public abstract j()Ls1/a/a/a/v0/d/a/d0/n/b;
.end method

.method public final k(Ls1/a/a/a/v0/d/a/f0/q;Ls1/a/a/a/v0/d/a/d0/h;)Ls1/a/a/a/v0/m/e0;
    .locals 4

    const-string v0, "method"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/p;->z()Ls1/a/a/a/v0/d/a/f0/g;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/g;->k()Z

    move-result v0

    .line 2
    sget-object v1, Ls1/a/a/a/v0/d/a/b0/k;->b:Ls1/a/a/a/v0/d/a/b0/k;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3}, Ls1/a/a/a/v0/d/a/d0/o/i;->c(Ls1/a/a/a/v0/d/a/b0/k;ZLs1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v0

    .line 3
    iget-object p2, p2, Ls1/a/a/a/v0/d/a/d0/h;->b:Ls1/a/a/a/v0/d/a/d0/o/g;

    .line 4
    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/f0/q;->g()Ls1/a/a/a/v0/d/a/f0/v;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ls1/a/a/a/v0/d/a/d0/o/g;->d(Ls1/a/a/a/v0/d/a/f0/v;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    return-object p1
.end method

.method public abstract l(Ljava/util/Collection;Ls1/a/a/a/v0/f/e;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;",
            "Ls1/a/a/a/v0/f/e;",
            ")V"
        }
    .end annotation
.end method

.method public abstract m(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract n(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation
.end method

.method public abstract o()Ls1/a/a/a/v0/b/n0;
.end method

.method public abstract p()Ls1/a/a/a/v0/b/k;
.end method

.method public q(Ls1/a/a/a/v0/d/a/c0/f;)Z
    .locals 1

    const-string v0, "$this$isVisibleAsFunction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public abstract r(Ls1/a/a/a/v0/d/a/f0/q;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Ljava/util/List;)Ls1/a/a/a/v0/d/a/d0/n/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/d/a/f0/q;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/w0;",
            ">;",
            "Ls1/a/a/a/v0/m/e0;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/b1;",
            ">;)",
            "Ls1/a/a/a/v0/d/a/d0/n/k$a;"
        }
    .end annotation
.end method

.method public final s(Ls1/a/a/a/v0/d/a/f0/q;)Ls1/a/a/a/v0/d/a/c0/f;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "method"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    invoke-static {v2, v1}, Le/q/f/a/d/a;->B2(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/d;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v6

    .line 2
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/d/a/d0/n/k;->p()Ls1/a/a/a/v0/b/k;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v7

    iget-object v2, v0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 3
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 4
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/c;->j:Ls1/a/a/a/v0/d/a/e0/b;

    .line 5
    invoke-interface {v2, v1}, Ls1/a/a/a/v0/d/a/e0/b;->a(Ls1/a/a/a/v0/d/a/f0/l;)Ls1/a/a/a/v0/d/a/e0/a;

    move-result-object v9

    const/4 v2, 0x0

    if-eqz v4, :cond_9

    if-eqz v7, :cond_8

    if-eqz v9, :cond_7

    .line 6
    new-instance v15, Ls1/a/a/a/v0/d/a/c0/f;

    const/4 v5, 0x0

    sget-object v8, Ls1/a/a/a/v0/b/b$a;->a:Ls1/a/a/a/v0/b/b$a;

    move-object v3, v15

    invoke-direct/range {v3 .. v9}, Ls1/a/a/a/v0/d/a/c0/f;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/q0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V

    const-string v3, "JavaMethodDescriptor.cre\u2026.source(method)\n        )"

    .line 7
    invoke-static {v15, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v3, v0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    const/4 v4, 0x0

    .line 9
    invoke-static {v3, v15, v1, v4}, Le/q/f/a/d/a;->B(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/d/a/f0/x;I)Ls1/a/a/a/v0/d/a/d0/h;

    move-result-object v3

    .line 10
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/d/a/f0/x;->getTypeParameters()Ljava/util/List;

    move-result-object v4

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 13
    check-cast v6, Ls1/a/a/a/v0/d/a/f0/w;

    .line 14
    iget-object v7, v3, Ls1/a/a/a/v0/d/a/d0/h;->d:Ls1/a/a/a/v0/d/a/d0/m;

    .line 15
    invoke-interface {v7, v6}, Ls1/a/a/a/v0/d/a/d0/m;->a(Ls1/a/a/a/v0/d/a/f0/w;)Ls1/a/a/a/v0/b/w0;

    move-result-object v6

    invoke-static {v6}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/d/a/f0/q;->i()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v15, v4}, Ls1/a/a/a/v0/d/a/d0/n/k;->t(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/v;Ljava/util/List;)Ls1/a/a/a/v0/d/a/d0/n/k$b;

    move-result-object v4

    .line 17
    invoke-virtual {v0, v1, v3}, Ls1/a/a/a/v0/d/a/d0/n/k;->k(Ls1/a/a/a/v0/d/a/f0/q;Ls1/a/a/a/v0/d/a/d0/h;)Ls1/a/a/a/v0/m/e0;

    move-result-object v6

    .line 18
    iget-object v7, v4, Ls1/a/a/a/v0/d/a/d0/n/k$b;->a:Ljava/util/List;

    .line 19
    invoke-virtual {v0, v1, v5, v6, v7}, Ls1/a/a/a/v0/d/a/d0/n/k;->r(Ls1/a/a/a/v0/d/a/f0/q;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Ljava/util/List;)Ls1/a/a/a/v0/d/a/d0/n/k$a;

    move-result-object v5

    .line 20
    iget-object v6, v5, Ls1/a/a/a/v0/d/a/d0/n/k$a;->b:Ls1/a/a/a/v0/m/e0;

    if-eqz v6, :cond_1

    .line 21
    sget-object v7, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 22
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v7, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 24
    invoke-static {v15, v6, v7}, Ls1/a/a/a/v0/f/d;->u0(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/n0;

    move-result-object v6

    move-object v11, v6

    goto :goto_1

    :cond_1
    move-object v11, v2

    .line 25
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ls1/a/a/a/v0/d/a/d0/n/k;->o()Ls1/a/a/a/v0/b/n0;

    move-result-object v12

    .line 26
    iget-object v13, v5, Ls1/a/a/a/v0/d/a/d0/n/k$a;->d:Ljava/util/List;

    .line 27
    iget-object v14, v5, Ls1/a/a/a/v0/d/a/d0/n/k$a;->c:Ljava/util/List;

    .line 28
    iget-object v6, v5, Ls1/a/a/a/v0/d/a/d0/n/k$a;->a:Ls1/a/a/a/v0/m/e0;

    .line 29
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/d/a/f0/r;->E()Z

    move-result v7

    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/d/a/f0/r;->F()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v7, :cond_2

    .line 30
    sget-object v7, Ls1/a/a/a/v0/b/y;->d:Ls1/a/a/a/v0/b/y;

    :goto_2
    move-object/from16 v16, v7

    goto :goto_3

    :cond_2
    if-eqz v8, :cond_3

    .line 31
    sget-object v7, Ls1/a/a/a/v0/b/y;->c:Ls1/a/a/a/v0/b/y;

    goto :goto_2

    .line 32
    :cond_3
    sget-object v7, Ls1/a/a/a/v0/b/y;->a:Ls1/a/a/a/v0/b/y;

    goto :goto_2

    .line 33
    :goto_3
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/d/a/f0/r;->f()Ls1/a/a/a/v0/b/e1;

    move-result-object v1

    invoke-static {v1}, Le/q/f/a/d/a;->c3(Ls1/a/a/a/v0/b/e1;)Ls1/a/a/a/v0/b/r;

    move-result-object v17

    .line 34
    iget-object v1, v5, Ls1/a/a/a/v0/d/a/d0/n/k$a;->b:Ls1/a/a/a/v0/m/e0;

    if-eqz v1, :cond_4

    .line 35
    sget-object v1, Ls1/a/a/a/v0/d/a/c0/f;->E:Ls1/a/a/a/v0/b/a$a;

    .line 36
    iget-object v7, v4, Ls1/a/a/a/v0/d/a/d0/n/k$b;->a:Ljava/util/List;

    .line 37
    invoke-static {v7}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    .line 38
    new-instance v8, Ls1/k;

    invoke-direct {v8, v1, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-static {v8}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v1

    goto :goto_4

    .line 40
    :cond_4
    sget-object v1, Ls1/u/t;->a:Ls1/u/t;

    :goto_4
    move-object/from16 v18, v1

    move-object v10, v15

    move-object v1, v15

    move-object v15, v6

    .line 41
    invoke-virtual/range {v10 .. v18}, Ls1/a/a/a/v0/d/a/c0/f;->a1(Ls1/a/a/a/v0/b/n0;Ls1/a/a/a/v0/b/n0;Ljava/util/List;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/y;Ls1/a/a/a/v0/b/r;Ljava/util/Map;)Ls1/a/a/a/v0/b/h1/i0;

    .line 42
    iget-boolean v6, v5, Ls1/a/a/a/v0/d/a/d0/n/k$a;->e:Z

    .line 43
    iget-boolean v4, v4, Ls1/a/a/a/v0/d/a/d0/n/k$b;->b:Z

    .line 44
    invoke-virtual {v1, v6, v4}, Ls1/a/a/a/v0/d/a/c0/f;->b1(ZZ)V

    .line 45
    iget-object v4, v5, Ls1/a/a/a/v0/d/a/d0/n/k$a;->f:Ljava/util/List;

    .line 46
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    .line 47
    iget-object v1, v3, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 48
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/c;->e:Ls1/a/a/a/v0/d/a/b0/j;

    .line 49
    iget-object v3, v5, Ls1/a/a/a/v0/d/a/d0/n/k$a;->f:Ljava/util/List;

    .line 50
    check-cast v1, Ls1/a/a/a/v0/d/a/b0/j$a;

    .line 51
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_5

    const/4 v1, 0x6

    invoke-static {v1}, Ls1/a/a/a/v0/d/a/b0/j$a;->a(I)V

    throw v2

    .line 52
    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Should not be called"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    return-object v1

    :cond_7
    const/16 v1, 0x8

    .line 53
    invoke-static {v1}, Ls1/a/a/a/v0/d/a/c0/f;->X(I)V

    throw v2

    :cond_8
    const/4 v1, 0x7

    invoke-static {v1}, Ls1/a/a/a/v0/d/a/c0/f;->X(I)V

    throw v2

    :cond_9
    const/4 v1, 0x5

    invoke-static {v1}, Ls1/a/a/a/v0/d/a/c0/f;->X(I)V

    throw v2
.end method

.method public final t(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/v;Ljava/util/List;)Ls1/a/a/a/v0/d/a/d0/n/k$b;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/d/a/d0/h;",
            "Ls1/a/a/a/v0/b/v;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/d/a/f0/y;",
            ">;)",
            "Ls1/a/a/a/v0/d/a/d0/n/k$b;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    const-string v1, "c"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "function"

    invoke-static {v13, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jValueParameters"

    move-object/from16 v14, p3

    invoke-static {v14, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v15, Ljava/util/LinkedHashSet;

    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    invoke-static/range {p3 .. p3}, Ls1/u/i;->h1(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    .line 3
    new-instance v12, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    check-cast v1, Ls1/u/x;

    invoke-virtual {v1}, Ls1/u/x;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v11, 0x0

    move v1, v11

    :goto_0
    move-object/from16 v2, v16

    check-cast v2, Ls1/u/y;

    invoke-virtual {v2}, Ls1/u/y;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Ls1/u/y;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ls1/u/w;

    .line 6
    iget v4, v2, Ls1/u/w;->a:I

    .line 7
    iget-object v2, v2, Ls1/u/w;->b:Ljava/lang/Object;

    .line 8
    check-cast v2, Ls1/a/a/a/v0/d/a/f0/y;

    .line 9
    invoke-static {v0, v2}, Le/q/f/a/d/a;->B2(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/d;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object v5

    .line 10
    sget-object v3, Ls1/a/a/a/v0/d/a/b0/k;->b:Ls1/a/a/a/v0/d/a/b0/k;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {v3, v11, v7, v6}, Ls1/a/a/a/v0/d/a/d0/o/i;->c(Ls1/a/a/a/v0/d/a/b0/k;ZLs1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/d/a/d0/o/a;

    move-result-object v3

    .line 11
    sget-object v6, Ls1/a/a/a/v0/d/a/v;->l:Ls1/a/a/a/v0/f/b;

    const-string v8, "JvmAnnotationNames.PARAMETER_NAME_FQ_NAME"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v5

    check-cast v8, Ls1/a/a/a/v0/d/a/d0/f;

    invoke-virtual {v8, v6}, Ls1/a/a/a/v0/d/a/d0/f;->s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 12
    invoke-static {v6}, Ls1/a/a/a/v0/j/v/b;->b(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/j/t/g;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 13
    instance-of v8, v6, Ls1/a/a/a/v0/j/t/w;

    if-nez v8, :cond_0

    move-object v6, v7

    :cond_0
    check-cast v6, Ls1/a/a/a/v0/j/t/w;

    if-eqz v6, :cond_1

    .line 14
    iget-object v6, v6, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 15
    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v6, v7

    .line 16
    :goto_1
    invoke-interface {v2}, Ls1/a/a/a/v0/d/a/f0/y;->v()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_4

    .line 17
    invoke-interface {v2}, Ls1/a/a/a/v0/d/a/f0/y;->getType()Ls1/a/a/a/v0/d/a/f0/v;

    move-result-object v8

    instance-of v10, v8, Ls1/a/a/a/v0/d/a/f0/f;

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    move-object v7, v8

    :goto_2
    check-cast v7, Ls1/a/a/a/v0/d/a/f0/f;

    if-eqz v7, :cond_3

    .line 18
    iget-object v8, v0, Ls1/a/a/a/v0/d/a/d0/h;->b:Ls1/a/a/a/v0/d/a/d0/o/g;

    .line 19
    invoke-virtual {v8, v7, v3, v9}, Ls1/a/a/a/v0/d/a/d0/o/g;->c(Ls1/a/a/a/v0/d/a/f0/f;Ls1/a/a/a/v0/d/a/d0/o/a;Z)Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    .line 20
    iget-object v7, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 21
    iget-object v7, v7, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 22
    invoke-interface {v7}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v7

    invoke-virtual {v7, v3}, Ls1/a/a/a/v0/a/g;->g(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v7

    .line 23
    new-instance v8, Ls1/k;

    invoke-direct {v8, v3, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 24
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vararg parameter should be an array: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 25
    :cond_4
    iget-object v8, v0, Ls1/a/a/a/v0/d/a/d0/h;->b:Ls1/a/a/a/v0/d/a/d0/o/g;

    .line 26
    invoke-interface {v2}, Ls1/a/a/a/v0/d/a/f0/y;->getType()Ls1/a/a/a/v0/d/a/f0/v;

    move-result-object v10

    invoke-virtual {v8, v10, v3}, Ls1/a/a/a/v0/d/a/d0/o/g;->d(Ls1/a/a/a/v0/d/a/f0/v;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/e0;

    move-result-object v3

    .line 27
    new-instance v8, Ls1/k;

    invoke-direct {v8, v3, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    :goto_3
    iget-object v3, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 29
    move-object v7, v3

    check-cast v7, Ls1/a/a/a/v0/m/e0;

    .line 30
    iget-object v3, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 31
    move-object/from16 v17, v3

    check-cast v17, Ls1/a/a/a/v0/m/e0;

    .line 32
    move-object v3, v13

    check-cast v3, Ls1/a/a/a/v0/b/h1/m;

    invoke-virtual {v3}, Ls1/a/a/a/v0/b/h1/m;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-virtual {v3}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v3

    const-string v8, "equals"

    invoke-static {v3, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v9, :cond_5

    .line 33
    iget-object v3, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 34
    iget-object v3, v3, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 35
    invoke-interface {v3}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v3

    invoke-virtual {v3}, Ls1/a/a/a/v0/a/g;->o()Ls1/a/a/a/v0/m/l0;

    move-result-object v3

    invoke-static {v3, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "other"

    .line 36
    invoke-static {v3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    :goto_4
    move/from16 v18, v1

    move-object v6, v3

    goto :goto_6

    :cond_5
    if-eqz v6, :cond_7

    .line 37
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    move v3, v9

    goto :goto_5

    :cond_6
    move v3, v11

    :goto_5
    if-eqz v3, :cond_7

    invoke-interface {v15, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 38
    invoke-static {v6}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    goto :goto_4

    .line 39
    :cond_7
    invoke-interface {v2}, Ls1/a/a/a/v0/d/a/f0/y;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v3

    if-nez v3, :cond_8

    move v1, v9

    :cond_8
    if-eqz v3, :cond_9

    goto :goto_4

    .line 40
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x70

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    const-string v6, "Name.identifier(\"p$index\")"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :goto_6
    const-string v1, "if (function.name.asStri\u2026(\"p$index\")\n            }"

    .line 41
    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v10, Ls1/a/a/a/v0/b/h1/n0;

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v19, 0x0

    .line 43
    iget-object v1, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 44
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/c;->j:Ls1/a/a/a/v0/d/a/e0/b;

    .line 45
    invoke-interface {v1, v2}, Ls1/a/a/a/v0/d/a/e0/b;->a(Ls1/a/a/a/v0/d/a/f0/l;)Ls1/a/a/a/v0/d/a/e0/a;

    move-result-object v20

    move-object v1, v10

    move-object/from16 v2, p2

    move-object/from16 v21, v10

    move/from16 v10, v19

    move/from16 v19, v11

    move-object/from16 v11, v17

    move-object v0, v12

    move-object/from16 v12, v20

    .line 46
    invoke-direct/range {v1 .. v12}, Ls1/a/a/a/v0/b/h1/n0;-><init>(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/b1;ILs1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/e0;ZZZLs1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/r0;)V

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v0

    move/from16 v1, v18

    move/from16 v11, v19

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_a
    move-object v0, v12

    .line 47
    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 48
    new-instance v2, Ls1/a/a/a/v0/d/a/d0/n/k$b;

    invoke-direct {v2, v0, v1}, Ls1/a/a/a/v0/d/a/d0/n/k$b;-><init>(Ljava/util/List;Z)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Lazy scope for "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/k;->p()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
