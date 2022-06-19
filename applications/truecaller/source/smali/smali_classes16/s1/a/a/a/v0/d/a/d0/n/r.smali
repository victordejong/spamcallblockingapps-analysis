.class public final Ls1/a/a/a/v0/d/a/d0/n/r;
.super Ls1/a/a/a/v0/o/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/o/b<",
        "Ls1/a/a/a/v0/b/e;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/b/e;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/e;Ljava/util/Set;Ls1/z/b/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/r;->a:Ls1/a/a/a/v0/b/e;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/r;->b:Ljava/util/Set;

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/d0/n/r;->c:Ls1/z/b/l;

    invoke-direct {p0}, Ls1/a/a/a/v0/o/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/e;

    const-string v0, "current"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/r;->a:Ls1/a/a/a/v0/b/e;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->z0()Ls1/a/a/a/v0/j/y/i;

    move-result-object p1

    const-string v0, "current.staticScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    instance-of v0, p1, Ls1/a/a/a/v0/d/a/d0/n/s;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/r;->b:Ljava/util/Set;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/r;->c:Ls1/z/b/l;

    invoke-interface {v1, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
