.class public Le/a/d0/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/j0;


# instance fields
.field public final a:Le/a/k3/j/b;

.field public final b:Le/a/o5/f0;

.field public final c:Le/a/p5/c;

.field public final d:Le/a/d0/y0;

.field public final e:Le/a/q2/a;

.field public final f:Le/a/p5/u;

.field public final g:Le/a/u3/g;

.field public final h:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

.field public final i:Le/a/o5/r;

.field public final j:Le/a/o5/i1;

.field public final k:Le/a/d0/z0/c;


# direct methods
.method public constructor <init>(Le/a/k3/j/b;Le/a/o5/f0;Le/a/p5/c;Le/a/d0/y0;Le/a/q2/a;Le/a/p5/u;Le/a/u3/g;Lcom/truecaller/callerid/CallerIdPerformanceTracker;Le/a/o5/r;Le/a/o5/i1;Le/a/d0/z0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/d0/k0;->a:Le/a/k3/j/b;

    .line 3
    iput-object p2, p0, Le/a/d0/k0;->b:Le/a/o5/f0;

    .line 4
    iput-object p3, p0, Le/a/d0/k0;->c:Le/a/p5/c;

    .line 5
    iput-object p4, p0, Le/a/d0/k0;->d:Le/a/d0/y0;

    .line 6
    iput-object p5, p0, Le/a/d0/k0;->e:Le/a/q2/a;

    .line 7
    iput-object p6, p0, Le/a/d0/k0;->f:Le/a/p5/u;

    .line 8
    iput-object p7, p0, Le/a/d0/k0;->g:Le/a/u3/g;

    .line 9
    iput-object p8, p0, Le/a/d0/k0;->h:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    .line 10
    iput-object p9, p0, Le/a/d0/k0;->i:Le/a/o5/r;

    .line 11
    iput-object p10, p0, Le/a/d0/k0;->j:Le/a/o5/i1;

    .line 12
    iput-object p11, p0, Le/a/d0/k0;->k:Le/a/d0/z0/c;

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1
    invoke-static {v0}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Number;ZILe/a/f4/g/p;)Le/a/r2/x;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Number;",
            "ZI",
            "Le/a/f4/g/p;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Trying to find contact in AggregatedContactDao."

    .line 2
    invoke-static {v0}, Le/a/d0/k0;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/d0/k0;->h:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    sget-object v3, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDSEARCH_GETCONTACTFROMAGGREG:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    invoke-interface {v0, v3}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->b(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;)Le/a/p5/l0;

    move-result-object v0

    .line 4
    iget-object v3, v1, Le/a/d0/k0;->a:Le/a/k3/j/b;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v3

    .line 5
    iget-object v4, v1, Le/a/d0/k0;->h:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    invoke-interface {v4, v0}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->a(Le/a/p5/l0;)V

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->y0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AggregatedContactDao cache hit, returning contact"

    .line 7
    invoke-static {v0}, Le/a/d0/k0;->b(Ljava/lang/String;)V

    .line 8
    invoke-static {v3}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v3, :cond_1

    const-string v0, "No contact found in AggregatedContactDao. Falling back to Android phonebook"

    .line 9
    invoke-static {v0}, Le/a/d0/k0;->b(Ljava/lang/String;)V

    .line 10
    iget-object v0, v1, Le/a/d0/k0;->i:Le/a/o5/r;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Le/a/o5/r;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v3, v1, Le/a/d0/k0;->j:Le/a/o5/i1;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Le/a/o5/i1;->f(J)Landroid/net/Uri;

    .line 12
    iget-object v3, v1, Le/a/d0/k0;->a:Le/a/k3/j/b;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Le/a/k3/j/b;->i(J)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "AggregatedContactDao contact retrieved by id"

    .line 13
    invoke-static {v2}, Le/a/d0/k0;->b(Ljava/lang/String;)V

    .line 14
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "AggregatedContactDao cache miss, performing server side search."

    .line 15
    invoke-static {v0}, Le/a/d0/k0;->b(Ljava/lang/String;)V

    .line 16
    iget-object v0, v1, Le/a/d0/k0;->b:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    const-string v0, "Cannot perform a search without a valid account."

    .line 17
    invoke-static {v0}, Le/a/d0/k0;->b(Ljava/lang/String;)V

    .line 18
    invoke-static {v3}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    return-object v0

    .line 19
    :cond_2
    iget-object v0, v1, Le/a/d0/k0;->g:Le/a/u3/g;

    .line 20
    iget-object v4, v0, Le/a/u3/g;->V1:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x97

    aget-object v5, v5, v6

    invoke-virtual {v4, v0, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    const/16 v4, 0x1f40

    .line 21
    invoke-interface {v0, v4}, Le/a/u3/i;->getInt(I)I

    move-result v0

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v4

    .line 23
    iput-object v4, v2, Le/a/f4/g/p;->p:Ljava/lang/String;

    .line 24
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    iput v0, v2, Le/a/f4/g/p;->v:I

    .line 26
    iput-object v4, v2, Le/a/f4/g/p;->w:Ljava/util/concurrent/TimeUnit;

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Le/a/f4/g/p;->c(Ljava/lang/String;)Le/a/f4/g/p;

    move-result-object v0

    move/from16 v4, p3

    .line 28
    iput v4, v0, Le/a/f4/g/p;->o:I

    const/4 v4, 0x0

    .line 29
    iput-boolean v4, v0, Le/a/f4/g/p;->g:Z

    const/4 v5, 0x1

    .line 30
    iput-boolean v5, v0, Le/a/f4/g/p;->i:Z

    .line 31
    iput-boolean v5, v0, Le/a/f4/g/p;->j:Z

    .line 32
    iput-boolean v5, v0, Le/a/f4/g/p;->h:Z

    .line 33
    iget-object v0, v1, Le/a/d0/k0;->h:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    sget-object v6, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDSEARCH_PERFORMNETWORKSEARCH:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    invoke-interface {v0, v6}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->b(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;)Le/a/p5/l0;

    move-result-object v6

    .line 34
    iget-object v0, v1, Le/a/d0/k0;->c:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v7

    .line 35
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iget-object v0, v1, Le/a/d0/k0;->k:Le/a/d0/z0/c;

    .line 37
    iget-object v0, v0, Le/a/d0/z0/c;->a:Le/a/q2/d1/d;

    const-string v10, "callerIdSearchRequest_35921_started"

    invoke-interface {v0, v10}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    move-object/from16 v18, v3

    move v10, v4

    :goto_0
    const/4 v0, 0x6

    if-ge v4, v0, :cond_6

    .line 38
    iget-object v0, v1, Le/a/d0/k0;->f:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->b()Ljava/lang/String;

    move-result-object v15

    .line 39
    iget-object v0, v1, Le/a/d0/k0;->c:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v19

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Network search attempt #"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " connection type: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/d0/k0;->b(Ljava/lang/String;)V

    .line 41
    iget-object v0, v1, Le/a/d0/k0;->f:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->d()Z

    move-result v0

    const/4 v14, 0x5

    if-nez v0, :cond_4

    iget-object v0, v1, Le/a/d0/k0;->g:Le/a/u3/g;

    .line 42
    iget-object v11, v0, Le/a/u3/g;->h:Le/a/u3/g$a;

    sget-object v12, Le/a/u3/g;->p6:[Ls1/a/l;

    const/4 v13, 0x4

    aget-object v12, v12, v13

    invoke-virtual {v11, v0, v12}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 44
    :cond_3
    new-instance v0, Le/a/d0/z0/a;

    const/16 v16, 0x0

    iget-object v11, v1, Le/a/d0/k0;->c:Le/a/p5/c;

    invoke-interface {v11}, Le/a/p5/c;->a()J

    move-result-wide v11

    sub-long v19, v11, v19

    const/16 v17, 0x0

    move-object v11, v0

    move v12, v4

    move-object v13, v15

    move v15, v14

    move/from16 v14, v16

    move v5, v15

    move-wide/from16 v15, v19

    invoke-direct/range {v11 .. v17}, Le/a/d0/z0/a;-><init>(ILjava/lang/String;ZJZ)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ge v4, v5, :cond_5

    const-string v0, "No internet connection, retrying in 1500 ms"

    .line 45
    invoke-static {v0}, Le/a/d0/k0;->b(Ljava/lang/String;)V

    .line 46
    iget-object v0, v1, Le/a/d0/k0;->d:Le/a/d0/y0;

    const-wide/16 v11, 0x5dc

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6

    goto/16 :goto_5

    :cond_4
    :goto_1
    move v5, v14

    .line 49
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Le/a/f4/g/p;->a()Le/a/f4/g/t;

    move-result-object v18

    const-string v0, "Received response from backend"

    .line 50
    invoke-static {v0}, Le/a/d0/k0;->b(Ljava/lang/String;)V

    .line 51
    new-instance v0, Le/a/d0/z0/a;

    const/4 v14, 0x1

    iget-object v11, v1, Le/a/d0/k0;->c:Le/a/p5/c;

    invoke-interface {v11}, Le/a/p5/c;->a()J

    move-result-wide v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    sub-long v16, v11, v19

    const/16 v21, 0x1

    move-object v11, v0

    move v12, v4

    move-object v13, v15

    move-object/from16 v22, v15

    move-wide/from16 v15, v16

    move/from16 v17, v21

    :try_start_2
    invoke-direct/range {v11 .. v17}, Le/a/d0/z0/a;-><init>(ILjava/lang/String;ZJZ)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 52
    :try_start_3
    iget-object v0, v1, Le/a/d0/k0;->k:Le/a/d0/z0/c;

    .line 53
    iget-object v0, v0, Le/a/d0/z0/c;->a:Le/a/q2/d1/d;

    const-string v10, "callerIdSearchRequest_35921_success"

    invoke-interface {v0, v10}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v5, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    const/4 v10, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_3
    move-object/from16 v22, v15

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    .line 54
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Search failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/d0/k0;->b(Ljava/lang/String;)V

    .line 55
    new-instance v0, Le/a/d0/z0/a;

    const/4 v14, 0x0

    iget-object v11, v1, Le/a/d0/k0;->c:Le/a/p5/c;

    invoke-interface {v11}, Le/a/p5/c;->a()J

    move-result-wide v11

    sub-long v15, v11, v19

    const/16 v17, 0x1

    move-object v11, v0

    move v12, v4

    move-object/from16 v13, v22

    invoke-direct/range {v11 .. v17}, Le/a/d0/z0/a;-><init>(ILjava/lang/String;ZJZ)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ge v4, v5, :cond_5

    const-string v0, "Retrying in 500 ms"

    .line 56
    invoke-static {v0}, Le/a/d0/k0;->b(Ljava/lang/String;)V

    .line 57
    iget-object v0, v1, Le/a/d0/k0;->d:Le/a/d0/y0;

    const-wide/16 v11, 0x1f4

    .line 58
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :try_start_4
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6

    :catch_6
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_6
    move v5, v10

    .line 60
    :goto_6
    iget-object v0, v1, Le/a/d0/k0;->e:Le/a/q2/a;

    new-instance v2, Le/a/d0/z0/b;

    iget-object v4, v1, Le/a/d0/k0;->c:Le/a/p5/c;

    invoke-interface {v4}, Le/a/p5/c;->a()J

    move-result-wide v10

    sub-long/2addr v10, v7

    invoke-direct {v2, v5, v10, v11, v9}, Le/a/d0/z0/b;-><init>(ZJLjava/util/List;)V

    invoke-interface {v0, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 61
    iget-object v0, v1, Le/a/d0/k0;->h:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    invoke-interface {v0, v6}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->a(Le/a/p5/l0;)V

    if-nez v18, :cond_7

    .line 62
    invoke-static {v3}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    goto :goto_7

    :cond_7
    invoke-virtual/range {v18 .. v18}, Le/a/f4/g/t;->a()Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    :goto_7
    return-object v0
.end method
