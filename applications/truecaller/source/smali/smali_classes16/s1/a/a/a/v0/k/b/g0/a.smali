.class public Ls1/a/a/a/v0/k/b/g0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/f1/h;


# static fields
.field public static final synthetic b:[Ls1/a/l;


# instance fields
.field public final a:Ls1/a/a/a/v0/l/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    new-instance v1, Ls1/z/c/w;

    const-class v2, Ls1/a/a/a/v0/k/b/g0/a;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const-string v3, "annotations"

    const-string v4, "getAnnotations()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ls1/a/a/a/v0/k/b/g0/a;->b:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/l/m;",
            "Ls1/z/b/a<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compute"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/a;->a:Ls1/a/a/a/v0/l/i;

    return-void
.end method


# virtual methods
.method public Y1(Ls1/a/a/a/v0/f/b;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Le/q/f/a/d/a;->j1(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/b;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/a;->a:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/k/b/g0/a;->b:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/a;->a:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/k/b/g0/a;->b:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/f1/c;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Le/q/f/a/d/a;->l0(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object p1

    return-object p1
.end method
