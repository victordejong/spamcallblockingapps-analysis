.class public final Le/a/a/c/c/z;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/c/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/c/c/x;",
        ">;",
        "Le/a/a/c/c/w;"
    }
.end annotation


# instance fields
.field public final d:Z

.field public e:Z

.field public final f:Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;

.field public final g:Le/a/a/c1/d;

.field public final h:Le/a/a/i0;

.field public final i:Ls1/w/f;

.field public final j:Le/a/p5/c0;

.field public final k:Le/a/a/s0/d;

.field public final l:Le/a/a/c/c/t;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;Le/a/a/c1/d;Le/a/a/i0;Ls1/w/f;Le/a/p5/c0;Le/a/a/s0/d;Le/a/a/c/c/t;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "sharedTextDraftsArguments"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftSender"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultSmsHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkPreviewHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/c/c/z;->f:Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;

    iput-object p2, p0, Le/a/a/c/c/z;->g:Le/a/a/c1/d;

    iput-object p3, p0, Le/a/a/c/c/z;->h:Le/a/a/i0;

    iput-object p4, p0, Le/a/a/c/c/z;->i:Ls1/w/f;

    iput-object p5, p0, Le/a/a/c/c/z;->j:Le/a/p5/c0;

    iput-object p6, p0, Le/a/a/c/c/z;->k:Le/a/a/s0/d;

    iput-object p7, p0, Le/a/a/c/c/z;->l:Le/a/a/c/c/t;

    .line 2
    iget-object p1, p1, Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;->a:Ljava/util/List;

    .line 3
    instance-of p2, p1, Ljava/util/Collection;

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/messaging/data/types/Draft;

    .line 5
    iget p2, p2, Lcom/truecaller/messaging/data/types/Draft;->n:I

    const/4 p5, 0x2

    if-ne p2, p5, :cond_2

    move p2, p3

    goto :goto_0

    :cond_2
    move p2, p4

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_2

    :cond_3
    :goto_1
    move p3, p4

    .line 6
    :goto_2
    iput-boolean p3, p0, Le/a/a/c/c/z;->d:Z

    return-void
.end method


