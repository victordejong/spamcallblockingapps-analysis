.class public final Le/a/f/y/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/y/c;
.implements Lq3/a/i0;


# instance fields
.field public a:Z

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/f/y/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Le/a/f/y/x;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/f/y/x;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Ljava/util/List<",
            "Le/a/f/y/x;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Lcom/truecaller/incallui/service/CallState;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Ljava/util/List<",
            "Le/a/f/y/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Le/a/f/y/e$a;

.field public final i:Le/a/f/w/c;

.field public final j:Le/a/f/m;

.field public final k:Le/a/p5/c;

.field public final l:Le/a/f/z/e0;

.field public final m:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final n:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/f/w/c;Le/a/f/m;Le/a/p5/c;Le/a/f/z/e0;Lcom/truecaller/callrecording/CallRecordingManager;Ls1/w/f;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callerInfoRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUIConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUiCallInfoHelperImpl"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/y/e;->i:Le/a/f/w/c;

    iput-object p2, p0, Le/a/f/y/e;->j:Le/a/f/m;

    iput-object p3, p0, Le/a/f/y/e;->k:Le/a/p5/c;

    iput-object p4, p0, Le/a/f/y/e;->l:Le/a/f/z/e0;

    iput-object p5, p0, Le/a/f/y/e;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    iput-object p6, p0, Le/a/f/y/e;->n:Ls1/w/f;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/f/y/e;->b:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/f/y/e;->d:Ljava/util/List;

    const/4 p1, -0x1

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object p2

    iput-object p2, p0, Le/a/f/y/e;->e:Lq3/a/w2/h;

    .line 5
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object p2

    iput-object p2, p0, Le/a/f/y/e;->f:Lq3/a/w2/h;

    .line 6
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object p1

    iput-object p1, p0, Le/a/f/y/e;->g:Lq3/a/w2/h;

    .line 7
    new-instance p1, Le/a/f/y/e$a;

    invoke-direct {p1, p0}, Le/a/f/y/e$a;-><init>(Le/a/f/y/e;)V

    iput-object p1, p0, Le/a/f/y/e;->h:Le/a/f/y/e$a;

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->j:Le/a/f/m;

    invoke-interface {v0}, Le/a/f/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/f/y/e;->F()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_1

    .line 4
    iput-boolean p1, v0, Le/a/f/y/x;->g:Z

    .line 5
    iget-object p1, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 6
    invoke-virtual {p1}, Landroid/telecom/Call;->disconnect()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/a/f/y/e;->n()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Le/a/f/y/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    and-int/2addr p1, v0

    iput-boolean p1, p0, Le/a/f/y/e;->a:Z

    return-void
.end method

