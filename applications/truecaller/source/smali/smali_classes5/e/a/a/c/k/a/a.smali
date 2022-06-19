.class public abstract Le/a/a/c/k/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/k/a/j;


# instance fields
.field public final a:Le/a/a/c/m5;

.field public final b:Le/a/a/c/l5;

.field public final c:Le/a/a/k/t;

.field public final d:Le/a/a/c/t7;

.field public final e:Le/a/a/c/w3;

.field public final f:Le/a/a/c/k/a/j$b;

.field public final g:Le/a/a/c/k/a/j$a;


# direct methods
.method public constructor <init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/k/t;Le/a/a/c/t7;Le/a/a/c/w3;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/u3/g;)V
    .locals 1

    const-string v0, "conversationState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModeListener"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    iput-object p2, p0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    iput-object p3, p0, Le/a/a/c/k/a/a;->c:Le/a/a/k/t;

    iput-object p4, p0, Le/a/a/c/k/a/a;->d:Le/a/a/c/t7;

    iput-object p5, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    iput-object p6, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    iput-object p7, p0, Le/a/a/c/k/a/a;->g:Le/a/a/c/k/a/j$a;

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1}, Le/a/a/c/k/a/j$b;->D(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic G(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Le/a/a/c/a7;

    invoke-virtual {p0, p1, p2}, Le/a/a/c/k/a/a;->t(Le/a/a/c/a7;I)V

    return-void
.end method

.method public K()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0}, Le/a/a/c/k/a/j$b;->K()V

    return-void
.end method

.method public K0(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1}, Le/a/a/c/k/a/j$b;->K0(Lcom/truecaller/messaging/data/types/Message;)V

    return-void
.end method

.method public P0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "email"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1}, Le/a/a/c/k/a/j$b;->P0(Ljava/lang/String;)V

    return-void
.end method

.method public Q0(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1}, Le/a/a/c/k/a/j$b;->Q0(Lcom/truecaller/messaging/data/types/Message;)V

    :cond_0
    return-void
.end method

.method public S0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "inviteKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1}, Le/a/a/c/k/a/j$b;->S0(Ljava/lang/String;)V

    return-void
.end method

.method public V0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1}, Le/a/a/c/k/a/j$b;->V0(Ljava/lang/String;)V

    return-void
.end method

