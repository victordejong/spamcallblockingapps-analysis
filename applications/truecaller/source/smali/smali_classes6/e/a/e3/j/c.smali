.class public final Le/a/e3/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e3/j/b;


# instance fields
.field public final a:Le/a/k3/j/j;

.field public final b:Le/a/k3/j/b;

.field public final c:Le/a/k3/l/f;

.field public final d:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/p5/c;

.field public final f:Ls1/w/f;

.field public final g:Le/a/e3/j/f;

.field public final h:Le/a/e3/k/a;

.field public final i:Le/a/u3/g;

.field public final j:Le/a/o/c;

.field public final k:Le/a/k/h;


# direct methods
.method public constructor <init>(Le/a/k3/j/j;Le/a/k3/j/b;Le/a/k3/l/f;Le/a/r2/f;Le/a/p5/c;Ls1/w/f;Le/a/e3/j/f;Le/a/e3/k/a;Le/a/u3/g;Le/a/o/c;Le/a/k/h;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p9    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k3/j/j;",
            "Le/a/k3/j/b;",
            "Le/a/k3/l/f;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/p5/c;",
            "Ls1/w/f;",
            "Le/a/e3/j/f;",
            "Le/a/e3/k/a;",
            "Le/a/u3/g;",
            "Le/a/o/c;",
            "Le/a/k/h;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "rawContactDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAlertNotificationUI"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsAdCacheManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCall"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e3/j/c;->a:Le/a/k3/j/j;

    iput-object p2, p0, Le/a/e3/j/c;->b:Le/a/k3/j/b;

    iput-object p3, p0, Le/a/e3/j/c;->c:Le/a/k3/l/f;

    iput-object p4, p0, Le/a/e3/j/c;->d:Le/a/r2/f;

    iput-object p5, p0, Le/a/e3/j/c;->e:Le/a/p5/c;

    iput-object p6, p0, Le/a/e3/j/c;->f:Ls1/w/f;

    iput-object p7, p0, Le/a/e3/j/c;->g:Le/a/e3/j/f;

    iput-object p8, p0, Le/a/e3/j/c;->h:Le/a/e3/k/a;

    iput-object p9, p0, Le/a/e3/j/c;->i:Le/a/u3/g;

    iput-object p10, p0, Le/a/e3/j/c;->j:Le/a/o/c;

    iput-object p11, p0, Le/a/e3/j/c;->k:Le/a/k/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ","

    .line 1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v3, v2}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/String;

    .line 5
    sget-object v2, Le/a/e3/j/e;->a:Ljava/util/Map;

    .line 6
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v0}, Le/a/m0/a1$k;->v(Ljava/util/Collection;)I

    move-result p1

    return p1
.end method

