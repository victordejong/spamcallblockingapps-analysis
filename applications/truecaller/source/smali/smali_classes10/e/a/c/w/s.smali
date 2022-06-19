.class public final Le/a/c/w/s;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/insightsui/UpdateCategoryData;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/insightsui/GrammarCategoryData;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/insightsui/CategoryModel;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.repository.FilterDataRepositoryImpl$getCategories$1"
    f = "FilterDataRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Le/a/c/w/u;


# direct methods
.method public constructor <init>(Le/a/c/w/u;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/w/s;->g:Le/a/c/w/u;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    check-cast p3, Ls1/w/d;

    const-string v0, "u"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "g"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/w/s;

    iget-object v1, p0, Le/a/c/w/s;->g:Le/a/c/w/u;

    invoke-direct {v0, v1, p3}, Le/a/c/w/s;-><init>(Le/a/c/w/u;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/w/s;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/w/s;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/w/s;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    sget-object v9, Ls1/u/u;->a:Ls1/u/u;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v1, v0, Le/a/c/w/s;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Le/a/c/w/s;->f:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Ljava/util/List;

    .line 2
    iget-object v2, v0, Le/a/c/w/s;->g:Le/a/c/w/u;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/truecaller/insights/insightsui/UpdateCategoryData;

    .line 7
    sget-object v2, Lcom/truecaller/insights/models/updates/UpdateCategory;->Companion:Lcom/truecaller/insights/models/updates/UpdateCategory$a;

    invoke-virtual {v1}, Lcom/truecaller/insights/insightsui/UpdateCategoryData;->getUpdateCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/truecaller/insights/models/updates/UpdateCategory$a;->a(Ljava/lang/String;)Lcom/truecaller/insights/models/updates/UpdateCategory;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/truecaller/insights/insightsui/UpdateCategoryData;->getCount()I

    move-result v16

    .line 8
    new-instance v3, Lcom/truecaller/insights/insightsui/CategoryModel;

    invoke-static {v2}, Le/a/c/p/a;->m3(Lcom/truecaller/insights/models/updates/UpdateCategory;)Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object v13

    invoke-static {v2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0x10

    const/16 v19, 0x0

    const-string v15, "Updates"

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Lcom/truecaller/insights/insightsui/CategoryModel;-><init>(Lcom/truecaller/insights/smartcards/SmartCardCategory;Ljava/util/Set;Ljava/lang/String;IZILs1/z/c/f;)V

    goto :goto_1

    :cond_1
    move-object v12, v11

    .line 9
    :goto_1
    sget-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Companion:Lcom/truecaller/insights/smartcards/SmartCardCategory$a;

    invoke-virtual {v1}, Lcom/truecaller/insights/insightsui/UpdateCategoryData;->getUpdateCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/truecaller/insights/smartcards/SmartCardCategory$a;->a(Ljava/lang/String;)Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/truecaller/insights/insightsui/UpdateCategoryData;->getCount()I

    move-result v5

    .line 10
    new-instance v11, Lcom/truecaller/insights/insightsui/CategoryModel;

    const/4 v6, 0x1

    const-string v4, "Updates"

    move-object v1, v11

    move-object v3, v9

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/insights/insightsui/CategoryModel;-><init>(Lcom/truecaller/insights/smartcards/SmartCardCategory;Ljava/util/Set;Ljava/lang/String;IZ)V

    :cond_2
    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    move-object v12, v11

    :goto_2
    if-eqz v12, :cond_0

    .line 11
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 14
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 15
    check-cast v3, Lcom/truecaller/insights/insightsui/CategoryModel;

    .line 16
    invoke-virtual {v3}, Lcom/truecaller/insights/insightsui/CategoryModel;->getTagCategory()Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object v4

    .line 17
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_5

    .line 18
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    move v8, v6

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    move-object v12, v5

    check-cast v12, Lcom/truecaller/insights/insightsui/CategoryModel;

    if-eqz v8, :cond_6

    .line 19
    new-instance v5, Lcom/truecaller/insights/insightsui/CategoryModel;

    invoke-virtual {v3}, Lcom/truecaller/insights/insightsui/CategoryModel;->getUpdateCategories()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v3}, Lcom/truecaller/insights/insightsui/CategoryModel;->getCount()I

    move-result v16

    invoke-virtual {v3}, Lcom/truecaller/insights/insightsui/CategoryModel;->getUseTagCategory()Z

    move-result v17

    const-string v15, "Updates"

    move-object v12, v5

    move-object v13, v4

    invoke-direct/range {v12 .. v17}, Lcom/truecaller/insights/insightsui/CategoryModel;-><init>(Lcom/truecaller/insights/smartcards/SmartCardCategory;Ljava/util/Set;Ljava/lang/String;IZ)V

    goto :goto_6

    .line 20
    :cond_6
    invoke-static {v12}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/truecaller/insights/insightsui/CategoryModel;->getUpdateCategories()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Ls1/u/i;->c1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v3}, Lcom/truecaller/insights/insightsui/CategoryModel;->getUpdateCategories()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 21
    invoke-virtual {v12}, Lcom/truecaller/insights/insightsui/CategoryModel;->getCount()I

    move-result v5

    invoke-virtual {v3}, Lcom/truecaller/insights/insightsui/CategoryModel;->getCount()I

    move-result v8

    add-int v16, v8, v5

    .line 22
    invoke-virtual {v3}, Lcom/truecaller/insights/insightsui/CategoryModel;->getUseTagCategory()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v12}, Lcom/truecaller/insights/insightsui/CategoryModel;->getUseTagCategory()Z

    move-result v6

    :goto_5
    move/from16 v17, v6

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x5

    const/16 v19, 0x0

    .line 23
    invoke-static/range {v12 .. v19}, Lcom/truecaller/insights/insightsui/CategoryModel;->copy$default(Lcom/truecaller/insights/insightsui/CategoryModel;Lcom/truecaller/insights/smartcards/SmartCardCategory;Ljava/util/Set;Ljava/lang/String;IZILjava/lang/Object;)Lcom/truecaller/insights/insightsui/CategoryModel;

    move-result-object v5

    .line 24
    :goto_6
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 25
    :cond_8
    invoke-static {v1}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    .line 26
    iget-object v1, v0, Le/a/c/w/s;->g:Le/a/c/w/u;

    .line 27
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_9
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 30
    check-cast v1, Lcom/truecaller/insights/insightsui/GrammarCategoryData;

    .line 31
    invoke-virtual {v1}, Lcom/truecaller/insights/insightsui/GrammarCategoryData;->getDomain()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$this$toSmartCardCategory"

    .line 32
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    const-string v3, "Delivery"

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Delivery:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_9

    :sswitch_1
    const-string v3, "Event"

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Event:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_9

    :sswitch_2
    const-string v3, "Bill"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Bill:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_9

    :sswitch_3
    const-string v3, "Bank"

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_9

    :sswitch_4
    const-string v3, "Travel"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 39
    sget-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Travel:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    goto :goto_9

    :cond_a
    :goto_8
    move-object v2, v11

    :goto_9
    if-eqz v2, :cond_b

    .line 40
    new-instance v14, Lcom/truecaller/insights/insightsui/CategoryModel;

    invoke-virtual {v1}, Lcom/truecaller/insights/insightsui/GrammarCategoryData;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/truecaller/insights/insightsui/GrammarCategoryData;->getCount()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v14

    move-object v3, v9

    invoke-direct/range {v1 .. v8}, Lcom/truecaller/insights/insightsui/CategoryModel;-><init>(Lcom/truecaller/insights/smartcards/SmartCardCategory;Ljava/util/Set;Ljava/lang/String;IZILs1/z/c/f;)V

    goto :goto_a

    :cond_b
    move-object v14, v11

    :goto_a
    if-eqz v14, :cond_9

    .line 41
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    const/16 v1, 0xa

    .line 42
    invoke-static {v12, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_d

    move v1, v2

    .line 43
    :cond_d
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 44
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 45
    move-object v4, v3

    check-cast v4, Lcom/truecaller/insights/insightsui/CategoryModel;

    .line 46
    invoke-virtual {v4}, Lcom/truecaller/insights/insightsui/CategoryModel;->getTagCategory()Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 47
    :cond_e
    invoke-static {v2}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 48
    check-cast v10, Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 49
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 51
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/insights/insightsui/CategoryModel;

    invoke-virtual {v4}, Lcom/truecaller/insights/insightsui/CategoryModel;->getCount()I

    move-result v4

    .line 52
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    check-cast v6, Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/insights/insightsui/CategoryModel;

    if-eqz v5, :cond_f

    .line 53
    invoke-virtual {v5}, Lcom/truecaller/insights/insightsui/CategoryModel;->getCount()I

    move-result v6

    if-le v6, v4, :cond_10

    .line 54
    invoke-virtual {v5}, Lcom/truecaller/insights/insightsui/CategoryModel;->getCount()I

    move-result v4

    :cond_10
    move v15, v4

    .line 55
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/truecaller/insights/insightsui/CategoryModel;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5}, Lcom/truecaller/insights/insightsui/CategoryModel;->getGrammarCategory()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x13

    const/16 v18, 0x0

    invoke-static/range {v11 .. v18}, Lcom/truecaller/insights/insightsui/CategoryModel;->copy$default(Lcom/truecaller/insights/insightsui/CategoryModel;Lcom/truecaller/insights/smartcards/SmartCardCategory;Ljava/util/Set;Ljava/lang/String;IZILjava/lang/Object;)Lcom/truecaller/insights/insightsui/CategoryModel;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 57
    :cond_11
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v2, v1}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 58
    new-instance v2, Le/a/c/w/s$a;

    invoke-direct {v2}, Le/a/c/w/s$a;-><init>()V

    invoke-static {v1, v2}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a3494c6 -> :sswitch_4
        0x1f7a5c -> :sswitch_3
        0x1f9827 -> :sswitch_2
        0x403827a -> :sswitch_1
        0x34ef8014 -> :sswitch_0
    .end sparse-switch
.end method
