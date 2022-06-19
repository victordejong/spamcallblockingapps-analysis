.class public Le/q/f/a/e/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Le/q/c/b/a;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/q/f/a/e/d/b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/q/f/a/e/d/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Le/q/f/a/e/d/b;->g:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/q/f/a/e/d/b;->h:Z

    .line 4
    iput-boolean v0, p0, Le/q/f/a/e/d/b;->i:Z

    .line 5
    iput-boolean v0, p0, Le/q/f/a/e/d/b;->j:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/q/f/a/e/d/b;->d:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/q/f/a/e/d/b;->e:Ljava/util/List;

    .line 8
    new-instance v0, Le/q/f/a/f/n;

    invoke-direct {v0}, Le/q/f/a/f/n;-><init>()V

    iput-object v0, p0, Le/q/f/a/e/d/b;->c:Le/q/c/b/a;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Le/q/f/a/e/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Le/q/f/a/e/d/b;->g:I

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Le/q/f/a/e/d/b;->h:Z

    .line 13
    iput-boolean v0, p0, Le/q/f/a/e/d/b;->i:Z

    .line 14
    iput-boolean v0, p0, Le/q/f/a/e/d/b;->j:Z

    .line 15
    iput-object p1, p0, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Le/q/f/a/e/d/b;->b:Ljava/lang/String;

    .line 17
    invoke-static {p3}, Le/q/f/a/d/a;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\u"

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    iput-object p3, p0, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    .line 19
    iput p4, p0, Le/q/f/a/e/d/b;->g:I

    .line 20
    new-instance p1, Le/q/f/a/f/n;

    invoke-direct {p1}, Le/q/f/a/f/n;-><init>()V

    iput-object p1, p0, Le/q/f/a/e/d/b;->c:Le/q/c/b/a;

    if-eqz p5, :cond_3

    .line 21
    array-length p1, p5

    const/4 p2, 0x2

    if-lt p1, p2, :cond_3

    .line 22
    array-length p1, p5

    rem-int/2addr p1, p2

    if-nez p1, :cond_2

    .line 23
    :goto_1
    array-length p1, p5

    if-ge v0, p1, :cond_3

    add-int/lit8 p1, v0, 0x1

    .line 24
    aget-object p2, p5, p1

    if-eqz p2, :cond_1

    .line 25
    iget-object p2, p0, Le/q/f/a/e/d/b;->c:Le/q/c/b/a;

    aget-object p3, p5, v0

    aget-object p1, p5, p1

    check-cast p2, Le/q/f/a/f/n;

    invoke-virtual {p2, p3, p1}, Le/q/f/a/f/n;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Please pass both Key and Value while instantiating GDO"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Le/q/f/a/e/d/b;->c:Le/q/c/b/a;

    check-cast v0, Le/q/f/a/f/n;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Le/q/f/a/e/d/b;
    .locals 3

    .line 1
    iget-object v0, p0, Le/q/f/a/e/d/b;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/q/f/a/e/d/b;

    .line 3
    iget-object v2, v1, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Le/q/f/a/e/d/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/q/f/a/e/d/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/q/f/a/e/d/b;->d:Ljava/util/List;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Le/d/c/a/a;->F1(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/q/f/a/e/d/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Le/q/f/a/e/d/b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/q/f/a/e/d/b;->c()Le/q/f/a/e/d/b;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Le/q/f/a/e/d/b;->c()Le/q/f/a/e/d/b;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/q/f/a/e/d/b;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    const-class v2, Le/q/f/a/e/d/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Le/q/f/a/e/d/b;

    .line 3
    iget v2, p0, Le/q/f/a/e/d/b;->g:I

    iget v3, p1, Le/q/f/a/e/d/b;->g:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    iget-object v3, p1, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    iget-object p1, p1, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    const-string v1, "GDO_NONDET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    const-string v1, "GDO_NONDET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    const-string v1, "[\"\'\\\\]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Le/q/f/a/e/d/b;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, "{\"token\":\""

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/q/f/a/e/d/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"str\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/q/f/a/e/d/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"values\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Le/q/f/a/e/d/b;->c:Le/q/c/b/a;

    if-eqz v2, :cond_0

    .line 4
    check-cast v2, Le/q/f/a/f/n;

    invoke-virtual {v2}, Le/q/f/a/f/n;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v4, "\""

    .line 5
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Le/q/f/a/d/a;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    const-string v2, "}"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
