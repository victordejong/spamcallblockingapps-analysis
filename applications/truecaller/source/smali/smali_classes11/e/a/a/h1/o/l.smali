.class public final Le/a/a/h1/o/l;
.super Le/a/u2/a/c;
.source "SourceFile"

# interfaces
.implements Le/a/a/h1/o/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/c<",
        "Le/a/a/h1/o/j;",
        "Le/a/a/h1/o/k;",
        ">;",
        "Le/a/a/h1/o/i;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/urgent/UrgentConversation;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/a/a/h1/o/h;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/a/a/h1/o/c;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lq3/a/p1;",
            ">;"
        }
    .end annotation
.end field

.field public i:J

.field public j:J

.field public final k:Ls1/w/f;

.field public final l:Le/a/p5/c0;

.field public final m:Le/a/p5/c;

.field public final n:Le/a/p5/g;

.field public final o:Le/a/a/i0;

.field public final p:Le/a/q2/i0;

.field public final q:Le/a/a/h1/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/p5/c0;Le/a/p5/c;Le/a/p5/g;Le/a/a/i0;Le/a/q2/i0;Le/a/a/h1/g;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expiryHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/c;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/h1/o/l;->k:Ls1/w/f;

    iput-object p2, p0, Le/a/a/h1/o/l;->l:Le/a/p5/c0;

    iput-object p3, p0, Le/a/a/h1/o/l;->m:Le/a/p5/c;

    iput-object p4, p0, Le/a/a/h1/o/l;->n:Le/a/p5/g;

    iput-object p5, p0, Le/a/a/h1/o/l;->o:Le/a/a/i0;

    iput-object p6, p0, Le/a/a/h1/o/l;->p:Le/a/q2/i0;

    iput-object p7, p0, Le/a/a/h1/o/l;->q:Le/a/a/h1/g;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/a/h1/o/l;->f:Ljava/util/Set;

    .line 4
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/a/h1/o/l;->g:Ljava/util/Set;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/h1/o/l;->h:Ljava/util/Map;

    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Le/a/a/h1/o/l;->i:J

    return-void
.end method