.method public Z0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1}, Le/a/a/c/k/a/j$b;->Z0(Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/a/c/a7;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    const-string p2, "senderId"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    invoke-interface {v0}, Le/a/a/c/w3;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    invoke-interface {v0, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/a/g/l0/a;->getId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public h(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    invoke-interface {v0, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    instance-of v0, p1, Lcom/truecaller/messaging/data/types/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->E()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/a/c/k/a/a;->g:Le/a/a/c/k/a/j$a;

    invoke-interface {v0, p1}, Le/a/a/c/k/a/j$a;->s4(Lcom/truecaller/messaging/data/types/Message;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Le/a/a/c/k/a/a;->g:Le/a/a/c/k/a/j$a;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p1, v2, v3, v1}, Le/a/c/p/a;->U1(Le/a/a/c/k/a/j$a;Lcom/truecaller/messaging/data/types/Message;ZILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public h1(Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/data/types/Message;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget v0, p1, Lcom/truecaller/messaging/data/types/Entity;->c:I

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1, p2}, Le/a/a/c/k/a/j$b;->h1(Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/data/types/Message;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1, p2}, Le/a/a/c/k/a/j$b;->i(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V

    return-void
.end method

.method public i1(Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;Le/a/a/c/s8/i;)V
    .locals 1

    const-string v0, "visualizer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbackInfoListener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1, p2, p3}, Le/a/a/c/k/a/j$b;->i1(Lcom/truecaller/messaging/data/types/Entity;Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;Le/a/a/c/s8/i;)V

    return-void
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k(DDLjava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    invoke-interface {v0, p6}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p6

    instance-of v0, p6, Lcom/truecaller/messaging/data/types/Message;

    if-nez v0, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v6, p6

    check-cast v6, Lcom/truecaller/messaging/data/types/Message;

    .line 2
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Le/a/a/c/k/a/j$b;->Ea(DDLjava/lang/String;Lcom/truecaller/messaging/data/types/Message;)V

    return-void
.end method

.method public k0(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1}, Le/a/a/c/k/a/j$b;->k0(Lcom/truecaller/messaging/data/types/Message;)V

    return-void
.end method

.method public k1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1}, Le/a/a/c/k/a/j$b;->k1(Ljava/lang/String;)V

    return-void
.end method

.method public l(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    invoke-interface {v0, p2}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p2

    instance-of v0, p2, Lcom/truecaller/messaging/data/types/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p2, v1

    :cond_0
    check-cast p2, Lcom/truecaller/messaging/data/types/Message;

    if-eqz p2, :cond_4

    .line 2
    iget-object p2, p2, Lcom/truecaller/messaging/data/types/Message;->p:[Lcom/truecaller/messaging/data/types/Mention;

    const-string v0, "message.mentions"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p2, v3

    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v7, p1, 0x1

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    if-eqz v6, :cond_2

    move-object v1, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Mention;->getImId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    iget-object p2, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {p2, p1}, Le/a/a/c/k/a/j$b;->F9(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public n(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    invoke-interface {v0, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    instance-of v0, p1, Lcom/truecaller/messaging/data/types/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    if-eqz p1, :cond_6

    .line 2
    iget-object v0, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->B()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3
    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Le/a/a/c/k/a/a;->g:Le/a/a/c/k/a/j$a;

    invoke-interface {v0, p1}, Le/a/a/c/k/a/j$a;->ab(Lcom/truecaller/messaging/data/types/Message;)V

    goto :goto_2

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/a/c/k/a/a;->g:Le/a/a/c/k/a/j$a;

    .line 6
    invoke-interface {v0, p1, v2}, Le/a/a/c/k/a/j$a;->A3(Lcom/truecaller/messaging/data/types/Message;Z)V

    goto :goto_2

    .line 7
    :cond_2
    iget-object v0, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->B()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    :goto_0
    move v0, v3

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    .line 9
    iget-wide v4, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 10
    invoke-interface {v0, v4, v5}, Le/a/a/c/m5;->v(J)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Le/a/a/c/k/a/a;->g:Le/a/a/c/k/a/j$a;

    const/4 v4, 0x2

    invoke-static {v0, p1, v2, v4, v1}, Le/a/c/p/a;->U1(Le/a/a/c/k/a/j$a;Lcom/truecaller/messaging/data/types/Message;ZILjava/lang/Object;)V

    .line 12
    :cond_5
    iget-object p1, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {p1}, Le/a/a/c/m5;->C()I

    move-result p1

    if-ne p1, v3, :cond_6

    iget-object p1, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {p1}, Le/a/a/c/m5;->B()Z

    move-result p1

    if-nez p1, :cond_6

    .line 13
    iget-object p1, p0, Le/a/a/c/k/a/a;->g:Le/a/a/c/k/a/j$a;

    invoke-interface {p1}, Le/a/a/c/k/a/j$a;->e()V

    :cond_6
    :goto_2
    return-void
.end method

.method public o(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/a/c/a7;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/a/c/a7;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    invoke-interface {v0, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    instance-of v0, p1, Lcom/truecaller/messaging/data/types/Message;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1}, Le/a/a/c/k/a/j$b;->N7(Lcom/truecaller/messaging/data/types/Message;)V

    :cond_1
    return-void
.end method

.method public q0(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1, p2}, Le/a/a/c/k/a/j$b;->q0(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)V

    return-void
.end method

.method public s(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-object v3, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    invoke-interface {v3, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    instance-of v3, p1, Lcom/truecaller/messaging/data/types/Message;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    check-cast v1, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v1, :cond_3

    goto :goto_2

    .line 2
    :cond_1
    iget-object v3, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    sub-int/2addr p1, v2

    invoke-interface {v3, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    instance-of v3, p1, Lcom/truecaller/messaging/data/types/Message;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    check-cast v1, Lcom/truecaller/messaging/data/types/Message;

    if-nez v1, :cond_3

    :goto_2
    move v0, v2

    :cond_3
    return v0
.end method

.method public t(Le/a/a/c/a7;I)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    invoke-interface {v0, p2}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.messaging.data.types.Message"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    .line 2
    invoke-interface {p1}, Le/a/a/c/a7;->k0()Ljava/lang/Iterable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/c/r8/c;

    .line 4
    iget-object v3, p0, Le/a/a/c/k/a/a;->d:Le/a/a/c/t7;

    invoke-interface {v3, v2}, Le/a/a/c/t7;->b(Le/a/a/c/r8/c;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->E()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Le/a/a/c/a7;->e0()V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    .line 7
    iget-wide v2, v0, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 8
    invoke-interface {v1, v2, v3}, Le/a/a/c/m5;->v(J)Z

    move-result v1

    invoke-interface {p1, v1}, Le/a/a/c/a7;->h4(Z)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {p1}, Le/a/a/c/a7;->e0()V

    .line 10
    :goto_1
    iget-object v1, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    invoke-interface {v1}, Le/a/a/c/w3;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne p2, v1, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    iget-object v1, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    add-int/lit8 v6, p2, 0x1

    invoke-interface {v1, v6}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object v1

    instance-of v6, v1, Lcom/truecaller/messaging/data/types/Message;

    if-nez v6, :cond_4

    move-object v1, v4

    :cond_4
    check-cast v1, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v1, :cond_9

    .line 12
    iget-object v6, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {v6}, Le/a/a/c/m5;->G()Lcom/truecaller/messaging/conversation/ConversationMode;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_7

    if-eq v6, v2, :cond_6

    if-eq v6, v3, :cond_7

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_6
    iget-object v6, v0, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    invoke-virtual {v6}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v6

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    invoke-virtual {v1}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v1

    invoke-virtual {v6, v1}, Lw3/b/a/e0/c;->m(Lw3/b/a/z;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 14
    :cond_7
    :goto_2
    iget-object v6, v0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-virtual {v6}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v6

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-virtual {v1}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v1

    invoke-virtual {v6, v1}, Lw3/b/a/e0/c;->m(Lw3/b/a/z;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    move v1, v5

    goto :goto_4

    :cond_9
    :goto_3
    move v1, v2

    :goto_4
    if-eqz v1, :cond_b

    .line 15
    iget-object v1, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->G()Lcom/truecaller/messaging/conversation/ConversationMode;

    move-result-object v1

    sget-object v4, Lcom/truecaller/messaging/conversation/ConversationMode;->SCHEDULE:Lcom/truecaller/messaging/conversation/ConversationMode;

    if-ne v1, v4, :cond_a

    .line 16
    iget-object v1, p0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    iget-object v4, v0, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    const-string v6, "item.sendScheduleDate"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Le/a/a/c/l5;->s(Lw3/b/a/b;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 17
    :cond_a
    iget-object v1, p0, Le/a/a/c/k/a/a;->b:Le/a/a/c/l5;

    iget-object v4, v0, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v6, "item.date"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Le/a/a/c/l5;->z(Lw3/b/a/b;)Ljava/lang/String;

    move-result-object v4

    .line 18
    :cond_b
    :goto_5
    invoke-interface {p1, v4}, Le/a/a/c/a7;->n(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    invoke-interface {v1}, Le/a/a/c/w3;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p2, v1, :cond_c

    move v1, v2

    goto :goto_6

    :cond_c
    move v1, v5

    :goto_6
    invoke-interface {p1, v1}, Le/a/a/c/a7;->x2(Z)V

    .line 20
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message;->n()Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_e

    .line 21
    iget-object v1, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->H()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->B()Z

    move-result v1

    if-nez v1, :cond_e

    .line 22
    iget-object v1, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->d1()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {v1, v4}, Le/a/a/c/m5;->y(I)Z

    move-result v1

    goto :goto_7

    :cond_d
    move v1, v2

    :goto_7
    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_8

    :cond_e
    move v1, v5

    :goto_8
    invoke-interface {p1, v1}, Le/a/a/c/a7;->t3(Z)V

    .line 23
    iget-object v1, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {v1}, Le/a/a/c/m5;->B()Z

    move-result v1

    if-nez v1, :cond_f

    iget v1, v0, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-eqz v1, :cond_10

    if-eq v1, v2, :cond_10

    if-eq v1, v3, :cond_10

    if-eq v1, v4, :cond_10

    const/4 v3, 0x7

    if-ne v1, v3, :cond_f

    goto :goto_9

    :cond_f
    move v2, v5

    :cond_10
    :goto_9
    invoke-interface {p1, v2}, Le/a/a/c/a7;->w4(Z)V

    .line 24
    new-instance v1, Le/a/a/c/k/a/a$a;

    const/4 v3, 0x0

    move-object v2, v1

    move v4, p2

    move-object v5, p0

    move-object v6, p1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Le/a/a/c/k/a/a$a;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Le/a/a/c/a7;->t0(Ls1/z/b/l;)V

    .line 25
    new-instance v1, Le/a/a/c/k/a/a$a;

    const/4 v3, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Le/a/a/c/k/a/a$a;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Le/a/a/c/a7;->s4(Ls1/z/b/l;)V

    .line 26
    new-instance v1, Le/a/a/c/k/a/a$a;

    const/4 v3, 0x2

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Le/a/a/c/k/a/a$a;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Le/a/a/c/a7;->W3(Ls1/z/b/l;)V

    .line 27
    new-instance v1, Le/a/a/c/k/a/a$a;

    const/4 v3, 0x3

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Le/a/a/c/k/a/a$a;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Le/a/a/c/a7;->m0(Ls1/z/b/l;)V

    .line 28
    new-instance v1, Le/a/a/c/k/a/a$a;

    const/4 v3, 0x4

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Le/a/a/c/k/a/a$a;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Le/a/a/c/a7;->A1(Ls1/z/b/l;)V

    .line 29
    new-instance v1, Le/a/a/c/k/a/a$a;

    const/4 v3, 0x5

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Le/a/a/c/k/a/a$a;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Le/a/a/c/a7;->a4(Ls1/z/b/l;)V

    .line 30
    iget-object p1, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {p1, p2}, Le/a/a/c/k/a/j$b;->di(I)V

    return-void
.end method

.method public u(Lcom/truecaller/messaging/data/types/Message;I)Z
    .locals 7

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/c/p/a;->A1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    invoke-virtual {p0, p2}, Le/a/a/c/k/a/a;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->g:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Le/a/c/p/a;->i1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-gtz p2, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    sub-int/2addr p2, v2

    invoke-interface {v0, p2}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p2

    instance-of v0, p2, Lcom/truecaller/messaging/data/types/Message;

    if-nez v0, :cond_2

    const/4 p2, 0x0

    :cond_2
    check-cast p2, Lcom/truecaller/messaging/data/types/Message;

    if-eqz p2, :cond_6

    .line 4
    iget-object v0, p0, Le/a/a/c/k/a/a;->a:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->G()Lcom/truecaller/messaging/conversation/ConversationMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide/16 v3, 0x3c

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_4
    iget-object p2, p2, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    const-string v0, "prevMessage.sendScheduleDate"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-wide v5, p2, Lw3/b/a/e0/e;->a:J

    .line 7
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    const-string p2, "message.sendScheduleDate"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-wide p1, p1, Lw3/b/a/e0/e;->a:J

    sub-long/2addr v5, p1

    .line 9
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-ltz p1, :cond_8

    goto :goto_1

    .line 10
    :cond_5
    :goto_0
    iget-object p2, p2, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v0, "prevMessage.date"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-wide v5, p2, Lw3/b/a/e0/e;->a:J

    .line 12
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string p2, "message.date"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-wide p1, p1, Lw3/b/a/e0/e;->a:J

    sub-long/2addr v5, p1

    .line 14
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-ltz p1, :cond_8

    goto :goto_1

    :cond_6
    return v1

    :cond_7
    :goto_1
    move v1, v2

    :cond_8
    return v1
.end method

.method public v1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1}, Le/a/a/c/k/a/j$b;->v1(Ljava/lang/String;)V

    return-void
.end method

.method public x(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->g:Le/a/a/c/k/a/j$a;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Le/a/a/c/k/a/j$a;->A3(Lcom/truecaller/messaging/data/types/Message;Z)V

    return-void
.end method

.method public y(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/a/c/a7;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public z(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public z0(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->f:Le/a/a/c/k/a/j$b;

    invoke-interface {v0, p1, p2}, Le/a/a/c/k/a/j$b;->z0(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Entity;)V

    return-void
.end method
