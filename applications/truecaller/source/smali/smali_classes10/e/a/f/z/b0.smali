.class public final Le/a/f/z/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/z/a0;


# instance fields
.field public final a:Le/a/x4/g;

.field public final b:Le/a/o/c;

.field public final c:Le/a/x4/l/b;

.field public final d:Le/a/b/j/b;

.field public final e:Le/a/o/a/j/b;


# direct methods
.method public constructor <init>(Le/a/x4/g;Le/a/o/c;Le/a/x4/l/b;Le/a/b/j/b;Le/a/o/a/j/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "searchWarningsHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchWarningsPresenter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessCallReasonPresenter"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callContextPresenter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/z/b0;->a:Le/a/x4/g;

    iput-object p2, p0, Le/a/f/z/b0;->b:Le/a/o/c;

    iput-object p3, p0, Le/a/f/z/b0;->c:Le/a/x4/l/b;

    iput-object p4, p0, Le/a/f/z/b0;->d:Le/a/b/j/b;

    iput-object p5, p0, Le/a/f/z/b0;->e:Le/a/o/a/j/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;ZZZZLjava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/Contact;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Le/a/m5/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v0, p9

    instance-of v1, v0, Le/a/f/z/b0$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/f/z/b0$a;

    iget v2, v1, Le/a/f/z/b0$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/f/z/b0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/f/z/b0$a;

    invoke-direct {v1, v6, v0}, Le/a/f/z/b0$a;-><init>(Le/a/f/z/b0;Ls1/w/d;)V

    :goto_0
    move-object v5, v1

    iget-object v0, v5, Le/a/f/z/b0$a;->d:Ljava/lang/Object;

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v5, Le/a/f/z/b0$a;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v10, :cond_1

    iget-boolean v1, v5, Le/a/f/z/b0$a;->n:Z

    iget-boolean v2, v5, Le/a/f/z/b0$a;->m:Z

    iget-boolean v3, v5, Le/a/f/z/b0$a;->l:Z

    iget-boolean v4, v5, Le/a/f/z/b0$a;->k:Z

    iget-object v7, v5, Le/a/f/z/b0$a;->j:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v5, Le/a/f/z/b0$a;->i:Ljava/lang/Object;

    check-cast v8, Lcom/truecaller/data/entity/Contact;

    iget-object v11, v5, Le/a/f/z/b0$a;->h:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v5, v5, Le/a/f/z/b0$a;->g:Ljava/lang/Object;

    check-cast v5, Le/a/f/z/b0;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v15, v2

    move v14, v3

    move v13, v4

    move-object v12, v7

    move-object v7, v8

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz v7, :cond_8

    .line 4
    iput-object v6, v5, Le/a/f/z/b0$a;->g:Ljava/lang/Object;

    move-object/from16 v11, p1

    iput-object v11, v5, Le/a/f/z/b0$a;->h:Ljava/lang/Object;

    iput-object v7, v5, Le/a/f/z/b0$a;->i:Ljava/lang/Object;

    move-object/from16 v12, p7

    iput-object v12, v5, Le/a/f/z/b0$a;->j:Ljava/lang/Object;

    move/from16 v13, p4

    iput-boolean v13, v5, Le/a/f/z/b0$a;->k:Z

    move/from16 v14, p5

    iput-boolean v14, v5, Le/a/f/z/b0$a;->l:Z

    move/from16 v15, p6

    iput-boolean v15, v5, Le/a/f/z/b0$a;->m:Z

    move/from16 v4, p8

    iput-boolean v4, v5, Le/a/f/z/b0$a;->n:Z

    iput v10, v5, Le/a/f/z/b0$a;->e:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Le/a/f/z/b0;->b(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;ZZLs1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_3

    return-object v8

    :cond_3
    move/from16 v1, p8

    move-object v5, v6

    :goto_1
    check-cast v0, Lcom/truecaller/incallui/utils/TrueContextType;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v10, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    goto :goto_2

    .line 5
    :cond_5
    iget-object v9, v5, Le/a/f/z/b0;->d:Le/a/b/j/b;

    .line 6
    new-instance v0, Le/a/b/j/a$d;

    invoke-direct {v0, v7, v14, v15}, Le/a/b/j/a$d;-><init>(Lcom/truecaller/data/entity/Contact;ZZ)V

    .line 7
    invoke-virtual {v9, v0}, Le/a/b/j/b;->Jj(Le/a/b/j/a;)V

    goto :goto_2

    .line 8
    :cond_6
    iget-object v9, v5, Le/a/f/z/b0;->c:Le/a/x4/l/b;

    .line 9
    new-instance v0, Le/a/x4/l/a$d;

    invoke-direct {v0, v7, v14, v1}, Le/a/x4/l/a$d;-><init>(Lcom/truecaller/data/entity/Contact;ZZ)V

    .line 10
    invoke-virtual {v9, v0}, Le/a/x4/l/b;->Kj(Le/a/x4/l/a;)V

    goto :goto_2

    .line 11
    :cond_7
    iget-object v9, v5, Le/a/f/z/b0;->e:Le/a/o/a/j/b;

    .line 12
    new-instance v0, Le/a/o/a/j/a$c;

    move-object/from16 p1, v0

    move-object/from16 p2, v7

    move-object/from16 p3, v11

    move/from16 p4, v14

    move/from16 p5, v13

    move-object/from16 p6, v12

    invoke-direct/range {p1 .. p6}, Le/a/o/a/j/a$c;-><init>(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 13
    invoke-virtual {v9, v0}, Le/a/o/a/j/b;->Jj(Le/a/o/a/j/a;)V

    :cond_8
    :goto_2
    return-object v9
.end method

.method public b(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;ZZLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/String;",
            "ZZ",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/incallui/utils/TrueContextType;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Le/a/f/z/b0$b;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Le/a/f/z/b0$b;

    iget v1, v0, Le/a/f/z/b0$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/z/b0$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/z/b0$b;

    invoke-direct {v0, p0, p5}, Le/a/f/z/b0$b;-><init>(Le/a/f/z/b0;Ls1/w/d;)V

    :goto_0
    iget-object p5, v0, Le/a/f/z/b0$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/f/z/b0$b;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/f/z/b0$b;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    iget-object p2, v0, Le/a/f/z/b0$b;->g:Ljava/lang/Object;

    check-cast p2, Le/a/f/z/b0;

    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-nez p1, :cond_3

    return-object v4

    :cond_3
    if-eqz p4, :cond_4

    .line 4
    iget-object p2, p0, Le/a/f/z/b0;->a:Le/a/x4/g;

    invoke-interface {p2, p1}, Le/a/x4/g;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 5
    sget-object v4, Lcom/truecaller/incallui/utils/TrueContextType;->SEARCH_WARNINGS:Lcom/truecaller/incallui/utils/TrueContextType;

    goto :goto_2

    .line 6
    :cond_4
    iput-object p0, v0, Le/a/f/z/b0$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/f/z/b0$b;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/f/z/b0$b;->e:I

    invoke-virtual {p0, p2, p3, v0}, Le/a/f/z/b0;->c(Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_5

    return-object v1

    :cond_5
    move-object p2, p0

    :goto_1
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    sget-object v4, Lcom/truecaller/incallui/utils/TrueContextType;->CALL_REASON:Lcom/truecaller/incallui/utils/TrueContextType;

    goto :goto_2

    .line 7
    :cond_6
    iget-object p3, p2, Le/a/f/z/b0;->a:Le/a/x4/g;

    invoke-interface {p3, p1}, Le/a/x4/g;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 8
    sget-object v4, Lcom/truecaller/incallui/utils/TrueContextType;->SEARCH_WARNINGS:Lcom/truecaller/incallui/utils/TrueContextType;

    goto :goto_2

    .line 9
    :cond_7
    iget-object p2, p2, Le/a/f/z/b0;->a:Le/a/x4/g;

    invoke-interface {p2, p1}, Le/a/x4/g;->c(Lcom/truecaller/data/entity/Contact;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 10
    sget-object v4, Lcom/truecaller/incallui/utils/TrueContextType;->BUSINESS_CALL_REASON:Lcom/truecaller/incallui/utils/TrueContextType;

    :cond_8
    :goto_2
    return-object v4
.end method

.method public final c(Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/f/z/b0$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/f/z/b0$c;

    iget v1, v0, Le/a/f/z/b0$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/z/b0$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/z/b0$c;

    invoke-direct {v0, p0, p3}, Le/a/f/z/b0$c;-><init>(Le/a/f/z/b0;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/f/z/b0$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/f/z/b0$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p3, p0, Le/a/f/z/b0;->b:Le/a/o/c;

    invoke-interface {p3}, Le/a/o/c;->isSupported()Z

    move-result p3

    if-eqz p3, :cond_4

    if-nez p2, :cond_4

    .line 4
    iget-object p2, p0, Le/a/f/z/b0;->b:Le/a/o/c;

    iput v3, v0, Le/a/f/z/b0$c;->e:I

    invoke-interface {p2, p1, v0}, Le/a/o/c;->H(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 5
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
