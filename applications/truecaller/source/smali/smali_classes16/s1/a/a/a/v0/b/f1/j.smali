.class public final Ls1/a/a/a/v0/b/f1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/f1/c;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/a/a/a/v0/a/g;

.field public final c:Ls1/a/a/a/v0/f/b;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/f/b;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/a/g;",
            "Ls1/a/a/a/v0/f/b;",
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "+",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "builtIns"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allValueArguments"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/f1/j;->b:Ls1/a/a/a/v0/a/g;

    iput-object p2, p0, Ls1/a/a/a/v0/b/f1/j;->c:Ls1/a/a/a/v0/f/b;

    iput-object p3, p0, Ls1/a/a/a/v0/b/f1/j;->d:Ljava/util/Map;

    .line 2
    sget-object p1, Ls1/h;->b:Ls1/h;

    new-instance p2, Ls1/a/a/a/v0/b/f1/j$a;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/b/f1/j$a;-><init>(Ls1/a/a/a/v0/b/f1/j;)V

    invoke-static {p1, p2}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/b/f1/j;->a:Ls1/g;

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Ls1/a/a/a/v0/b/f1/j;->d:Ljava/util/Map;

    return-object v0
.end method

.method public d()Ls1/a/a/a/v0/f/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/f1/j;->c:Ls1/a/a/a/v0/f/b;

    return-object v0
.end method

.method public getSource()Ls1/a/a/a/v0/b/r0;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const-string v1, "SourceElement.NO_SOURCE"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getType()Ls1/a/a/a/v0/m/e0;
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/b/f1/j;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/e0;

    return-object v0
.end method
