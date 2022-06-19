.class public final Le/a/a/o0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/o0/a;


# instance fields
.field public final a:Le/a/a3/a;

.field public final b:Ls1/w/f;

.field public final c:Le/a/k3/j/b;


# direct methods
.method public constructor <init>(Le/a/a3/a;Ls1/w/f;Le/a/k3/j/b;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "blockManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/o0/b;->a:Le/a/a3/a;

    iput-object p2, p0, Le/a/a/o0/b;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/a/o0/b;->c:Le/a/k3/j/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;Ljava/lang/String;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;ZLjava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;",
            "Ljava/lang/Long;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "participants"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v11, p6

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    move-object v3, v2

    check-cast v3, Lcom/truecaller/data/entity/messaging/Participant;

    .line 4
    iget v3, v3, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 9
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 11
    sget-object v12, Lq3/a/h1;->a:Lq3/a/h1;

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v15, Le/a/a/o0/b$a;

    const/4 v3, 0x0

    move-object v1, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move/from16 v7, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Le/a/a/o0/b$a;-><init>(Ljava/util/List;Ls1/w/d;Le/a/a/o0/b;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_1

    :cond_2
    return-void
.end method
