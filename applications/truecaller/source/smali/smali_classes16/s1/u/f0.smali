.class public final Ls1/u/f0;
.super Ls1/w/k/a/h;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/h;",
        "Ls1/z/b/p<",
        "Ls1/e0/m<",
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/sequences/SequenceScope;",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    l = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:I

.field public g:I

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Ljava/util/Iterator;

.field public final synthetic k:Z

.field public final synthetic l:Z


# direct methods
.method public constructor <init>(IILjava/util/Iterator;ZZLs1/w/d;)V
    .locals 0

    iput p1, p0, Ls1/u/f0;->h:I

    iput p2, p0, Ls1/u/f0;->i:I

    iput-object p3, p0, Ls1/u/f0;->j:Ljava/util/Iterator;

    iput-boolean p4, p0, Ls1/u/f0;->k:Z

    iput-boolean p5, p0, Ls1/u/f0;->l:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/h;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ls1/u/f0;

    iget v2, p0, Ls1/u/f0;->h:I

    iget v3, p0, Ls1/u/f0;->i:I

    iget-object v4, p0, Ls1/u/f0;->j:Ljava/util/Iterator;

    iget-boolean v5, p0, Ls1/u/f0;->k:Z

    iget-boolean v6, p0, Ls1/u/f0;->l:Z

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Ls1/u/f0;-><init>(IILjava/util/Iterator;ZZLs1/w/d;)V

    iput-object p1, v0, Ls1/u/f0;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Ls1/u/f0;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Ls1/u/f0;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ls1/u/f0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Ls1/u/f0;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v9, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v8, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v2, v0, Ls1/u/f0;->d:Ljava/lang/Object;

    check-cast v2, Ls1/u/e0;

    iget-object v4, v0, Ls1/u/f0;->c:Ljava/lang/Object;

    check-cast v4, Ls1/e0/m;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v11, v0

    goto/16 :goto_f

    :cond_2
    iget-object v2, v0, Ls1/u/f0;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Ls1/u/f0;->d:Ljava/lang/Object;

    check-cast v5, Ls1/u/e0;

    iget-object v10, v0, Ls1/u/f0;->c:Ljava/lang/Object;

    check-cast v10, Ls1/e0/m;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v11, v0

    goto/16 :goto_b

    :cond_3
    :goto_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_4
    iget v2, v0, Ls1/u/f0;->f:I

    iget-object v4, v0, Ls1/u/f0;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v6, v0, Ls1/u/f0;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    iget-object v7, v0, Ls1/u/f0;->c:Ljava/lang/Object;

    check-cast v7, Ls1/e0/m;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, v0

    move v12, v2

    goto :goto_3

    :cond_5
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, v0, Ls1/u/f0;->c:Ljava/lang/Object;

    check-cast v2, Ls1/e0/m;

    .line 4
    iget v10, v0, Ls1/u/f0;->h:I

    const/16 v11, 0x400

    if-le v10, v11, :cond_6

    goto :goto_1

    :cond_6
    move v11, v10

    .line 5
    :goto_1
    iget v12, v0, Ls1/u/f0;->i:I

    sub-int/2addr v12, v10

    if-ltz v12, :cond_d

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    iget-object v7, v0, Ls1/u/f0;->j:Ljava/util/Iterator;

    move-object v8, v0

    move-object/from16 v17, v7

    move-object v7, v2

    move v2, v4

    move-object/from16 v4, v17

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    if-lez v2, :cond_8

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 8
    :cond_8
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, v8, Ls1/u/f0;->h:I

    if-ne v10, v11, :cond_7

    .line 10
    iput-object v7, v8, Ls1/u/f0;->c:Ljava/lang/Object;

    iput-object v6, v8, Ls1/u/f0;->d:Ljava/lang/Object;

    iput-object v4, v8, Ls1/u/f0;->e:Ljava/lang/Object;

    iput v12, v8, Ls1/u/f0;->f:I

    iput v9, v8, Ls1/u/f0;->g:I

    invoke-virtual {v7, v6, v8}, Ls1/e0/m;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_9

    return-object v1

    .line 11
    :cond_9
    :goto_3
    iget-boolean v2, v8, Ls1/u/f0;->k:Z

    if-eqz v2, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    iget v6, v8, Ls1/u/f0;->h:I

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v2

    :goto_4
    move v2, v12

    goto :goto_2

    .line 12
    :cond_b
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v9

    if-eqz v2, :cond_1b

    .line 13
    iget-boolean v2, v8, Ls1/u/f0;->l:Z

    if-nez v2, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v4, v8, Ls1/u/f0;->h:I

    if-ne v2, v4, :cond_1b

    :cond_c
    iput-object v3, v8, Ls1/u/f0;->c:Ljava/lang/Object;

    iput-object v3, v8, Ls1/u/f0;->d:Ljava/lang/Object;

    iput-object v3, v8, Ls1/u/f0;->e:Ljava/lang/Object;

    iput v5, v8, Ls1/u/f0;->g:I

    invoke-virtual {v7, v6, v8}, Ls1/e0/m;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1b

    return-object v1

    .line 14
    :cond_d
    new-instance v5, Ls1/u/e0;

    .line 15
    new-array v10, v11, [Ljava/lang/Object;

    invoke-direct {v5, v10, v4}, Ls1/u/e0;-><init>([Ljava/lang/Object;I)V

    .line 16
    iget-object v10, v0, Ls1/u/f0;->j:Ljava/util/Iterator;

    move-object v11, v0

    move-object/from16 v17, v10

    move-object v10, v2

    move-object/from16 v2, v17

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 17
    iget v13, v5, Ls1/u/e0;->c:I

    .line 18
    iget v14, v5, Ls1/u/e0;->a:I

    if-ne v13, v14, :cond_e

    move v15, v9

    goto :goto_6

    :cond_e
    move v15, v4

    :goto_6
    if-nez v15, :cond_16

    .line 19
    iget-object v15, v5, Ls1/u/e0;->d:[Ljava/lang/Object;

    iget v4, v5, Ls1/u/e0;->b:I

    add-int v16, v13, v4

    .line 20
    rem-int v16, v16, v14

    aput-object v12, v15, v16

    add-int/lit8 v13, v13, 0x1

    .line 21
    iput v13, v5, Ls1/u/e0;->c:I

    if-ne v13, v14, :cond_f

    move v12, v9

    goto :goto_7

    :cond_f
    const/4 v12, 0x0

    :goto_7
    if-eqz v12, :cond_15

    .line 22
    iget v12, v11, Ls1/u/f0;->h:I

    if-ge v13, v12, :cond_12

    shr-int/lit8 v13, v14, 0x1

    add-int/2addr v14, v13

    add-int/2addr v14, v9

    if-le v14, v12, :cond_10

    goto :goto_8

    :cond_10
    move v12, v14

    :goto_8
    if-nez v4, :cond_11

    .line 23
    invoke-static {v15, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v12, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v4, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    new-array v4, v12, [Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ls1/u/e0;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 24
    :goto_9
    new-instance v12, Ls1/u/e0;

    .line 25
    iget v5, v5, Ls1/u/e0;->c:I

    .line 26
    invoke-direct {v12, v4, v5}, Ls1/u/e0;-><init>([Ljava/lang/Object;I)V

    move-object v5, v12

    goto :goto_c

    .line 27
    :cond_12
    iget-boolean v4, v11, Ls1/u/f0;->k:Z

    if-eqz v4, :cond_13

    move-object v4, v5

    goto :goto_a

    :cond_13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_a
    iput-object v10, v11, Ls1/u/f0;->c:Ljava/lang/Object;

    iput-object v5, v11, Ls1/u/f0;->d:Ljava/lang/Object;

    iput-object v2, v11, Ls1/u/f0;->e:Ljava/lang/Object;

    iput v6, v11, Ls1/u/f0;->g:I

    invoke-virtual {v10, v4, v11}, Ls1/e0/m;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_14

    return-object v1

    .line 28
    :cond_14
    :goto_b
    iget v4, v11, Ls1/u/f0;->i:I

    invoke-virtual {v5, v4}, Ls1/u/e0;->b(I)V

    :cond_15
    :goto_c
    const/4 v4, 0x0

    goto :goto_5

    .line 29
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ring buffer is full"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_17
    iget-boolean v2, v11, Ls1/u/f0;->l:Z

    if-eqz v2, :cond_1b

    move-object v2, v5

    move-object v4, v10

    .line 31
    :goto_d
    iget v5, v2, Ls1/u/e0;->c:I

    .line 32
    iget v6, v11, Ls1/u/f0;->i:I

    if-le v5, v6, :cond_1a

    .line 33
    iget-boolean v5, v11, Ls1/u/f0;->k:Z

    if-eqz v5, :cond_18

    move-object v5, v2

    goto :goto_e

    :cond_18
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_e
    iput-object v4, v11, Ls1/u/f0;->c:Ljava/lang/Object;

    iput-object v2, v11, Ls1/u/f0;->d:Ljava/lang/Object;

    iput-object v3, v11, Ls1/u/f0;->e:Ljava/lang/Object;

    iput v7, v11, Ls1/u/f0;->g:I

    invoke-virtual {v4, v5, v11}, Ls1/e0/m;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_19

    return-object v1

    .line 34
    :cond_19
    :goto_f
    iget v5, v11, Ls1/u/f0;->i:I

    invoke-virtual {v2, v5}, Ls1/u/e0;->b(I)V

    goto :goto_d

    .line 35
    :cond_1a
    invoke-virtual {v2}, Ls1/u/a;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v9

    if-eqz v5, :cond_1b

    iput-object v3, v11, Ls1/u/f0;->c:Ljava/lang/Object;

    iput-object v3, v11, Ls1/u/f0;->d:Ljava/lang/Object;

    iput-object v3, v11, Ls1/u/f0;->e:Ljava/lang/Object;

    iput v8, v11, Ls1/u/f0;->g:I

    invoke-virtual {v4, v2, v11}, Ls1/e0/m;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1b

    return-object v1

    .line 36
    :cond_1b
    :goto_10
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
