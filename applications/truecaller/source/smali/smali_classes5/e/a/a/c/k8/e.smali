.class public final Le/a/a/c/k8/e;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/k8/m;
.implements Le/a/a/c/k8/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/c/k8/n;",
        ">;",
        "Le/a/a/c/k8/m;",
        "Le/a/a/c/k8/i;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/r2/j;

.field public final h:Ls1/w/f;

.field public final i:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Le/a/q2/i0;


# direct methods
.method public constructor <init>(Le/a/r2/j;Ls1/w/f;Le/a/r2/f;Lo3/a;Le/a/q2/i0;)V
    .locals 1
    .param p1    # Le/a/r2/j;
        .annotation runtime Ljavax/inject/Named;
            value = "ui_thread"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/j;",
            "Ls1/w/f;",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;",
            "Le/a/q2/i0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiThread"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesStorage"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAnalytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/c/k8/e;->g:Le/a/r2/j;

    iput-object p2, p0, Le/a/a/c/k8/e;->h:Ls1/w/f;

    iput-object p3, p0, Le/a/a/c/k8/e;->i:Le/a/r2/f;

    iput-object p4, p0, Le/a/a/c/k8/e;->j:Lo3/a;

    iput-object p5, p0, Le/a/a/c/k8/e;->k:Le/a/q2/i0;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/k8/e;->d:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/c/k8/e;->e:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/c/k8/e;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public F1(Lcom/truecaller/messaging/data/types/Conversation;)Z
    .locals 3

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k8/e;->f:Ljava/util/Map;

    iget-wide v1, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public I(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V
    .locals 1

    const-string v0, "imGroupInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/k8/n;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/a/c/k8/n;->I(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V

    :cond_0
    return-void
.end method

.method public final Ij(Ljava/util/List;ZLs1/z/b/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;Z",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/c/k8/e;->i:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/truecaller/messaging/data/types/Conversation;

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Lcom/truecaller/messaging/data/types/Conversation;

    .line 3
    invoke-interface {v0, v1, p2}, Le/a/a/g/m;->f([Lcom/truecaller/messaging/data/types/Conversation;Z)Le/a/r2/x;

    move-result-object v0

    iget-object v1, p0, Le/a/a/c/k8/e;->g:Le/a/r2/j;

    new-instance v2, Le/a/a/c/k8/e$a;

    invoke-direct {v2, p3}, Le/a/a/c/k8/e$a;-><init>(Ls1/z/b/a;)V

    invoke-virtual {v0, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    const-string p3, "conversationList"

    .line 4
    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/truecaller/messaging/data/types/Conversation;

    .line 6
    iget-object v0, p0, Le/a/a/c/k8/e;->k:Le/a/q2/i0;

    .line 7
    iget-wide v2, p3, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 8
    iget v4, p3, Lcom/truecaller/messaging/data/types/Conversation;->t:I

    .line 9
    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->Companion:Lcom/truecaller/messaging/data/types/InboxTab$a;

    iget p3, p3, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    invoke-virtual {v1, p3}, Lcom/truecaller/messaging/data/types/InboxTab$a;->a(I)Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v5

    move v1, p2

    .line 10
    invoke-interface/range {v0 .. v5}, Le/a/q2/i0;->u(ZJILcom/truecaller/messaging/data/types/InboxTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public J(Lcom/truecaller/messaging/data/types/Conversation;)V
    .locals 4

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    .line 2
    iget-object v2, p0, Le/a/a/c/k8/e;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Le/a/a/c/k8/e;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Le/a/a/c/k8/e;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    iget-object p1, p0, Le/a/a/c/k8/e;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/k8/n;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Le/a/a/c/k8/n;->c0()V

    .line 8
    invoke-interface {p1}, Le/a/a/c/k8/n;->g0()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/k8/n;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/a/c/k8/n;->e()V

    :cond_2
    :goto_1
    return-void
.end method

.method public N()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/c/k8/e;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public O()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/k8/e;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/k8/n;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Le/a/a/c/k8/n;->B1(Z)V

    .line 4
    invoke-interface {v0}, Le/a/a/c/k8/n;->c0()V

    :cond_0
    return-void
.end method

.method public P()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/k8/n;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/a/c/k8/n;->g()V

    .line 3
    invoke-interface {v0, v1}, Le/a/a/c/k8/n;->B1(Z)V

    .line 4
    invoke-interface {v0}, Le/a/a/c/k8/n;->c0()V

    :cond_0
    return v1
.end method

.method public R()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/k8/e;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Z
    .locals 5

    const v0, 0x7f0a00eb

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Le/a/a/c/k8/e;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Conversation;

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Le/a/a/c/k8/e;->e:Ljava/util/Map;

    iget-wide v3, v1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Le/a/a/c/k8/e;->e:Ljava/util/Map;

    iget-wide v3, v1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    new-instance v1, Le/a/a/c/k8/f;

    invoke-direct {v1, p0, p1}, Le/a/a/c/k8/f;-><init>(Le/a/a/c/k8/e;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0, v1}, Le/a/a/c/k8/e;->Ij(Ljava/util/List;ZLs1/z/b/a;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public ij(Lcom/truecaller/messaging/data/types/Conversation;)V
    .locals 3

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k8/e;->e:Ljava/util/Map;

    iget-wide v1, p1, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/truecaller/messaging/data/types/Conversation;->s:I

    .line 2
    :goto_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/k8/n;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, v0}, Le/a/a/c/k8/n;->q2(Lcom/truecaller/messaging/data/types/Conversation;I)V

    :cond_1
    return-void
.end method

.method public v6()V
    .locals 6

    .line 1
    new-instance v3, Le/a/a/c/k8/e$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/a/c/k8/e$b;-><init>(Le/a/a/c/k8/e;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public ya(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "archiveList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/a/c/k8/e$c;

    invoke-direct {v0, p0}, Le/a/a/c/k8/e$c;-><init>(Le/a/a/c/k8/e;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Le/a/a/c/k8/e;->Ij(Ljava/util/List;ZLs1/z/b/a;)V

    return-void
.end method
