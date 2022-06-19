.class public final Le/a/c/a/m/b/b0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/List<",
        "+",
        "Le/a/c/a/m/b/r;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.qa.presentation.UpdatesTestingViewModel$getAllSmsBackupFeedback$2"
    f = "UpdatesTestingViewModel.kt"
    l = {
        0x3b,
        0x44
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public j:J

.field public k:I

.field public final synthetic l:Le/a/c/a/m/b/x;


# direct methods
.method public constructor <init>(Le/a/c/a/m/b/x;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/b/b0;->l:Le/a/c/a/m/b/x;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/m/b/b0;

    iget-object v0, p0, Le/a/c/a/m/b/b0;->l:Le/a/c/a/m/b/x;

    invoke-direct {p1, v0, p2}, Le/a/c/a/m/b/b0;-><init>(Le/a/c/a/m/b/x;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/m/b/b0;

    iget-object v0, p0, Le/a/c/a/m/b/b0;->l:Le/a/c/a/m/b/x;

    invoke-direct {p1, v0, p2}, Le/a/c/a/m/b/b0;-><init>(Le/a/c/a/m/b/x;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/m/b/b0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a/m/b/b0;->k:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget-wide v5, v0, Le/a/c/a/m/b/b0;->j:J

    iget v2, v0, Le/a/c/a/m/b/b0;->i:I

    iget-object v7, v0, Le/a/c/a/m/b/b0;->h:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v0, Le/a/c/a/m/b/b0;->g:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Le/a/c/a/m/b/b0;->f:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v0, Le/a/c/a/m/b/b0;->e:Ljava/lang/Object;

    check-cast v10, Ljava/util/Collection;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide/from16 v18, v5

    move-object/from16 v5, p1

    move-object v6, v0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/c/a/m/b/b0;->l:Le/a/c/a/m/b/x;

    iput v5, v0, Le/a/c/a/m/b/b0;->k:I

    .line 5
    iget-object v5, v2, Le/a/c/a/m/b/x;->b:Ls1/w/f;

    new-instance v6, Le/a/c/a/m/b/a0;

    invoke-direct {v6, v2, v3}, Le/a/c/a/m/b/a0;-><init>(Le/a/c/a/m/b/x;Ls1/w/d;)V

    invoke-static {v5, v6, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_0
    check-cast v2, Ljava/util/List;

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v9, v2

    move-object v10, v5

    move-object v2, v0

    :cond_4
    :goto_1
    const/4 v5, 0x0

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 9
    check-cast v6, Le/a/c/a/m/b/s;

    .line 10
    iget-object v7, v2, Le/a/c/a/m/b/b0;->l:Le/a/c/a/m/b/x;

    .line 11
    iget-object v8, v6, Le/a/c/a/m/b/s;->a:Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 12
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "sentence"

    invoke-static {v8, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v7, v7, Le/a/c/a/m/b/x;->c:Le/a/c/i/i/a;

    invoke-interface {v7, v8}, Le/a/c/i/i/a;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v8, "UPI/P2[A-Z]/[0-9]+/[a-zA-z0-9\\s]+/[a-zA-z0-9]+\\s[a-zA-z0-9]+"

    .line 15
    invoke-static {v8, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    const-string v11, "java.util.regex.Pattern.compile(this, flags)"

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "[\\w.-]+@[\\w.-]+"

    .line 16
    invoke-static {v12, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-static {v12, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v8, "UPI_REF"

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-virtual {v12, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v8, "UPI_ID"

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_5
    move-object v7, v3

    :goto_2
    if-eqz v7, :cond_8

    .line 19
    iget-object v8, v6, Le/a/c/a/m/b/s;->a:Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 20
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 21
    iget-object v11, v6, Le/a/c/a/m/b/s;->a:Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 22
    invoke-virtual {v11}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 23
    iget-object v11, v6, Le/a/c/a/m/b/s;->a:Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 24
    invoke-virtual {v11}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getSpamCategory()I

    move-result v13

    .line 25
    iget-object v12, v6, Le/a/c/a/m/b/s;->b:Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    if-eqz v12, :cond_7

    .line 26
    iget-object v5, v2, Le/a/c/a/m/b/b0;->l:Le/a/c/a/m/b/x;

    .line 27
    iget-object v11, v5, Le/a/c/a/m/b/x;->e:Le/a/c/w/o0/g;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v16, 0x0

    .line 28
    iput-object v10, v2, Le/a/c/a/m/b/b0;->e:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/a/m/b/b0;->f:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/a/m/b/b0;->g:Ljava/lang/Object;

    iput-object v7, v2, Le/a/c/a/m/b/b0;->h:Ljava/lang/Object;

    iput v13, v2, Le/a/c/a/m/b/b0;->i:I

    iput-wide v14, v2, Le/a/c/a/m/b/b0;->j:J

    iput v4, v2, Le/a/c/a/m/b/b0;->k:I

    move/from16 v17, v13

    move v13, v5

    move-wide/from16 v18, v14

    move-object v14, v2

    move v15, v6

    invoke-static/range {v11 .. v16}, Le/a/c/p/a;->F(Le/a/c/w/o0/g;Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_6

    return-object v1

    :cond_6
    move-object v6, v2

    move/from16 v2, v17

    :goto_3
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 29
    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 30
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v11, v5

    move-object v12, v9

    move-object v13, v10

    move v10, v2

    move-object v2, v6

    move-object v6, v7

    move-object v7, v8

    :goto_4
    move-wide/from16 v8, v18

    goto :goto_5

    :cond_7
    move/from16 v17, v13

    move-wide/from16 v18, v14

    move v11, v5

    move-object v6, v7

    move-object v7, v8

    move-object v12, v9

    move-object v13, v10

    move/from16 v10, v17

    goto :goto_4

    .line 31
    :goto_5
    new-instance v14, Le/a/c/a/m/b/r;

    move-object v5, v14

    invoke-direct/range {v5 .. v11}, Le/a/c/a/m/b/r;-><init>(Ljava/lang/String;Ljava/lang/String;JII)V

    move-object v9, v12

    move-object v10, v13

    goto :goto_6

    :cond_8
    move-object v14, v3

    :goto_6
    if-eqz v14, :cond_4

    .line 32
    invoke-interface {v10, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 33
    :cond_9
    check-cast v10, Ljava/util/List;

    return-object v10
.end method