# virtual methods
.method public final Ij(Ls1/w/d;)Ljava/lang/Object;
    .locals 22
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ls1/s;->a:Ls1/s;

    instance-of v3, v1, Le/a/a/c/c/z$b;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/a/c/c/z$b;

    iget v4, v3, Le/a/a/c/c/z$b;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/a/c/c/z$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/a/c/c/z$b;

    invoke-direct {v3, v0, v1}, Le/a/a/c/c/z$b;-><init>(Le/a/a/c/c/z;Ls1/w/d;)V

    :goto_0
    iget-object v1, v3, Le/a/a/c/c/z$b;->d:Ljava/lang/Object;

    sget-object v11, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v3, Le/a/a/c/c/z$b;->e:I

    const v12, 0x7f12023a

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v14, :cond_2

    if-ne v4, v13, :cond_1

    iget-object v3, v3, Le/a/a/c/c/z$b;->g:Ljava/lang/Object;

    check-cast v3, Le/a/a/c/c/z;

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
    iget-object v4, v3, Le/a/a/c/c/z$b;->g:Ljava/lang/Object;

    check-cast v4, Le/a/a/c/c/z;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/a/c/c/z;->f:Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;

    .line 5
    iget-boolean v1, v1, Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;->b:Z

    if-nez v1, :cond_5

    .line 6
    iget-object v4, v0, Le/a/a/c/c/z;->k:Le/a/a/s0/d;

    const v6, 0x7f12044f

    const/4 v7, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 7
    iput-object v0, v3, Le/a/a/c/c/z$b;->g:Ljava/lang/Object;

    iput v14, v3, Le/a/a/c/c/z$b;->e:I

    const-string v5, "fullScreenDraft"

    move-object v8, v3

    .line 8
    invoke-static/range {v4 .. v10}, Le/a/c/p/a;->t2(Le/a/a/s0/d;Ljava/lang/String;IZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_4

    return-object v11

    :cond_4
    move-object v4, v0

    .line 9
    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    return-object v2

    :cond_5
    move-object v4, v0

    .line 10
    :cond_6
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    iget-object v5, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/a/c/c/x;

    if-eqz v5, :cond_d

    .line 11
    invoke-interface {v5}, Le/a/a/c/c/x;->m1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_7

    move v6, v14

    goto :goto_2

    :cond_7
    move v6, v7

    :goto_2
    if-eqz v6, :cond_8

    goto :goto_6

    .line 12
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v6, v4, Le/a/a/c/c/z;->f:Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;

    .line 14
    iget-object v6, v6, Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;->a:Ljava/util/List;

    .line 15
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/messaging/data/types/Draft;

    .line 16
    invoke-virtual {v8}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object v9

    .line 17
    invoke-virtual {v9}, Lcom/truecaller/messaging/data/types/Draft$b;->f()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 18
    invoke-virtual {v9}, Lcom/truecaller/messaging/data/types/Draft$b;->d()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 19
    iget-object v10, v4, Le/a/a/c/c/z;->l:Le/a/a/c/c/t;

    invoke-interface {v10}, Le/a/a/c/c/t;->getEntity()Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v10

    iget v8, v8, Lcom/truecaller/messaging/data/types/Draft;->n:I

    if-ne v8, v13, :cond_9

    move v8, v14

    goto :goto_4

    :cond_9
    move v8, v7

    :goto_4
    if-eqz v8, :cond_a

    goto :goto_5

    :cond_a
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_b

    invoke-virtual {v9, v10}, Lcom/truecaller/messaging/data/types/Draft$b;->b(Lcom/truecaller/messaging/data/types/BinaryEntity;)Lcom/truecaller/messaging/data/types/Draft$b;

    .line 20
    :cond_b
    iget-object v8, v4, Le/a/a/c/c/z;->f:Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;

    .line 21
    iget-boolean v8, v8, Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;->b:Z

    if-nez v8, :cond_c

    .line 22
    invoke-virtual {v9}, Lcom/truecaller/messaging/data/types/Draft$b;->e()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 23
    :cond_c
    invoke-interface {v5}, Le/a/a/c/c/x;->m1()Ljava/lang/String;

    move-result-object v8

    .line 24
    iput-object v8, v9, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    .line 25
    iget-object v8, v4, Le/a/a/c/c/z;->f:Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;

    .line 26
    iget-boolean v8, v8, Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;->b:Z

    .line 27
    iput-boolean v8, v9, Lcom/truecaller/messaging/data/types/Draft$b;->f:Z

    .line 28
    invoke-virtual {v9}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v8

    const-string v9, "draft.buildUpon()\n      \u2026\n                .build()"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 30
    :cond_d
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 31
    iget-object v1, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/c/x;

    if-eqz v1, :cond_e

    invoke-interface {v1, v12}, Le/a/a/c/c/x;->a(I)V

    :cond_e
    return-object v2

    .line 32
    :cond_f
    new-instance v5, Ljava/util/LinkedHashMap;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v7}, Le/q/f/a/d/a;->Y1(I)I

    move-result v7

    const/16 v8, 0x10

    if-ge v7, v8, :cond_10

    move v7, v8

    :cond_10
    invoke-direct {v5, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 33
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 34
    move-object v8, v7

    check-cast v8, Lcom/truecaller/messaging/data/types/Draft;

    .line 35
    iget-object v8, v8, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    const-string v9, "it.media"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ls1/u/i;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 36
    :cond_11
    iget-object v15, v4, Le/a/a/c/c/z;->g:Le/a/a/c1/d;

    .line 37
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 38
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 40
    check-cast v6, Ljava/util/Map$Entry;

    .line 41
    new-instance v7, Ls1/k;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 42
    :cond_12
    iget-object v1, v4, Le/a/a/c/c/z;->f:Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;

    .line 43
    iget-object v6, v1, Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;->c:Ljava/lang/String;

    .line 44
    iget-boolean v1, v1, Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;->b:Z

    .line 45
    iget-object v7, v4, Le/a/a/c/c/z;->h:Le/a/a/i0;

    invoke-interface {v7}, Le/a/a/i0;->c3()Z

    move-result v7

    xor-int/lit8 v19, v7, 0x1

    .line 46
    iget-object v7, v4, Le/a/a/c/c/z;->h:Le/a/a/i0;

    invoke-interface {v7}, Le/a/a/i0;->c3()Z

    move-result v20

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v1

    .line 47
    invoke-interface/range {v15 .. v20}, Le/a/a/c1/d;->c(Ljava/util/List;Ljava/lang/String;ZZZ)Le/a/a/c1/b;

    move-result-object v1

    .line 48
    instance-of v5, v1, Le/a/a/c1/b$e;

    if-nez v5, :cond_18

    .line 49
    instance-of v3, v1, Le/a/a/c1/b$b;

    if-eqz v3, :cond_13

    iget-object v1, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/c/x;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Le/a/a/c/c/x;->j1()V

    goto :goto_9

    .line 50
    :cond_13
    instance-of v3, v1, Le/a/a/c1/b$c;

    if-eqz v3, :cond_14

    goto :goto_9

    .line 51
    :cond_14
    instance-of v3, v1, Le/a/a/c1/b$d;

    if-eqz v3, :cond_15

    goto :goto_9

    .line 52
    :cond_15
    instance-of v3, v1, Le/a/a/c1/b$f;

    if-eqz v3, :cond_16

    goto :goto_9

    .line 53
    :cond_16
    instance-of v1, v1, Le/a/a/c1/b$g;

    :cond_17
    :goto_9
    return-object v2

    .line 54
    :cond_18
    iget-object v14, v4, Le/a/a/c/c/z;->g:Le/a/a/c1/d;

    .line 55
    move-object v15, v1

    check-cast v15, Le/a/a/c1/b$e;

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x0

    const-string v17, "fullScreenDraft"

    .line 56
    invoke-static/range {v14 .. v21}, Le/a/c/p/a;->y2(Le/a/a/c1/d;Le/a/a/c1/b$e;ZLjava/lang/String;JILjava/lang/Object;)Le/a/r2/x;

    move-result-object v1

    iput-object v4, v3, Le/a/a/c/c/z$b;->g:Ljava/lang/Object;

    iput v13, v3, Le/a/a/c/c/z$b;->e:I

    .line 57
    invoke-static {v1, v3}, Le/a/e/a2;->g(Le/a/r2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v11, :cond_19

    return-object v11

    :cond_19
    move-object v3, v4

    .line 58
    :goto_a
    check-cast v1, Le/a/a/c1/c;

    .line 59
    instance-of v1, v1, Le/a/a/c1/c$a;

    if-nez v1, :cond_1c

    .line 60
    iget-object v1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/c/x;

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Le/a/a/c/c/x;->w0()V

    .line 61
    :cond_1a
    iget-object v1, v3, Le/a/a/c/c/z;->l:Le/a/a/c/c/t;

    invoke-interface {v1}, Le/a/a/c/c/t;->a()V

    .line 62
    iget-object v1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/c/x;

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Le/a/a/c/c/x;->finish()V

    :cond_1b
    return-object v2

    .line 63
    :cond_1c
    iget-object v1, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/c/x;

    if-eqz v1, :cond_1d

    invoke-interface {v1, v12}, Le/a/a/c/c/x;->a(I)V

    :cond_1d
    return-object v2
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/a/c/c/x;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-boolean v0, p0, Le/a/a/c/c/z;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/a/c/c/z;->f:Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;

    .line 5
    iget-boolean v0, v0, Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p1}, Le/a/a/c/c/x;->x1()V

    .line 7
    :cond_2
    iget-object v1, p0, Le/a/a/c/c/z;->f:Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;

    .line 8
    iget-object v1, v1, Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;->d:Ljava/lang/String;

    .line 9
    invoke-interface {p1, v1}, Le/a/a/c/c/x;->setText(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const v0, 0x7f0405a1

    goto :goto_2

    :cond_3
    const v0, 0x7f04056c

    .line 10
    :goto_2
    invoke-interface {p1, v0}, Le/a/a/c/c/x;->M3(I)V

    .line 11
    iget-object v0, p0, Le/a/a/c/c/z;->l:Le/a/a/c/c/t;

    new-instance v1, Le/a/a/c/c/y;

    invoke-direct {v1, p1}, Le/a/a/c/c/y;-><init>(Le/a/a/c/c/x;)V

    invoke-interface {v0, v1}, Le/a/a/c/c/t;->b(Ls1/z/b/l;)V

    return-void
.end method

.method public Z()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Le/a/a/c/c/z;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a/a/c/c/z;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    new-instance v4, Le/a/a/c/c/z$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/a/c/c/z$a;-><init>(Le/a/a/c/c/z;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public k(Ljava/lang/CharSequence;Z)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/a/c/c/z;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/c/z;->l:Le/a/a/c/c/t;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Le/a/a/c/c/t;->k(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/x;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/c/c/x;->n1()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/c/c/z;->l:Le/a/a/c/c/t;

    invoke-interface {v0}, Le/a/a/c/c/t;->l()V

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/c/x;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/c/c/x;->finish()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/c/z;->h:Le/a/a/i0;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/a/i0;->U3(Z)V

    .line 2
    invoke-virtual {p0}, Le/a/a/c/c/z;->Z()V

    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/c/z;->h:Le/a/a/i0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/i0;->U3(Z)V

    .line 2
    invoke-virtual {p0}, Le/a/a/c/c/z;->Z()V

    return-void
.end method
