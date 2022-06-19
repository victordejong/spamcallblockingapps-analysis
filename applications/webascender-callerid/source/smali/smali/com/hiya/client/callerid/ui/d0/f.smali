.class public Lcom/hiya/client/callerid/ui/d0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/e/e/l;


# instance fields
.field private final a:Lg/g/a/a/g/d;

.field private final b:Lg/g/a/a/l/a;

.field private final c:Lcom/hiya/client/callerid/ui/d0/e;

.field private final d:Li/c/b0/c/a;


# direct methods
.method public constructor <init>(Lg/g/a/a/g/d;Lg/g/a/a/l/a;Lcom/hiya/client/callerid/ui/d0/e;Li/c/b0/c/a;)V
    .locals 1

    const-string v0, "genericApi"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "performanceAnalyticsManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/d0/f;->a:Lg/g/a/a/g/d;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/d0/f;->b:Lg/g/a/a/l/a;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/d0/f;->c:Lcom/hiya/client/callerid/ui/d0/e;

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/d0/f;->d:Li/c/b0/c/a;

    return-void
.end method


# virtual methods
.method public a(Lg/g/a/e/e/c;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "tracker"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lg/g/a/e/e/c;->i()Lg/g/a/e/e/o;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lg/g/a/e/e/c;->l()Lg/g/a/e/e/k;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xffb

    const/16 v16, 0x0

    move-object/from16 v2, p1

    .line 2
    invoke-static/range {v2 .. v16}, Lg/g/a/e/e/c;->b(Lg/g/a/e/e/c;Ljava/lang/String;Lg/g/a/e/e/k;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/k;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Ljava/lang/String;Ljava/lang/String;Lg/g/a/e/e/j;ILjava/lang/Object;)Lg/g/a/e/e/c;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3
    :goto_0
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/d0/f;->b:Lg/g/a/a/l/a;

    invoke-virtual {v2, v1}, Lg/g/a/a/l/a;->c(Lg/g/a/e/e/c;)[Lg/g/a/a/i/g;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/d0/f;->a:Lg/g/a/a/g/d;

    const-string v3, "https://dumbo-octopus.edge.hiyaapi.com/v1/events"

    invoke-interface {v2, v3, v1}, Lg/g/a/a/g/d;->a(Ljava/lang/String;Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v2

    .line 5
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v3

    invoke-virtual {v2, v3}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v2

    .line 6
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v3

    invoke-virtual {v2, v3}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v2

    .line 7
    sget-object v3, Lcom/hiya/client/callerid/ui/d0/f$a;->f:Lcom/hiya/client/callerid/ui/d0/f$a;

    .line 8
    sget-object v4, Lcom/hiya/client/callerid/ui/d0/f$b;->f:Lcom/hiya/client/callerid/ui/d0/f$b;

    .line 9
    invoke-virtual {v2, v3, v4}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v2

    .line 10
    iget-object v3, v0, Lcom/hiya/client/callerid/ui/d0/f;->d:Li/c/b0/c/a;

    invoke-virtual {v3, v2}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 11
    iget-object v2, v0, Lcom/hiya/client/callerid/ui/d0/f;->c:Lcom/hiya/client/callerid/ui/d0/e;

    const-string v3, "EVENT_PROFILE4"

    invoke-interface {v2, v3}, Lg/g/a/e/e/m;->a(Ljava/lang/String;)Lg/g/a/e/e/n;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Lg/g/a/e/e/n;->start()V

    .line 13
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_7

    aget-object v6, v1, v5

    .line 14
    invoke-virtual {v6}, Lg/g/a/a/i/g;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-nez v7, :cond_6

    invoke-virtual {v6}, Lg/g/a/a/i/g;->getDuration()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lg/g/a/a/i/g;->getType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    goto :goto_4

    :cond_3
    const-string v8, ""

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lg/g/a/a/i/g;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lg/g/a/a/i/g;->getDuration()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v2, v7, v8, v9}, Lg/g/a/e/e/n;->b(Ljava/lang/String;J)V

    goto :goto_5

    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v9

    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v9

    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 16
    :cond_7
    invoke-interface {v2}, Lg/g/a/e/e/n;->a()V

    return-void
.end method