.method public B(Landroid/telecom/Call;)V
    .locals 12

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/f/y/e;->h:Le/a/f/y/e$a;

    invoke-virtual {v0, v1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 4
    :cond_0
    new-instance v0, Le/a/f/y/x;

    .line 5
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Le/a/f/y/e;->O(I)Lcom/truecaller/incallui/service/CallType;

    move-result-object v4

    .line 6
    iget-object v1, p0, Le/a/f/y/e;->k:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x68

    move-object v2, v0

    move-object v3, p1

    .line 7
    invoke-direct/range {v2 .. v11}, Le/a/f/y/x;-><init>(Landroid/telecom/Call;Lcom/truecaller/incallui/service/CallType;JLcom/truecaller/incallui/utils/BlockAction;ZZZI)V

    iput-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    return-void
.end method

.method public C()V
    .locals 6

    .line 1
    new-instance v3, Le/a/f/y/e$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/f/y/e$b;-><init>(Le/a/f/y/e;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public D()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/a/f/y/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Le/a/f/y/e;->U(Le/a/f/y/x;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Le/a/f/y/e;->Q(I)Le/a/f/y/x;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    new-instance v4, Le/a/f/y/d;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v0, v1}, Le/a/f/y/d;-><init>(Le/a/f/y/e;Le/a/f/y/x;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Le/a/f/y/e;->U(Le/a/f/y/x;)V

    :cond_3
    return-void
.end method

.method public E()Lq3/a/w2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/h<",
            "Ljava/util/List<",
            "Le/a/f/y/f;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->g:Lq3/a/w2/h;

    return-object v0
.end method

.method public F()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/f/y/e;->V()V

    .line 2
    iget-object v0, p0, Le/a/f/y/e;->f:Lq3/a/w2/h;

    .line 3
    sget-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_DISCONNECTED:Lcom/truecaller/incallui/service/CallState;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Le/a/f/y/e;->e:Lq3/a/w2/h;

    .line 5
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Le/a/f/y/e;->V()V

    .line 7
    iget-object v0, p0, Le/a/f/y/e;->i:Le/a/f/w/c;

    invoke-interface {v0}, Le/a/f/w/c;->release()V

    .line 8
    iget-object v0, p0, Le/a/f/y/e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Le/a/f/y/e;->a:Z

    return-void
.end method

.method public G()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 3
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 6
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Le/a/f/y/e;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public H(C)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/telecom/Call;->playDtmfTone(C)V

    :cond_0
    return-void
.end method

.method public I()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/f/y/e;->M()Le/a/f/y/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/m0/a1$k;->v0(Le/a/f/y/x;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/telecom/Call;->postDialContinue(Z)V

    :cond_0
    return-void
.end method

.method public K(Landroid/telecom/Call;Lcom/truecaller/incallui/utils/BlockAction;Z)V
    .locals 11

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Le/a/f/y/e;->O(I)Lcom/truecaller/incallui/service/CallType;

    move-result-object v3

    .line 2
    new-instance v0, Le/a/f/y/x;

    .line 3
    iget-object v1, p0, Le/a/f/y/e;->k:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v4

    .line 4
    sget-object v1, Lcom/truecaller/incallui/service/CallType;->OUTGOING:Lcom/truecaller/incallui/service/CallType;

    if-ne v3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int v7, p3, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x60

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    .line 5
    invoke-direct/range {v1 .. v10}, Le/a/f/y/x;-><init>(Landroid/telecom/Call;Lcom/truecaller/incallui/service/CallType;JLcom/truecaller/incallui/utils/BlockAction;ZZZI)V

    .line 6
    iget-object p1, p0, Le/a/f/y/e;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Le/a/f/y/e;->e:Lq3/a/w2/h;

    .line 8
    iget-object p2, p0, Le/a/f/y/e;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Le/a/f/y/e;->T(Le/a/f/y/x;)V

    return-void
.end method

.method public L()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/telecom/Call;->stopDtmfTone()V

    :cond_0
    return-void
.end method

.method public final M()Le/a/f/y/x;
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Le/a/f/y/e;->Q(I)Le/a/f/y/x;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    .line 2
    iget-object v3, v1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 3
    invoke-virtual {v3}, Landroid/telecom/Call;->getState()I

    move-result v3

    if-ne v3, v2, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/f/y/e;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/f/y/x;

    .line 5
    iget-object v5, v4, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 6
    invoke-virtual {v5}, Landroid/telecom/Call;->getState()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 7
    iget-object v4, v4, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 8
    invoke-virtual {v4}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Le/a/f/y/x;

    return-object v3
.end method

.method public final N(Landroid/telecom/Call;)Ljava/lang/Long;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Le/a/f/y/e;->k:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->a()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_2

    sub-long/2addr v2, v0

    .line 3
    iget-object p1, p0, Le/a/f/y/e;->k:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public final O(I)Lcom/truecaller/incallui/service/CallType;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    .line 1
    sget-object p1, Lcom/truecaller/incallui/service/CallType;->UNKNOWN:Lcom/truecaller/incallui/service/CallType;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/truecaller/incallui/service/CallType;->INCOMING:Lcom/truecaller/incallui/service/CallType;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/truecaller/incallui/service/CallType;->OUTGOING:Lcom/truecaller/incallui/service/CallType;

    :goto_0
    return-object p1
.end method

.method public final P()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "selectPhoneAccountAccounts"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final Q(I)Le/a/f/y/x;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/f/y/x;

    .line 2
    iget-object v2, v2, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 3
    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Le/a/f/y/x;

    return-object v1
.end method

.method public final R(I)Le/a/f/y/x;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/f/y/x;

    .line 2
    iget-object v2, v2, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 3
    invoke-virtual {v2}, Landroid/telecom/Call;->getState()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Le/a/f/y/x;

    return-object v1
.end method

.method public final S(Landroid/telecom/Call;)Le/a/f/y/x;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/f/y/x;

    .line 2
    iget-object v2, v2, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 3
    invoke-static {v2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Le/a/f/y/x;

    return-object v1
.end method

.method public final T(Le/a/f/y/x;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/f/y/e;->h:Le/a/f/y/e$a;

    invoke-virtual {v0, v1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, p1}, Le/a/f/y/e;->R(I)Le/a/f/y/x;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Le/a/f/y/e;->R(I)Le/a/f/y/x;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x9

    .line 6
    invoke-virtual {p0, p1}, Le/a/f/y/e;->R(I)Le/a/f/y/x;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Le/a/f/y/e;->R(I)Le/a/f/y/x;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object p1, v0

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {p0, p1}, Le/a/f/y/e;->Q(I)Le/a/f/y/x;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_6

    .line 9
    iget-object v1, p1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 10
    invoke-virtual {v1}, Landroid/telecom/Call;->getState()I

    move-result v1

    if-ne v1, v0, :cond_6

    goto :goto_0

    .line 11
    :cond_6
    invoke-virtual {p0, v0}, Le/a/f/y/e;->R(I)Le/a/f/y/x;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_0

    .line 12
    :cond_7
    invoke-virtual {p0}, Le/a/f/y/e;->M()Le/a/f/y/x;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x7

    .line 13
    invoke-virtual {p0, p1}, Le/a/f/y/e;->R(I)Le/a/f/y/x;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput-object p1, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz p1, :cond_c

    .line 15
    invoke-static {p1}, Le/a/m0/a1$k;->c(Le/a/f/y/x;)Lcom/truecaller/incallui/service/CallState;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 16
    iget-object v1, p0, Le/a/f/y/e;->f:Lq3/a/w2/h;

    .line 17
    invoke-interface {v1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 18
    sget-object v1, Lcom/truecaller/incallui/service/CallState;->STATE_HOLDING:Lcom/truecaller/incallui/service/CallState;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Le/a/f/y/e;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Lcom/truecaller/callrecording/CallRecordingManager;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19
    iget-object v0, p0, Le/a/f/y/e;->m:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Lcom/truecaller/callrecording/CallRecordingManager;->a()V

    .line 20
    :cond_a
    iget-object v0, p1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 21
    iget-object v1, p0, Le/a/f/y/e;->h:Le/a/f/y/e$a;

    invoke-virtual {v0, v1}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 22
    iget-object v0, p1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 23
    invoke-virtual {v0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/f/y/e;->W(Ljava/util/List;)V

    .line 24
    iget-object v0, p1, Le/a/f/y/x;->b:Lcom/truecaller/incallui/service/CallType;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    sget-object v0, Lcom/truecaller/incallui/utils/InCallUISearchDirection;->OUTGOING:Lcom/truecaller/incallui/utils/InCallUISearchDirection;

    goto :goto_1

    .line 27
    :cond_b
    sget-object v0, Lcom/truecaller/incallui/utils/InCallUISearchDirection;->INCOMING:Lcom/truecaller/incallui/utils/InCallUISearchDirection;

    .line 28
    :goto_1
    iget-object v1, p0, Le/a/f/y/e;->i:Le/a/f/w/c;

    invoke-static {p1}, Le/a/m0/a1$k;->c0(Le/a/f/y/x;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Le/a/f/w/c;->c(Ljava/lang/String;Lcom/truecaller/incallui/utils/InCallUISearchDirection;)V

    :cond_c
    return-void
.end method

.method public final U(Le/a/f/y/x;)V
    .locals 1

    .line 1
    iget-object v0, p1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 2
    invoke-virtual {v0}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 4
    invoke-virtual {p1, v0}, Landroid/telecom/Call;->conference(Landroid/telecom/Call;)V

    :cond_0
    return-void
.end method

.method public final V()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->b:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f/y/b;

    .line 3
    invoke-interface {v1}, Le/a/f/y/b;->od()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final W(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Landroid/telecom/Call;

    .line 5
    invoke-virtual {p0, v1}, Le/a/f/y/e;->S(Landroid/telecom/Call;)Le/a/f/y/x;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v1}, Le/a/m0/a1$k;->c0(Le/a/f/y/x;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 7
    invoke-static {v1}, Le/a/m0/a1$k;->c0(Le/a/f/y/x;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Le/a/f/y/e;->i:Le/a/f/w/c;

    invoke-interface {v2, v4}, Le/a/f/w/c;->b(Ljava/lang/String;)Le/a/f/a/g;

    move-result-object v2

    :cond_2
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Le/a/f/y/e;->n()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/16 v4, 0x1000

    .line 9
    iget-object v1, v1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 10
    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v1

    move v4, v1

    .line 11
    :cond_4
    :goto_2
    new-instance v1, Le/a/f/y/f;

    invoke-direct {v1, v3, v2, v4}, Le/a/f/y/f;-><init>(Ljava/lang/String;Le/a/f/a/g;Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_5
    iget-object p1, p0, Le/a/f/y/e;->g:Lq3/a/w2/h;

    .line 13
    invoke-interface {p1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-void

    .line 14
    :cond_6
    :goto_3
    iget-object p1, p0, Le/a/f/y/e;->g:Lq3/a/w2/h;

    .line 15
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    invoke-interface {p1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->j:Le/a/f/m;

    invoke-interface {v0}, Le/a/f/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/f/y/e;->F()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v1, v0, Le/a/f/y/x;->f:Z

    .line 5
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v2, v3}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/a/f/y/e;->n()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Le/a/f/y/e;->a:Z

    return-void
.end method

.method public b(Ljava/lang/String;Le/a/f/y/b;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/f/y/e;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/m0/a1$k;->v0(Le/a/f/y/x;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/f/y/e;->M()Le/a/f/y/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/m0/a1$k;->c0(Le/a/f/y/x;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e()Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Le/a/f/y/e;->R(I)Le/a/f/y/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Le/a/f/y/e;->N(Landroid/telecom/Call;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/f/y/e;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/f/y/e;->M()Le/a/f/y/x;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/m0/a1$k;->c0(Le/a/f/y/x;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->n:Ls1/w/f;

    return-object v0
.end method

.method public h()Lq3/a/w2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/h<",
            "Lcom/truecaller/incallui/service/CallState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->f:Lq3/a/w2/h;

    return-object v0
.end method

.method public i(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/Call;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Call;->disconnect()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/telecom/Call;->hold()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/f/y/e;->M()Le/a/f/y/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 3
    invoke-virtual {v1}, Landroid/telecom/Call;->unhold()V

    .line 4
    invoke-virtual {p0, v0}, Le/a/f/y/e;->T(Le/a/f/y/x;)V

    :cond_0
    return-void
.end method

.method public l()Lq3/a/w2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/h<",
            "Ljava/util/List<",
            "Le/a/f/y/x;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->e:Lq3/a/w2/h;

    return-object v0
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/m0/a1$k;->v0(Le/a/f/y/x;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-virtual {p0, v1}, Le/a/f/y/e;->W(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public n()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/f/y/x;

    invoke-static {v2}, Le/a/m0/a1$k;->v0(Le/a/f/y/x;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Le/a/f/y/x;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 2
    iget-object v1, p0, Le/a/f/y/e;->d:Ljava/util/List;

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Le/a/f/y/x;

    .line 5
    invoke-static {v5}, Le/a/m0/a1$k;->v0(Le/a/f/y/x;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Le/a/f/y/x;

    .line 9
    iget-object v4, v4, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 10
    invoke-virtual {v4}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v4

    if-nez v4, :cond_4

    move v0, v2

    .line 11
    :cond_4
    sget-object v4, Ls1/s;->a:Ls1/s;

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_5
    iget-object v1, p0, Le/a/f/y/e;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_6

    move v0, v2

    :cond_6
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/f/y/e;->n()Z

    move-result v0

    return v0
.end method

.method public p(Ljava/lang/String;Le/a/f/y/b;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Le/a/f/y/e;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p2}, Le/a/f/y/b;->od()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/telecom/Call;->answer(I)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/telecom/Call;->postDialContinue(Z)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/f/y/e;->V()V

    .line 2
    iget-object v0, p0, Le/a/f/y/e;->i:Le/a/f/w/c;

    invoke-interface {v0}, Le/a/f/w/c;->release()V

    .line 3
    iget-object v0, p0, Le/a/f/y/e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Le/a/f/y/e;->a:Z

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 5

    const-string v0, "accountId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/f/y/e;->P()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    if-eqz v3, :cond_2

    .line 2
    iget-object p1, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p1, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1, v3, v2}, Landroid/telecom/Call;->phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 5
    invoke-static {p0, v2, p1, v1}, Le/a/m0/a1$k;->n0(Le/a/f/y/c;ZILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public t()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/f/y/e;->P()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 5
    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public u(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->j:Le/a/f/m;

    invoke-interface {v0}, Le/a/f/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/f/y/e;->F()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_1

    .line 4
    iput-boolean p1, v0, Le/a/f/y/x;->g:Z

    .line 5
    iget-object p1, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/a/f/y/e;->n()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Le/a/f/y/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    and-int/2addr p1, v0

    iput-boolean p1, p0, Le/a/f/y/e;->a:Z

    return-void
.end method

.method public v(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/Call;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/telecom/Call;->splitFromConference()V

    .line 5
    invoke-virtual {p0, p1}, Le/a/f/y/e;->S(Landroid/telecom/Call;)Le/a/f/y/x;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Le/a/f/y/e;->T(Le/a/f/y/x;)V

    :cond_0
    return-void
.end method

.method public w()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/f/y/e;->n()Z

    move-result v0

    return v0
.end method

.method public x()Lcom/truecaller/incallui/service/CallType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->b:Lcom/truecaller/incallui/service/CallType;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/truecaller/incallui/service/CallType;->UNKNOWN:Lcom/truecaller/incallui/service/CallType;

    :goto_0
    return-object v0
.end method

.method public y(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->j:Le/a/f/m;

    invoke-interface {v0}, Le/a/f/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/f/y/e;->F()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Le/a/f/y/e;->n()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Le/a/f/y/e;->a:Z

    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/e;->c:Le/a/f/y/x;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/telecom/Call;->unhold()V

    :cond_0
    return-void
.end method
