.class public final Le/a/a/o/r/i$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/o/r/i;->Ij(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/o/r/i;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/a/o/r/i;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o/r/i$a;->b:Le/a/a/o/r/i;

    iput-object p2, p0, Le/a/a/o/r/i$a;->c:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Le/a/a/o/r/i$a;->b:Le/a/a/o/r/i;

    iget-object v1, p0, Le/a/a/o/r/i$a;->c:Ljava/util/List;

    .line 2
    iget-object v2, v0, Le/a/a/o/r/i;->j:Le/a/q2/a;

    const-string v3, "StorageManagerDelete"

    const-string v9, "type"

    .line 3
    invoke-static {v3, v9}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v11

    const-string v10, "langPack"

    const-string v12, "name"

    const-string v7, "value"

    move-object v4, v9

    move-object v5, v12

    move-object v6, v10

    move-object v8, v11

    .line 4
    invoke-static/range {v4 .. v10}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v4

    const-string v5, "numItems"

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 6
    invoke-static {v5, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-double v6, v6

    .line 7
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "totalSize"

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v0, Le/a/a/o/r/i;->e:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    goto :goto_1

    :cond_0
    move-wide v13, v7

    :goto_1
    add-long/2addr v9, v13

    goto :goto_0

    :cond_1
    invoke-static {v9, v10}, Le/a/p5/s0/g;->n(J)D

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Le/a/p5/s0/g;->g1(DII)D

    move-result-wide v6

    .line 9
    invoke-static {v5, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v5

    invoke-virtual {v5, v3}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v5, v4}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v5, v11}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v5}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v3

    const-string v4, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v2, v3}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    iget-object v3, v0, Le/a/a/o/r/i;->h:Le/a/a/g1/b;

    new-instance v4, Le/a/a/o/r/j;

    invoke-direct {v4, v0}, Le/a/a/o/r/j;-><init>(Le/a/a/o/r/i;)V

    invoke-interface {v3, v2, v4}, Le/a/a/g1/b;->i(Ljava/lang/String;Ls1/z/b/a;)V

    goto :goto_2

    .line 15
    :cond_2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/o/r/h;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/a/o/r/h;->e()V

    .line 16
    :cond_3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
