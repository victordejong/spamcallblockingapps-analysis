.class public final Ls1/a/a/a/v0/d/b/c;
.super Ls1/a/a/a/v0/d/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/d/b/a<",
        "Ls1/a/a/a/v0/b/f1/c;",
        "Ls1/a/a/a/v0/j/t/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final d:Ls1/a/a/a/v0/k/b/e;

.field public final e:Ls1/a/a/a/v0/b/a0;

.field public final f:Ls1/a/a/a/v0/b/b0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/b/b0;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/d/b/k;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3, p4}, Ls1/a/a/a/v0/d/b/a;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/d/b/k;)V

    iput-object p1, p0, Ls1/a/a/a/v0/d/b/c;->e:Ls1/a/a/a/v0/b/a0;

    iput-object p2, p0, Ls1/a/a/a/v0/d/b/c;->f:Ls1/a/a/a/v0/b/b0;

    .line 2
    new-instance p3, Ls1/a/a/a/v0/k/b/e;

    invoke-direct {p3, p1, p2}, Ls1/a/a/a/v0/k/b/e;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/b/b0;)V

    iput-object p3, p0, Ls1/a/a/a/v0/d/b/c;->d:Ls1/a/a/a/v0/k/b/e;

    return-void
.end method


# virtual methods
.method public s(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;Ljava/util/List;)Ls1/a/a/a/v0/d/b/l$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/a;",
            "Ls1/a/a/a/v0/b/r0;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;)",
            "Ls1/a/a/a/v0/d/b/l$a;"
        }
    .end annotation

    const-string v0, "annotationClassId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/c;->e:Ls1/a/a/a/v0/b/a0;

    iget-object v1, p0, Ls1/a/a/a/v0/d/b/c;->f:Ls1/a/a/a/v0/b/b0;

    invoke-static {v0, p1, v1}, Le/q/f/a/d/a;->r0(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/b0;)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    .line 2
    new-instance v0, Ls1/a/a/a/v0/d/b/c$a;

    invoke-direct {v0, p0, p1, p3, p2}, Ls1/a/a/a/v0/d/b/c$a;-><init>(Ls1/a/a/a/v0/d/b/c;Ls1/a/a/a/v0/b/e;Ljava/util/List;Ls1/a/a/a/v0/b/r0;)V

    return-object v0
.end method
