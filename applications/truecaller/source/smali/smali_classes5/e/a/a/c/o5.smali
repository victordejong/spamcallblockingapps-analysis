.class public final Le/a/a/c/o5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/n5;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/truecaller/messaging/conversation/ConversationMode;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/lang/Long;

.field public g:Le/a/a/g/f;

.field public h:I

.field public final i:Ljava/lang/Long;

.field public final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;"
        }
    .end annotation
.end field

.field public l:[Lcom/truecaller/data/entity/messaging/Participant;

.field public m:Lcom/truecaller/messaging/data/types/Conversation;

.field public n:Z

.field public final o:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/ConversationMode;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "conversationMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/a/c/o5;->o:Ljava/lang/Long;

    .line 2
    iput-object p1, p0, Le/a/a/c/o5;->c:Lcom/truecaller/messaging/conversation/ConversationMode;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/c/o5;->d:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/c/o5;->e:Ljava/util/Map;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Le/a/a/c/o5;->h:I

    .line 6
    iput-object p3, p0, Le/a/a/c/o5;->i:Ljava/lang/Long;

    .line 7
    sget-object p2, Le/a/a/c/o5$a;->a:Le/a/a/c/o5$a;

    iput-object p2, p0, Le/a/a/c/o5;->j:Ljava/util/Comparator;

    .line 8
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Le/a/a/c/o5;->k:Ljava/util/Map;

    const/4 p2, 0x0

    new-array p2, p2, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 9
    iput-object p2, p0, Le/a/a/c/o5;->l:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 10
    iput-boolean p1, p0, Le/a/a/c/o5;->n:Z

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/a/c/o5;->n:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/a/c/o5;->a:Z

    return v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public D()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->i:Ljava/lang/Long;

    return-object v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/a/c/o5;->b:Z

    return v0
.end method

.method public G()Lcom/truecaller/messaging/conversation/ConversationMode;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->c:Lcom/truecaller/messaging/conversation/ConversationMode;

    return-object v0
.end method

.method public H()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->l:[Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-static {v0}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_3

    .line 3
    iget v2, v0, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v0, 0x4

    if-eq v2, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/a/c/o5;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Le/a/c/p/a;->a1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant;->i()Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method public I(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/a/c/o5;->b:Z

    return-void
.end method

.method public a(Lcom/truecaller/messaging/data/types/Draft;)V
    .locals 0

    return-void
.end method

.method public b()[Lcom/truecaller/messaging/data/types/Message;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Le/a/a/c/o5;->j:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/truecaller/messaging/data/types/Message;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Lcom/truecaller/messaging/data/types/Message;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lcom/truecaller/messaging/data/types/Conversation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/o5;->m:Lcom/truecaller/messaging/data/types/Conversation;

    return-void
.end method

.method public d1()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->l:[Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public e(Le/a/a/g/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/o5;->g:Le/a/a/g/f;

    return-void
.end method

.method public f([Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/o5;->l:[Lcom/truecaller/data/entity/messaging/Participant;

    return-void
.end method

.method public g()Lcom/truecaller/messaging/data/types/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    return-object v0
.end method

.method public getFilter()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/c/o5;->h:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->m:Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, v0, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/a/c/o5;->o:Ljava/lang/Long;

    :goto_0
    return-object v0
.end method

.method public h()Lcom/truecaller/messaging/data/types/ImGroupInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->m:Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/a/a/c/o5;->h:I

    return-void
.end method

.method public j(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->k:Ljava/util/Map;

    .line 2
    iget-wide v1, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->k:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public o()[Lcom/truecaller/data/entity/messaging/Participant;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->l:[Lcom/truecaller/data/entity/messaging/Participant;

    return-object v0
.end method

.method public p()Lcom/truecaller/messaging/data/types/Conversation;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->m:Lcom/truecaller/messaging/data/types/Conversation;

    return-object v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->l:[Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v0, :cond_0

    .line 2
    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Le/a/a/g/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->g:Le/a/a/g/f;

    return-object v0
.end method

.method public s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/a/c/o5;->a:Z

    return-void
.end method

.method public t(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/o5;->f:Ljava/lang/Long;

    return-void
.end method

.method public u()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->f:Ljava/lang/Long;

    return-object v0
.end method

.method public v(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->k:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public w()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->e:Ljava/util/Map;

    return-object v0
.end method

.method public x(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/a/c/o5;->n:Z

    return-void
.end method

.method public y(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->l:[Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    iget v0, v4, Lcom/truecaller/data/entity/messaging/Participant;->z:I

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    :goto_2
    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public z()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/c/o5;->d:Ljava/util/Map;

    return-object v0
.end method
