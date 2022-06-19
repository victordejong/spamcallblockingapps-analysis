.class public final Ls1/a/a/a/v0/j/y/l;
.super Ls1/a/a/a/v0/j/y/j;
.source "SourceFile"


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public final b:Ls1/a/a/a/v0/l/i;

.field public final c:Ls1/a/a/a/v0/b/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    new-instance v1, Ls1/z/c/w;

    const-class v2, Ls1/a/a/a/v0/j/y/l;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const-string v3, "functions"

    const-string v4, "getFunctions()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ls1/a/a/a/v0/j/y/l;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/e;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingClass"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/j/y/j;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/v0/j/y/l;->c:Ls1/a/a/a/v0/b/e;

    .line 2
    new-instance p2, Ls1/a/a/a/v0/j/y/l$a;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/j/y/l$a;-><init>(Ls1/a/a/a/v0/j/y/l;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/j/y/l;->b:Ls1/a/a/a/v0/l/i;

    return-void
.end method


# virtual methods
.method public b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;
    .locals 3

    const-string v0, "name"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Ls1/a/a/a/v0/j/y/l;->b:Ls1/a/a/a/v0/l/i;

    sget-object v0, Ls1/a/a/a/v0/j/y/l;->d:[Ls1/a/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p2, v0}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 3
    new-instance v0, Ls1/a/a/a/v0/o/l;

    invoke-direct {v0}, Ls1/a/a/a/v0/o/l;-><init>()V

    .line 4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ls1/a/a/a/v0/b/q0;

    .line 5
    invoke-interface {v2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-static {v2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/o/l;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "location"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Ls1/a/a/a/v0/j/y/l;->b:Ls1/a/a/a/v0/l/i;

    sget-object p2, Ls1/a/a/a/v0/j/y/l;->d:[Ls1/a/l;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
