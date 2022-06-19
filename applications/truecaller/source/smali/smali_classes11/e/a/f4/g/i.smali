.class public Le/a/f4/g/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f4/i/b$a;
.implements Le/a/f4/i/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/f4/g/i$a;,
        Le/a/f4/g/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/f4/i/b$a<",
        "Le/a/f4/g/t;",
        ">;",
        "Le/a/f4/i/f;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/UUID;

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/a/f4/g/i$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:I

.field public h:Ljava/lang/String;

.field public final i:Le/a/f4/g/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/a/f4/g/i;->d:Ljava/util/Set;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/a/f4/g/i;->e:Z

    .line 4
    iput-boolean v0, p0, Le/a/f4/g/i;->f:Z

    const/16 v0, 0x3e7

    .line 5
    iput v0, p0, Le/a/f4/g/i;->g:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Le/a/f4/g/i;->a:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Le/a/f4/g/i;->b:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Le/a/f4/g/i;->c:Ljava/util/UUID;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Le/a/j2;->M0()Le/a/f4/g/u;

    move-result-object p2

    iput-object p2, p0, Le/a/f4/g/i;->i:Le/a/f4/g/u;

    .line 11
    invoke-interface {p1}, Le/a/j2;->b()Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a()Le/a/f4/g/t;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/f4/g/i;->i:Le/a/f4/g/u;

    invoke-interface {v1}, Le/a/f4/g/u;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2
    iget-object v1, v0, Le/a/f4/g/i;->i:Le/a/f4/g/u;

    .line 3
    iget v2, v0, Le/a/f4/g/i;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x3e7

    if-eq v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "You must specify a search type"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 4
    iget-object v2, v0, Le/a/f4/g/i;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    const-string v5, "You must supply one or more numbers to search for"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 5
    iget-object v2, v0, Le/a/f4/g/i;->h:Ljava/lang/String;

    .line 6
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v5

    invoke-virtual {v5}, Le/a/b0/g/a;->T()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v2, v5}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v2, :cond_1

    move-object v2, v5

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 9
    :goto_1
    iget-object v6, v0, Le/a/f4/g/i;->d:Ljava/util/Set;

    .line 10
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :catch_0
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/f4/g/i$b;

    .line 12
    iget-object v9, v8, Le/a/f4/g/i$b;->b:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v8, Le/a/f4/g/i$b;->c:Ljava/lang/String;

    .line 13
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v8, Le/a/f4/g/i$b;->c:Ljava/lang/String;

    invoke-static {v9, v2}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 14
    :cond_3
    iget-object v8, v8, Le/a/f4/g/i$b;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_4
    iget-object v9, v8, Le/a/f4/g/i$b;->a:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 16
    iget-object v8, v8, Le/a/f4/g/i$b;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_5
    iget-object v9, v8, Le/a/f4/g/i$b;->b:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v8, Le/a/f4/g/i$b;->c:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 18
    :try_start_0
    iget-object v9, v8, Le/a/f4/g/i$b;->b:Ljava/lang/String;

    iget-object v8, v8, Le/a/f4/g/i$b;->c:Ljava/lang/String;

    .line 19
    sget-object v10, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    invoke-static {v9, v8, v10}, Le/a/b0/q/b0;->d(Ljava/lang/String;Ljava/lang/String;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 21
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v6, 0x19

    if-le v2, v6, :cond_7

    const-string v2, "Batch size should be less than 25, truncating the list of searched numbers."

    .line 22
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v7, v3, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 24
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    const-string v3, "You must supply one or more VALID numbers to search for"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    const-string v2, ","

    .line 25
    invoke-static {v2, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {}, Le/a/w4/l;->a()Le/a/w4/m;

    move-result-object v3

    iget-object v4, v0, Le/a/f4/g/i;->h:Ljava/lang/String;

    iget v6, v0, Le/a/f4/g/i;->g:I

    .line 27
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 28
    invoke-interface {v3, v2, v4, v6}, Le/a/w4/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object v9

    .line 29
    iget-object v2, v0, Le/a/f4/g/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Le/a/w1;

    invoke-interface {v2}, Le/a/w1;->s()Le/a/j2;

    move-result-object v2

    .line 30
    new-instance v3, Le/a/f4/g/i$a;

    const/4 v11, 0x0

    iget-boolean v12, v0, Le/a/f4/g/i;->e:Z

    iget-boolean v13, v0, Le/a/f4/g/i;->f:Z

    invoke-interface {v2}, Le/a/j2;->q3()Le/m/f/a/j;

    move-result-object v14

    move-object v8, v3

    move-object v10, v7

    invoke-direct/range {v8 .. v14}, Le/a/f4/g/i$a;-><init>(Lx3/b;Ljava/util/Collection;ZZZLe/m/f/a/j;)V

    .line 31
    new-instance v4, Le/a/f4/g/d;

    new-instance v10, Le/a/k3/j/b;

    iget-object v6, v0, Le/a/f4/g/i;->a:Landroid/content/Context;

    invoke-direct {v10, v6}, Le/a/k3/j/b;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    .line 32
    invoke-interface {v2}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v12

    .line 33
    invoke-interface {v2}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v13

    iget v15, v0, Le/a/f4/g/i;->g:I

    iget-object v6, v0, Le/a/f4/g/i;->b:Ljava/lang/String;

    iget-object v14, v0, Le/a/f4/g/i;->c:Ljava/util/UUID;

    const/16 v18, 0x0

    .line 34
    invoke-interface {v2}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v19

    .line 35
    invoke-interface {v2}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v20

    .line 36
    invoke-interface {v2}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v21

    const/16 v22, 0x0

    .line 37
    invoke-interface {v2}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object v23

    move-object v8, v4

    move-object v9, v3

    move-object v2, v14

    move-object v14, v7

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    invoke-direct/range {v8 .. v23}, Le/a/f4/g/d;-><init>(Lx3/b;Le/a/k3/j/b;ZLe/a/r2/f;Le/a/h0/j;Ljava/util/List;ILjava/lang/String;Ljava/util/UUID;Ljava/util/List;Le/a/q2/a;Le/a/p5/u;Le/a/p5/c;ZLe/a/g5/p;)V

    .line 38
    invoke-virtual {v4}, Le/a/f4/g/d;->execute()Lx3/a0;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Le/a/f4/g/u;->a(Lx3/a0;Ls1/z/b/l;)Le/a/f4/g/t;

    move-result-object v1

    return-object v1

    .line 39
    :cond_8
    new-instance v1, Le/a/f4/i/e$a;

    const/16 v2, 0x1ad

    invoke-direct {v1, v2}, Le/a/f4/i/e$a;-><init>(I)V

    throw v1
.end method

.method public b()Le/a/f4/g/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f4/g/i;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/b0/g/a;

    .line 2
    invoke-virtual {v0}, Le/a/b0/g/a;->T()Ljava/lang/String;

    move-result-object v0

    .line 3
    iput-object v0, p0, Le/a/f4/g/i;->h:Ljava/lang/String;

    return-object p0
.end method
