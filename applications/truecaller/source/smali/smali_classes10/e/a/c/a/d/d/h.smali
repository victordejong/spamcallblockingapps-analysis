.class public final Le/a/c/a/d/d/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/List<",
        "+",
        "Le/a/c/q/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/a/d/d/f$b;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/a/d/d/f$b;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/d/h;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/a/d/d/h;->b:Le/a/c/a/d/d/f$b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/c/a/d/d/h$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/a/d/d/h$a;

    iget v3, v2, Le/a/c/a/d/d/h$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/a/d/d/h$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/a/d/d/h$a;

    invoke-direct {v2, v0, v1}, Le/a/c/a/d/d/h$a;-><init>(Le/a/c/a/d/d/h;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/a/d/d/h$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/a/d/d/h$a;->e:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_3

    if-eq v4, v5, :cond_2

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/c/a/d/d/h$a;->h:Ljava/lang/Object;

    check-cast v4, Lq3/a/x2/g;

    iget-object v5, v2, Le/a/c/a/d/d/h$a;->f:Ljava/lang/Object;

    check-cast v5, Le/a/c/a/d/d/h;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v4, v0, Le/a/c/a/d/d/h;->a:Lq3/a/x2/g;

    .line 5
    iput-object v0, v2, Le/a/c/a/d/d/h$a;->f:Ljava/lang/Object;

    iput-object v4, v2, Le/a/c/a/d/d/h$a;->h:Ljava/lang/Object;

    iput v5, v2, Le/a/c/a/d/d/h$a;->e:I

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    .line 6
    iget-object v5, v0, Le/a/c/a/d/d/h;->b:Le/a/c/a/d/d/f$b;

    iget-object v5, v5, Le/a/c/a/d/d/f$b;->f:Le/a/c/a/d/d/f;

    .line 7
    iget-object v5, v5, Le/a/c/a/d/d/f;->d:Le/a/c/h/e;

    invoke-static {v1, v5}, Le/a/c/p/a;->f0(Ljava/lang/Iterable;Le/a/c/h/e;)Ljava/util/List;

    move-result-object v1

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 10
    check-cast v7, Le/a/c/q/c;

    .line 11
    new-instance v8, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    invoke-static {v7}, Le/a/c/a/c/h/m/a;->d(Le/a/c/q/c;)Le/a/c/a/l/b$b;

    move-result-object v7

    const-wide/16 v9, 0x0

    invoke-direct {v8, v7, v9, v10, v6}, Lcom/truecaller/insights/ui/models/AdapterItem$j;-><init>(Le/a/c/a/l/b;JI)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.FinanceItem"

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 14
    move-object v8, v6

    check-cast v8, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 15
    iget-object v8, v8, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 16
    invoke-static {v8, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Le/a/c/a/l/b$b;

    .line 17
    iget-object v7, v8, Le/a/c/a/l/b$b;->h:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    .line 19
    invoke-static {v1, v7}, Le/d/c/a/a;->R(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    :cond_5
    check-cast v8, Ljava/util/List;

    .line 20
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v8, 0x0

    .line 24
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 25
    iget-object v8, v8, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 26
    invoke-static {v8, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Le/a/c/a/l/b$b;

    .line 27
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v13, Lcom/truecaller/insights/ui/models/AdapterItem$d;

    const-wide/16 v11, 0x0

    .line 29
    iget-wide v8, v8, Le/a/c/a/l/b$b;->j:J

    const/16 v16, 0x0

    const/16 v17, 0xa

    move-wide/from16 v18, v8

    move-object v9, v13

    move-object v8, v13

    move-wide/from16 v13, v18

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    .line 30
    invoke-direct/range {v9 .. v16}, Lcom/truecaller/insights/ui/models/AdapterItem$d;-><init>(Ljava/lang/String;JJZI)V

    move-object/from16 v9, v20

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 33
    :cond_7
    invoke-static {v5}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    if-ne v1, v3, :cond_8

    return-object v3

    :cond_8
    :goto_4
    const/4 v5, 0x0

    .line 34
    iput-object v5, v2, Le/a/c/a/d/d/h$a;->f:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/a/d/d/h$a;->h:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v2, Le/a/c/a/d/d/h$a;->e:I

    invoke-interface {v4, v1, v2}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_9

    return-object v3

    .line 35
    :cond_9
    :goto_5
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
