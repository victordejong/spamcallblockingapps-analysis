.class public final Le/a/a/k/a/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/p0;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/a/a/k/a/o0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/a/k/a/a2;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:Ls1/w/f;

.field public final i:Ls1/w/f;

.field public final j:Le/a/p5/c;

.field public final k:Le/a/a/k/a/s1;

.field public final l:Le/a/p5/c0;

.field public final m:Landroid/content/ContentResolver;

.field public final n:Le/a/a/k/a/a/q;

.field public final o:Le/a/a/i0;

.field public final p:Le/a/a/k/a/g;

.field public final q:Le/a/h0/m;

.field public final r:Le/a/a3/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/p5/c;Le/a/a/k/a/s1;Le/a/p5/c0;Landroid/content/ContentResolver;Le/a/a/k/a/a/q;Le/a/a/i0;Le/a/a/k/a/g;Le/a/h0/m;Le/a/a3/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messengerStubManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiddenNumberHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSettings"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockManager"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/q0;->h:Ls1/w/f;

    iput-object p2, p0, Le/a/a/k/a/q0;->i:Ls1/w/f;

    iput-object p3, p0, Le/a/a/k/a/q0;->j:Le/a/p5/c;

    iput-object p4, p0, Le/a/a/k/a/q0;->k:Le/a/a/k/a/s1;

    iput-object p5, p0, Le/a/a/k/a/q0;->l:Le/a/p5/c0;

    iput-object p6, p0, Le/a/a/k/a/q0;->m:Landroid/content/ContentResolver;

    iput-object p7, p0, Le/a/a/k/a/q0;->n:Le/a/a/k/a/a/q;

    iput-object p8, p0, Le/a/a/k/a/q0;->o:Le/a/a/i0;

    iput-object p9, p0, Le/a/a/k/a/q0;->p:Le/a/a/k/a/g;

    iput-object p10, p0, Le/a/a/k/a/q0;->q:Le/a/h0/m;

    iput-object p11, p0, Le/a/a/k/a/q0;->r:Le/a/a3/a;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/q0;->a:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/q0;->b:Ljava/util/Set;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/q0;->c:Ljava/util/Map;

    .line 5
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p8}, Le/a/a/i0;->o4()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iput-wide p2, p0, Le/a/a/k/a/q0;->d:J

    .line 6
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p3, 0x5

    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iput-wide p2, p0, Le/a/a/k/a/q0;->e:J

    const-wide/16 p2, 0x1

    .line 7
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Le/a/a/k/a/q0;->f:J

    const-wide/16 p1, 0x1f4

    .line 8
    iput-wide p1, p0, Le/a/a/k/a/q0;->g:J

    return-void
.end method

