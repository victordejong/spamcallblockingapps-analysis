.class public final Le/a/c/g/g;
.super Le/a/c/i/b/e;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/f;


# instance fields
.field public e:Le/a/c/g/i;

.field public final f:Le/a/q2/a;

.field public final g:Le/a/c/g/y/h;

.field public final h:Le/a/c/g/d;

.field public final i:Le/a/c/g/n;

.field public final j:Le/a/c/g/p;

.field public final k:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/c/g/y/h;Le/a/c/g/d;Le/a/c/g/n;Le/a/c/g/p;Ls1/w/f;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "guardianSmsWhitelistHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localeAwareStemmer"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processorProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioCoroutineContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p6}, Le/a/c/i/b/e;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/g/g;->f:Le/a/q2/a;

    iput-object p2, p0, Le/a/c/g/g;->g:Le/a/c/g/y/h;

    iput-object p3, p0, Le/a/c/g/g;->h:Le/a/c/g/d;

    iput-object p4, p0, Le/a/c/g/g;->i:Le/a/c/g/n;

    iput-object p5, p0, Le/a/c/g/g;->j:Le/a/c/g/p;

    iput-object p6, p0, Le/a/c/g/g;->k:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public B(Ls1/w/d;)Ljava/lang/Object;
    .locals 13
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

    instance-of v0, p1, Le/a/c/g/g$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/g/g$a;

    iget v1, v0, Le/a/c/g/g$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/g/g$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/g/g$a;

    invoke-direct {v0, p0, p1}, Le/a/c/g/g$a;-><init>(Le/a/c/g/g;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/g/g$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/g/g$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/c/g/g$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/g/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/g/g;->g:Le/a/c/g/y/h;

    iput-object p0, v0, Le/a/c/g/g$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/g/g$a;->e:I

    invoke-interface {p1, v0}, Le/a/c/g/y/h;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    iget-object p1, v0, Le/a/c/g/g;->g:Le/a/c/g/y/h;

    const-string v1, "<set-?>"

    .line 6
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, v0, Le/a/c/g/g;->j:Le/a/c/g/p;

    .line 8
    iget-object v2, v2, Le/a/c/g/p;->a:Le/a/c/b/e;

    invoke-interface {v2}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "availableLocales"

    const/16 v5, 0x8a2

    if-eq v3, v5, :cond_4

    goto :goto_2

    :cond_4
    const-string v3, "EG"

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Le/a/c/g/c0/a;->a:I

    sget-object v2, Lcom/truecaller/insights/categorizer/preprocessing/AvailableLocales;->ARABIC:Lcom/truecaller/insights/categorizer/preprocessing/AvailableLocales;

    .line 10
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v3, Le/a/c/g/c0/b;

    invoke-direct {v3, v2}, Le/a/c/g/c0/b;-><init>(Lcom/truecaller/insights/categorizer/preprocessing/AvailableLocales;)V

    goto :goto_3

    .line 12
    :cond_5
    :goto_2
    sget v2, Le/a/c/g/c0/a;->a:I

    sget-object v2, Lcom/truecaller/insights/categorizer/preprocessing/AvailableLocales;->GLOBAL:Lcom/truecaller/insights/categorizer/preprocessing/AvailableLocales;

    .line 13
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v3, Le/a/c/g/c0/b;

    invoke-direct {v3, v2}, Le/a/c/g/c0/b;-><init>(Lcom/truecaller/insights/categorizer/preprocessing/AvailableLocales;)V

    .line 15
    :goto_3
    sget-object v2, Ls1/s;->a:Ls1/s;

    .line 16
    new-instance v4, Le/a/c/g/d0/b$a;

    invoke-direct {v4}, Le/a/c/g/d0/b$a;-><init>()V

    .line 17
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, v4, Le/a/c/g/d0/b$a;->a:Le/a/c/g/d0/a;

    .line 19
    new-instance p1, Le/a/c/g/d0/c;

    invoke-direct {p1, v4}, Le/a/c/g/d0/c;-><init>(Le/a/c/g/d0/b$a;)V

    .line 20
    new-instance v1, Le/a/c/g/b;

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/16 v8, 0xc8

    const/4 v9, -0x1

    const/16 v10, 0xc8

    const/4 v11, 0x4

    const/16 v12, 0x32

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Le/a/c/g/b;-><init>(IIIIIII)V

    .line 21
    new-instance v4, Le/a/c/g/j;

    invoke-direct {v4, p1, v1, v3}, Le/a/c/g/j;-><init>(Le/a/c/g/d0/b;Le/a/c/g/b;Le/a/c/g/c0/a;)V

    .line 22
    iput-object v4, v0, Le/a/c/g/g;->e:Le/a/c/g/i;

    return-object v2
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/g/g;->g:Le/a/c/g/y/h;

    invoke-interface {v0}, Le/a/c/g/y/h;->h()Z

    move-result v0

    return v0
.end method

.method public f(Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v2, v1, Le/a/c/g/g$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/g/g$b;

    iget v3, v2, Le/a/c/g/g$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/g/g$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/g/g$b;

    invoke-direct {v2, v0, v1}, Le/a/c/g/g$b;-><init>(Le/a/c/g/g;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/g/g$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/g/g$b;->e:I

    const/16 v5, 0x64

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v4, v2, Le/a/c/g/g$b;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v2, Le/a/c/g/g$b;->g:Ljava/lang/Object;

    check-cast v5, Le/a/c/g/g;

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
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/g/g;->g:Le/a/c/g/y/h;

    invoke-interface {v1, v5}, Le/a/c/g/y/h;->f(I)Ljava/util/List;

    move-result-object v1

    move-object v5, v0

    move-object v4, v1

    .line 5
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;

    .line 7
    invoke-virtual {v10}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    move v9, v6

    .line 8
    :cond_5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 9
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v1, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 12
    check-cast v8, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;

    .line 13
    new-instance v10, Le/a/c/g/a0/k;

    invoke-virtual {v8}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getToCategory()Ljava/lang/String;

    move-result-object v8

    const-string v12, "category"

    .line 14
    invoke-static {v8, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, 0x11a74

    const/4 v14, 0x3

    const/4 v15, 0x0

    if-eq v12, v13, :cond_7

    const v13, 0x276b69

    if-ne v12, v13, :cond_a

    const-string v12, "Spam"

    .line 16
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    new-instance v8, Le/a/c/g/a$b;

    invoke-direct {v8, v15, v9, v14}, Le/a/c/g/a$b;-><init>(FII)V

    goto :goto_3

    :cond_7
    const-string v12, "Ham"

    .line 17
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    new-instance v8, Le/a/c/g/a$a;

    invoke-direct {v8, v15, v9, v14}, Le/a/c/g/a$a;-><init>(FII)V

    .line 18
    :goto_3
    instance-of v12, v8, Le/a/c/g/a$b;

    if-eqz v12, :cond_8

    new-instance v8, Le/a/c/g/a0/b$b;

    new-instance v12, Le/a/c/g/c;

    const/16 v17, 0x0

    float-to-double v13, v15

    const/16 v20, 0x0

    const/16 v21, 0x4

    move-object/from16 v16, v12

    move-wide/from16 v18, v13

    invoke-direct/range {v16 .. v21}, Le/a/c/g/c;-><init>(IDZI)V

    invoke-direct {v8, v12}, Le/a/c/g/a0/b$b;-><init>(Le/a/c/g/c;)V

    goto :goto_4

    .line 19
    :cond_8
    instance-of v8, v8, Le/a/c/g/a$a;

    if-eqz v8, :cond_9

    new-instance v8, Le/a/c/g/a0/b$a;

    new-instance v12, Le/a/c/g/c;

    const/16 v17, 0x0

    float-to-double v13, v15

    const/16 v20, 0x0

    const/16 v21, 0x4

    move-object/from16 v16, v12

    move-wide/from16 v18, v13

    invoke-direct/range {v16 .. v21}, Le/a/c/g/c;-><init>(IDZI)V

    invoke-direct {v8, v12}, Le/a/c/g/a0/b$a;-><init>(Le/a/c/g/c;)V

    .line 20
    :goto_4
    invoke-direct {v10, v11, v8}, Le/a/c/g/a0/k;-><init>(Ljava/lang/String;Le/a/c/g/a0/b;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_9
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 22
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown message category: "

    invoke-static {v2, v8}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_b
    iget-object v1, v5, Le/a/c/g/g;->e:Le/a/c/g/i;

    if-eqz v1, :cond_d

    iput-object v5, v2, Le/a/c/g/g$b;->g:Ljava/lang/Object;

    iput-object v4, v2, Le/a/c/g/g$b;->h:Ljava/lang/Object;

    iput v6, v2, Le/a/c/g/g$b;->e:I

    invoke-interface {v1, v7, v2}, Le/a/c/g/i;->b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_c

    return-object v3

    .line 24
    :cond_c
    :goto_5
    iget-object v1, v5, Le/a/c/g/g;->g:Le/a/c/g/y/h;

    invoke-interface {v1, v4}, Le/a/c/g/y/h;->a(Ljava/util/List;)V

    .line 25
    iget-object v1, v5, Le/a/c/g/g;->g:Le/a/c/g/y/h;

    const/16 v4, 0x64

    invoke-interface {v1, v4}, Le/a/c/g/y/h;->f(I)Ljava/util/List;

    move-result-object v4

    .line 26
    iget-object v7, v5, Le/a/c/i/b/e;->b:Lq3/a/i0;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 27
    new-instance v10, Le/a/c/g/h;

    const/4 v1, 0x0

    invoke-direct {v10, v5, v4, v1}, Le/a/c/g/h;-><init>(Le/a/c/g/g;Ljava/util/List;Ls1/w/d;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 28
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v6

    if-nez v1, :cond_3

    .line 29
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1

    :cond_d
    const-string v1, "categorizer"

    .line 30
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/g/g;->g:Le/a/c/g/y/h;

    invoke-interface {v0}, Le/a/c/g/y/h;->g()I

    move-result v0

    return v0
.end method

.method public h(Ls1/o;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/o<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;+",
            "Ljava/util/List<",
            "+",
            "Le/a/c/g/a0/m;",
            ">;>;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/g/g;->g:Le/a/c/g/y/h;

    .line 2
    iget-object v1, p1, Ls1/o;->a:Ljava/lang/Object;

    .line 3
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 4
    iget-object v2, p1, Ls1/o;->b:Ljava/lang/Object;

    .line 5
    check-cast v2, Ljava/util/List;

    .line 6
    iget-object p1, p1, Ls1/o;->c:Ljava/lang/Object;

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    invoke-interface {v0, v1, v2, p1, p2}, Le/a/c/g/y/h;->b(ILjava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 9
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public s(Ljava/lang/String;Lcom/truecaller/insights/categorizer/CategorizerInputType;)Le/a/c/g/a;
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/c/g/g;->i:Le/a/c/g/n;

    invoke-interface {p2, p1}, Le/a/c/g/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    new-instance p1, Le/a/c/g/a$b;

    invoke-direct {p1, v2, v0, v1}, Le/a/c/g/a$b;-><init>(FII)V

    goto :goto_2

    .line 3
    :cond_1
    iget-object p2, p0, Le/a/c/g/g;->h:Le/a/c/g/d;

    invoke-interface {p2, p1}, Le/a/c/g/d;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p1, Le/a/c/g/a$a;

    invoke-direct {p1, v2, v0, v1}, Le/a/c/g/a$a;-><init>(FII)V

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0}, Le/a/c/i/b/e;->A()V

    .line 5
    iget-object p2, p0, Le/a/c/g/g;->e:Le/a/c/g/i;

    if-eqz p2, :cond_5

    invoke-interface {p2, p1}, Le/a/c/g/i;->a(Ljava/lang/String;)Le/a/c/g/a0/b;

    move-result-object p1

    .line 6
    instance-of p2, p1, Le/a/c/g/a0/b$a;

    if-eqz p2, :cond_3

    new-instance p2, Le/a/c/g/a$a;

    .line 7
    iget-object p1, p1, Le/a/c/g/a0/b;->a:Le/a/c/g/c;

    .line 8
    iget-wide v0, p1, Le/a/c/g/c;->b:D

    double-to-float v0, v0

    .line 9
    iget p1, p1, Le/a/c/g/c;->a:I

    .line 10
    invoke-direct {p2, v0, p1}, Le/a/c/g/a$a;-><init>(FI)V

    :goto_1
    move-object p1, p2

    goto :goto_2

    .line 11
    :cond_3
    instance-of p2, p1, Le/a/c/g/a0/b$b;

    if-eqz p2, :cond_4

    new-instance p2, Le/a/c/g/a$b;

    .line 12
    iget-object p1, p1, Le/a/c/g/a0/b;->a:Le/a/c/g/c;

    .line 13
    iget-wide v0, p1, Le/a/c/g/c;->b:D

    double-to-float v0, v0

    .line 14
    iget p1, p1, Le/a/c/g/c;->a:I

    .line 15
    invoke-direct {p2, v0, p1}, Le/a/c/g/a$b;-><init>(FI)V

    goto :goto_1

    :goto_2
    return-object p1

    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_5
    const-string p1, "categorizer"

    .line 16
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
