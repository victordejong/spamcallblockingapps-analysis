.class public final Le/a/y/b/y;
.super Le/a/y/b/a0;
.source "SourceFile"

# interfaces
.implements Le/a/y/b/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/y/b/a0<",
        "Le/a/y/e/i;",
        ">;",
        "Le/a/y/b/z<",
        "Le/a/y/e/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/y/b/w;)V
    .locals 1

    const-string v0, "preferenceUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/y/b/b0;->a:[Le/a/y/e/i;

    array-length v0, v0

    invoke-direct {p0, p1, v0}, Le/a/y/b/a0;-><init>(Le/a/y/b/w;I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/b/a0;->b:Le/a/y/b/w;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "recent_page"

    invoke-interface {v0, v1, p1}, Le/a/y/b/w;->l(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(J)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recent_emojis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/y/b/a0;->f(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Le/a/y/b/a0;->e()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Le/a/y/b/b0;->a:[Le/a/y/e/i;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    const-string v5, "it"

    .line 6
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "object"

    .line 7
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v4}, Le/a/y/b/a0;->g(Ljava/lang/Object;)V

    .line 9
    sget-object v4, Ls1/s;->a:Ls1/s;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Le/a/y/b/y;->d(J)V

    :cond_1
    return-void
.end method

.method public c()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/b/a0;->b:Le/a/y/b/w;

    const-string v1, "recent_page"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Le/a/y/b/w;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recent_emojis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/y/b/a0;->h(Ljava/lang/String;)V

    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/y/e/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/y/b/a0;->a:Ljava/util/List;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "value"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/a/y/e/i;

    invoke-direct {v0, p1}, Le/a/y/e/i;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    check-cast p1, Le/a/y/e/i;

    const-string v0, "object"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Le/a/y/e/i;->a:Ljava/lang/String;

    const-string v0, "`object`.emoji"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public push(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/y/e/i;

    const-string v0, "object"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Le/a/y/b/a0;->g(Ljava/lang/Object;)V

    return-void
.end method
