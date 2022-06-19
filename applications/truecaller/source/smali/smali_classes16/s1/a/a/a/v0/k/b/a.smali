.class public abstract Ls1/a/a/a/v0/k/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/f0;


# instance fields
.field public a:Ls1/a/a/a/v0/k/b/j;

.field public final b:Ls1/a/a/a/v0/l/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/h<",
            "Ls1/a/a/a/v0/f/b;",
            "Ls1/a/a/a/v0/b/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/a/a/a/v0/l/m;

.field public final d:Ls1/a/a/a/v0/k/b/s;

.field public final e:Ls1/a/a/a/v0/b/a0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/k/b/s;Ls1/a/a/a/v0/b/a0;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleDescriptor"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/a;->c:Ls1/a/a/a/v0/l/m;

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/a;->d:Ls1/a/a/a/v0/k/b/s;

    iput-object p3, p0, Ls1/a/a/a/v0/k/b/a;->e:Ls1/a/a/a/v0/b/a0;

    .line 2
    new-instance p2, Ls1/a/a/a/v0/k/b/a$a;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/k/b/a$a;-><init>(Ls1/a/a/a/v0/k/b/a;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->c(Ls1/z/b/l;)Ls1/a/a/a/v0/l/h;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/a;->b:Ls1/a/a/a/v0/l/h;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/f/b;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/b;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/c0;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/a;->b:Ls1/a/a/a/v0/l/h;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Ls1/a/a/a/v0/f/b;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/b;",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/c0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragments"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/a;->b:Ls1/a/a/a/v0/l/h;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ls1/a/a/a/v0/f/d;->r(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public r(Ls1/a/a/a/v0/f/b;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/b;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/f/b;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    return-object p1
.end method
