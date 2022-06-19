.class public final Le/a/c/v/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/v/a;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/insights/reminders/rules/ReminderRule;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/c/f/l;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Ljava/util/Set<",
            "Le/a/c/v/f/a/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Ljava/util/Set<",
            "Le/a/c/v/f/b/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Le/a/c/c/f/n;

.field public final g:Le/a/c/w/x;

.field public final h:Le/a/c/v/j/a;

.field public final i:Le/a/c/b/j;

.field public final j:Le/a/b0/m/d/a;

.field public final k:Le/a/u3/g;

.field public final l:Le/a/c/v/g/b;

.field public final m:Le/a/c/v/g/d;

.field public final n:Le/a/c/e/c;


# direct methods
.method public constructor <init>(Le/a/c/c/f/l;Lo3/a;Lo3/a;Le/a/c/c/f/n;Le/a/c/w/x;Le/a/c/v/j/a;Le/a/c/b/j;Le/a/b0/m/d/a;Le/a/u3/g;Le/a/c/v/g/b;Le/a/c/v/g/d;Le/a/c/e/c;Landroid/content/Context;)V
    .locals 1
    .param p9    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/c/f/l;",
            "Lo3/a<",
            "Ljava/util/Set<",
            "Le/a/c/v/f/a/b;",
            ">;>;",
            "Lo3/a<",
            "Ljava/util/Set<",
            "Le/a/c/v/f/b/b;",
            ">;>;",
            "Le/a/c/c/f/n;",
            "Le/a/c/w/x;",
            "Le/a/c/v/j/a;",
            "Le/a/c/b/j;",
            "Le/a/b0/m/d/a;",
            "Le/a/u3/g;",
            "Le/a/c/v/g/b;",
            "Le/a/c/v/g/d;",
            "Le/a/c/e/c;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "reminderUseCases"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionBinders"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionHandlers"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateUseCases"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reminderRepository"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reminderRulesHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderInfoManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alarmHelper"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reminderAlarmManager"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsAnalyticsManager"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/v/b;->c:Le/a/c/c/f/l;

    iput-object p2, p0, Le/a/c/v/b;->d:Lo3/a;

    iput-object p3, p0, Le/a/c/v/b;->e:Lo3/a;

    iput-object p4, p0, Le/a/c/v/b;->f:Le/a/c/c/f/n;

    iput-object p5, p0, Le/a/c/v/b;->g:Le/a/c/w/x;

    iput-object p6, p0, Le/a/c/v/b;->h:Le/a/c/v/j/a;

    iput-object p7, p0, Le/a/c/v/b;->i:Le/a/c/b/j;

    iput-object p8, p0, Le/a/c/v/b;->j:Le/a/b0/m/d/a;

    iput-object p9, p0, Le/a/c/v/b;->k:Le/a/u3/g;

    iput-object p10, p0, Le/a/c/v/b;->l:Le/a/c/v/g/b;

    iput-object p11, p0, Le/a/c/v/b;->m:Le/a/c/v/g/d;

    iput-object p12, p0, Le/a/c/v/b;->n:Le/a/c/e/c;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/c/v/b;->a:Le/m/e/k;

    .line 3
    new-instance p1, Lcom/truecaller/insights/reminders/rules/ReminderRule;

    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const-string p4, "BILL"

    invoke-direct {p1, p4, p2, p3}, Lcom/truecaller/insights/reminders/rules/ReminderRule;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/c/v/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/x2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/v/b;->c:Le/a/c/c/f/l;

    check-cast v0, Le/a/c/c/f/m;

    .line 2
    iget-object v0, v0, Le/a/c/c/f/m;->c:Le/a/c/c/d/y;

    invoke-interface {v0}, Le/a/c/c/d/y;->a()Lq3/a/x2/f;

    move-result-object v0

    return-object v0
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
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

    .line 1
    iget-object v0, p0, Le/a/c/v/b;->c:Le/a/c/c/f/l;

    check-cast v0, Le/a/c/c/f/m;

    invoke-virtual {v0, p1}, Le/a/c/c/f/m;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 24
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

    instance-of v3, v1, Le/a/c/v/b$d;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/c/v/b$d;

    iget v4, v3, Le/a/c/v/b$d;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/v/b$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/v/b$d;

    invoke-direct {v3, v0, v1}, Le/a/c/v/b$d;-><init>(Le/a/c/v/b;Ls1/w/d;)V

    :goto_0
    iget-object v1, v3, Le/a/c/v/b$d;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/c/v/b$d;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eqz v5, :cond_4

    if-eq v5, v6, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v8, :cond_1

    iget-object v5, v3, Le/a/c/v/b$d;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v3, Le/a/c/v/b$d;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/v/b;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v5, v3, Le/a/c/v/b$d;->j:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v7, v3, Le/a/c/v/b$d;->i:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v3, Le/a/c/v/b$d;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    iget-object v9, v3, Le/a/c/v/b$d;->g:Ljava/lang/Object;

    check-cast v9, Le/a/c/v/b;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    iget-object v5, v3, Le/a/c/v/b$d;->g:Ljava/lang/Object;

    check-cast v5, Le/a/c/v/b;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object v0, v3, Le/a/c/v/b$d;->g:Ljava/lang/Object;

    iput v6, v3, Le/a/c/v/b$d;->e:I

    invoke-virtual {v0, v3}, Le/a/c/v/b;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_5

    return-object v4

    :cond_5
    move-object v5, v0

    .line 5
    :goto_1
    check-cast v1, Ljava/util/List;

    .line 6
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 8
    move-object v11, v10

    check-cast v11, Lcom/truecaller/insights/models/InsightsReminder;

    .line 9
    invoke-virtual {v11}, Lcom/truecaller/insights/models/InsightsReminder;->getCategory()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Le/a/c/p/a;->u2(Ljava/lang/String;)Le/a/c/v/h/e;

    sget-object v11, Le/a/c/v/h/e$a;->c:Le/a/c/v/h/e$a;

    .line 10
    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_6

    .line 11
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_6
    check-cast v12, Ljava/util/List;

    .line 14
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object/from16 v22, v5

    move-object v5, v1

    move v1, v6

    move-object/from16 v6, v22

    move/from16 v23, v8

    move v8, v7

    move-object v7, v9

    move/from16 v9, v23

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/c/v/h/e;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 18
    iget-object v12, v6, Le/a/c/v/b;->l:Le/a/c/v/g/b;

    iput-object v6, v3, Le/a/c/v/b$d;->g:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/v/b$d;->h:Ljava/lang/Object;

    iput-object v7, v3, Le/a/c/v/b$d;->i:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/v/b$d;->j:Ljava/lang/Object;

    iput v8, v3, Le/a/c/v/b$d;->e:I

    .line 19
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    instance-of v13, v11, Le/a/c/v/h/e$a;

    if-eqz v13, :cond_d

    .line 21
    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v10, v14}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 23
    check-cast v14, Lcom/truecaller/insights/models/InsightsReminder;

    .line 24
    invoke-virtual {v14}, Lcom/truecaller/insights/models/InsightsReminder;->getUniqueRefId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 25
    :cond_8
    new-instance v10, Le/a/c/v/g/a;

    invoke-direct {v10}, Le/a/c/v/g/a;-><init>()V

    .line 26
    iget-object v12, v12, Le/a/c/v/g/b;->a:Le/a/c/c0/o;

    invoke-interface {v12}, Le/a/c/c0/o;->E()I

    move-result v12

    if-eq v12, v1, :cond_b

    const-string v14, "DateTime.now()"

    if-eq v12, v8, :cond_a

    if-eq v12, v9, :cond_9

    .line 27
    sget-wide v8, Le/a/c/v/g/c;->a:J

    goto :goto_5

    .line 28
    :cond_9
    new-instance v8, Lw3/b/a/b;

    invoke-direct {v8}, Lw3/b/a/b;-><init>()V

    .line 29
    invoke-static {v8, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lw3/b/a/e0/a;->r()I

    move-result v8

    .line 30
    new-instance v9, Lw3/b/a/b;

    invoke-direct {v9}, Lw3/b/a/b;-><init>()V

    .line 31
    iget-object v12, v9, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 32
    invoke-virtual {v12}, Lw3/b/a/a;->v()Lw3/b/a/c;

    move-result-object v12

    .line 33
    iget-wide v14, v9, Lw3/b/a/e0/e;->a:J

    .line 34
    invoke-virtual {v12, v14, v15, v8}, Lw3/b/a/c;->C(JI)J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object v8

    .line 35
    invoke-virtual {v8, v1}, Lw3/b/a/b;->E(I)Lw3/b/a/b;

    move-result-object v8

    const-string v9, "DateTime.now().withHourOfDay(this).plusHours(hour)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-wide v8, v8, Lw3/b/a/e0/e;->a:J

    goto :goto_5

    .line 37
    :cond_a
    new-instance v8, Lw3/b/a/b;

    invoke-direct {v8}, Lw3/b/a/b;-><init>()V

    .line 38
    invoke-static {v8, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lw3/b/a/e0/a;->r()I

    move-result v8

    .line 39
    new-instance v9, Lw3/b/a/b;

    invoke-direct {v9}, Lw3/b/a/b;-><init>()V

    .line 40
    iget-object v12, v9, Lw3/b/a/e0/e;->b:Lw3/b/a/a;

    .line 41
    invoke-virtual {v12}, Lw3/b/a/a;->v()Lw3/b/a/c;

    move-result-object v12

    .line 42
    iget-wide v14, v9, Lw3/b/a/e0/e;->a:J

    .line 43
    invoke-virtual {v12, v14, v15, v8}, Lw3/b/a/c;->C(JI)J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Lw3/b/a/b;->N(J)Lw3/b/a/b;

    move-result-object v8

    const/4 v9, 0x5

    .line 44
    invoke-virtual {v8, v9}, Lw3/b/a/b;->G(I)Lw3/b/a/b;

    move-result-object v8

    const-string v9, "DateTime.now().withHourO\u2026his).plusMinutes(minutes)"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-wide v8, v8, Lw3/b/a/e0/e;->a:J

    goto :goto_5

    .line 46
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 47
    :goto_5
    iget-object v12, v10, Le/a/c/v/g/a;->a:Ljava/util/Calendar;

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 48
    invoke-virtual {v11}, Le/a/c/v/h/e;->a()I

    move-result v8

    .line 49
    iput v8, v10, Le/a/c/v/g/a;->c:I

    .line 50
    invoke-virtual {v11}, Le/a/c/v/h/e;->b()Le/a/c/v/g/e;

    move-result-object v8

    const-string v9, "<set-?>"

    .line 51
    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object v8, v10, Le/a/c/v/g/a;->b:Le/a/c/v/g/e;

    .line 53
    invoke-virtual {v11}, Le/a/c/v/h/e;->c()Ljava/lang/Class;

    move-result-object v8

    .line 54
    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object v8, v10, Le/a/c/v/g/a;->d:Ljava/lang/Class;

    .line 56
    invoke-static {v13}, Ls1/u/i;->r(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3e

    const-string v15, ","

    invoke-static/range {v14 .. v21}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v8

    .line 57
    new-instance v11, Ls1/k;

    const-string v12, "extras_bill_ids"

    invoke-direct {v11, v12, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    invoke-static {v11}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v8}, Le/a/p5/s0/g;->J1(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v8

    .line 59
    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object v8, v10, Le/a/c/v/g/a;->e:Landroid/os/Bundle;

    .line 61
    invoke-static {v10}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    if-ne v8, v4, :cond_c

    return-object v4

    :cond_c
    move-object v9, v6

    move v6, v1

    move-object v1, v8

    move-object v8, v5

    .line 62
    :goto_6
    check-cast v1, Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    const/4 v5, 0x3

    move-object/from16 v22, v8

    move v8, v1

    move v1, v6

    move-object v6, v9

    move v9, v5

    move-object/from16 v5, v22

    goto/16 :goto_3

    .line 63
    :cond_d
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 64
    :cond_e
    check-cast v5, Ljava/util/List;

    .line 65
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 66
    iget-object v7, v6, Le/a/c/v/b;->m:Le/a/c/v/g/d;

    iput-object v6, v3, Le/a/c/v/b$d;->g:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/v/b$d;->h:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v3, Le/a/c/v/b$d;->i:Ljava/lang/Object;

    iput-object v8, v3, Le/a/c/v/b$d;->j:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v3, Le/a/c/v/b$d;->e:I

    .line 67
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Le/a/c/v/g/a;

    .line 70
    iget-object v10, v10, Le/a/c/v/g/a;->b:Le/a/c/v/g/e;

    .line 71
    sget-object v11, Le/a/c/v/g/e$b;->a:Le/a/c/v/g/e$b;

    invoke-static {v10, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 72
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 73
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 74
    :cond_11
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/c/v/g/a;

    .line 75
    new-instance v9, Landroid/content/Intent;

    .line 76
    iget-object v10, v8, Le/a/c/v/g/a;->b:Le/a/c/v/g/e;

    .line 77
    invoke-virtual {v10}, Le/a/c/v/g/e;->a()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v10, v7, Le/a/c/v/g/d;->a:Landroid/content/Context;

    .line 79
    iget-object v11, v8, Le/a/c/v/g/a;->d:Ljava/lang/Class;

    .line 80
    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    iget-object v10, v8, Le/a/c/v/g/a;->e:Landroid/os/Bundle;

    .line 82
    invoke-virtual {v9, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 83
    iget-object v10, v7, Le/a/c/v/g/d;->a:Landroid/content/Context;

    .line 84
    iget v11, v8, Le/a/c/v/g/a;->c:I

    const/high16 v12, 0xc000000

    .line 85
    invoke-static {v10, v11, v9, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 86
    iget-object v10, v7, Le/a/c/v/g/d;->a:Landroid/content/Context;

    .line 87
    iget v11, v8, Le/a/c/v/g/a;->c:I

    .line 88
    new-instance v12, Landroid/content/Intent;

    .line 89
    iget-object v13, v8, Le/a/c/v/g/a;->b:Le/a/c/v/g/e;

    .line 90
    invoke-virtual {v13}, Le/a/c/v/g/e;->a()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x24000000

    .line 91
    invoke-static {v10, v11, v12, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    if-nez v10, :cond_12

    .line 92
    iget-object v10, v7, Le/a/c/v/g/d;->a:Landroid/content/Context;

    const-string v11, "$this$alarmManager"

    const-string v12, "alarm"

    const-string v13, "null cannot be cast to non-null type android.app.AlarmManager"

    .line 93
    invoke-static {v10, v11, v12, v13}, Le/d/c/a/a;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 94
    check-cast v10, Landroid/app/AlarmManager;

    const/4 v11, 0x0

    .line 95
    iget-object v12, v8, Le/a/c/v/g/a;->a:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 96
    invoke-virtual {v10, v11, v12, v13, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_12
    const-string v9, "Scheduling Alarm for "

    .line 97
    invoke-static {v9}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 98
    iget-object v10, v8, Le/a/c/v/g/a;->b:Le/a/c/v/g/e;

    .line 99
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    iget-object v8, v8, Le/a/c/v/g/a;->a:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 101
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " seconds from now"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_9

    :cond_13
    if-ne v2, v4, :cond_f

    return-object v4

    :cond_14
    return-object v2
.end method

.method public d(Ljava/lang/String;Le/a/c/v/i/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/a/c/v/i/g;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 2
    iget-object p2, p2, Le/a/c/v/i/g;->a:Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    const-string v0, "click"

    const-string v1, "already_paid"

    .line 3
    invoke-virtual {p0, v0, v1, p2}, Le/a/c/v/b;->l(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;)V

    .line 4
    iget-object p2, p0, Le/a/c/v/b;->c:Le/a/c/c/f/l;

    check-cast p2, Le/a/c/c/f/m;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Ls1/s;->a:Ls1/s;

    if-eqz p1, :cond_0

    .line 7
    iget-object p2, p2, Le/a/c/c/f/m;->c:Le/a/c/c/d/y;

    invoke-interface {p2, p1}, Le/a/c/c/d/y;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v0

    :goto_1
    if-ne p1, p3, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method public e(Landroid/content/Context;Le/a/c/v/i/g;Ljava/lang/String;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paramsReminder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/v/b$c;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/c/v/b$c;-><init>(Le/a/c/v/b;Landroid/content/Context;Le/a/c/v/i/g;Ljava/lang/String;Ls1/w/d;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p1, v0, p2, p1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Ljava/lang/String;Le/a/c/v/i/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/a/c/v/i/g;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 2
    iget-object p2, p2, Le/a/c/v/i/g;->a:Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    const-string v0, "dismiss"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, p2}, Le/a/c/v/b;->l(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;)V

    .line 4
    iget-object p2, p0, Le/a/c/v/b;->c:Le/a/c/c/f/l;

    check-cast p2, Le/a/c/c/f/m;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Ls1/s;->a:Ls1/s;

    if-eqz p1, :cond_0

    .line 7
    iget-object p2, p2, Le/a/c/c/f/m;->c:Le/a/c/c/d/y;

    const/4 v1, 0x1

    .line 8
    invoke-interface {p2, p1, v1}, Le/a/c/c/d/y;->g(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v0

    :goto_1
    if-ne p1, p3, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method public g(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/c/v/h/g;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/truecaller/insights/models/InsightsReminder;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsReminder;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/c/p/a;->u2(Ljava/lang/String;)Le/a/c/v/h/e;

    sget-object v1, Le/a/c/v/h/e$a;->c:Le/a/c/v/h/e$a;

    .line 5
    invoke-static {v1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Le/a/c/v/b;->d:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "actionBinders.get()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/v/f/a/b;

    .line 7
    instance-of v3, v2, Le/a/c/v/f/a/a;

    if-eqz v3, :cond_1

    .line 8
    iget-object v1, p0, Le/a/c/v/b;->j:Le/a/b0/m/d/a;

    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsReminder;->getVendorName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Le/a/b0/m/d/a;->d(Ljava/lang/String;)Ls1/k;

    move-result-object v1

    .line 9
    invoke-interface {v2, v0, v1}, Le/a/c/v/f/a/b;->b(Lcom/truecaller/insights/models/InsightsReminder;Ls1/k;)Le/a/c/v/h/f;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v2, v0, v3, v1}, Le/a/c/v/f/a/b;->a(Lcom/truecaller/insights/models/InsightsReminder;Le/a/c/v/h/f;Ls1/k;)Le/a/c/v/h/g;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 11
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Collection contains no element matching the predicate."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_5
    return-object p2
.end method

.method public h([Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/c/v/b;->c:Le/a/c/c/f/l;

    check-cast p2, Le/a/c/c/f/m;

    .line 2
    iget-object p2, p2, Le/a/c/c/f/m;->c:Le/a/c/c/d/y;

    invoke-interface {p2, p1}, Le/a/c/c/d/y;->f([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Ls1/s;->a:Ls1/s;

    instance-of v3, v1, Le/a/c/v/b$a;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/c/v/b$a;

    iget v4, v3, Le/a/c/v/b$a;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/v/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/v/b$a;

    invoke-direct {v3, v0, v1}, Le/a/c/v/b$a;-><init>(Le/a/c/v/b;Ls1/w/d;)V

    :goto_0
    iget-object v1, v3, Le/a/c/v/b$a;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/c/v/b$a;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v8, :cond_1

    iget-object v3, v3, Le/a/c/v/b$a;->g:Ljava/lang/Object;

    check-cast v3, Ls1/s;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v5, v3, Le/a/c/v/b$a;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/Date;

    iget-object v7, v3, Le/a/c/v/b$a;->g:Ljava/lang/Object;

    check-cast v7, Le/a/c/v/b;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_3
    iget-object v5, v3, Le/a/c/v/b$a;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/Date;

    iget-object v10, v3, Le/a/c/v/b$a;->g:Ljava/lang/Object;

    check-cast v10, Le/a/c/v/b;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/v/b;->i:Le/a/c/b/j;

    invoke-interface {v1}, Le/a/c/b/j;->S()Z

    move-result v1

    if-nez v1, :cond_5

    return-object v2

    .line 5
    :cond_5
    iget-object v1, v0, Le/a/c/v/b;->g:Le/a/c/w/x;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    iput-object v0, v3, Le/a/c/v/b$a;->g:Ljava/lang/Object;

    move-object/from16 v5, p1

    iput-object v5, v3, Le/a/c/v/b$a;->h:Ljava/lang/Object;

    iput v9, v3, Le/a/c/v/b$a;->e:I

    check-cast v1, Le/a/c/w/y;

    invoke-virtual {v1, v10, v11, v3}, Le/a/c/w/y;->a(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_6

    return-object v4

    :cond_6
    move-object v10, v0

    .line 6
    :goto_1
    check-cast v1, Ljava/util/List;

    .line 7
    iget-object v11, v10, Le/a/c/v/b;->c:Le/a/c/c/f/l;

    iput-object v10, v3, Le/a/c/v/b$a;->g:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/v/b$a;->h:Ljava/lang/Object;

    iput v7, v3, Le/a/c/v/b$a;->e:I

    check-cast v11, Le/a/c/c/f/m;

    .line 8
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v7, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v1, v12}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 11
    check-cast v12, Le/a/c/r/a;

    .line 12
    iget-object v13, v12, Le/a/c/r/a;->b:Le/a/c/k/a;

    .line 13
    sget-object v14, Le/a/c/k/a$d;->a:Le/a/c/k/a$d;

    invoke-static {v13, v14}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 14
    iget-object v13, v12, Le/a/c/r/a;->b:Le/a/c/k/a;

    .line 15
    sget-object v14, Le/a/c/k/a$a;->a:Le/a/c/k/a$a;

    invoke-static {v13, v14}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 16
    :cond_7
    iget-object v13, v12, Le/a/c/r/a;->a:Lcom/truecaller/insights/models/InsightsReminder;

    .line 17
    invoke-virtual {v13, v9}, Lcom/truecaller/insights/models/InsightsReminder;->setDismissed(Z)V

    .line 18
    :cond_8
    iget-object v12, v12, Le/a/c/r/a;->a:Lcom/truecaller/insights/models/InsightsReminder;

    .line 19
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/insights/models/InsightsReminder;

    .line 21
    iget-object v12, v11, Le/a/c/c/f/m;->c:Le/a/c/c/d/y;

    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsReminder;->getVendorName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Le/a/c/c/d/y;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 22
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 23
    iget-object v12, v11, Le/a/c/c/f/m;->c:Le/a/c/c/d/y;

    invoke-interface {v12, v7}, Le/a/c/c/d/y;->e(Lcom/truecaller/insights/models/InsightsReminder;)J

    goto :goto_3

    .line 24
    :cond_a
    const-class v13, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    iget-object v14, v11, Le/a/c/c/f/m;->a:Le/m/e/k;

    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsReminder;->getMetaJsonString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    .line 25
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/truecaller/insights/models/InsightsReminder;

    .line 26
    iget-object v9, v11, Le/a/c/c/f/m;->a:Le/m/e/k;

    invoke-virtual {v15}, Lcom/truecaller/insights/models/InsightsReminder;->getMetaJsonString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8, v13}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    if-eqz v8, :cond_b

    .line 27
    invoke-virtual {v8}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getAccountNumber()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_b
    move-object v9, v6

    :goto_5
    const/16 v16, 0x0

    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_c

    goto :goto_6

    :cond_c
    move/from16 v9, v16

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v9, 0x1

    :goto_7
    if-eqz v9, :cond_15

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getAccountNumber()Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_e
    move-object v9, v6

    :goto_8
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_f

    goto :goto_9

    :cond_f
    move/from16 v9, v16

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v9, 0x1

    :goto_a
    if-eqz v9, :cond_15

    if-eqz v8, :cond_11

    .line 28
    invoke-virtual {v8}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getBillAmount()Ljava/lang/Double;

    move-result-object v8

    goto :goto_b

    :cond_11
    move-object v8, v6

    :goto_b
    if-eqz v14, :cond_12

    invoke-virtual {v14}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getBillAmount()Ljava/lang/Double;

    move-result-object v9

    goto :goto_c

    :cond_12
    move-object v9, v6

    :goto_c
    if-nez v8, :cond_13

    if-nez v9, :cond_14

    goto :goto_d

    :cond_13
    if-eqz v9, :cond_14

    .line 29
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v8, v17, v8

    if-nez v8, :cond_14

    :goto_d
    const/16 v16, 0x1

    :cond_14
    if-eqz v16, :cond_18

    goto :goto_10

    :cond_15
    if-eqz v8, :cond_16

    .line 30
    invoke-virtual {v8}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getAccountNumber()Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :cond_16
    move-object v8, v6

    :goto_e
    if-eqz v14, :cond_17

    invoke-virtual {v14}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getAccountNumber()Ljava/lang/String;

    move-result-object v9

    goto :goto_f

    :cond_17
    move-object v9, v6

    :goto_f
    invoke-static {v8, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    goto :goto_10

    :cond_18
    const/4 v8, 0x3

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_19
    move-object v15, v6

    :goto_10
    if-eqz v15, :cond_1a

    .line 31
    iget-object v8, v11, Le/a/c/c/f/m;->c:Le/a/c/c/d/y;

    .line 32
    invoke-virtual {v15}, Lcom/truecaller/insights/models/InsightsReminder;->getUniqueRefId()Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsReminder;->getUniqueRefId()Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-interface {v8, v9, v7}, Le/a/c/c/d/y;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 35
    :cond_1a
    iget-object v8, v11, Le/a/c/c/f/m;->c:Le/a/c/c/d/y;

    invoke-interface {v8, v7}, Le/a/c/c/d/y;->e(Lcom/truecaller/insights/models/InsightsReminder;)J

    :goto_11
    const/4 v8, 0x3

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_1b
    if-ne v2, v4, :cond_1c

    return-object v4

    :cond_1c
    move-object v7, v10

    .line 36
    :goto_12
    iget-object v1, v7, Le/a/c/v/b;->g:Le/a/c/w/x;

    iput-object v2, v3, Le/a/c/v/b$a;->g:Ljava/lang/Object;

    iput-object v6, v3, Le/a/c/v/b$a;->h:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v3, Le/a/c/v/b$a;->e:I

    check-cast v1, Le/a/c/w/y;

    invoke-virtual {v1, v5, v3}, Le/a/c/w/y;->c(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_1d

    return-object v4

    :cond_1d
    :goto_13
    return-object v2
.end method

.method public j([Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/c/v/b;->c:Le/a/c/c/f/l;

    check-cast p2, Le/a/c/c/f/m;

    .line 2
    iget-object p2, p2, Le/a/c/c/f/m;->c:Le/a/c/c/d/y;

    invoke-interface {p2, p1}, Le/a/c/c/d/y;->b([Ljava/lang/String;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public k(Ls1/w/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/v/b$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/v/b$b;

    iget v1, v0, Le/a/c/v/b$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/v/b$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/v/b$b;

    invoke-direct {v0, p0, p1}, Le/a/c/v/b$b;-><init>(Le/a/c/v/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/v/b$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/v/b$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/c/v/b$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/v/b;

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
    iget-object p1, p0, Le/a/c/v/b;->c:Le/a/c/c/f/l;

    iput-object p0, v0, Le/a/c/v/b$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/v/b$b;->e:I

    check-cast p1, Le/a/c/c/f/m;

    .line 5
    iget-object p1, p1, Le/a/c/c/f/m;->c:Le/a/c/c/d/y;

    invoke-interface {p1}, Le/a/c/c/d/y;->c()Ljava/util/List;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 6
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 7
    iget-object v1, v0, Le/a/c/v/b;->k:Le/a/u3/g;

    .line 8
    iget-object v2, v1, Le/a/u3/g;->g2:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0xa2

    aget-object v4, v4, v5

    invoke-virtual {v2, v1, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    check-cast v1, Le/a/u3/i;

    .line 9
    invoke-interface {v1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    if-nez v2, :cond_5

    .line 11
    iget-object v2, v0, Le/a/c/v/b;->a:Le/m/e/k;

    new-instance v5, Le/a/c/v/c;

    invoke-direct {v5}, Le/a/c/v/c;-><init>()V

    invoke-virtual {v5}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "gson.fromJson<List<Remin\u2026ReminderRule>>() {}.type)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    goto :goto_3

    .line 12
    :cond_5
    iget-object v1, v0, Le/a/c/v/b;->b:Ljava/util/List;

    .line 13
    :goto_3
    iget-object v0, v0, Le/a/c/v/b;->h:Le/a/c/v/j/a;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "reminderList"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rules"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 17
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 19
    move-object v8, v7

    check-cast v8, Lcom/truecaller/insights/reminders/rules/ReminderRule;

    .line 20
    invoke-virtual {v8}, Lcom/truecaller/insights/reminders/rules/ReminderRule;->getCategory()Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 22
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 23
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v6, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 25
    check-cast v7, Lcom/truecaller/insights/reminders/rules/ReminderRule;

    .line 26
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/truecaller/insights/models/InsightsReminder;

    .line 28
    invoke-virtual {v11}, Lcom/truecaller/insights/models/InsightsReminder;->getCategory()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/truecaller/insights/reminders/rules/ReminderRule;->getCategory()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 29
    :cond_9
    new-instance v9, Ls1/k;

    invoke-direct {v9, v7, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 31
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 33
    check-cast v5, Ls1/k;

    .line 34
    iget-object v6, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 35
    check-cast v6, Lcom/truecaller/insights/reminders/rules/ReminderRule;

    .line 36
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 37
    check-cast v5, Ljava/util/List;

    .line 38
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/insights/models/InsightsReminder;

    .line 39
    invoke-virtual {v6}, Lcom/truecaller/insights/reminders/rules/ReminderRule;->getStart_date()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 40
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-lez v9, :cond_c

    .line 41
    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsReminder;->getGeneratedDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v0, v10}, Le/a/c/v/j/a;->a(Ljava/util/Date;)I

    move-result v10

    if-ne v10, v9, :cond_c

    .line 42
    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsReminder;->getGeneratedDate()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10}, Le/a/c/p/a;->e3(Ljava/util/Date;)Lw3/b/a/p;

    move-result-object v10

    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsReminder;->getDueDate()Ljava/util/Date;

    move-result-object v11

    invoke-static {v11}, Le/a/c/p/a;->e3(Ljava/util/Date;)Lw3/b/a/p;

    move-result-object v11

    invoke-static {v10, v11}, Lw3/b/a/h;->r(Lw3/b/a/b0;Lw3/b/a/b0;)Lw3/b/a/h;

    move-result-object v10

    const-string v11, "Days.daysBetween(reminde\u2026er.dueDate.toLocalDate())"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget v10, v10, Lw3/b/a/e0/i;->a:I

    if-lt v10, v9, :cond_d

    move v9, v3

    goto :goto_9

    :cond_d
    move v9, v4

    :goto_9
    if-eqz v9, :cond_c

    .line 44
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 45
    :cond_e
    invoke-virtual {v6}, Lcom/truecaller/insights/reminders/rules/ReminderRule;->getEnd_date()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 46
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 47
    invoke-virtual {v7}, Lcom/truecaller/insights/models/InsightsReminder;->getDueDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v0, v10}, Le/a/c/v/j/a;->a(Ljava/util/Date;)I

    move-result v10

    if-ne v10, v9, :cond_f

    .line 48
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 49
    :cond_10
    sget-object v5, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_11
    return-object v2
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;)V
    .locals 19

    .line 1
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getSubCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepaid_expiry"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "bill_prepaid"

    :goto_0
    move-object v5, v0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getUtilityType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    if-nez v0, :cond_4

    .line 3
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getUtilityType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mobile"

    invoke-static {v0, v3, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "bill_postpaid"

    goto :goto_0

    :cond_3
    const-string v0, "bill_"

    .line 4
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getUtilityType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "bill_unknown"

    goto :goto_0

    .line 5
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getVendorName()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual/range {p3 .. p3}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getOrigin()Lcom/truecaller/insights/models/DomainOrigin;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-nez v0, :cond_8

    if-eqz p2, :cond_5

    move-object/from16 v9, p2

    goto :goto_4

    :cond_5
    const-string v0, ""

    move-object v9, v0

    :goto_4
    const-string v4, "reminder_notification"

    const-string v7, "sms"

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "feature"

    .line 9
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventCategory"

    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventInfo"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionType"

    move-object/from16 v8, p1

    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionInfo"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "propertyMap"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, p0

    .line 10
    iget-object v14, v15, Le/a/c/v/b;->n:Le/a/c/e/c;

    .line 11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    move v1, v2

    :cond_6
    if-eqz v1, :cond_7

    .line 12
    new-instance v1, Le/a/c/r/d/b;

    .line 13
    new-instance v2, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1c0

    const/16 v17, 0x0

    move-object v3, v2

    move-object/from16 v8, p1

    move-object/from16 v18, v14

    move/from16 v14, v16

    move-object/from16 v15, v17

    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 14
    invoke-static {v0}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 15
    invoke-direct {v1, v2, v0}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    move-object/from16 v0, v18

    .line 16
    invoke-interface {v0, v1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    return-void

    .line 17
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_8
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
