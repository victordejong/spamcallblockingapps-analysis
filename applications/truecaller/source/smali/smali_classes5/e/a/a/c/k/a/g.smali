.class public final Le/a/a/c/k/a/g;
.super Le/a/a/c/k/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/k/a/f;


# direct methods
.method public constructor <init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/c/w3;Le/a/a/k/t;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/a/c/t7;Le/a/u3/g;)V
    .locals 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "conversationState"

    move-object v2, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    move-object v3, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    move-object v6, p3

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transportManager"

    move-object v4, p4

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object v7, p5

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModeListener"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewProvider"

    move-object/from16 v5, p7

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    .line 1
    invoke-direct/range {v1 .. v9}, Le/a/a/c/k/a/a;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/k/t;Le/a/a/c/t7;Le/a/a/c/w3;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/u3/g;)V

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/a/c/a7;

    const-string v0, "view"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2}, Le/a/a/c/k/a/a;->t(Le/a/a/c/a7;I)V

    .line 4
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    .line 5
    invoke-interface {v0, p2}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.truecaller.messaging.data.types.Message"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/messaging/data/types/Message;

    .line 6
    iget-object v0, p2, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    const-string v1, "null cannot be cast to non-null type com.truecaller.messaging.transport.history.HistoryTransportInfo"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    .line 7
    iget v0, v0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 8
    invoke-interface {p1, p2}, Le/a/a/c/a7;->x4(Lcom/truecaller/messaging/data/types/Message;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p1, p2}, Le/a/a/c/a7;->d3(Lcom/truecaller/messaging/data/types/Message;)V

    :goto_1
    return-void
.end method

.method public m(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    .line 2
    invoke-interface {v0, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/truecaller/messaging/data/types/Message;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    iget v0, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    iget p1, p1, Lcom/truecaller/messaging/data/types/Message;->D:I

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
