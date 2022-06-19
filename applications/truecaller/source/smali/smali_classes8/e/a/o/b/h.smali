.class public final Le/a/o/b/h;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Le/a/d3/j;

.field public final d:Le/a/o/p/e/g/c;

.field public final e:Le/a/o/b/o;

.field public final f:Le/a/o/b/f;

.field public final g:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/d3/j;Le/a/o/p/e/g/c;Le/a/o/b/o;Le/a/o/b/f;Le/a/p5/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "pushCallerIdStubManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/o/b/h;->c:Le/a/d3/j;

    iput-object p2, p0, Le/a/o/b/h;->d:Le/a/o/p/e/g/c;

    iput-object p3, p0, Le/a/o/b/h;->e:Le/a/o/b/o;

    iput-object p4, p0, Le/a/o/b/h;->f:Le/a/o/b/f;

    iput-object p5, p0, Le/a/o/b/h;->g:Le/a/p5/c;

    const-string p1, "ContextCallMessagesFetcherWorkAction"

    .line 2
    iput-object p1, p0, Le/a/o/b/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 9

    const-string v0, "Result.retry()"

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/o/b/h;->c:Le/a/d3/j;

    .line 2
    sget-object v2, Le/a/b0/b/e$a;->a:Le/a/b0/b/e$a;

    invoke-interface {v1, v2}, Le/a/f4/b/h/g;->c(Le/a/b0/b/e;)Lp3/a/q1/c;

    move-result-object v1

    check-cast v1, Le/a/t2/a/a/a/b$a;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Request;->newBuilder()Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Request$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Request;

    invoke-virtual {v1, v2}, Le/a/t2/a/a/a/b$a;->g(Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Request;)Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v4, Ls1/z/c/c0;

    invoke-direct {v4}, Ls1/z/c/c0;-><init>()V

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->getPredefinedMessagesList()Ljava/util/List;

    move-result-object v2

    const-string v3, "predefinedMessagesList"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->Predefined:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    invoke-static {v2, v3}, Le/a/m0/a1$k;->g(Ljava/util/List;Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->getMidCallPredefinedMessagesList()Ljava/util/List;

    move-result-object v3

    const-string v5, "midCallPredefinedMessagesList"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->MidCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    invoke-static {v3, v5}, Le/a/m0/a1$k;->g(Ljava/util/List;Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Ljava/util/List;

    move-result-object v3

    .line 7
    invoke-static {v2, v3}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->getSecondCallPredefinedMessagesList()Ljava/util/List;

    move-result-object v3

    const-string v5, "secondCallPredefinedMessagesList"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->SecondCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    invoke-static {v3, v5}, Le/a/m0/a1$k;->g(Ljava/util/List;Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Ljava/util/List;

    move-result-object v3

    .line 9
    invoke-static {v2, v3}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->getCallbackPredefinedMessagesList()Ljava/util/List;

    move-result-object v3

    const-string v5, "callbackPredefinedMessagesList"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;->MissedCall:Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;

    invoke-static {v3, v5}, Le/a/m0/a1$k;->g(Ljava/util/List;Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Ljava/util/List;

    move-result-object v3

    .line 11
    invoke-static {v2, v3}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 12
    iput-object v2, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 13
    new-instance v5, Ls1/z/c/b0;

    invoke-direct {v5}, Ls1/z/c/b0;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lcom/truecaller/api/services/callerid/v1/GetCallContextMessages$Response;->getTtl()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iput-wide v1, v5, Ls1/z/c/b0;->a:J

    .line 14
    new-instance v6, Ls1/z/c/b0;

    invoke-direct {v6}, Ls1/z/c/b0;-><init>()V

    iget-object v1, p0, Le/a/o/b/h;->g:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    iget-wide v7, v5, Ls1/z/c/b0;->a:J

    add-long/2addr v1, v7

    iput-wide v1, v6, Ls1/z/c/b0;->a:J

    .line 15
    new-instance v1, Le/a/o/b/h$a;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Le/a/o/b/h$a;-><init>(Le/a/o/b/h;Ls1/z/c/c0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/w/d;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v1, v2, v3}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v2, "Result.success()"

    .line 17
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    .line 19
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 20
    :catch_0
    new-instance v1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    .line 21
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/b/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/o/b/h;->f:Le/a/o/b/f;

    invoke-interface {v0}, Le/a/o/b/f;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/o/b/h;->e:Le/a/o/b/o;

    const-wide/16 v2, 0x0

    const-string v4, "predefinedMessagesExpirationTime"

    invoke-interface {v0, v4, v2, v3}, Le/a/o/b/o;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3
    iget-object v0, p0, Le/a/o/b/h;->g:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
