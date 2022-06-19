.class public final Le/a/c/a/j/a/c;
.super Le/a/c/a/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/c<",
        "Le/a/c/a/j/b/h;",
        "Ljava/util/List<",
        "+",
        "Le/a/c/a/j/b/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Ls1/w/f;

.field public final c:Le/a/c/a/j/a/b;

.field public final d:Le/a/c/a/j/a/d;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/c/a/j/a/b;Le/a/c/a/j/a/d;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getCategoriesUseCase"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getSendersUseCase"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/c/a/i/c;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/j/a/c;->b:Ls1/w/f;

    iput-object p2, p0, Le/a/c/a/j/a/c;->c:Le/a/c/a/j/a/b;

    iput-object p3, p0, Le/a/c/a/j/a/c;->d:Le/a/c/a/j/a/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lq3/a/x2/f;
    .locals 0

    .line 1
    check-cast p1, Le/a/c/a/j/b/h;

    invoke-virtual {p0, p1}, Le/a/c/a/j/a/c;->d(Le/a/c/a/j/b/h;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/a/c/a/j/b/h;)Lq3/a/x2/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/j/b/h;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/a/j/b/d;",
            ">;>;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/j/b/h;->b:Ljava/util/Set;

    .line 2
    invoke-static {v0}, Le/a/c/p/a;->T0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 3
    iget-object v1, p1, Le/a/c/a/j/b/h;->b:Ljava/util/Set;

    .line 4
    invoke-static {v1}, Le/a/c/p/a;->q0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    .line 5
    iget-object v2, p1, Le/a/c/a/j/b/h;->b:Ljava/util/Set;

    .line 6
    invoke-static {v2}, Le/a/c/p/a;->w0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v2

    .line 7
    iget-object v3, p1, Le/a/c/a/j/b/h;->b:Ljava/util/Set;

    .line 8
    invoke-static {v3}, Le/a/c/p/a;->L0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v3

    .line 9
    new-instance v4, Le/a/c/a/j/b/a;

    .line 10
    invoke-static {v0, v1}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v5, v2}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    .line 11
    invoke-static {v0, v1}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v2}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 12
    invoke-direct {v4, v1, v2, v5, v0}, Le/a/c/a/j/b/a;-><init>(IZLjava/util/Set;Ljava/util/Set;)V

    .line 13
    new-instance v0, Le/a/c/a/j/b/i;

    .line 14
    iget-object v1, p1, Le/a/c/a/j/b/h;->b:Ljava/util/Set;

    const-string v2, ""

    const/4 v5, 0x1

    .line 15
    invoke-direct {v0, v2, v1, v3, v5}, Le/a/c/a/j/b/i;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 16
    iget-object v1, p0, Le/a/c/a/j/a/c;->c:Le/a/c/a/j/a/b;

    invoke-virtual {v1, v4}, Le/a/c/a/i/c;->c(Ljava/lang/Object;)Lq3/a/x2/f;

    move-result-object v1

    iget-object v2, p0, Le/a/c/a/j/a/c;->d:Le/a/c/a/j/a/d;

    invoke-virtual {v2, v0}, Le/a/c/a/i/c;->c(Ljava/lang/Object;)Lq3/a/x2/f;

    move-result-object v0

    new-instance v2, Le/a/c/a/j/a/c$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Le/a/c/a/j/a/c$a;-><init>(Le/a/c/a/j/a/c;Le/a/c/a/j/b/h;Ls1/w/d;)V

    .line 17
    new-instance p1, Lq3/a/x2/w0;

    invoke-direct {p1, v1, v0, v2}, Lq3/a/x2/w0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V

    return-object p1
.end method
