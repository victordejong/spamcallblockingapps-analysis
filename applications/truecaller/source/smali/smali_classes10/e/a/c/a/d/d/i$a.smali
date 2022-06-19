.class public final Le/a/c/a/d/d/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/d/d/i;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/c/r/e/a/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/a/d/d/j;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/a/d/d/j;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/d/i$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/a/d/d/i$a;->b:Le/a/c/a/d/d/j;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/c/a/d/d/i$a$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/a/d/d/i$a$a;

    iget v3, v2, Le/a/c/a/d/d/i$a$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/a/d/d/i$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/a/d/d/i$a$a;

    invoke-direct {v2, v0, v1}, Le/a/c/a/d/d/i$a$a;-><init>(Le/a/c/a/d/d/i$a;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/a/d/d/i$a$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/a/d/d/i$a$a;->e:I

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/c/a/d/d/i$a$a;->k:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v8, v2, Le/a/c/a/d/d/i$a$a;->j:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v2, Le/a/c/a/d/d/i$a$a;->i:Ljava/lang/Object;

    check-cast v9, Ljava/util/Collection;

    iget-object v10, v2, Le/a/c/a/d/d/i$a$a;->h:Ljava/lang/Object;

    check-cast v10, Lq3/a/x2/g;

    iget-object v11, v2, Le/a/c/a/d/d/i$a$a;->f:Ljava/lang/Object;

    check-cast v11, Le/a/c/a/d/d/i$a;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/a/d/d/i$a;->a:Lq3/a/x2/g;

    .line 5
    move-object/from16 v4, p1

    check-cast v4, Ljava/util/List;

    .line 6
    iget-object v8, v0, Le/a/c/a/d/d/i$a;->b:Le/a/c/a/d/d/j;

    .line 7
    iget-object v8, v8, Le/a/c/a/d/d/j;->f:Le/a/c/h/e;

    .line 8
    invoke-static {v4, v8}, Le/a/c/p/a;->f0(Ljava/lang/Iterable;Le/a/c/h/e;)Ljava/util/List;

    move-result-object v4

    .line 9
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v4, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v11, v0

    move-object v10, v1

    move-object/from16 v22, v8

    move-object v8, v4

    move-object/from16 v4, v22

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Le/a/c/r/e/a/a;

    .line 12
    iget-object v9, v11, Le/a/c/a/d/d/i$a;->b:Le/a/c/a/d/d/j;

    .line 13
    iget-object v12, v9, Le/a/c/a/d/d/j;->b:Le/a/b0/m/c/a;

    .line 14
    iget-object v13, v9, Le/a/c/a/d/d/j;->c:Le/a/b0/m/d/a;

    .line 15
    iget-object v9, v9, Le/a/c/a/d/d/j;->e:Le/a/c/w/o0/g;

    .line 16
    iput-object v11, v2, Le/a/c/a/d/d/i$a$a;->f:Ljava/lang/Object;

    iput-object v10, v2, Le/a/c/a/d/d/i$a$a;->h:Ljava/lang/Object;

    iput-object v4, v2, Le/a/c/a/d/d/i$a$a;->i:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/a/d/d/i$a$a;->j:Ljava/lang/Object;

    iput-object v4, v2, Le/a/c/a/d/d/i$a$a;->k:Ljava/lang/Object;

    iput v7, v2, Le/a/c/a/d/d/i$a$a;->e:I

    invoke-static {v1, v12, v13, v9, v2}, Le/a/c/p/a;->L2(Le/a/c/r/e/a/a;Le/a/b0/m/c/a;Le/a/b0/m/d/a;Le/a/c/w/o0/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v9, v4

    :goto_2
    check-cast v1, Le/a/c/a/l/a;

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v4, v9

    goto :goto_1

    .line 17
    :cond_5
    check-cast v4, Ljava/util/List;

    .line 18
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 20
    move-object v9, v8

    check-cast v9, Le/a/c/a/l/a;

    .line 21
    iget-object v9, v9, Le/a/c/a/l/a;->f:Ljava/lang/String;

    .line 22
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_6

    .line 23
    invoke-static {v1, v9}, Le/d/c/a/a;->R(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    :cond_6
    check-cast v12, Ljava/util/List;

    .line 24
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v12, :cond_8

    goto :goto_8

    .line 28
    :cond_8
    iget-object v12, v11, Le/a/c/a/d/d/i$a;->b:Le/a/c/a/d/d/j;

    .line 29
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {v8}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Le/a/c/a/l/a;

    .line 31
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Le/a/c/a/l/a;

    .line 32
    iget-object v15, v15, Le/a/c/a/l/a;->a:Landroid/net/Uri;

    if-eqz v15, :cond_a

    move v15, v7

    goto :goto_5

    :cond_a
    const/4 v15, 0x0

    :goto_5
    if-eqz v15, :cond_9

    goto :goto_6

    :cond_b
    move-object v14, v9

    .line 33
    :goto_6
    check-cast v14, Le/a/c/a/l/a;

    if-eqz v14, :cond_c

    .line 34
    iget-object v9, v14, Le/a/c/a/l/a;->a:Landroid/net/Uri;

    :cond_c
    move-object v14, v9

    const/4 v15, 0x0

    .line 35
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 37
    check-cast v12, Le/a/c/a/l/a;

    .line 38
    iget-object v12, v12, Le/a/c/a/l/a;->c:Ljava/util/List;

    .line 39
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 40
    :cond_d
    invoke-static {v9}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x7a

    .line 41
    invoke-static/range {v13 .. v21}, Le/a/c/a/l/a;->a(Le/a/c/a/l/a;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/insights/ui/models/AccountType;ZLjava/lang/String;ZI)Le/a/c/a/l/a;

    move-result-object v8

    .line 42
    invoke-static {v8}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 43
    :goto_8
    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 44
    :cond_e
    invoke-static {v4}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iput-object v9, v2, Le/a/c/a/d/d/i$a$a;->f:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/a/d/d/i$a$a;->h:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/a/d/d/i$a$a;->i:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/a/d/d/i$a$a;->j:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/a/d/d/i$a$a;->k:Ljava/lang/Object;

    iput v6, v2, Le/a/c/a/d/d/i$a$a;->e:I

    invoke-interface {v10, v1, v2}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_f

    return-object v3

    :cond_f
    :goto_9
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
