.class public abstract Ls1/a/a/a/v0/m/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/v0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/m/i$a;,
        Ls1/a/a/a/v0/m/i$b;
    }
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ls1/a/a/a/v0/m/i$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;)V
    .locals 3

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/m/i$c;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/m/i$c;-><init>(Ls1/a/a/a/v0/m/i;)V

    .line 3
    sget-object v1, Ls1/a/a/a/v0/m/i$d;->b:Ls1/a/a/a/v0/m/i$d;

    .line 4
    new-instance v2, Ls1/a/a/a/v0/m/i$e;

    invoke-direct {v2, p0}, Ls1/a/a/a/v0/m/i$e;-><init>(Ls1/a/a/a/v0/m/i;)V

    .line 5
    invoke-interface {p1, v0, v1, v2}, Ls1/a/a/a/v0/l/m;->b(Ls1/z/b/a;Ls1/z/b/l;Ls1/z/b/l;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/m/i;->a:Ls1/a/a/a/v0/l/i;

    return-void
.end method

.method public static final f(Ls1/a/a/a/v0/m/i;Ls1/a/a/a/v0/m/v0;Z)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of p0, p1, Ls1/a/a/a/v0/m/i;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    check-cast p0, Ls1/a/a/a/v0/m/i;

    if-eqz p0, :cond_1

    .line 3
    iget-object p1, p0, Ls1/a/a/a/v0/m/i;->a:Ls1/a/a/a/v0/l/i;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/i$b;

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/m/i$b;->b:Ljava/util/Collection;

    .line 5
    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/m/i;->i(Z)Ljava/util/Collection;

    move-result-object p0

    .line 6
    invoke-static {p1, p0}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "supertypes"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/v0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/i$a;

    invoke-direct {v0, p0, p1}, Ls1/a/a/a/v0/m/i$a;-><init>(Ls1/a/a/a/v0/m/i;Ls1/a/a/a/v0/m/l1/e;)V

    return-object v0
.end method

.method public bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/i;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Ls1/a/a/a/v0/b/h;
.end method

.method public abstract g()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation
.end method

.method public h()Ls1/a/a/a/v0/m/e0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Z)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1
.end method

.method public abstract j()Ls1/a/a/a/v0/b/u0;
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/i;->a:Ls1/a/a/a/v0/l/i;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/i$b;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/m/i$b;->a:Ljava/util/List;

    return-object v0
.end method

.method public l(Ls1/a/a/a/v0/m/e0;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
