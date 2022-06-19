.class public Le/a/p5/q0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/w/f;


# direct methods
.method public constructor <init>(Ls1/w/f;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "delayContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/p5/q0/e;->a:Ls1/w/f;

    return-void
.end method

.method public static a(Le/a/p5/q0/e;IJLs1/z/b/l;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p6

    instance-of v1, v0, Le/a/p5/q0/d;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/p5/q0/d;

    iget v2, v1, Le/a/p5/q0/d;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/p5/q0/d;->e:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/p5/q0/d;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Le/a/p5/q0/d;-><init>(Le/a/p5/q0/e;Ls1/w/d;)V

    :goto_0
    iget-object v0, v1, Le/a/p5/q0/d;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v1, Le/a/p5/q0/d;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget v2, v1, Le/a/p5/q0/d;->l:I

    iget v4, v1, Le/a/p5/q0/d;->k:I

    iget-wide v6, v1, Le/a/p5/q0/d;->m:J

    iget v8, v1, Le/a/p5/q0/d;->j:I

    iget-object v9, v1, Le/a/p5/q0/d;->i:Ljava/lang/Object;

    check-cast v9, Ls1/z/b/l;

    iget-object v10, v1, Le/a/p5/q0/d;->h:Ljava/lang/Object;

    check-cast v10, Ls1/z/b/l;

    iget-object v11, v1, Le/a/p5/q0/d;->g:Ljava/lang/Object;

    check-cast v11, Le/a/p5/q0/e;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide/from16 v20, v6

    move v7, v5

    move-wide/from16 v5, v20

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    add-int/lit8 v0, p1, -0x1

    const/4 v4, 0x0

    move-object/from16 v14, p5

    move v13, v0

    move-object v15, v1

    move-object v11, v3

    move v12, v4

    move/from16 v0, p1

    move-wide/from16 v3, p2

    move-object/from16 v1, p4

    :goto_1
    if-ge v12, v13, :cond_6

    .line 4
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v12}, Ljava/lang/Integer;-><init>(I)V

    .line 5
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 6
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 7
    invoke-interface {v14, v7}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    return-object v6

    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_5

    .line 8
    iget-object v10, v2, Le/a/p5/q0/e;->a:Ls1/w/f;

    new-instance v9, Le/a/p5/q0/c;

    const/4 v7, 0x0

    move-object v6, v9

    move-object v8, v2

    move-object/from16 v16, v9

    move-object v9, v14

    move-object/from16 v17, v10

    move-object v10, v1

    move-object/from16 v18, v11

    move v5, v12

    move-wide v11, v3

    move/from16 v19, v13

    move-object v13, v15

    invoke-direct/range {v6 .. v13}, Le/a/p5/q0/c;-><init>(Ls1/w/d;Le/a/p5/q0/e;Ls1/z/b/l;Ls1/z/b/l;JLs1/w/d;)V

    iput-object v2, v15, Le/a/p5/q0/d;->g:Ljava/lang/Object;

    iput-object v1, v15, Le/a/p5/q0/d;->h:Ljava/lang/Object;

    iput-object v14, v15, Le/a/p5/q0/d;->i:Ljava/lang/Object;

    iput v0, v15, Le/a/p5/q0/d;->j:I

    iput-wide v3, v15, Le/a/p5/q0/d;->m:J

    iput v5, v15, Le/a/p5/q0/d;->k:I

    move/from16 v6, v19

    iput v6, v15, Le/a/p5/q0/d;->l:I

    const/4 v7, 0x1

    iput v7, v15, Le/a/p5/q0/d;->e:I

    move-object/from16 v9, v16

    move-object/from16 v8, v17

    invoke-static {v8, v9, v15}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, v18

    if-ne v8, v9, :cond_4

    return-object v9

    :cond_4
    move v8, v0

    move-object v10, v1

    move-object v11, v2

    move v2, v6

    move-object v1, v15

    move-wide/from16 v20, v3

    move v4, v5

    move-wide/from16 v5, v20

    move-object v3, v9

    move-object v9, v14

    :goto_2
    move-object v15, v1

    move v13, v2

    move v12, v4

    move v0, v8

    move-object v14, v9

    move-object v1, v10

    move-object v2, v11

    move-object v11, v3

    move-wide v3, v5

    goto :goto_3

    :cond_5
    move v7, v5

    move-object v9, v11

    move v5, v12

    move v6, v13

    :goto_3
    add-int/2addr v12, v7

    move v5, v7

    goto :goto_1

    :cond_6
    move v7, v5

    sub-int/2addr v0, v7

    .line 9
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 10
    invoke-interface {v14, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b(IJLs1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJ",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;",
            "Ls1/w/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v4, Le/a/p5/q0/e$a;->b:Le/a/p5/q0/e$a;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p4

    move-object v6, p5

    .line 2
    invoke-static/range {v0 .. v6}, Le/a/p5/q0/e;->a(Le/a/p5/q0/e;IJLs1/z/b/l;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
