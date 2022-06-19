.class public final Le/a/c/w/k0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ls1/l<",
        "+",
        "Lcom/truecaller/insights/models/InsightsDomain;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.repository.SmsBackupRepositoryImpl$removeBillDuplicates$1"
    f = "SmsBackupRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/util/Set;

.field public final synthetic g:Ljava/util/Set;

.field public final synthetic h:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/w/k0;->f:Ljava/util/Set;

    iput-object p2, p0, Le/a/c/w/k0;->g:Ljava/util/Set;

    iput-object p3, p0, Le/a/c/w/k0;->h:Ljava/util/Set;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
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

    new-instance v0, Le/a/c/w/k0;

    iget-object v1, p0, Le/a/c/w/k0;->f:Ljava/util/Set;

    iget-object v2, p0, Le/a/c/w/k0;->g:Ljava/util/Set;

    iget-object v3, p0, Le/a/c/w/k0;->h:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/c/w/k0;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ls1/w/d;)V

    check-cast p1, Ls1/l;

    .line 1
    iget-object p1, p1, Ls1/l;->a:Ljava/lang/Object;

    .line 2
    iput-object p1, v0, Le/a/c/w/k0;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/c/w/k0;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/c/w/k0;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/w/k0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const-string v0, "(this as java.lang.String).toLowerCase(locale)"

    const-string v1, "Locale.US"

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/w/k0;->e:Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lcom/truecaller/insights/models/InsightsDomain;

    .line 3
    iget-object v2, p0, Le/a/c/w/k0;->f:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v3

    .line 4
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 5
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    :goto_0
    move v3, v4

    goto/16 :goto_3

    .line 6
    :cond_0
    instance-of v2, p1, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    if-nez v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v2, Lcom/truecaller/insights/utils/DateFormat;->MMMM_yyyy:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v2}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v2

    move-object v5, p1

    check-cast v5, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillDateTime()Lw3/b/a/b;

    move-result-object v5

    invoke-virtual {v2, v5}, Lw3/b/a/i0/b;->f(Lw3/b/a/z;)Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v5, Ls1/o;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain;->getSender()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    if-eqz v6, :cond_7

    :try_start_1
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, p1

    check-cast v9, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    invoke-virtual {v9}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getInsNum()Ljava/lang/String;

    move-result-object v9

    const-string v10, "month"

    invoke-static {v2, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6, v9, v2}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    new-instance v6, Ls1/o;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain;->getSender()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_6

    invoke-virtual {v9, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueAmt()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v1, v0, v2}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    move-object v0, p1

    check-cast v0, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getInsNum()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Le/a/c/w/k0;->g:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/c/w/k0;->h:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    iget-object v0, p0, Le/a/c/w/k0;->g:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_4
    iget-object v0, p0, Le/a/c/w/k0;->h:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    :goto_2
    iget-object v0, p0, Le/a/c/w/k0;->h:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Le/a/c/w/k0;->f:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v1

    .line 16
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 18
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_4

    .line 19
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 21
    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 22
    :goto_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    instance-of v1, p1, Ls1/l$a;

    if-eqz v1, :cond_8

    move-object p1, v0

    :cond_8
    return-object p1
.end method
