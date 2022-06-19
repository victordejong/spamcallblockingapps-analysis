.class public final Le/a/c/z/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/z/a;


# instance fields
.field public final a:Le/a/q2/a;

.field public final b:Le/a/c/w/k;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/c/w/k;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brandSearchRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/z/b;->a:Le/a/q2/a;

    iput-object p2, p0, Le/a/c/z/b;->b:Le/a/c/w/k;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/z/b$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/z/b$a;

    iget v1, v0, Le/a/c/z/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/z/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/z/b$a;

    invoke-direct {v0, p0, p1}, Le/a/c/z/b$a;-><init>(Le/a/c/z/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/z/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/z/b$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/c/z/b$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/z/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/z/b;->b:Le/a/c/w/k;

    iput-object p0, v0, Le/a/c/z/b$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/z/b$a;->e:I

    check-cast p1, Le/a/c/w/l;

    invoke-virtual {p1, v0}, Le/a/c/w/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/w/j;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logging brand monitoring stats: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    iget-object v2, v1, Le/a/c/w/j;->c:Ljava/util/List;

    .line 9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/h/a;

    .line 10
    iget-object v5, v1, Le/a/c/w/j;->b:Ljava/lang/String;

    .line 11
    iget-object v6, v4, Le/a/c/h/a;->a:Ljava/lang/String;

    .line 12
    iget v7, v4, Le/a/c/h/a;->b:I

    .line 13
    iget-object v4, v4, Le/a/c/h/a;->c:Ljava/lang/String;

    .line 14
    iget v8, v1, Le/a/c/w/j;->a:I

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v9

    const-string v10, "insights_brand_monitoring"

    .line 17
    invoke-virtual {v9, v10}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    const/4 v10, 0x5

    new-array v10, v10, [Ls1/k;

    .line 18
    new-instance v11, Ls1/k;

    const-string v12, "brandId"

    invoke-direct {v11, v12, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v11, v10, v5

    .line 19
    new-instance v5, Ls1/k;

    const-string v11, "sender"

    invoke-direct {v5, v11, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v10, v3

    const/4 v5, 0x2

    .line 20
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 21
    new-instance v7, Ls1/k;

    const-string v11, "eventCount"

    invoke-direct {v7, v11, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v10, v5

    const/4 v5, 0x3

    .line 22
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 23
    new-instance v7, Ls1/k;

    const-string v8, "version"

    invoke-direct {v7, v8, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v10, v5

    const/4 v5, 0x4

    .line 24
    new-instance v6, Ls1/k;

    const-string v7, "eventDate"

    invoke-direct {v6, v7, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v10, v5

    .line 25
    invoke-static {v10}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v9, v4}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 26
    invoke-virtual {v9}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v4

    .line 27
    iget-object v5, v0, Le/a/c/z/b;->a:Le/a/q2/a;

    const-string v6, "it"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_2

    .line 28
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
