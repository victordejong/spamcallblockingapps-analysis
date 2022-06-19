.class public final Le/a/c/i/a/c$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/a/c;->a(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/l5/a/p3;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.core.accounts.AccountInformationParityLoggerImpl$logAccountInfoParityEvent$2"
    f = "AccountInformationParityLogger.kt"
    l = {
        0x28
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/i/a/c;


# direct methods
.method public constructor <init>(Le/a/c/i/a/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/a/c$b;->f:Le/a/c/i/a/c;

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

    new-instance p1, Le/a/c/i/a/c$b;

    iget-object v0, p0, Le/a/c/i/a/c$b;->f:Le/a/c/i/a/c;

    invoke-direct {p1, v0, p2}, Le/a/c/i/a/c$b;-><init>(Le/a/c/i/a/c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/i/a/c$b;

    iget-object v0, p0, Le/a/c/i/a/c$b;->f:Le/a/c/i/a/c;

    invoke-direct {p1, v0, p2}, Le/a/c/i/a/c$b;-><init>(Le/a/c/i/a/c;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/i/a/c$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/i/a/c$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lw3/b/a/p;->h()Lw3/b/a/p;

    move-result-object p1

    const-string v1, "LocalDate.now()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 5
    iget-object v3, p1, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 6
    invoke-virtual {v3}, Lw3/b/a/a;->F()Lw3/b/a/j;

    move-result-object v3

    .line 7
    iget-wide v4, p1, Lw3/b/a/p;->a:J

    .line 8
    invoke-virtual {v3, v4, v5, v1}, Lw3/b/a/j;->j(JI)J

    move-result-wide v3

    .line 9
    invoke-virtual {p1, v3, v4}, Lw3/b/a/p;->n(J)Lw3/b/a/p;

    move-result-object p1

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1}, Lw3/b/a/p;->m(Lw3/b/a/g;)Lw3/b/a/b;

    move-result-object p1

    const-string v1, "dateSixMonthsAgo.toDateTimeAtStartOfDay()"

    .line 11
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-wide v3, p1, Lw3/b/a/e0/e;->a:J

    .line 13
    iget-object p1, p0, Le/a/c/i/a/c$b;->f:Le/a/c/i/a/c;

    .line 14
    iget-object p1, p1, Le/a/c/i/a/c;->a:Le/a/c/a0/c;

    .line 15
    iput v2, p0, Le/a/c/i/a/c$b;->e:I

    check-cast p1, Le/a/c/a0/d;

    invoke-virtual {p1, v3, v4, p0}, Le/a/c/a0/d;->a(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 16
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    const-string v0, "results"

    .line 17
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ls1/k;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 21
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 22
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/a0/g;

    .line 23
    iget-object v5, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 24
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 25
    iget-object v6, v4, Le/a/c/a0/g;->b:Ljava/util/List;

    .line 26
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 27
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 28
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 29
    iget-object v4, v4, Le/a/c/a0/g;->c:Ljava/util/List;

    .line 30
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 31
    new-instance v4, Ls1/k;

    invoke-direct {v4, v5, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_1

    .line 32
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 34
    check-cast v5, Le/a/c/a0/g;

    new-array v6, v6, [Ls1/k;

    .line 35
    new-instance v7, Ls1/k;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    iget-object v9, v5, Le/a/c/a0/g;->a:Ljava/lang/String;

    const-string v10, "_no_acc"

    .line 37
    invoke-static {v8, v9, v10}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "Locale.ENGLISH"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v8, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v13, v5, Le/a/c/a0/g;->b:Ljava/util/List;

    .line 39
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v7, v8, v13}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v1

    .line 40
    new-instance v7, Ls1/k;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    iget-object v13, v5, Le/a/c/a0/g;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_acc"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v5, v5, Le/a/c/a0/g;->c:Ljava/util/List;

    .line 44
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v2

    .line 45
    invoke-static {v6}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 46
    :cond_4
    invoke-static {v3}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Ls1/k;

    .line 47
    iget-object v5, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 48
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 49
    iget-object v7, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 50
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 51
    new-instance v7, Ls1/k;

    const-string v8, "transactional_sms_count"

    invoke-direct {v7, v8, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v3, v1

    .line 52
    iget-object v1, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 53
    new-instance v5, Ls1/k;

    const-string v7, "transactional_no_acc"

    invoke-direct {v5, v7, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v2

    .line 54
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 55
    new-instance v1, Ls1/k;

    const-string v2, "transactional_acc"

    invoke-direct {v1, v2, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v3, v6

    .line 56
    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-static {v0, p1}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 60
    check-cast v1, Ls1/k;

    .line 61
    new-instance v2, Ls1/k;

    .line 62
    iget-object v3, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 63
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 64
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 65
    :cond_5
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p1

    const-string v1, "account_model_stats"

    .line 66
    invoke-virtual {p1, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 67
    invoke-static {v0}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 68
    invoke-virtual {p1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    .line 69
    iget-object v0, p0, Le/a/c/i/a/c$b;->f:Le/a/c/i/a/c;

    .line 70
    iget-object v0, v0, Le/a/c/i/a/c;->b:Le/a/r2/f;

    .line 71
    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-object p1
.end method
