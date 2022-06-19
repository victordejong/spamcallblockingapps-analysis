.class public final Le/a/c/a/p/b/g;
.super Le/a/c/a/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/c<",
        "Le/a/c/a/p/c/e;",
        "Ln3/z/b2<",
        "Le/a/c/a/p/c/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Le/a/c/q/d;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/q/d;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsUiBridge"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/c/a/i/c;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/p/b/g;->b:Le/a/c/q/d;

    iput-object p2, p0, Le/a/c/a/p/b/g;->c:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Ln3/z/b2;->e:Ln3/z/b2$b;

    .line 2
    sget-object v0, Ln3/z/b2;->d:Ln3/z/b2;

    const-string v1, "null cannot be cast to non-null type androidx.paging.PagingData<T>"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lq3/a/x2/f;
    .locals 0

    .line 1
    check-cast p1, Le/a/c/a/p/c/e;

    invoke-virtual {p0, p1}, Le/a/c/a/p/b/g;->d(Le/a/c/a/p/c/e;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/a/c/a/p/c/e;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/p/c/e;",
            ")",
            "Lq3/a/x2/f<",
            "Ln3/z/b2<",
            "Le/a/c/a/p/c/d;",
            ">;>;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/p/c/e;->d:Ljava/util/List;

    .line 2
    invoke-static {v0}, Le/a/c/p/a;->R1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Le/a/c/w/o0/k/c;

    invoke-direct {v1, v0}, Le/a/c/w/o0/k/c;-><init>(Ljava/util/List;)V

    .line 4
    new-instance v0, Le/a/c/w/o0/k/a;

    .line 5
    iget-object v2, p1, Le/a/c/a/p/c/e;->a:Ln3/z/a2;

    .line 6
    invoke-direct {v0, v2, v1}, Le/a/c/w/o0/k/a;-><init>(Ln3/z/a2;Le/a/c/w/o0/k/c;)V

    .line 7
    iget-object v2, p0, Le/a/c/a/p/b/g;->b:Le/a/c/q/d;

    invoke-interface {v2, v0}, Le/a/c/q/d;->w(Le/a/c/w/o0/k/a;)Lq3/a/x2/f;

    move-result-object v0

    .line 8
    iget-object v1, v1, Le/a/c/w/o0/k/c;->a:Ljava/util/List;

    .line 9
    invoke-static {v1}, Le/a/c/p/a;->L0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 10
    new-instance v2, Le/a/c/a/p/b/d;

    invoke-direct {v2, v0, p0, v1}, Le/a/c/a/p/b/d;-><init>(Lq3/a/x2/f;Le/a/c/a/p/b/g;Ljava/util/Set;)V

    .line 11
    new-instance v0, Le/a/c/a/p/b/e;

    invoke-direct {v0, v2, p0, p1}, Le/a/c/a/p/b/e;-><init>(Lq3/a/x2/f;Le/a/c/a/p/b/g;Le/a/c/a/p/c/e;)V

    return-object v0
.end method
