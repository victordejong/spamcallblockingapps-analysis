.class public final Le/a/c/a/m/b/a0;
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
        "Le/a/c/a/m/b/s;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.qa.presentation.UpdatesTestingViewModel$getAllSMSBackupsWithPdos$2"
    f = "UpdatesTestingViewModel.kt"
    l = {
        0x32,
        0x34
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/c/a/m/b/x;


# direct methods
.method public constructor <init>(Le/a/c/a/m/b/x;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/b/a0;->g:Le/a/c/a/m/b/x;

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

    new-instance p1, Le/a/c/a/m/b/a0;

    iget-object v0, p0, Le/a/c/a/m/b/a0;->g:Le/a/c/a/m/b/x;

    invoke-direct {p1, v0, p2}, Le/a/c/a/m/b/a0;-><init>(Le/a/c/a/m/b/x;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/m/b/a0;

    iget-object v0, p0, Le/a/c/a/m/b/a0;->g:Le/a/c/a/m/b/x;

    invoke-direct {p1, v0, p2}, Le/a/c/a/m/b/a0;-><init>(Le/a/c/a/m/b/x;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/m/b/a0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/m/b/a0;->f:I

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Le/a/c/a/m/b/a0;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/a/m/b/a0;->g:Le/a/c/a/m/b/x;

    iput v5, p0, Le/a/c/a/m/b/a0;->f:I

    .line 5
    iget-object v1, p1, Le/a/c/a/m/b/x;->b:Ls1/w/f;

    new-instance v5, Le/a/c/a/m/b/z;

    invoke-direct {v5, p1, v3}, Le/a/c/a/m/b/z;-><init>(Le/a/c/a/m/b/x;Ls1/w/d;)V

    invoke-static {v1, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 6
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 7
    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    const/16 v5, 0x10

    if-ge v1, v5, :cond_4

    move v1, v5

    .line 8
    :cond_4
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    move-object v6, v1

    check-cast v6, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 11
    invoke-virtual {v6}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v6

    .line 12
    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 13
    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_5
    iget-object p1, p0, Le/a/c/a/m/b/a0;->g:Le/a/c/a/m/b/x;

    iput-object v5, p0, Le/a/c/a/m/b/a0;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/c/a/m/b/a0;->f:I

    .line 15
    iget-object v1, p1, Le/a/c/a/m/b/x;->b:Ls1/w/f;

    new-instance v4, Le/a/c/a/m/b/y;

    invoke-direct {v4, p1, v3}, Le/a/c/a/m/b/y;-><init>(Le/a/c/a/m/b/x;Ls1/w/d;)V

    invoke-static {v1, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, v5

    .line 16
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 19
    check-cast v2, Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 20
    new-instance v3, Le/a/c/a/m/b/s;

    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getMessageID()J

    move-result-wide v4

    .line 21
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 22
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-direct {v3, v2, v4}, Le/a/c/a/m/b/s;-><init>(Lcom/truecaller/insights/models/pdo/SmsBackup;Lcom/truecaller/insights/models/pdo/ParsedDataObject;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    return-object v1
.end method