.method public static final h(Le/a/a/k/a/q0;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    if-nez p2, :cond_1

    .line 1
    iget-object p2, p0, Le/a/a/k/a/q0;->b:Ljava/util/Set;

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/o0;

    .line 3
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/a2;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v1, Le/a/a/k/a/a2;->b:Lcom/truecaller/api/services/messenger/v1/models/UserTypingKind;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-virtual {p0, v1}, Le/a/a/k/a/q0;->l(Lcom/truecaller/api/services/messenger/v1/models/UserTypingKind;)Le/a/a/k/a/z1;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Le/a/a/k/a/o0;->G6(Ljava/lang/String;Le/a/a/k/a/z1;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/a/k/a/q0;->b:Ljava/util/Set;

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/o0;

    .line 8
    invoke-virtual {p0, p3}, Le/a/a/k/a/q0;->k(Ljava/util/Map;)Le/a/a/k/a/z1;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Le/a/a/k/a/o0;->Yh(Ljava/lang/String;Le/a/a/k/a/z1;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static final i(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;ZLcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;)V
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->getTypeCase()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$TypeCase;

    move-result-object v0

    sget-object v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$TypeCase;->USER:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$TypeCase;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Le/a/a/k/a/q0;->p:Le/a/a/k/a/g;

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;

    move-result-object v1

    const-string v3, "inputPeer.user"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "inputPeer.user.id"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "imId"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Le/a/a/k/a/g;->a(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean p2, v0, Lcom/truecaller/messaging/data/types/Conversation;->C:Z

    :goto_0
    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 6
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;

    invoke-static {v1, p1}, Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10
    iget-object p1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;

    invoke-static {p1, p2}, Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;->access$700(Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;Z)V

    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12
    iget-object p1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;

    invoke-static {p1, p3}, Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;->access$500(Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;)V

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    .line 14
    check-cast p1, Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;

    iget-object p0, p0, Le/a/a/k/a/q0;->k:Le/a/a/k/a/s1;

    const/4 p2, 0x0

    invoke-static {p0, p2, v2, p2}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object p0

    check-cast p0, Le/a/t2/a/e/a/b$a;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Le/a/t2/a/e/a/b$a;->t(Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Request;)Lcom/truecaller/api/services/messenger/v1/SendUserTyping$Response;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;)V
    .locals 7

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/k/a/q0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/a/k/a/q0;->i:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/a/k/a/q0$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/a/k/a/q0$c;-><init>(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b(Lcom/truecaller/data/entity/messaging/Participant;Z)V
    .locals 7

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/k/a/q0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Le/a/a/k/a/q0;->q:Le/a/h0/m;

    invoke-interface {v0}, Le/a/h0/m;->u()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/truecaller/data/entity/messaging/Participant;->k(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/a/k/a/q0;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Le/a/a/k/a/q0;->j:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Le/a/a/k/a/q0;->d:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {p1}, Le/a/a/i1/h;->g(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/a/k/a/q0;->i:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/a/k/a/q0$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, p2, v5}, Le/a/a/k/a/q0$a;-><init>(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;ZLs1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 7
    iget-object p2, p0, Le/a/a/k/a/q0;->a:Ljava/util/Map;

    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v0, "participant.normalizedAddress"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/k/a/q0;->j:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public c(Le/a/a/k/a/y1;)V
    .locals 2

    const-string v0, "handle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/a/k/a/y1;->a:Lq3/a/p1;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/truecaller/data/entity/messaging/Participant;ZLcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;)Le/a/a/k/a/y1;
    .locals 10

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/a/i1/h;->g(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v3

    .line 2
    invoke-virtual {p0}, Le/a/a/k/a/q0;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v0, p0, Le/a/a/k/a/q0;->i:Ls1/w/f;

    const/4 v7, 0x0

    new-instance v8, Le/a/a/k/a/q0$d;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/k/a/q0$d;-><init>(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;ZLcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;Ls1/w/d;)V

    const/4 p2, 0x2

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, v0

    move-object v6, v7

    move-object v7, v8

    move v8, p2

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    .line 4
    new-instance p2, Le/a/a/k/a/y1;

    invoke-direct {p2, p1}, Le/a/a/k/a/y1;-><init>(Lq3/a/p1;)V

    return-object p2

    .line 5
    :cond_1
    :goto_0
    new-instance p1, Le/a/a/k/a/y1;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Le/a/a/k/a/y1;-><init>(Lq3/a/p1;)V

    return-object p1
.end method

.method public e(Le/a/a/k/a/o0;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/q0;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Le/a/a/k/a/q0;->c:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/a/a2;

    .line 5
    iget-object v2, v2, Le/a/a/k/a/a2;->b:Lcom/truecaller/api/services/messenger/v1/models/UserTypingKind;

    .line 6
    invoke-virtual {p0, v2}, Le/a/a/k/a/q0;->l(Lcom/truecaller/api/services/messenger/v1/models/UserTypingKind;)Le/a/a/k/a/z1;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Le/a/a/k/a/o0;->G6(Ljava/lang/String;Le/a/a/k/a/z1;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0, v1}, Le/a/a/k/a/q0;->k(Ljava/util/Map;)Le/a/a/k/a/z1;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Le/a/a/k/a/o0;->Yh(Ljava/lang/String;Le/a/a/k/a/z1;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public f(Le/a/a/k/a/o0;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/q0;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;)V
    .locals 7

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/k/a/q0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/a/k/a/q0;->h:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/a/k/a/q0$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/a/k/a/q0$b;-><init>(Le/a/a/k/a/q0;Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final j(Lcom/truecaller/api/services/messenger/v1/models/UserTypingKind;)I
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    :goto_0
    const p1, 0x7f0406a0

    goto :goto_1

    :cond_1
    const p1, 0x7f0406a1

    goto :goto_1

    :cond_2
    const p1, 0x7f04069f

    :goto_1
    return p1
.end method

.method public final k(Ljava/util/Map;)Le/a/a/k/a/z1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/a/k/a/a2;",
            ">;)",
            "Le/a/a/k/a/z1;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    new-instance p1, Le/a/a/k/a/z1;

    const v0, 0x7f04069f

    .line 3
    iget-object v1, p0, Le/a/a/k/a/q0;->l:Le/a/p5/c0;

    const v3, 0x7f120315

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026.string.ImTypingMultiple)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p1, v0, v1}, Le/a/a/k/a/z1;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/k/a/a2;

    .line 6
    iget-object v0, p1, Le/a/a/k/a/a2;->b:Lcom/truecaller/api/services/messenger/v1/models/UserTypingKind;

    .line 7
    invoke-virtual {p0, v0}, Le/a/a/k/a/q0;->j(Lcom/truecaller/api/services/messenger/v1/models/UserTypingKind;)I

    move-result v0

    .line 8
    iget-object v4, p1, Le/a/a/k/a/a2;->b:Lcom/truecaller/api/services/messenger/v1/models/UserTypingKind;

    .line 9
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 10
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :pswitch_0
    return-object v1

    :pswitch_1
    const v1, 0x7f12031e

    goto :goto_0

    :pswitch_2
    const v1, 0x7f120318

    goto :goto_0

    :pswitch_3
    const v1, 0x7f12031a

    goto :goto_0

    :pswitch_4
    const v1, 0x7f12031c

    goto :goto_0

    :pswitch_5
    const v1, 0x7f120320

    goto :goto_0

    :pswitch_6
    const v1, 0x7f12030f

    goto :goto_0

    :pswitch_7
    const v1, 0x7f120309

    goto :goto_0

    :pswitch_8
    const v1, 0x7f12030b

    goto :goto_0

    :pswitch_9
    const v1, 0x7f120313

    goto :goto_0

    :pswitch_a
    const v1, 0x7f120307

    goto :goto_0

    :pswitch_b
    const v1, 0x7f12030d

    goto :goto_0

    :pswitch_c
    const v1, 0x7f120311

    goto :goto_0

    :pswitch_d
    const v1, 0x7f120316

    .line 11
    :goto_0
    iget-object v4, p0, Le/a/a/k/a/q0;->l:Le/a/p5/c0;

    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    iget-object p1, p1, Le/a/a/k/a/a2;->a:Ljava/lang/String;

    aput-object p1, v3, v2

    .line 13
    invoke-interface {v4, v1, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026, typingParticipant.name)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v1, Le/a/a/k/a/z1;

    invoke-direct {v1, v0, p1}, Le/a/a/k/a/z1;-><init>(ILjava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_5
        :pswitch_b
        :pswitch_4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Lcom/truecaller/api/services/messenger/v1/models/UserTypingKind;)Le/a/a/k/a/z1;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/k/a/q0;->j(Lcom/truecaller/api/services/messenger/v1/models/UserTypingKind;)I

    move-result v0

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :goto_0
    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    const p1, 0x7f12031d

    goto :goto_1

    :pswitch_2
    const p1, 0x7f120317

    goto :goto_1

    :pswitch_3
    const p1, 0x7f120319

    goto :goto_1

    :pswitch_4
    const p1, 0x7f12031b

    goto :goto_1

    :pswitch_5
    const p1, 0x7f12031f

    goto :goto_1

    :pswitch_6
    const p1, 0x7f12030e

    goto :goto_1

    :pswitch_7
    const p1, 0x7f120308

    goto :goto_1

    :pswitch_8
    const p1, 0x7f12030a

    goto :goto_1

    :pswitch_9
    const p1, 0x7f120312

    goto :goto_1

    :pswitch_a
    const p1, 0x7f120306

    goto :goto_1

    :pswitch_b
    const p1, 0x7f12030c

    goto :goto_1

    :pswitch_c
    const p1, 0x7f120310

    goto :goto_1

    :pswitch_d
    const p1, 0x7f120314

    .line 4
    :goto_1
    iget-object v1, p0, Le/a/a/k/a/q0;->l:Le/a/p5/c0;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getString(it)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Le/a/a/k/a/z1;

    invoke-direct {v1, v0, p1}, Le/a/a/k/a/z1;-><init>(ILjava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_5
        :pswitch_b
        :pswitch_4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/k/a/q0;->o:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->H2()Z

    move-result v0

    return v0
.end method