# virtual methods
.method public B6(Lcom/truecaller/messaging/data/types/Conversation;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3
    check-cast v3, Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 4
    iget-object v3, v3, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 5
    iget-wide v5, v3, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    iget-wide v7, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_2
    if-ltz v2, :cond_4

    .line 6
    iget-object v0, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 7
    iget-object v0, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    const/4 v6, 0x0

    .line 8
    iget v3, v5, Lcom/truecaller/messaging/urgent/UrgentConversation;->b:I

    add-int/lit8 v7, v3, 0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    .line 9
    invoke-static/range {v5 .. v10}, Lcom/truecaller/messaging/urgent/UrgentConversation;->a(Lcom/truecaller/messaging/urgent/UrgentConversation;Lcom/truecaller/messaging/data/types/Conversation;IJI)Lcom/truecaller/messaging/urgent/UrgentConversation;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Le/a/a/h1/o/l;->h:Ljava/util/Map;

    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/p1;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    invoke-static {v0, v2, v4, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_3

    .line 11
    :cond_4
    iget-object v0, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    new-instance v2, Lcom/truecaller/messaging/urgent/UrgentConversation;

    const-wide/16 v5, -0x1

    .line 12
    invoke-direct {v2, p1, v4, v5, v6}, Lcom/truecaller/messaging/urgent/UrgentConversation;-><init>(Lcom/truecaller/messaging/data/types/Conversation;IJ)V

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14
    :cond_5
    :goto_3
    invoke-virtual {p0}, Le/a/a/h1/o/l;->Kj()V

    .line 15
    iget-object v0, p0, Le/a/a/h1/o/l;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_6

    return-void

    .line 16
    :cond_6
    iget-object v0, p0, Le/a/a/h1/o/l;->n:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_7

    .line 17
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 18
    check-cast v0, Le/a/a/h1/o/j;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Le/a/a/h1/o/j;->d()Z

    move-result v0

    if-ne v0, v4, :cond_7

    .line 19
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 20
    check-cast v0, Le/a/a/h1/o/j;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Le/a/a/h1/o/j;->c()V

    .line 21
    :cond_7
    iget-object v0, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 22
    iget v3, v3, Lcom/truecaller/messaging/urgent/UrgentConversation;->b:I

    add-int/2addr v2, v3

    goto :goto_4

    .line 23
    :cond_8
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h1/o/k;

    if-eqz v0, :cond_a

    .line 24
    iget-object v3, p0, Le/a/a/h1/o/l;->l:Le/a/p5/c0;

    const v5, 0x7f100062

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v3, v5, v2, v6}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getQuan\u2026e_received, messageCount)"

    invoke-static {v2, v3}, Le/d/c/a/a;->H(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 25
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v5, "conversation.participants"

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v5, "conversation.participants.first()"

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {p1}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v4, :cond_9

    const-string p1, " "

    .line 26
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v5, p0, Le/a/a/h1/o/l;->l:Le/a/p5/c0;

    const v6, 0x7f12071c

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-interface {v5, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_9
    const-string p1, ""

    .line 27
    :goto_5
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-interface {v0, v2, p1}, Le/a/a/h1/o/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_a
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/h1/o/k;

    if-eqz p1, :cond_b

    invoke-interface {p1, v4}, Le/a/a/h1/o/k;->g(Z)V

    :cond_b
    return-void
.end method

.method public final Ij(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    new-instance v1, Le/a/a/h1/o/l$a;

    invoke-direct {v1, p1, p2}, Le/a/a/h1/o/l$a;-><init>(J)V

    invoke-static {v0, v1}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    .line 2
    invoke-virtual {p0}, Le/a/a/h1/o/l;->Kj()V

    .line 3
    iget-object p1, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Le/a/a/h1/o/l;->qg(Z)V

    :cond_0
    return-void
.end method

.method public J5(Le/a/a/h1/o/c;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/l;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final Jj(Lcom/truecaller/messaging/urgent/UrgentConversation;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/l;->q:Le/a/a/h1/g;

    iget-object v1, p0, Le/a/a/h1/o/l;->m:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->a()J

    move-result-wide v1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "conversation"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-wide v3, p1, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Le/a/a/h1/g;->a()J

    move-result-wide v5

    add-long/2addr v5, v3

    cmp-long p1, v1, v5

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public K8()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/a/h1/o/j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/h1/o/j;->a()V

    :cond_0
    return-void
.end method

.method public final Kj()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h1/o/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 2
    iget v4, v4, Lcom/truecaller/messaging/urgent/UrgentConversation;->b:I

    add-int/2addr v3, v4

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, v3}, Le/a/a/h1/o/k;->h(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 7
    iget-wide v4, v4, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-eqz v4, :cond_2

    .line 8
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_4

    .line 11
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    :goto_3
    move-object v0, v1

    goto :goto_4

    .line 13
    :cond_6
    move-object v2, v1

    check-cast v2, Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 14
    iget-wide v2, v2, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    .line 15
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 16
    move-object v5, v4

    check-cast v5, Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 17
    iget-wide v5, v5, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    cmp-long v7, v2, v5

    if-lez v7, :cond_8

    move-object v1, v4

    move-wide v2, v5

    .line 18
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 19
    :goto_4
    check-cast v0, Lcom/truecaller/messaging/urgent/UrgentConversation;

    if-nez v0, :cond_9

    .line 20
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h1/o/k;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Le/a/a/h1/o/k;->J()V

    goto :goto_5

    .line 21
    :cond_9
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/h1/o/k;

    if-eqz v1, :cond_a

    .line 22
    iget-wide v2, v0, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    .line 23
    iget-object v0, p0, Le/a/a/h1/o/l;->q:Le/a/a/h1/g;

    invoke-virtual {v0}, Le/a/a/h1/g;->a()J

    move-result-wide v4

    .line 24
    invoke-interface {v1, v2, v3, v4, v5}, Le/a/a/h1/o/k;->t(JJ)V

    .line 25
    :cond_a
    :goto_5
    iget-object v0, p0, Le/a/a/h1/o/l;->f:Ljava/util/Set;

    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/h1/o/h;

    .line 27
    iget-object v2, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Le/a/a/h1/o/h;->W8(Ljava/util/List;)V

    goto :goto_6

    :cond_b
    return-void
.end method

.method public Nf(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/a/h1/o/l;->Ij(J)V

    return-void
.end method

.method public Rc()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/a/h1/o/j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/h1/o/j;->a()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le/a/a/h1/o/k;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/a/h1/o/l;->o:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/h1/o/k;->b()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Le/a/a/i0;->O0(F)F

    move-result v0

    .line 5
    invoke-interface {p1, v0}, Le/a/a/h1/o/k;->a(F)V

    .line 6
    iget-object p1, p0, Le/a/a/h1/o/l;->m:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/a/h1/o/l;->j:J

    return-void
.end method

.method public Zd(J)V
    .locals 14

    move-object v6, p0

    move-wide v0, p1

    .line 1
    iget-wide v2, v6, Le/a/a/h1/o/l;->i:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    iget-object v2, v6, Le/a/a/h1/o/l;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 2
    iget-object v8, v8, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 3
    iget-wide v8, v8, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    iget-wide v10, v6, Le/a/a/h1/o/l;->i:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    move v8, v5

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    if-eqz v8, :cond_0

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    check-cast v7, Lcom/truecaller/messaging/urgent/UrgentConversation;

    if-eqz v7, :cond_3

    invoke-virtual {p0, v7}, Le/a/a/h1/o/l;->Jj(Lcom/truecaller/messaging/urgent/UrgentConversation;)Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 4
    iget-wide v7, v6, Le/a/a/h1/o/l;->i:J

    invoke-virtual {p0, v7, v8}, Le/a/a/h1/o/l;->Ij(J)V

    .line 5
    :cond_3
    iput-wide v0, v6, Le/a/a/h1/o/l;->i:J

    .line 6
    iget-object v2, v6, Le/a/a/h1/o/l;->e:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v7, v4

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 8
    check-cast v8, Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 9
    iget-object v8, v8, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 10
    iget-wide v8, v8, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    cmp-long v8, v8, v0

    if-nez v8, :cond_4

    move v8, v5

    goto :goto_3

    :cond_4
    move v8, v4

    :goto_3
    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, -0x1

    :goto_4
    if-gez v7, :cond_7

    return-void

    .line 11
    :cond_7
    iget-object v0, v6, Le/a/a/h1/o/l;->e:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/truecaller/messaging/urgent/UrgentConversation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 12
    iget-wide v0, v8, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v11, 0x0

    cmp-long v1, v1, v11

    if-ltz v1, :cond_8

    move v4, v5

    :cond_8
    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_6

    :cond_a
    iget-object v0, v6, Le/a/a/h1/o/l;->m:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v0

    :goto_6
    move-wide v11, v0

    const/4 v13, 0x1

    .line 14
    invoke-static/range {v8 .. v13}, Lcom/truecaller/messaging/urgent/UrgentConversation;->a(Lcom/truecaller/messaging/urgent/UrgentConversation;Lcom/truecaller/messaging/data/types/Conversation;IJI)Lcom/truecaller/messaging/urgent/UrgentConversation;

    move-result-object v2

    .line 15
    iget-object v0, v6, Le/a/a/h1/o/l;->e:Ljava/util/List;

    invoke-interface {v0, v7, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, v2, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 17
    iget-wide v7, v0, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 18
    iget-object v0, v6, Le/a/a/h1/o/l;->h:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/p1;

    if-eqz v0, :cond_b

    invoke-static {v0, v3, v5, v3}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 19
    :cond_b
    iget-object v9, v6, Le/a/a/h1/o/l;->h:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Le/a/a/h1/o/m;

    const/4 v5, 0x0

    move-object v0, v13

    move-object v1, p0

    move-wide v3, v7

    invoke-direct/range {v0 .. v5}, Le/a/a/h1/o/m;-><init>(Le/a/a/h1/o/l;Lcom/truecaller/messaging/urgent/UrgentConversation;JLs1/w/d;)V

    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Le/a/a/h1/o/l;->Kj()V

    .line 21
    iget-object v0, v6, Le/a/a/h1/o/l;->p:Le/a/q2/i0;

    .line 22
    iget-object v1, v6, Le/a/a/h1/o/l;->m:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    iget-wide v3, v6, Le/a/a/h1/o/l;->j:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "open"

    .line 23
    invoke-interface {v0, v2, v1}, Le/a/q2/i0;->j(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h1/o/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/h1/o/k;->f()V

    .line 2
    :cond_0
    invoke-super {p0}, Le/a/u2/a/c;->c()V

    return-void
.end method

.method public c5(Le/a/a/h1/o/c;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/l;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e3(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/l;->o:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->a1(F)V

    return-void
.end method

.method public qg(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/l;->g:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/h1/o/c;

    .line 3
    invoke-interface {v1}, Le/a/a/h1/o/c;->a()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 5
    check-cast v0, Le/a/a/h1/o/j;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/a/h1/o/j;->b()V

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Le/a/a/h1/o/l;->p:Le/a/q2/i0;

    .line 7
    iget-object v0, p0, Le/a/a/h1/o/l;->m:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    iget-wide v2, p0, Le/a/a/h1/o/l;->j:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "dismiss"

    .line 8
    invoke-interface {p1, v1, v0}, Le/a/q2/i0;->j(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    return-void
.end method

.method public qi(Le/a/a/h1/o/h;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/l;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Le/a/a/h1/o/l;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    .line 4
    instance-of v1, p1, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/urgent/UrgentConversation;

    .line 6
    invoke-virtual {p0, v1}, Le/a/a/h1/o/l;->Jj(Lcom/truecaller/messaging/urgent/UrgentConversation;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p0, v2}, Le/a/a/h1/o/l;->qg(Z)V

    goto :goto_2

    :cond_4
    const-wide/16 v1, -0x1

    .line 8
    invoke-virtual {p0, v1, v2}, Le/a/a/h1/o/l;->Zd(J)V

    .line 9
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/h1/o/k;

    if-eqz p1, :cond_5

    invoke-interface {p1, v0}, Le/a/a/h1/o/k;->c(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public vd(Le/a/a/h1/o/h;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h1/o/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Le/a/a/h1/o/k;->c(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h1/o/k;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Le/a/a/h1/o/k;->g(Z)V

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/h1/o/k;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/a/h1/o/k;->d()V

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/a/h1/o/l;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Le/a/a/h1/o/l;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Le/a/a/h1/o/h;->W8(Ljava/util/List;)V

    return-void
.end method