.method public final b(Le/a/e3/e/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/e3/e/a;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/e3/j/c$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/e3/j/c$a;

    iget v1, v0, Le/a/e3/j/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/e3/j/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/e3/j/c$a;

    invoke-direct {v0, p0, p2}, Le/a/e3/j/c$a;-><init>(Le/a/e3/j/c;Ls1/w/d;)V

    :goto_0
    move-object v6, v0

    iget-object p2, v6, Le/a/e3/j/c$a;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v6, Le/a/e3/j/c$a;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/e3/j/c;->j:Le/a/o/c;

    invoke-interface {p2}, Le/a/o/c;->isSupported()Z

    move-result p2

    if-nez p2, :cond_4

    return-object v4

    .line 5
    :cond_4
    iget-object p2, p1, Le/a/e3/e/a;->b:Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 6
    iget-object v5, p1, Le/a/e3/e/a;->f:Ljava/lang/String;

    if-nez v5, :cond_6

    .line 7
    iget-object p1, p0, Le/a/e3/j/c;->j:Le/a/o/c;

    iput v3, v6, Le/a/e3/j/c$a;->e:I

    invoke-interface {p1, p2, v6}, Le/a/o/c;->y(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    return-object v4

    .line 8
    :cond_6
    iget-object p1, p1, Le/a/e3/e/a;->e:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 9
    iget-object v1, p0, Le/a/e3/j/c;->j:Le/a/o/c;

    iput v2, v6, Le/a/e3/j/c$a;->e:I

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, v5

    move v5, v7

    .line 10
    invoke-interface/range {v1 .. v6}, Le/a/o/c;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    return-object p2

    :cond_8
    return-object v4
.end method

.method public final synthetic c(Le/a/k/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLs1/w/d;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p3

    move-object/from16 v2, p9

    sget-object v10, Ls1/s;->a:Ls1/s;

    instance-of v3, v2, Le/a/e3/j/c$b;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/e3/j/c$b;

    iget v4, v3, Le/a/e3/j/c$b;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/e3/j/c$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/e3/j/c$b;

    invoke-direct {v3, v0, v2}, Le/a/e3/j/c$b;-><init>(Le/a/e3/j/c;Ls1/w/d;)V

    :goto_0
    move-object v11, v3

    iget-object v2, v11, Le/a/e3/j/c$b;->d:Ljava/lang/Object;

    sget-object v12, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v11, Le/a/e3/j/c$b;->e:I

    const/4 v13, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v13, :cond_1

    iget-object v1, v11, Le/a/e3/j/c$b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v11, Le/a/e3/j/c$b;->g:Ljava/lang/Object;

    check-cast v3, Le/a/e3/j/c;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz v9, :cond_7

    if-eqz p2, :cond_7

    if-eqz p6, :cond_7

    if-eqz p7, :cond_7

    if-nez p5, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    invoke-interface/range {p1 .. p1}, Le/a/k/h;->F()Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v10

    .line 5
    :cond_5
    new-instance v15, Le/a/k/l/b;

    .line 6
    iget-object v2, v0, Le/a/e3/j/c;->e:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v17

    .line 7
    new-instance v20, Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 8
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 9
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    move/from16 v8, p8

    .line 10
    invoke-direct/range {v2 .. v8}, Lcom/truecaller/videocallerid/data/VideoDetails;-><init>(Ljava/lang/String;JJZ)V

    const/16 v21, 0x0

    const/16 v22, 0x20

    move-object v14, v15

    move-object v2, v15

    move-object/from16 v15, p2

    move-object/from16 v16, p4

    move-object/from16 v19, p5

    .line 11
    invoke-direct/range {v14 .. v22}, Le/a/k/l/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/truecaller/videocallerid/data/VideoDetails;Lcom/truecaller/videocallerid/data/VideoType;I)V

    iput-object v0, v11, Le/a/e3/j/c$b;->g:Ljava/lang/Object;

    iput-object v9, v11, Le/a/e3/j/c$b;->h:Ljava/lang/Object;

    iput v13, v11, Le/a/e3/j/c$b;->e:I

    .line 12
    invoke-interface {v1, v2, v11}, Le/a/k/h;->S(Le/a/k/l/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_6

    return-object v12

    :cond_6
    move-object v3, v0

    .line 13
    :goto_1
    iget-object v1, v3, Le/a/e3/j/c;->k:Le/a/k/h;

    new-instance v2, Le/a/k/c/p$b;

    sget-object v3, Ln3/m0/q;->b:Ln3/m0/q;

    invoke-direct {v2, v9, v3}, Le/a/k/c/p$b;-><init>(Ljava/lang/String;Ln3/m0/q;)V

    invoke-interface {v1, v2}, Le/a/k/h;->t(Le/a/k/c/p;)V

    return-object v10

    .line 14
    :cond_7
    :goto_2
    iput v4, v11, Le/a/e3/j/c$b;->e:I

    move-object/from16 v2, p4

    invoke-interface {v1, v2, v11}, Le/a/k/h;->r(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_8

    return-object v12

    :cond_8
    :goto_3
    return-object v10
.end method
