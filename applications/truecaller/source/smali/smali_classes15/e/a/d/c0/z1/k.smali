.class public final Le/a/d/c0/z1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/c0/z1/i;


# instance fields
.field public final a:Ls1/w/f;

.field public b:Ljava/lang/String;

.field public c:Lcom/truecaller/voip/groupcall/call/CallDirection;

.field public d:Ljava/lang/String;

.field public e:Le/a/d/x/r/h;

.field public final f:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/util/Set<",
            "Le/a/d/c0/z1/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public h:Le/a/d/c0/z1/a;

.field public i:J

.field public final j:Lq3/a/b3/c;

.field public k:I

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Le/a/d/c0/z1/o;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/d/c0/z1/p;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/lang/String;

.field public o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Le/a/d/c0/y0;

.field public final q:Le/a/d/x/r/n;

.field public final r:Le/a/d/x/r/o;

.field public final s:Le/a/d/c0/e;

.field public final t:Le/a/d/p/a;

.field public final u:Le/a/d/t/a;

.field public final v:Le/a/p5/c;

.field public final w:Le/a/d/c0/y1/b;

.field public final x:Le/a/d/c0/f0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/c0/y0;Le/a/d/x/r/n;Le/a/d/x/r/o;Le/a/d/c0/e;Le/a/d/p/a;Le/a/d/t/a;Le/a/p5/c;Le/a/d/c0/y1/b;Le/a/d/c0/f0;)V
    .locals 1

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmLoginManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callUserResolver"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restApi"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipDao"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipAvailabilityUtil"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/d/c0/z1/k;->p:Le/a/d/c0/y0;

    iput-object p3, p0, Le/a/d/c0/z1/k;->q:Le/a/d/x/r/n;

    iput-object p4, p0, Le/a/d/c0/z1/k;->r:Le/a/d/x/r/o;

    iput-object p5, p0, Le/a/d/c0/z1/k;->s:Le/a/d/c0/e;

    iput-object p6, p0, Le/a/d/c0/z1/k;->t:Le/a/d/p/a;

    iput-object p7, p0, Le/a/d/c0/z1/k;->u:Le/a/d/t/a;

    iput-object p8, p0, Le/a/d/c0/z1/k;->v:Le/a/p5/c;

    iput-object p9, p0, Le/a/d/c0/z1/k;->w:Le/a/d/c0/y1/b;

    iput-object p10, p0, Le/a/d/c0/z1/k;->x:Le/a/d/c0/f0;

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 2
    invoke-static {p2, p3, p2}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p2

    invoke-interface {p1, p2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c0/z1/k;->a:Ls1/w/f;

    .line 3
    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p2

    iput-object p2, p0, Le/a/d/c0/z1/k;->f:Lq3/a/x2/a1;

    .line 4
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p2

    iput-object p2, p0, Le/a/d/c0/z1/k;->g:Lq3/a/x2/a1;

    const/4 p2, 0x0

    .line 5
    invoke-static {p2, p3}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p2

    iput-object p2, p0, Le/a/d/c0/z1/k;->j:Lq3/a/b3/c;

    .line 6
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    .line 7
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Le/a/d/c0/z1/k;->m:Ljava/util/Map;

    .line 8
    iput-object p1, p0, Le/a/d/c0/z1/k;->o:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final A(Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V
    .locals 11

    .line 1
    new-instance v10, Le/a/d/c0/e0;

    .line 2
    invoke-virtual {p0}, Le/a/d/c0/z1/k;->b()Lcom/truecaller/voip/groupcall/call/CallDirection;

    move-result-object v0

    const-string v1, "$this$toAnalyticsDirection"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/truecaller/voip/groupcall/call/CallDirection;->INCOMING:Lcom/truecaller/voip/groupcall/call/CallDirection;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->INCOMING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    :goto_0
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x7e

    move-object v0, v10

    .line 5
    invoke-direct/range {v0 .. v9}, Le/a/d/c0/e0;-><init>(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)V

    .line 6
    iget-object v0, p0, Le/a/d/c0/z1/k;->x:Le/a/d/c0/f0;

    .line 7
    sget-object v1, Lcom/truecaller/voip/util/VoipAnalyticsState;->INIT_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsState;

    .line 8
    invoke-interface {v0, v10, v1, p1}, Le/a/d/c0/f0;->d(Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    return-void
.end method

.method public final declared-synchronized B(Ljava/util/Set;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Le/a/d/c0/z1/o;",
            ">;)",
            "Ljava/util/Map<",
            "Le/a/d/c0/z1/o;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering peer id handles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
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

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Le/a/d/c0/z1/o;

    .line 5
    iget-object v2, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/d/c0/z1/o;

    .line 8
    invoke-virtual {v1, v5}, Le/a/d/c0/z1/o;->a(Le/a/d/c0/z1/o;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    :cond_2
    if-nez v4, :cond_3

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Peer id handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not registered, adding it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    iget v2, p0, Le/a/d/c0/z1/k;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/a/d/c0/z1/k;->k:I

    .line 11
    iget-object v3, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 13
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 14
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Peer id handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    new-instance v3, Ls1/k;

    invoke-direct {v3, v1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 17
    :cond_4
    invoke-static {v0}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final C(Le/a/d/c0/z1/o;ILs1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/c0/z1/o;",
            "I",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/d/c0/z1/k$r;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/d/c0/z1/k$r;

    iget v1, v0, Le/a/d/c0/z1/k$r;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/z1/k$r;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/z1/k$r;

    invoke-direct {v0, p0, p3}, Le/a/d/c0/z1/k$r;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/d/c0/z1/k$r;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/z1/k$r;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p2, v0, Le/a/d/c0/z1/k$r;->h:I

    iget-object p1, v0, Le/a/d/c0/z1/k$r;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/z1/k;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    instance-of p3, p1, Le/a/d/c0/z1/o$a;

    if-eqz p3, :cond_4

    check-cast p1, Le/a/d/c0/z1/o$a;

    .line 5
    iget-object v5, p1, Le/a/d/c0/z1/o$a;->a:Ljava/lang/String;

    goto :goto_5

    .line 6
    :cond_4
    instance-of p3, p1, Le/a/d/c0/z1/o$b;

    if-eqz p3, :cond_5

    check-cast p1, Le/a/d/c0/z1/o$b;

    .line 7
    iget-object v5, p1, Le/a/d/c0/z1/o$b;->b:Ljava/lang/String;

    goto :goto_5

    .line 8
    :cond_5
    instance-of p3, p1, Le/a/d/c0/z1/o$c;

    if-eqz p3, :cond_6

    goto :goto_1

    .line 9
    :cond_6
    instance-of p1, p1, Le/a/d/c0/z1/o$d;

    if-eqz p1, :cond_c

    .line 10
    :goto_1
    iput-object p0, v0, Le/a/d/c0/z1/k$r;->g:Ljava/lang/Object;

    iput p2, v0, Le/a/d/c0/z1/k$r;->h:I

    iput v4, v0, Le/a/d/c0/z1/k$r;->e:I

    invoke-virtual {p0, p2, v0}, Le/a/d/c0/z1/k;->D(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    return-object v1

    :cond_7
    move-object p1, p0

    :goto_2
    check-cast p3, Le/a/d/c0/z1/o$b;

    if-eqz p3, :cond_8

    .line 11
    iget-object p3, p3, Le/a/d/c0/z1/o$b;->b:Ljava/lang/String;

    goto :goto_3

    :cond_8
    move-object p3, v5

    :goto_3
    if-nez p3, :cond_a

    .line 12
    new-instance p3, Le/a/d/c0/z1/k$s;

    invoke-direct {p3, p1, p2, v5}, Le/a/d/c0/z1/k$s;-><init>(Le/a/d/c0/z1/k;ILs1/w/d;)V

    iput-object v5, v0, Le/a/d/c0/z1/k$r;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c0/z1/k$r;->e:I

    invoke-virtual {p1, p2, p3, v0}, Le/a/d/c0/z1/k;->E(ILs1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    return-object v1

    :cond_9
    :goto_4
    check-cast p3, Le/a/d/c0/z1/o$b;

    if-eqz p3, :cond_b

    .line 13
    iget-object v5, p3, Le/a/d/c0/z1/o$b;->b:Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object v5, p3

    :cond_b
    :goto_5
    return-object v5

    .line 14
    :cond_c
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public final D(ILs1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/w/d<",
            "-",
            "Le/a/d/c0/z1/o$b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/c0/z1/k$u;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/c0/z1/k$u;

    iget v1, v0, Le/a/d/c0/z1/k$u;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/z1/k$u;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/z1/k$u;

    invoke-direct {v0, p0, p2}, Le/a/d/c0/z1/k$u;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/c0/z1/k$u;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/z1/k$u;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/c0/z1/k$u;->h:Ljava/lang/Object;

    check-cast p1, Ls1/z/b/a;

    iget-object v0, v0, Le/a/d/c0/z1/k$u;->g:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p1, v0, Le/a/d/c0/z1/k$u;->i:I

    iget-object v2, v0, Le/a/d/c0/z1/k$u;->h:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    iget-object v4, v0, Le/a/d/c0/z1/k$u;->g:Ljava/lang/Object;

    check-cast v4, Le/a/d/c0/z1/k;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, p0, Le/a/d/c0/z1/k;->j:Lq3/a/b3/c;

    .line 4
    iput-object p0, v0, Le/a/d/c0/z1/k$u;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/c0/z1/k$u;->h:Ljava/lang/Object;

    iput p1, v0, Le/a/d/c0/z1/k$u;->i:I

    iput v4, v0, Le/a/d/c0/z1/k$u;->e:I

    invoke-interface {v2, v5, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    .line 5
    :goto_1
    :try_start_1
    new-instance p2, Le/a/d/c0/z1/k$t;

    invoke-direct {p2, v4, p1, v0}, Le/a/d/c0/z1/k$t;-><init>(Le/a/d/c0/z1/k;ILs1/w/d;)V

    .line 6
    invoke-virtual {p2}, Le/a/d/c0/z1/k$t;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/d/c0/z1/o;

    .line 7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Has cached peer id handle for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " handle "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    instance-of v7, v6, Le/a/d/c0/z1/o$b;

    if-eqz v7, :cond_5

    move-object v7, v6

    check-cast v7, Le/a/d/c0/z1/o$b;

    .line 9
    iget-boolean v7, v7, Le/a/d/c0/z1/o$b;->d:Z

    if-nez v7, :cond_5

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is already resolved, returning cache "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    invoke-interface {v2, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v6

    .line 12
    :cond_5
    :try_start_2
    iput-object v2, v0, Le/a/d/c0/z1/k$u;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/c0/z1/k$u;->h:Ljava/lang/Object;

    iput p1, v0, Le/a/d/c0/z1/k$u;->i:I

    iput v3, v0, Le/a/d/c0/z1/k$u;->e:I

    invoke-virtual {v4, v0}, Le/a/d/c0/z1/k;->v(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, p2

    move-object v0, v2

    .line 13
    :goto_2
    :try_start_3
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/c0/z1/o;

    .line 14
    instance-of p2, p1, Le/a/d/c0/z1/o$b;

    if-eqz p2, :cond_8

    move-object p2, p1

    check-cast p2, Le/a/d/c0/z1/o$b;

    .line 15
    iget-boolean p2, p2, Le/a/d/c0/z1/o$b;->d:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_7

    goto :goto_3

    .line 16
    :cond_7
    invoke-interface {v0, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :cond_8
    :goto_3
    invoke-interface {v0, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v5

    :goto_4
    move-object v2, v0

    goto :goto_5

    :catchall_1
    move-exception p1

    :goto_5
    invoke-interface {v2, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public final E(ILs1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/d/c0/z1/k$x;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/d/c0/z1/k$x;

    iget v1, v0, Le/a/d/c0/z1/k$x;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/z1/k$x;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/z1/k$x;

    invoke-direct {v0, p0, p3}, Le/a/d/c0/z1/k$x;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/d/c0/z1/k$x;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/z1/k$x;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Le/a/d/c0/z1/k$x;->j:I

    iget p2, v0, Le/a/d/c0/z1/k$x;->i:I

    iget-object v2, v0, Le/a/d/c0/z1/k$x;->h:Ljava/lang/Object;

    check-cast v2, Ls1/z/b/l;

    iget-object v7, v0, Le/a/d/c0/z1/k$x;->g:Ljava/lang/Object;

    check-cast v7, Le/a/d/c0/z1/k;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget p1, v0, Le/a/d/c0/z1/k$x;->j:I

    iget p2, v0, Le/a/d/c0/z1/k$x;->i:I

    iget-object v2, v0, Le/a/d/c0/z1/k$x;->h:Ljava/lang/Object;

    check-cast v2, Ls1/z/b/l;

    iget-object v7, v0, Le/a/d/c0/z1/k$x;->g:Ljava/lang/Object;

    check-cast v7, Le/a/d/c0/z1/k;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v2, p0

    move p3, v5

    :goto_1
    const/4 v7, 0x5

    if-ge p3, v7, :cond_c

    add-int/lit8 v7, p3, 0x1

    const-wide/16 v8, 0x3e8

    int-to-long v10, v7

    mul-long/2addr v10, v8

    .line 4
    iput-object v2, v0, Le/a/d/c0/z1/k$x;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/c0/z1/k$x;->h:Ljava/lang/Object;

    iput p1, v0, Le/a/d/c0/z1/k$x;->i:I

    iput p3, v0, Le/a/d/c0/z1/k$x;->j:I

    iput v6, v0, Le/a/d/c0/z1/k$x;->e:I

    invoke-static {v10, v11, v0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_4

    return-object v1

    :cond_4
    move-object v7, v2

    move-object v2, p2

    move p2, p1

    move p1, p3

    .line 5
    :goto_2
    monitor-enter v7

    .line 6
    :try_start_0
    iget-object p3, v7, Le/a/d/c0/z1/k;->f:Lq3/a/x2/a1;

    .line 7
    invoke-interface {p3}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Le/a/d/c0/z1/e;

    .line 8
    iget v9, v9, Le/a/d/c0/z1/e;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v9, p2, :cond_6

    move v9, v6

    goto :goto_3

    :cond_6
    move v9, v5

    :goto_3
    if-eqz v9, :cond_5

    goto :goto_4

    :cond_7
    move-object v8, v3

    :goto_4
    if-eqz v8, :cond_8

    move p3, v6

    goto :goto_5

    :cond_8
    move p3, v5

    .line 9
    :goto_5
    monitor-exit v7

    if-nez p3, :cond_9

    return-object v3

    .line 10
    :cond_9
    iput-object v7, v0, Le/a/d/c0/z1/k$x;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/c0/z1/k$x;->h:Ljava/lang/Object;

    iput p2, v0, Le/a/d/c0/z1/k$x;->i:I

    iput p1, v0, Le/a/d/c0/z1/k$x;->j:I

    iput v4, v0, Le/a/d/c0/z1/k$x;->e:I

    invoke-interface {v2, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_a

    return-object v1

    :cond_a
    :goto_6
    if-eqz p3, :cond_b

    return-object p3

    :cond_b
    add-int/lit8 p3, p1, 0x1

    move p1, p2

    move-object p2, v2

    move-object v2, v7

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v7

    throw p1

    :cond_c
    return-object v3
.end method

.method public final F(Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Le/a/d/c0/z1/o;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lq3/a/x2/i1<",
            "Le/a/d/c0/j;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ls1/u/t;->a:Ls1/u/t;

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Searching for peer id handles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 8
    sget-object v3, Le/a/d/c0/j$c;->a:Le/a/d/c0/j$c;

    invoke-static {v3}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 9
    new-instance v7, Le/a/d/c0/z1/k$y;

    const/4 v1, 0x0

    invoke-direct {v7, p0, p1, v0, v1}, Le/a/d/c0/z1/k$y;-><init>(Le/a/d/c0/z1/k;Ljava/util/Map;Ljava/util/Map;Ls1/w/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v0
.end method

.method public final G(Lcom/truecaller/voip/api/AgoraInfoDto;)Le/a/d/c0/z1/a;
    .locals 9

    .line 1
    new-instance v8, Le/a/d/c0/z1/a;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/voip/api/AgoraInfoDto;->getRtcUid()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/voip/api/AgoraInfoDto;->getRtcToken()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/voip/api/AgoraInfoDto;->getRtcMode()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/voip/api/AgoraInfoDto;->getRtcSecret()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/voip/api/AgoraInfoDto;->getRtmToken()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/voip/api/AgoraInfoDto;->getRtmExpiryEpochSeconds()J

    move-result-wide v6

    move-object v0, v8

    .line 8
    invoke-direct/range {v0 .. v7}, Le/a/d/c0/z1/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v8
.end method

.method public final H(Lcom/truecaller/voip/api/CallInfoDto;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/voip/api/CallInfoDto;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/d/c0/z1/p;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/voip/api/CallInfoDto;->getPeers()Ljava/util/Set;

    move-result-object v0

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
    check-cast v2, Lcom/truecaller/voip/api/CallInfoPeerDto;

    .line 5
    new-instance v9, Le/a/d/c0/z1/p;

    .line 6
    invoke-virtual {v2}, Lcom/truecaller/voip/api/CallInfoPeerDto;->getVoipId()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/voip/api/CallInfoDto;->getVoipIdExpiryEpochSeconds()J

    move-result-wide v5

    .line 8
    invoke-virtual {v2}, Lcom/truecaller/voip/api/CallInfoPeerDto;->getPhone()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/a/p5/s0/f;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v2}, Lcom/truecaller/voip/api/CallInfoPeerDto;->getRtcUid()I

    move-result v8

    move-object v3, v9

    .line 10
    invoke-direct/range {v3 .. v8}, Le/a/d/c0/z1/p;-><init>(Ljava/lang/String;JLjava/lang/String;I)V

    .line 11
    invoke-virtual {v2}, Lcom/truecaller/voip/api/CallInfoPeerDto;->getVoipId()Ljava/lang/String;

    move-result-object v2

    .line 12
    new-instance v3, Ls1/k;

    invoke-direct {v3, v2, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v1}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final I(Lcom/truecaller/voip/api/CallInfoDto;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating call info cache with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/d/c0/z1/k;->m:Ljava/util/Map;

    invoke-virtual {p0, p1}, Le/a/d/c0/z1/k;->H(Lcom/truecaller/voip/api/CallInfoDto;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    invoke-virtual {p0}, Le/a/d/c0/z1/k;->J()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/voip/api/CallInfoDto;->getPeers()Ljava/util/Set;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Lcom/truecaller/voip/api/CallInfoPeerDto;

    .line 10
    new-instance v3, Lcom/truecaller/voip/db/VoipIdCache;

    .line 11
    invoke-virtual {v2}, Lcom/truecaller/voip/api/CallInfoPeerDto;->getVoipId()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v2}, Lcom/truecaller/voip/api/CallInfoPeerDto;->getPhone()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/a/p5/s0/f;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/voip/api/CallInfoDto;->getVoipIdExpiryEpochSeconds()J

    move-result-wide v5

    .line 14
    invoke-direct {v3, v4, v2, v5, v6}, Lcom/truecaller/voip/db/VoipIdCache;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Le/a/d/c0/z1/k;->u:Le/a/d/t/a;

    new-instance v0, Le/a/d/c0/z1/m;

    invoke-direct {v0, v1}, Le/a/d/c0/z1/m;-><init>(Ljava/util/List;)V

    invoke-static {p1, v0}, Le/a/p5/s0/g;->W0(Le/a/d/t/a;Ls1/z/b/l;)Ljava/lang/Object;

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Voip ids are stored: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized J()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/c0/z1/o;

    .line 5
    invoke-virtual {p0, v2}, Le/a/d/c0/z1/k;->u(Le/a/d/c0/z1/o;)Le/a/d/c0/z1/o$b;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 6
    invoke-static {v4, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 8
    new-instance v5, Ls1/k;

    invoke-direct {v5, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    if-eqz v5, :cond_0

    .line 9
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v1}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    .line 11
    iget-object v1, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized K(Ljava/util/Set;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating peers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", is temporary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/d/c0/z1/k;->f:Lq3/a/x2/a1;

    .line 3
    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0xa

    .line 4
    invoke-static {v0, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Le/q/f/a/d/a;->Y1(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    move v2, v3

    .line 5
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    move-object v4, v2

    check-cast v4, Le/a/d/c0/z1/e;

    .line 8
    iget v4, v4, Le/a/d/c0/z1/e;->a:I

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/d/c0/z1/e;

    .line 13
    invoke-virtual {p0, v7}, Le/a/d/c0/z1/k;->z(Le/a/d/c0/z1/e;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    if-eqz v4, :cond_2

    .line 14
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Peers to keep: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {p1, v2}, Ls1/u/i;->b0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7, v2}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    new-instance v7, Ls1/k;

    invoke-direct {v7, v6, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_6
    invoke-static {v3}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New peer id handles to add: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    invoke-virtual {p0, v1}, Le/a/d/c0/z1/k;->F(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/x2/i1;

    .line 29
    new-instance v8, Le/a/d/c0/z1/e;

    .line 30
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    iget-object v9, p0, Le/a/d/c0/z1/k;->n:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 32
    iget-object v10, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/d/c0/z1/o;

    .line 33
    instance-of v11, v10, Le/a/d/c0/z1/o$b;

    if-nez v11, :cond_7

    move-object v10, v6

    :cond_7
    check-cast v10, Le/a/d/c0/z1/o$b;

    if-eqz v10, :cond_8

    .line 34
    iget-object v6, v10, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    .line 35
    :cond_8
    invoke-static {v6, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    goto :goto_4

    .line 36
    :cond_9
    monitor-exit p0

    move v6, v4

    .line 37
    :goto_4
    invoke-direct {v8, v7, v3, v6}, Le/a/d/c0/z1/e;-><init>(ILq3/a/x2/i1;Z)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0

    throw p1

    .line 39
    :cond_a
    iget-object v1, p0, Le/a/d/c0/z1/k;->f:Lq3/a/x2/a1;

    .line 40
    invoke-interface {v1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz p2, :cond_b

    .line 41
    iget-object p2, p0, Le/a/d/c0/z1/k;->f:Lq3/a/x2/a1;

    .line 42
    invoke-static {v1, v2}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 43
    iget-object p2, p0, Le/a/d/c0/z1/k;->o:Ljava/util/Set;

    invoke-static {p2, p1}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c0/z1/k;->o:Ljava/util/Set;

    goto :goto_5

    .line 44
    :cond_b
    iget-object p2, p0, Le/a/d/c0/z1/k;->f:Lq3/a/x2/a1;

    .line 45
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v2}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 46
    iget-object p2, p0, Le/a/d/c0/z1/k;->o:Ljava/util/Set;

    invoke-static {p2, p1}, Ls1/u/i;->b0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c0/z1/k;->o:Ljava/util/Set;

    .line 47
    :goto_5
    iget-object p1, p0, Le/a/d/c0/z1/k;->f:Lq3/a/x2/a1;

    .line 48
    invoke-interface {p1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v1, p1}, Ls1/u/i;->b0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/d/c0/z1/e;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking cache info for deleted peer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    iget-object v0, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    .line 52
    iget v1, p2, Le/a/d/c0/z1/e;->a:I

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Le/a/d/c0/z1/o$b;

    if-nez v1, :cond_d

    move-object v0, v6

    :cond_d
    check-cast v0, Le/a/d/c0/z1/o$b;

    if-eqz v0, :cond_c

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting cached info for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    iget-object v1, p0, Le/a/d/c0/z1/k;->m:Ljava/util/Map;

    .line 56
    iget-object v2, v0, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    .line 57
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as stale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    iget-object v1, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    .line 60
    iget p2, p2, Le/a/d/c0/z1/e;->a:I

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 62
    iget-object v2, v0, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    iget-object v3, v0, Le/a/d/c0/z1/o$b;->b:Ljava/lang/String;

    iget v0, v0, Le/a/d/c0/z1/o$b;->c:I

    const-string v4, "voipId"

    .line 63
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "number"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Le/a/d/c0/z1/o$b;

    invoke-direct {v4, v2, v3, v0, v5}, Le/a/d/c0/z1/o$b;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 64
    invoke-interface {v1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_6

    .line 65
    :cond_e
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/z1/k;->f:Lq3/a/x2/a1;

    return-object v0
.end method

.method public b()Lcom/truecaller/voip/groupcall/call/CallDirection;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/z1/k;->c:Lcom/truecaller/voip/groupcall/call/CallDirection;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "direction"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public c(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Le/a/d/c0/z1/o;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Map<",
            "Le/a/d/c0/z1/o;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/c0/z1/k$q;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/c0/z1/k$q;

    iget v1, v0, Le/a/d/c0/z1/k$q;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/z1/k$q;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/z1/k$q;

    invoke-direct {v0, p0, p2}, Le/a/d/c0/z1/k$q;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/c0/z1/k$q;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/z1/k$q;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/d/c0/z1/k$q;->l:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    iget-object v2, v0, Le/a/d/c0/z1/k$q;->k:Ljava/lang/Object;

    check-cast v2, Le/a/d/c0/z1/o;

    iget-object v3, v0, Le/a/d/c0/z1/k$q;->j:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v6, v0, Le/a/d/c0/z1/k$q;->i:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Le/a/d/c0/z1/k$q;->h:Ljava/lang/Object;

    check-cast v7, Lq3/a/b3/c;

    iget-object v8, v0, Le/a/d/c0/z1/k$q;->g:Ljava/lang/Object;

    check-cast v8, Le/a/d/c0/z1/k;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/d/c0/z1/k$q;->i:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    iget-object v2, v0, Le/a/d/c0/z1/k$q;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v3, v0, Le/a/d/c0/z1/k$q;->g:Ljava/lang/Object;

    check-cast v3, Le/a/d/c0/z1/k;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, p1

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p2, p0, Le/a/d/c0/z1/k;->j:Lq3/a/b3/c;

    .line 4
    iput-object p0, v0, Le/a/d/c0/z1/k$q;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/c0/z1/k$q;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/c0/z1/k$q;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c0/z1/k$q;->e:I

    invoke-interface {p2, v5, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v3, p0

    move-object v7, p2

    .line 5
    :goto_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering requested peer ids: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p1, Ls1/u/t;->a:Ls1/u/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-interface {v7, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    .line 8
    :cond_5
    :try_start_2
    new-instance p2, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v8, v3

    move-object v3, p1

    move-object p1, p2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 10
    move-object v2, p2

    check-cast v2, Le/a/d/c0/z1/o;

    .line 11
    invoke-virtual {v8, v2}, Le/a/d/c0/z1/k;->u(Le/a/d/c0/z1/o;)Le/a/d/c0/z1/o$b;

    move-result-object p2

    if-nez p2, :cond_8

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find cached resolved peer info for: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Fetching call info..."

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    iput-object v8, v0, Le/a/d/c0/z1/k$q;->g:Ljava/lang/Object;

    iput-object v7, v0, Le/a/d/c0/z1/k$q;->h:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/c0/z1/k$q;->i:Ljava/lang/Object;

    iput-object v3, v0, Le/a/d/c0/z1/k$q;->j:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/c0/z1/k$q;->k:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/c0/z1/k$q;->l:Ljava/lang/Object;

    iput v4, v0, Le/a/d/c0/z1/k$q;->e:I

    invoke-virtual {v8, v0}, Le/a/d/c0/z1/k;->v(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v6, p1

    .line 14
    :goto_3
    invoke-virtual {v8, v2}, Le/a/d/c0/z1/k;->u(Le/a/d/c0/z1/o;)Le/a/d/c0/z1/o$b;

    move-result-object p2

    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    move-object p2, v2

    goto :goto_4

    :cond_8
    move-object v6, p1

    .line 15
    :goto_4
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p1, v6

    goto :goto_2

    .line 16
    :cond_9
    check-cast p1, Ljava/util/List;

    .line 17
    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 18
    invoke-virtual {v8, p1}, Le/a/d/c0/z1/k;->B(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-interface {v7, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v7, v5}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method

.method public declared-synchronized d()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/d/c0/z1/k;->f:Lq3/a/x2/a1;

    .line 2
    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Le/a/d/c0/z1/e;

    .line 6
    iget-object v3, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    .line 7
    iget v2, v2, Le/a/d/c0/z1/e;->a:I

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/c0/z1/o;

    .line 9
    instance-of v3, v2, Le/a/d/c0/z1/o$a;

    if-eqz v3, :cond_1

    check-cast v2, Le/a/d/c0/z1/o$a;

    .line 10
    iget-object v2, v2, Le/a/d/c0/z1/o$a;->a:Ljava/lang/String;

    goto :goto_1

    .line 11
    :cond_1
    instance-of v3, v2, Le/a/d/c0/z1/o$b;

    if-eqz v3, :cond_2

    check-cast v2, Le/a/d/c0/z1/o$b;

    .line 12
    iget-object v2, v2, Le/a/d/c0/z1/o$b;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 13
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/util/Set;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Le/a/d/c0/z1/o;",
            ">;)",
            "Ljava/util/Map<",
            "Le/a/d/c0/z1/o;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "peerIdHandles"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting to add temp peers. Handles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ls1/u/t;->a:Ls1/u/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Le/a/d/c0/z1/o;

    .line 6
    invoke-virtual {p0, v1}, Le/a/d/c0/z1/k;->u(Le/a/d/c0/z1/o;)Le/a/d/c0/z1/o$b;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Le/a/d/c0/z1/k;->B(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Le/a/d/c0/z1/k;->K(Ljava/util/Set;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/z1/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ownVoipId"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public g()Lq3/a/x2/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/z1/k;->g:Lq3/a/x2/a1;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/z1/k;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "channelId"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/z1/k;->a:Ls1/w/f;

    return-object v0
.end method

.method public getCurrentTime()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d/c0/z1/k;->v:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    iget-wide v2, p0, Le/a/d/c0/z1/k;->i:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized h(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "peerIds"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting to delete temp peers. Ids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/d/c0/z1/k;->f:Lq3/a/x2/a1;

    .line 4
    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Le/a/d/c0/z1/e;

    .line 9
    iget v6, v6, Le/a/d/c0/z1/e;->a:I

    if-ne v6, v2, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    goto :goto_2

    :cond_4
    move-object v4, v5

    .line 10
    :goto_2
    check-cast v4, Le/a/d/c0/z1/e;

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {p0, v4}, Le/a/d/c0/z1/k;->z(Le/a/d/c0/z1/e;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v5, v4

    :cond_5
    if-eqz v5, :cond_1

    .line 12
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_6
    iget-object p1, p0, Le/a/d/c0/z1/k;->f:Lq3/a/x2/a1;

    .line 14
    invoke-interface {p1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, v1}, Ls1/u/i;->b0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i(Ljava/util/Set;Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/d/c0/z1/k$o;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/d/c0/z1/k$o;

    iget v1, v0, Le/a/d/c0/z1/k$o;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/z1/k$o;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/z1/k$o;

    invoke-direct {v0, p0, p3}, Le/a/d/c0/z1/k$o;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/d/c0/z1/k$o;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/z1/k$o;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/d/c0/z1/k$o;->i:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/voip/api/InviteToCallRequestDto;

    iget-object p2, v0, Le/a/d/c0/z1/k$o;->h:Ljava/lang/Object;

    check-cast p2, Ljava/util/Set;

    iget-object v0, v0, Le/a/d/c0/z1/k$o;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/c0/z1/k;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inviting ids: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", current rtc ids: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 9
    iget-object v6, p0, Le/a/d/c0/z1/k;->m:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 10
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Le/a/d/c0/z1/p;

    .line 11
    iget v8, v8, Le/a/d/c0/z1/p;->d:I

    if-ne v8, v2, :cond_5

    move v8, v4

    goto :goto_2

    :cond_5
    move v8, v3

    .line 12
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 13
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_6
    move-object v7, v5

    :goto_3
    check-cast v7, Le/a/d/c0/z1/p;

    if-eqz v7, :cond_7

    .line 14
    iget-object v5, v7, Le/a/d/c0/z1/p;->a:Ljava/lang/String;

    :cond_7
    if-eqz v5, :cond_3

    .line 15
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_8
    invoke-virtual {p0}, Le/a/d/c0/z1/k;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 17
    invoke-static {p2}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    new-instance p3, Lcom/truecaller/voip/api/InviteToCallRequestDto;

    invoke-direct {p3, p1, p2}, Lcom/truecaller/voip/api/InviteToCallRequestDto;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inviting people to call. Invite ids: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", current rtc voip ids: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    iget-object p2, p0, Le/a/d/c0/z1/k;->t:Le/a/d/p/a;

    new-instance v2, Le/a/d/c0/z1/k$p;

    invoke-direct {v2, p0, p3, v5}, Le/a/d/c0/z1/k$p;-><init>(Le/a/d/c0/z1/k;Lcom/truecaller/voip/api/InviteToCallRequestDto;Ls1/w/d;)V

    iput-object p0, v0, Le/a/d/c0/z1/k$o;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/c0/z1/k$o;->h:Ljava/lang/Object;

    iput-object p3, v0, Le/a/d/c0/z1/k$o;->i:Ljava/lang/Object;

    iput v4, v0, Le/a/d/c0/z1/k$o;->e:I

    invoke-static {p2, v2, v0}, Le/a/p5/s0/g;->V0(Le/a/d/p/a;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    move-object v0, p0

    move-object v9, p2

    move-object p2, p1

    move-object p1, p3

    move-object p3, v9

    .line 22
    :goto_4
    check-cast p3, Lcom/truecaller/voip/api/InviteToCallResponseDto;

    if-nez p3, :cond_a

    .line 23
    iget-object p1, v0, Le/a/d/c0/z1/k;->x:Le/a/d/c0/f0;

    sget-object p2, Lcom/truecaller/voip/util/VoipInvitationFailureReason;->INVITE_CALL_FAILED:Lcom/truecaller/voip/util/VoipInvitationFailureReason;

    invoke-interface {p1, p2}, Le/a/d/c0/f0;->a(Lcom/truecaller/voip/util/VoipInvitationFailureReason;)V

    .line 24
    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    return-object p1

    .line 25
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invite request response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    invoke-virtual {p3}, Lcom/truecaller/voip/api/InviteToCallResponseDto;->getCallInfo()Lcom/truecaller/voip/api/CallInfoDto;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/d/c0/z1/k;->I(Lcom/truecaller/voip/api/CallInfoDto;)V

    .line 27
    invoke-virtual {p3}, Lcom/truecaller/voip/api/InviteToCallResponseDto;->getResults()Ljava/util/Map;

    move-result-object p1

    .line 28
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/voip/api/InviteToCallResult;

    sget-object v5, Lcom/truecaller/voip/api/InviteToCallResult;->INVITED:Lcom/truecaller/voip/api/InviteToCallResult;

    if-ne v2, v5, :cond_c

    move v2, v4

    goto :goto_6

    :cond_c
    move v2, v3

    .line 31
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 34
    :cond_d
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 37
    :cond_e
    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p3

    if-eq p1, p3, :cond_f

    .line 39
    iget-object p1, v0, Le/a/d/c0/z1/k;->x:Le/a/d/c0/f0;

    sget-object p3, Lcom/truecaller/voip/util/VoipInvitationFailureReason;->SOME_PEERS_NOT_INVITED:Lcom/truecaller/voip/util/VoipInvitationFailureReason;

    invoke-interface {p1, p3}, Le/a/d/c0/f0;->a(Lcom/truecaller/voip/util/VoipInvitationFailureReason;)V

    :cond_f
    return-object p2

    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p0

    throw p1
.end method

.method public j(ILs1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/d/c0/z1/k$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/d/c0/z1/k$a;

    iget v2, v1, Le/a/d/c0/z1/k$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/c0/z1/k$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/c0/z1/k$a;

    invoke-direct {v1, p0, p2}, Le/a/d/c0/z1/k$a;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/d/c0/z1/k$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/c0/z1/k$a;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

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
    iget-object p1, v1, Le/a/d/c0/z1/k$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/z1/k;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v1, Le/a/d/c0/z1/k$a;->g:Ljava/lang/Object;

    iput v5, v1, Le/a/d/c0/z1/k$a;->e:I

    invoke-virtual {p0, p1, v1}, Le/a/d/c0/z1/k;->k(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_4

    return-object v2

    :cond_4
    move-object p1, p0

    :goto_1
    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 5
    iget-object v3, p1, Le/a/d/c0/z1/k;->t:Le/a/d/p/a;

    new-instance v5, Le/a/d/c0/z1/k$b;

    const/4 v6, 0x0

    invoke-direct {v5, p1, p2, v6}, Le/a/d/c0/z1/k$b;-><init>(Le/a/d/c0/z1/k;Ljava/lang/String;Ls1/w/d;)V

    iput-object v6, v1, Le/a/d/c0/z1/k$a;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/d/c0/z1/k$a;->e:I

    invoke-static {v3, v5, v1}, Le/a/p5/s0/g;->V0(Le/a/d/p/a;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    return-object v2

    :cond_5
    :goto_2
    return-object v0
.end method

.method public k(ILs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/c0/z1/k$w;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/c0/z1/k$w;

    iget v1, v0, Le/a/d/c0/z1/k$w;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/z1/k$w;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/z1/k$w;

    invoke-direct {v0, p0, p2}, Le/a/d/c0/z1/k$w;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/c0/z1/k$w;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/z1/k$w;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object p2, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    .line 6
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 7
    invoke-static {p2, v2}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/d/c0/z1/o;

    .line 8
    instance-of v2, p2, Le/a/d/c0/z1/o$b;

    if-eqz v2, :cond_3

    .line 9
    move-object p1, p2

    check-cast p1, Le/a/d/c0/z1/o$b;

    .line 10
    iget-object p1, p1, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    .line 11
    check-cast p2, Le/a/d/c0/z1/o$b;

    .line 12
    iget-object p1, p2, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-object p1

    .line 14
    :cond_3
    monitor-exit p0

    .line 15
    iput v3, v0, Le/a/d/c0/z1/k$w;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/d/c0/z1/k;->D(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Le/a/d/c0/z1/o$b;

    if-eqz p2, :cond_5

    .line 16
    iget-object p1, p2, Le/a/d/c0/z1/o$b;->a:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized l(Le/a/d/c0/z1/o;)Ljava/lang/Integer;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "peerIdHandle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/d/c0/z1/o;

    .line 5
    invoke-virtual {p1, v3}, Le/a/d/c0/z1/o;->a(Le/a/d/c0/z1/o;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public m(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "peerIds"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Le/a/d/c0/z1/k;->K(Ljava/util/Set;Z)V

    return-void
.end method

.method public n(Ljava/lang/String;Lcom/truecaller/voip/groupcall/call/CallDirection;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/voip/groupcall/call/CallDirection;",
            "Ls1/w/d<",
            "-",
            "Le/a/d/b0/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/z1/k;->s:Le/a/d/c0/e;

    invoke-interface {v0, p1, p2, p3}, Le/a/d/c0/e;->c(Ljava/lang/String;Lcom/truecaller/voip/groupcall/call/CallDirection;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(Ls1/w/d;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p1, Le/a/d/c0/z1/k$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/c0/z1/k$c;

    iget v1, v0, Le/a/d/c0/z1/k$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/z1/k$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/z1/k$c;

    invoke-direct {v0, p0, p1}, Le/a/d/c0/z1/k$c;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    :goto_0
    move-object v4, v0

    iget-object p1, v4, Le/a/d/c0/z1/k$c;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v4, Le/a/d/c0/z1/k$c;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v1, v4, Le/a/d/c0/z1/k$c;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/z1/k;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/c0/z1/k;->a:Ls1/w/f;

    .line 5
    sget v1, Lq3/a/p1;->e0:I

    sget-object v1, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    invoke-interface {p1, v1}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object p1

    check-cast p1, Lq3/a/p1;

    if-eqz p1, :cond_4

    iput-object p0, v4, Le/a/d/c0/z1/k$c;->g:Ljava/lang/Object;

    iput v3, v4, Le/a/d/c0/z1/k$c;->e:I

    invoke-static {p1, v4}, Ls1/a/a/a/v0/f/d;->V(Lq3/a/p1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p0

    .line 6
    :goto_1
    iget-object v1, v1, Le/a/d/c0/z1/k;->q:Le/a/d/x/r/n;

    const-wide/16 v5, 0x0

    const/4 p1, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    iput-object v3, v4, Le/a/d/c0/z1/k$c;->g:Ljava/lang/Object;

    iput v2, v4, Le/a/d/c0/z1/k$c;->e:I

    move-wide v2, v5

    move v5, p1

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Le/a/p5/s0/g;->C0(Le/a/d/x/r/n;JLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 7
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public p(ZLs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ls1/w/d<",
            "-",
            "Le/a/d/c0/z1/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/c0/z1/k$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/c0/z1/k$f;

    iget v1, v0, Le/a/d/c0/z1/k$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/z1/k$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/z1/k$f;

    invoke-direct {v0, p0, p2}, Le/a/d/c0/z1/k$f;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/c0/z1/k$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/z1/k$f;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d/c0/z1/k$f;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/z1/k;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 4
    iput-object p0, v0, Le/a/d/c0/z1/k$f;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/c0/z1/k$f;->e:I

    invoke-virtual {p0, v0}, Le/a/d/c0/z1/k;->v(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    iget-object p1, p1, Le/a/d/c0/z1/k;->h:Le/a/d/c0/z1/a;

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const-string p1, "agoraInfo"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public q()Le/a/d/x/r/h;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/z1/k;->e:Le/a/d/x/r/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "rtmChannel"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public r(Ljava/util/Set;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Le/a/d/c0/z1/o;",
            ">;)",
            "Ljava/util/Map<",
            "Le/a/d/c0/z1/o;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "peerIdHandles"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering requested peer ids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ls1/u/t;->a:Ls1/u/t;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Le/a/d/c0/z1/o;

    .line 6
    invoke-virtual {p0, v1}, Le/a/d/c0/z1/k;->u(Le/a/d/c0/z1/o;)Le/a/d/c0/z1/o$b;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Le/a/d/c0/z1/k;->B(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized s(I)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/c0/z1/o;

    if-eqz p1, :cond_2

    .line 3
    instance-of v0, p1, Le/a/d/c0/z1/o$a;

    if-eqz v0, :cond_1

    check-cast p1, Le/a/d/c0/z1/o$a;

    .line 4
    iget-object p1, p1, Le/a/d/c0/z1/o$a;->a:Ljava/lang/String;

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 5
    :cond_1
    instance-of v0, p1, Le/a/d/c0/z1/o$b;

    if-eqz v0, :cond_2

    check-cast p1, Le/a/d/c0/z1/o$b;

    .line 6
    iget-object p1, p1, Le/a/d/c0/z1/o$b;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public t(ILs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/c0/z1/k$v;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/c0/z1/k$v;

    iget v1, v0, Le/a/d/c0/z1/k$v;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/z1/k$v;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/z1/k$v;

    invoke-direct {v0, p0, p2}, Le/a/d/c0/z1/k$v;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/c0/z1/k$v;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/z1/k$v;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iput v3, v0, Le/a/d/c0/z1/k$v;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/d/c0/z1/k;->D(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Le/a/d/c0/z1/o$b;

    if-eqz p2, :cond_4

    .line 2
    iget p1, p2, Le/a/d/c0/z1/o$b;->c:I

    .line 3
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    return-object p2
.end method

.method public final declared-synchronized u(Le/a/d/c0/z1/o;)Le/a/d/c0/z1/o$b;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    instance-of v0, p1, Le/a/d/c0/z1/o$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/c0/z1/o$b;

    .line 2
    iget-boolean v0, v0, Le/a/d/c0/z1/o$b;->d:Z

    if-nez v0, :cond_0

    .line 3
    check-cast p1, Le/a/d/c0/z1/o$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/a/d/c0/z1/k;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Le/a/d/c0/z1/p;

    invoke-virtual {p1, v3}, Le/a/d/c0/z1/o;->b(Le/a/d/c0/z1/p;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    check-cast v1, Le/a/d/c0/z1/p;

    if-eqz v1, :cond_3

    .line 6
    new-instance v2, Le/a/d/c0/z1/o$b;

    .line 7
    iget-object p1, v1, Le/a/d/c0/z1/p;->a:Ljava/lang/String;

    .line 8
    iget-object v0, v1, Le/a/d/c0/z1/p;->c:Ljava/lang/String;

    .line 9
    iget v1, v1, Le/a/d/c0/z1/p;->d:I

    const/4 v3, 0x0

    .line 10
    invoke-direct {v2, p1, v0, v1, v3}, Le/a/d/c0/z1/o$b;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_3
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final v(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
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

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/d/c0/z1/k$d;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/d/c0/z1/k$d;

    iget v2, v1, Le/a/d/c0/z1/k$d;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/c0/z1/k$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/c0/z1/k$d;

    invoke-direct {v1, p0, p1}, Le/a/d/c0/z1/k$d;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/d/c0/z1/k$d;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/c0/z1/k$d;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v1, v1, Le/a/d/c0/z1/k$d;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/z1/k;

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
    iget-object p1, p0, Le/a/d/c0/z1/k;->t:Le/a/d/p/a;

    new-instance v3, Le/a/d/c0/z1/k$e;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Le/a/d/c0/z1/k$e;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    iput-object p0, v1, Le/a/d/c0/z1/k$d;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/d/c0/z1/k$d;->e:I

    invoke-static {p1, v3, v1}, Le/a/p5/s0/g;->V0(Le/a/d/p/a;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    return-object v2

    :cond_3
    move-object v1, p0

    :goto_1
    check-cast p1, Lx3/a0;

    if-eqz p1, :cond_5

    .line 5
    iget-object v2, p1, Lx3/a0;->a:Lu3/k0;

    .line 6
    iget v2, v2, Lu3/k0;->e:I

    const/16 v3, 0x194

    if-ne v2, v3, :cond_4

    .line 7
    iget-object p1, v1, Le/a/d/c0/z1/k;->g:Lq3/a/x2/a1;

    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    invoke-interface {p1, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-object v0

    .line 10
    :cond_4
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 11
    check-cast p1, Lcom/truecaller/voip/api/CallInfoResponseDto;

    if-eqz p1, :cond_5

    const-string v2, "callInfoResponse.body() ?: return"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetched called info response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/voip/api/CallInfoResponseDto;->getAgoraInfo()Lcom/truecaller/voip/api/AgoraInfoDto;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/d/c0/z1/k;->G(Lcom/truecaller/voip/api/AgoraInfoDto;)Le/a/d/c0/z1/a;

    move-result-object v2

    iput-object v2, v1, Le/a/d/c0/z1/k;->h:Le/a/d/c0/z1/a;

    .line 14
    invoke-virtual {p1}, Lcom/truecaller/voip/api/CallInfoResponseDto;->getCallInfo()Lcom/truecaller/voip/api/CallInfoDto;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/a/d/c0/z1/k;->I(Lcom/truecaller/voip/api/CallInfoDto;)V

    :cond_5
    return-object v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/d/c0/z1/k$g;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/d/c0/z1/k$g;

    iget v1, v0, Le/a/d/c0/z1/k$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/z1/k$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/z1/k$g;

    invoke-direct {v0, p0, p3}, Le/a/d/c0/z1/k$g;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/d/c0/z1/k$g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/z1/k$g;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Le/a/d/c0/z1/k$g;->i:Z

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/d/c0/z1/k$g;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/z1/k;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p1, v0, Le/a/d/c0/z1/k$g;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Le/a/d/c0/z1/k$g;->g:Ljava/lang/Object;

    check-cast p2, Le/a/d/c0/z1/k;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_1

    :cond_5
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object p3, Lcom/truecaller/voip/groupcall/call/CallDirection;->INCOMING:Lcom/truecaller/voip/groupcall/call/CallDirection;

    const-string v2, "<set-?>"

    .line 5
    invoke-static {p3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p3, p0, Le/a/d/c0/z1/k;->c:Lcom/truecaller/voip/groupcall/call/CallDirection;

    .line 7
    iput-object p2, p0, Le/a/d/c0/z1/k;->n:Ljava/lang/String;

    .line 8
    iget-object p2, p0, Le/a/d/c0/z1/k;->t:Le/a/d/p/a;

    new-instance p3, Le/a/d/c0/z1/k$h;

    invoke-direct {p3, p1, v7}, Le/a/d/c0/z1/k$h;-><init>(Ljava/lang/String;Ls1/w/d;)V

    iput-object p0, v0, Le/a/d/c0/z1/k$g;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/c0/z1/k$g;->h:Ljava/lang/Object;

    iput v6, v0, Le/a/d/c0/z1/k$g;->e:I

    invoke-static {p2, p3, v0}, Le/a/p5/s0/g;->V0(Le/a/d/p/a;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    move-object p2, p1

    move-object p1, p0

    .line 9
    :goto_1
    check-cast p3, Lcom/truecaller/voip/api/CallInfoResponseDto;

    if-nez p3, :cond_8

    .line 10
    sget-object p2, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->GET_CALL_INFO_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p1, p2}, Le/a/d/c0/z1/k;->A(Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    .line 11
    iput-object v7, v0, Le/a/d/c0/z1/k$g;->g:Ljava/lang/Object;

    iput-object v7, v0, Le/a/d/c0/z1/k$g;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/d/c0/z1/k$g;->e:I

    invoke-virtual {p1, v0}, Le/a/d/c0/z1/k;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 12
    :cond_7
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 13
    :cond_8
    invoke-virtual {p3}, Lcom/truecaller/voip/api/CallInfoResponseDto;->getAgoraInfo()Lcom/truecaller/voip/api/AgoraInfoDto;

    move-result-object v2

    .line 14
    invoke-virtual {p3}, Lcom/truecaller/voip/api/CallInfoResponseDto;->getCallInfo()Lcom/truecaller/voip/api/CallInfoDto;

    move-result-object p3

    iput-object p1, v0, Le/a/d/c0/z1/k$g;->g:Ljava/lang/Object;

    iput-object v7, v0, Le/a/d/c0/z1/k$g;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/d/c0/z1/k$g;->e:I

    .line 15
    invoke-virtual {p1, p2, p3, v2, v0}, Le/a/d/c0/z1/k;->y(Ljava/lang/String;Lcom/truecaller/voip/api/CallInfoDto;Lcom/truecaller/voip/api/AgoraInfoDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    return-object v1

    .line 16
    :cond_9
    :goto_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_b

    .line 17
    iput-object v7, v0, Le/a/d/c0/z1/k$g;->g:Ljava/lang/Object;

    iput-boolean p2, v0, Le/a/d/c0/z1/k$g;->i:Z

    iput v3, v0, Le/a/d/c0/z1/k$g;->e:I

    invoke-virtual {p1, v0}, Le/a/d/c0/z1/k;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    move p1, p2

    :goto_4
    move p2, p1

    .line 18
    :cond_b
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public x(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v1, p2, Le/a/d/c0/z1/k$i;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/d/c0/z1/k$i;

    iget v2, v1, Le/a/d/c0/z1/k$i;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/c0/z1/k$i;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/c0/z1/k$i;

    invoke-direct {v1, p0, p2}, Le/a/d/c0/z1/k$i;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/d/c0/z1/k$i;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/c0/z1/k$i;->e:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-boolean p1, v1, Le/a/d/c0/z1/k$i;->i:Z

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object p1, v1, Le/a/d/c0/z1/k$i;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/z1/k;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    iget-object p1, v1, Le/a/d/c0/z1/k$i;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/z1/k;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object p1, v1, Le/a/d/c0/z1/k$i;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/z1/k;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_4
    iget-object p1, v1, Le/a/d/c0/z1/k$i;->g:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/z1/k;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_5
    iget-object p1, v1, Le/a/d/c0/z1/k$i;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iget-object v3, v1, Le/a/d/c0/z1/k$i;->g:Ljava/lang/Object;

    check-cast v3, Le/a/d/c0/z1/k;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_6
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing for outgoing numbers: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    sget-object p2, Lcom/truecaller/voip/groupcall/call/CallDirection;->OUTGOING:Lcom/truecaller/voip/groupcall/call/CallDirection;

    const-string v3, "<set-?>"

    .line 6
    invoke-static {p2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p2, p0, Le/a/d/c0/z1/k;->c:Lcom/truecaller/voip/groupcall/call/CallDirection;

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 10
    check-cast v5, Ljava/lang/String;

    .line 11
    new-instance v6, Le/a/d/c0/z1/o$a;

    invoke-direct {v6, v5}, Le/a/d/c0/z1/o$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {p2}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 13
    invoke-virtual {p0, p2}, Le/a/d/c0/z1/k;->e(Ljava/util/Set;)Ljava/util/Map;

    .line 14
    iget-object p2, p0, Le/a/d/c0/z1/k;->p:Le/a/d/c0/y0;

    iput-object p0, v1, Le/a/d/c0/z1/k$i;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/d/c0/z1/k$i;->h:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v1, Le/a/d/c0/z1/k$i;->e:I

    invoke-interface {p2, p1, v1}, Le/a/d/c0/y0;->a(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_2

    return-object v2

    :cond_2
    move-object v3, p0

    .line 15
    :goto_2
    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_a

    .line 16
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    goto/16 :goto_7

    .line 17
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fetched voip ids for numbers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", voip ids: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    new-instance p1, Lcom/truecaller/voip/api/CreateCallRequestDto;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p2}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/truecaller/voip/api/CreateCallRequestDto;-><init>(Ljava/util/Set;)V

    .line 19
    iget-object p2, v3, Le/a/d/c0/z1/k;->t:Le/a/d/p/a;

    new-instance v5, Le/a/d/c0/z1/k$j;

    invoke-direct {v5, p1, v4}, Le/a/d/c0/z1/k$j;-><init>(Lcom/truecaller/voip/api/CreateCallRequestDto;Ls1/w/d;)V

    iput-object v3, v1, Le/a/d/c0/z1/k$i;->g:Ljava/lang/Object;

    iput-object v4, v1, Le/a/d/c0/z1/k$i;->h:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, v1, Le/a/d/c0/z1/k$i;->e:I

    invoke-static {p2, v5, v1}, Le/a/p5/s0/g;->V0(Le/a/d/p/a;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_4

    return-object v2

    :cond_4
    move-object p1, v3

    .line 20
    :goto_3
    check-cast p2, Lcom/truecaller/voip/api/CreateCallResponseDto;

    if-nez p2, :cond_6

    .line 21
    iput-object p1, v1, Le/a/d/c0/z1/k$i;->g:Ljava/lang/Object;

    const/4 p2, 0x4

    iput p2, v1, Le/a/d/c0/z1/k$i;->e:I

    invoke-virtual {p1, v1}, Le/a/d/c0/z1/k;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_5

    return-object v2

    .line 22
    :cond_5
    :goto_4
    sget-object p2, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->CREATE_CHANNEL_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p1, p2}, Le/a/d/c0/z1/k;->A(Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    return-object v0

    .line 23
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel created. Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    invoke-virtual {p2}, Lcom/truecaller/voip/api/CreateCallResponseDto;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p2}, Lcom/truecaller/voip/api/CreateCallResponseDto;->getAgoraInfo()Lcom/truecaller/voip/api/AgoraInfoDto;

    move-result-object v3

    .line 26
    invoke-virtual {p2}, Lcom/truecaller/voip/api/CreateCallResponseDto;->getCallInfo()Lcom/truecaller/voip/api/CallInfoDto;

    move-result-object p2

    iput-object p1, v1, Le/a/d/c0/z1/k$i;->g:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, v1, Le/a/d/c0/z1/k$i;->e:I

    .line 27
    invoke-virtual {p1, v0, p2, v3, v1}, Le/a/d/c0/z1/k;->y(Ljava/lang/String;Lcom/truecaller/voip/api/CallInfoDto;Lcom/truecaller/voip/api/AgoraInfoDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_7

    return-object v2

    .line 28
    :cond_7
    :goto_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_9

    .line 29
    iput-object v4, v1, Le/a/d/c0/z1/k$i;->g:Ljava/lang/Object;

    iput-boolean p2, v1, Le/a/d/c0/z1/k$i;->i:Z

    const/4 v0, 0x6

    iput v0, v1, Le/a/d/c0/z1/k$i;->e:I

    invoke-virtual {p1, v1}, Le/a/d/c0/z1/k;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_8

    return-object v2

    :cond_8
    move p1, p2

    :goto_6
    move p2, p1

    .line 30
    :cond_9
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 31
    :cond_a
    :goto_7
    iput-object v3, v1, Le/a/d/c0/z1/k$i;->g:Ljava/lang/Object;

    iput-object v4, v1, Le/a/d/c0/z1/k$i;->h:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v1, Le/a/d/c0/z1/k$i;->e:I

    invoke-virtual {v3, v1}, Le/a/d/c0/z1/k;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_b

    return-object v2

    :cond_b
    move-object p1, v3

    .line 32
    :goto_8
    sget-object p2, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->GET_VOIP_ID_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {p1, p2}, Le/a/d/c0/z1/k;->A(Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y(Ljava/lang/String;Lcom/truecaller/voip/api/CallInfoDto;Lcom/truecaller/voip/api/AgoraInfoDto;Ls1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/voip/api/CallInfoDto;",
            "Lcom/truecaller/voip/api/AgoraInfoDto;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v4, v2, Le/a/d/c0/z1/k$k;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/d/c0/z1/k$k;

    iget v5, v4, Le/a/d/c0/z1/k$k;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/d/c0/z1/k$k;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/d/c0/z1/k$k;

    invoke-direct {v4, v0, v2}, Le/a/d/c0/z1/k$k;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    :goto_0
    iget-object v2, v4, Le/a/d/c0/z1/k$k;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Le/a/d/c0/z1/k$k;->e:I

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const-string v12, "<set-?>"

    const/4 v13, 0x0

    if-eqz v6, :cond_6

    if-eq v6, v11, :cond_5

    if-eq v6, v10, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    iget-object v1, v4, Le/a/d/c0/z1/k$k;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/z1/k;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v4, Le/a/d/c0/z1/k$k;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/z1/k;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object v1, v4, Le/a/d/c0/z1/k$k;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/z1/k;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-object v1, v4, Le/a/d/c0/z1/k$k;->g:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/z1/k;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    iget-object v1, v4, Le/a/d/c0/z1/k$k;->k:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/z1/k;

    iget-object v6, v4, Le/a/d/c0/z1/k$k;->j:Ljava/lang/Object;

    check-cast v6, Lcom/truecaller/voip/api/AgoraInfoDto;

    iget-object v11, v4, Le/a/d/c0/z1/k$k;->i:Ljava/lang/Object;

    check-cast v11, Lcom/truecaller/voip/api/CallInfoDto;

    iget-object v14, v4, Le/a/d/c0/z1/k$k;->h:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v4, Le/a/d/c0/z1/k$k;->g:Ljava/lang/Object;

    check-cast v15, Le/a/d/c0/z1/k;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-static {v1, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object v1, v0, Le/a/d/c0/z1/k;->b:Ljava/lang/String;

    .line 6
    iget-object v2, v0, Le/a/d/c0/z1/k;->p:Le/a/d/c0/y0;

    iput-object v0, v4, Le/a/d/c0/z1/k$k;->g:Ljava/lang/Object;

    iput-object v1, v4, Le/a/d/c0/z1/k$k;->h:Ljava/lang/Object;

    move-object/from16 v6, p2

    iput-object v6, v4, Le/a/d/c0/z1/k$k;->i:Ljava/lang/Object;

    move-object/from16 v14, p3

    iput-object v14, v4, Le/a/d/c0/z1/k$k;->j:Ljava/lang/Object;

    iput-object v0, v4, Le/a/d/c0/z1/k$k;->k:Ljava/lang/Object;

    iput v11, v4, Le/a/d/c0/z1/k$k;->e:I

    invoke-interface {v2, v4}, Le/a/d/c0/y0;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_7

    return-object v5

    :cond_7
    move-object v15, v0

    move-object v11, v6

    move-object v6, v14

    move-object v14, v1

    move-object v1, v15

    :goto_1
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object v2, v1, Le/a/d/c0/z1/k;->d:Ljava/lang/String;

    .line 9
    iget-object v1, v15, Le/a/d/c0/z1/k;->r:Le/a/d/x/r/o;

    new-instance v2, Le/a/d/c0/z1/k$l;

    invoke-direct {v2, v15}, Le/a/d/c0/z1/k$l;-><init>(Le/a/d/c0/z1/k;)V

    invoke-interface {v1, v15, v14, v2}, Le/a/d/x/r/o;->g(Lq3/a/i0;Ljava/lang/String;Ls1/z/b/a;)Le/a/d/x/r/h;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 10
    invoke-static {v1, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object v1, v15, Le/a/d/c0/z1/k;->e:Le/a/d/x/r/h;

    .line 12
    invoke-virtual {v15, v6}, Le/a/d/c0/z1/k;->G(Lcom/truecaller/voip/api/AgoraInfoDto;)Le/a/d/c0/z1/a;

    move-result-object v1

    iput-object v1, v15, Le/a/d/c0/z1/k;->h:Le/a/d/c0/z1/a;

    .line 13
    invoke-virtual {v15, v11}, Le/a/d/c0/z1/k;->I(Lcom/truecaller/voip/api/CallInfoDto;)V

    .line 14
    iget-object v1, v15, Le/a/d/c0/z1/k;->q:Le/a/d/x/r/n;

    new-instance v2, Le/a/d/c0/z1/k$n;

    invoke-direct {v2, v15}, Le/a/d/c0/z1/k$n;-><init>(Le/a/d/c0/z1/k;)V

    iput-object v15, v4, Le/a/d/c0/z1/k$k;->g:Ljava/lang/Object;

    iput-object v13, v4, Le/a/d/c0/z1/k$k;->h:Ljava/lang/Object;

    iput-object v13, v4, Le/a/d/c0/z1/k$k;->i:Ljava/lang/Object;

    iput-object v13, v4, Le/a/d/c0/z1/k$k;->j:Ljava/lang/Object;

    iput-object v13, v4, Le/a/d/c0/z1/k$k;->k:Ljava/lang/Object;

    iput v10, v4, Le/a/d/c0/z1/k$k;->e:I

    .line 15
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-interface {v1, v10, v11, v2, v4}, Le/a/d/x/r/n;->e(JLs1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_8

    return-object v5

    :cond_8
    move-object v1, v15

    .line 16
    :goto_2
    instance-of v2, v2, Le/a/d/x/r/p;

    if-nez v2, :cond_9

    .line 17
    sget-object v2, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->JOIN_RTM_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {v1, v2}, Le/a/d/c0/z1/k;->A(Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    return-object v3

    .line 18
    :cond_9
    invoke-virtual {v1}, Le/a/d/c0/z1/k;->q()Le/a/d/x/r/h;

    move-result-object v2

    iput-object v1, v4, Le/a/d/c0/z1/k$k;->g:Ljava/lang/Object;

    iput v9, v4, Le/a/d/c0/z1/k$k;->e:I

    invoke-interface {v2, v4}, Le/a/d/x/r/h;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_a

    return-object v5

    :cond_a
    :goto_3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    .line 19
    sget-object v2, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->JOIN_RTM_CHANNEL_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {v1, v2}, Le/a/d/c0/z1/k;->A(Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    return-object v3

    .line 20
    :cond_b
    invoke-virtual {v1}, Le/a/d/c0/z1/k;->q()Le/a/d/x/r/h;

    move-result-object v2

    new-instance v3, Le/a/d/x/r/j;

    sget-object v6, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->ClockSkew:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    const-string v9, "ClockSkew"

    invoke-direct {v3, v9, v6}, Le/a/d/x/r/j;-><init>(Ljava/lang/String;Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;)V

    invoke-static {v3}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    iput-object v1, v4, Le/a/d/c0/z1/k$k;->g:Ljava/lang/Object;

    iput v8, v4, Le/a/d/c0/z1/k$k;->e:I

    invoke-interface {v2, v3, v4}, Le/a/d/x/r/h;->n(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_c

    return-object v5

    :cond_c
    :goto_4
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    const-wide/16 v2, 0x7d0

    .line 21
    new-instance v6, Le/a/d/c0/z1/k$m;

    invoke-direct {v6, v1, v13}, Le/a/d/c0/z1/k$m;-><init>(Le/a/d/c0/z1/k;Ls1/w/d;)V

    iput-object v1, v4, Le/a/d/c0/z1/k$k;->g:Ljava/lang/Object;

    iput v7, v4, Le/a/d/c0/z1/k$k;->e:I

    invoke-static {v2, v3, v6, v4}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_d

    return-object v5

    .line 22
    :cond_d
    :goto_5
    check-cast v2, Le/a/d/x/r/i;

    if-eqz v2, :cond_e

    .line 23
    iget-wide v2, v2, Le/a/d/x/r/i;->d:J

    .line 24
    iget-object v4, v1, Le/a/d/c0/z1/k;->v:Le/a/p5/c;

    invoke-interface {v4}, Le/a/p5/c;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Le/a/d/c0/z1/k;->i:J

    .line 25
    :cond_e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 26
    :cond_f
    sget-object v1, Lcom/truecaller/voip/util/VoipAnalyticsStateReason;->CREATE_RTM_CHANNEL_FAILED:Lcom/truecaller/voip/util/VoipAnalyticsStateReason;

    invoke-virtual {v15, v1}, Le/a/d/c0/z1/k;->A(Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    :cond_10
    return-object v3
.end method

.method public final declared-synchronized z(Le/a/d/c0/z1/e;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/d/c0/z1/k;->o:Ljava/util/Set;

    .line 2
    iget p1, p1, Le/a/d/c0/z1/e;->a:I

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
