.class public final Le/a/b/k/c/g;
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
        "Le/a/b/k/b/b/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/k/c/i;


# direct methods
.method public constructor <init>(Le/a/b/k/c/i;)V
    .locals 0

    iput-object p1, p0, Le/a/b/k/c/g;->a:Le/a/b/k/c/i;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/b/k/b/b/b;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    .line 2
    iget-object v2, v0, Le/a/b/k/c/g;->a:Le/a/b/k/c/i;

    const-string v3, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.truecaller.bizmon.covidDirectory.db.entities.District> /* = java.util.ArrayList<com.truecaller.bizmon.covidDirectory.db.entities.District> */"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Le/a/b/k/c/h;->a:Le/a/b/k/c/h;

    invoke-static {v1, v2}, Le/q/f/a/d/a;->V2(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Le/a/b/k/b/b/b;

    .line 8
    new-instance v4, Le/a/b/o/f/c/b;

    invoke-direct {v4}, Le/a/b/o/f/c/b;-><init>()V

    .line 9
    sget-object v5, Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;->TYPE_DISTRICT:Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;

    invoke-virtual {v4, v5}, Le/a/b/o/f/c/b;->c(Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;)V

    .line 10
    invoke-virtual {v4, v3}, Le/a/b/o/f/c/b;->b(Le/a/b/k/b/b/b;)V

    .line 11
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Le/a/b/k/c/g;->a:Le/a/b/k/c/i;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 16
    new-instance v3, Le/a/b/o/f/c/b;

    invoke-direct {v3}, Le/a/b/o/f/c/b;-><init>()V

    .line 17
    new-instance v10, Le/a/b/k/b/b/b;

    invoke-static {v2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/o/f/c/b;

    invoke-virtual {v4}, Le/a/b/o/f/c/b;->a()Le/a/b/k/b/b/b;

    move-result-object v4

    .line 18
    iget-object v4, v4, Le/a/b/k/b/b/b;->b:Ljava/lang/String;

    const/4 v11, 0x0

    .line 19
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x6

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Le/a/b/k/b/b/b;-><init>(Ljava/lang/String;IJI)V

    invoke-virtual {v3, v10}, Le/a/b/o/f/c/b;->b(Le/a/b/k/b/b/b;)V

    .line 20
    sget-object v4, Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;->TYPE_INDEX:Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;

    invoke-virtual {v3, v4}, Le/a/b/o/f/c/b;->c(Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;)V

    .line 21
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v4, v11

    :goto_1
    if-ge v4, v3, :cond_2

    .line 23
    new-instance v5, Le/a/b/o/f/c/b;

    invoke-direct {v5}, Le/a/b/o/f/c/b;-><init>()V

    .line 24
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b/o/f/c/b;

    invoke-virtual {v6}, Le/a/b/o/f/c/b;->a()Le/a/b/k/b/b/b;

    move-result-object v6

    .line 25
    iget-object v6, v6, Le/a/b/k/b/b/b;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v4, 0x1

    .line 27
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/b/o/f/c/b;

    invoke-virtual {v8}, Le/a/b/o/f/c/b;->a()Le/a/b/k/b/b/b;

    move-result-object v8

    .line 28
    iget-object v8, v8, Le/a/b/k/b/b/b;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v6, v8, :cond_1

    .line 30
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b/o/f/c/b;

    sget-object v6, Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;->TYPE_DISTRICT:Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;

    invoke-virtual {v5, v6}, Le/a/b/o/f/c/b;->c(Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;)V

    .line 31
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b/o/f/c/b;

    sget-object v8, Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;->TYPE_DISTRICT:Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;

    invoke-virtual {v6, v8}, Le/a/b/o/f/c/b;->c(Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;)V

    .line 33
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v4, Le/a/b/k/b/b/b;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b/o/f/c/b;

    invoke-virtual {v6}, Le/a/b/o/f/c/b;->a()Le/a/b/k/b/b/b;

    move-result-object v6

    .line 35
    iget-object v6, v6, Le/a/b/k/b/b/b;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x6

    move-object v12, v4

    invoke-direct/range {v12 .. v17}, Le/a/b/k/b/b/b;-><init>(Ljava/lang/String;IJI)V

    invoke-virtual {v5, v4}, Le/a/b/o/f/c/b;->b(Le/a/b/k/b/b/b;)V

    .line 37
    sget-object v4, Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;->TYPE_INDEX:Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;

    invoke-virtual {v5, v4}, Le/a/b/o/f/c/b;->c(Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;)V

    .line 38
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move v4, v7

    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/o/f/c/b;

    sget-object v5, Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;->TYPE_DISTRICT:Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;

    invoke-virtual {v4, v5}, Le/a/b/o/f/c/b;->c(Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;)V

    .line 40
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_3
    iget-object v2, v0, Le/a/b/k/c/g;->a:Le/a/b/k/c/i;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 42
    iput v3, v2, Le/a/b/k/c/i;->d:I

    .line 43
    iget-object v4, v0, Le/a/b/k/c/g;->a:Le/a/b/k/c/i;

    .line 44
    iget-object v5, v4, Le/a/b/k/c/i;->h:Ls1/w/f;

    const/4 v6, 0x0

    .line 45
    new-instance v7, Le/a/b/k/c/g$a;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2, v0}, Le/a/b/k/c/g$a;-><init>(Ljava/util/ArrayList;Ls1/w/d;Le/a/b/k/c/g;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v1

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v1, v2, :cond_4

    return-object v1

    .line 46
    :cond_4
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
