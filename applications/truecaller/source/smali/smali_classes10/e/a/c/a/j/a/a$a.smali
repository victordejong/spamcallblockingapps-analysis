.class public final Le/a/c/a/j/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/j/a/a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/insightsui/CategoryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/a/j/a/b;

.field public final synthetic c:Le/a/c/a/j/b/a;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/a/j/a/b;Le/a/c/a/j/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/a/a$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/a/j/a/a$a;->b:Le/a/c/a/j/a/b;

    iput-object p3, p0, Le/a/c/a/j/a/a$a;->c:Le/a/c/a/j/b/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/c/a/j/a/a$a$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/a/j/a/a$a$a;

    iget v3, v2, Le/a/c/a/j/a/a$a$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/a/j/a/a$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/a/j/a/a$a$a;

    invoke-direct {v2, v0, v1}, Le/a/c/a/j/a/a$a$a;-><init>(Le/a/c/a/j/a/a$a;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/a/j/a/a$a$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/a/j/a/a$a$a;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/a/j/a/a$a;->a:Lq3/a/x2/g;

    .line 5
    move-object/from16 v4, p1

    check-cast v4, Ljava/util/List;

    .line 6
    iget-object v6, v0, Le/a/c/a/j/a/a$a;->c:Le/a/c/a/j/b/a;

    .line 7
    iget-object v6, v6, Le/a/c/a/j/b/a;->d:Ljava/util/Set;

    .line 8
    invoke-static {v6}, Le/a/c/p/a;->w0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v6

    .line 9
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 11
    check-cast v9, Le/a/c/w/o0/k/e$b;

    .line 12
    iget-object v9, v9, Le/a/c/w/o0/k/e$b;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v7}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    .line 14
    iget-object v7, v0, Le/a/c/a/j/a/a$a;->c:Le/a/c/a/j/b/a;

    .line 15
    iget-object v7, v7, Le/a/c/a/j/b/a;->d:Ljava/util/Set;

    .line 16
    invoke-static {v7}, Le/a/c/p/a;->T0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v7

    .line 17
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v7, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 19
    check-cast v10, Le/a/c/w/o0/k/e$d;

    .line 20
    iget-object v10, v10, Le/a/c/w/o0/k/e$d;->a:Lcom/truecaller/insights/models/updates/UpdateCategory;

    .line 21
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v9}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 22
    iget-object v9, v0, Le/a/c/a/j/a/a$a;->c:Le/a/c/a/j/b/a;

    .line 23
    iget-object v9, v9, Le/a/c/a/j/b/a;->d:Ljava/util/Set;

    .line 24
    invoke-static {v9}, Le/a/c/p/a;->q0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v9

    .line 25
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 27
    check-cast v11, Le/a/c/w/o0/k/e$a;

    .line 28
    iget-object v11, v11, Le/a/c/w/o0/k/e$a;->a:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 29
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {v10}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v9

    .line 30
    iget-object v10, v0, Le/a/c/a/j/a/a$a;->c:Le/a/c/a/j/b/a;

    .line 31
    iget-object v10, v10, Le/a/c/a/j/b/a;->c:Ljava/util/Set;

    .line 32
    invoke-static {v10}, Le/a/c/p/a;->w0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v10

    .line 33
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v10, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 35
    check-cast v12, Le/a/c/w/o0/k/e$b;

    .line 36
    iget-object v12, v12, Le/a/c/w/o0/k/e$b;->a:Ljava/lang/String;

    .line 37
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-static {v11}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v10

    .line 38
    iget-object v11, v0, Le/a/c/a/j/a/a$a;->c:Le/a/c/a/j/b/a;

    .line 39
    iget-object v11, v11, Le/a/c/a/j/b/a;->c:Ljava/util/Set;

    .line 40
    invoke-static {v11}, Le/a/c/p/a;->T0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v11

    .line 41
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v11, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 43
    check-cast v13, Le/a/c/w/o0/k/e$d;

    .line 44
    iget-object v13, v13, Le/a/c/w/o0/k/e$d;->a:Lcom/truecaller/insights/models/updates/UpdateCategory;

    .line 45
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    invoke-static {v12}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v11

    .line 46
    iget-object v12, v0, Le/a/c/a/j/a/a$a;->c:Le/a/c/a/j/b/a;

    .line 47
    iget-object v12, v12, Le/a/c/a/j/b/a;->c:Ljava/util/Set;

    .line 48
    invoke-static {v12}, Le/a/c/p/a;->q0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v12

    .line 49
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 51
    check-cast v14, Le/a/c/w/o0/k/e$a;

    .line 52
    iget-object v14, v14, Le/a/c/w/o0/k/e$a;->a:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 53
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-static {v13}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v12

    .line 54
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v4, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 56
    check-cast v14, Lcom/truecaller/insights/insightsui/CategoryModel;

    .line 57
    new-instance v15, Le/a/c/a/j/b/c;

    iget-object v5, v0, Le/a/c/a/j/a/a$a;->b:Le/a/c/a/j/a/b;

    invoke-static {v5, v14, v6, v7, v9}, Le/a/c/a/j/a/b;->d(Le/a/c/a/j/a/b;Lcom/truecaller/insights/insightsui/CategoryModel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v5

    invoke-direct {v15, v14, v5}, Le/a/c/a/j/b/c;-><init>(Lcom/truecaller/insights/insightsui/CategoryModel;Z)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_7

    .line 58
    :cond_9
    new-instance v4, Le/a/c/a/j/a/a$a$b;

    invoke-direct {v4}, Le/a/c/a/j/a/a$a$b;-><init>()V

    invoke-static {v13, v4}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 61
    check-cast v6, Le/a/c/a/j/b/c;

    .line 62
    iget-object v7, v0, Le/a/c/a/j/a/a$a;->b:Le/a/c/a/j/a/b;

    .line 63
    iget-object v8, v6, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    .line 64
    invoke-static {v7, v8, v10, v11, v12}, Le/a/c/a/j/a/b;->d(Le/a/c/a/j/a/b;Lcom/truecaller/insights/insightsui/CategoryModel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v7

    .line 65
    iget-object v6, v6, Le/a/c/a/j/b/c;->b:Lcom/truecaller/insights/insightsui/CategoryModel;

    const-string v8, "model"

    .line 66
    invoke-static {v6, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Le/a/c/a/j/b/c;

    invoke-direct {v8, v6, v7}, Le/a/c/a/j/b/c;-><init>(Lcom/truecaller/insights/insightsui/CategoryModel;Z)V

    .line 67
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 68
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v6, v0, Le/a/c/a/j/a/a$a;->c:Le/a/c/a/j/b/a;

    .line 69
    iget v7, v6, Le/a/c/a/j/b/a;->a:I

    const/4 v8, 0x0

    if-le v4, v7, :cond_b

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    move v4, v8

    :goto_9
    if-eqz v4, :cond_c

    .line 70
    iget-boolean v6, v6, Le/a/c/a/j/b/a;->b:Z

    if-nez v6, :cond_c

    .line 71
    invoke-virtual {v5, v8, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 72
    :cond_c
    new-instance v6, Le/a/c/a/j/b/b;

    iget-object v7, v0, Le/a/c/a/j/a/a$a;->c:Le/a/c/a/j/b/a;

    .line 73
    iget-boolean v7, v7, Le/a/c/a/j/b/a;->b:Z

    .line 74
    invoke-direct {v6, v5, v4, v7}, Le/a/c/a/j/b/b;-><init>(Ljava/util/List;ZZ)V

    const/4 v4, 0x1

    iput v4, v2, Le/a/c/a/j/a/a$a$a;->e:I

    invoke-interface {v1, v6, v2}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_d

    return-object v3

    :cond_d
    :goto_a
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
