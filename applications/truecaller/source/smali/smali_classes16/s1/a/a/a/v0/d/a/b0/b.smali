.class public Ls1/a/a/a/v0/d/a/b0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/f1/c;
.implements Ls1/a/a/a/v0/d/a/c0/i;


# static fields
.field public static final synthetic f:[Ls1/a/l;


# instance fields
.field public final a:Ls1/a/a/a/v0/b/r0;

.field public final b:Ls1/a/a/a/v0/l/i;

.field public final c:Ls1/a/a/a/v0/d/a/f0/b;

.field public final d:Z

.field public final e:Ls1/a/a/a/v0/f/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    new-instance v1, Ls1/z/c/w;

    const-class v2, Ls1/a/a/a/v0/d/a/b0/b;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const-string v3, "type"

    const-string v4, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v1, v2, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ls1/a/a/a/v0/d/a/b0/b;->f:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/a;Ls1/a/a/a/v0/f/b;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/b0/b;->e:Ls1/a/a/a/v0/f/b;

    if-eqz p2, :cond_0

    .line 2
    iget-object p3, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 3
    iget-object p3, p3, Ls1/a/a/a/v0/d/a/d0/c;->j:Ls1/a/a/a/v0/d/a/e0/b;

    .line 4
    invoke-interface {p3, p2}, Ls1/a/a/a/v0/d/a/e0/b;->a(Ls1/a/a/a/v0/d/a/f0/l;)Ls1/a/a/a/v0/d/a/e0/a;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const-string v0, "SourceElement.NO_SOURCE"

    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object p3, p0, Ls1/a/a/a/v0/d/a/b0/b;->a:Ls1/a/a/a/v0/b/r0;

    .line 5
    iget-object p3, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 6
    iget-object p3, p3, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 7
    new-instance v0, Ls1/a/a/a/v0/d/a/b0/b$a;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/d/a/b0/b$a;-><init>(Ls1/a/a/a/v0/d/a/b0/b;Ls1/a/a/a/v0/d/a/d0/h;)V

    invoke-interface {p3, v0}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/b0/b;->b:Ls1/a/a/a/v0/l/i;

    if-eqz p2, :cond_1

    .line 8
    invoke-interface {p2}, Ls1/a/a/a/v0/d/a/f0/a;->I()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ls1/u/i;->C(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/d/a/f0/b;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Ls1/a/a/a/v0/d/a/b0/b;->c:Ls1/a/a/a/v0/d/a/f0/b;

    const/4 p1, 0x1

    if-eqz p2, :cond_2

    .line 9
    invoke-interface {p2}, Ls1/a/a/a/v0/d/a/f0/a;->a()Z

    move-result p2

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Ls1/a/a/a/v0/d/a/b0/b;->d:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/d/a/b0/b;->d:Z

    return v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/t;->a:Ls1/u/t;

    return-object v0
.end method

.method public d()Ls1/a/a/a/v0/f/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/b0/b;->e:Ls1/a/a/a/v0/f/b;

    return-object v0
.end method

.method public getSource()Ls1/a/a/a/v0/b/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/b0/b;->a:Ls1/a/a/a/v0/b/r0;

    return-object v0
.end method

.method public getType()Ls1/a/a/a/v0/m/e0;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/b0/b;->b:Ls1/a/a/a/v0/l/i;

    sget-object v1, Ls1/a/a/a/v0/d/a/b0/b;->f:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->B1(Ls1/a/a/a/v0/l/i;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/l0;

    return-object v0
.end method
