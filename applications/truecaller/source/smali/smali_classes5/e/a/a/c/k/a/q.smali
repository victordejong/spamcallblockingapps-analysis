.class public final Le/a/a/c/k/a/q;
.super Le/a/a/c/k/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/k/a/p;


# direct methods
.method public constructor <init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/k/t;Le/a/a/c/t7;Le/a/a/c/w3;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

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
    invoke-direct/range {p0 .. p8}, Le/a/a/c/k/a/a;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/k/t;Le/a/a/c/t7;Le/a/a/c/w3;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/u3/g;)V

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 7

    .line 1
    move-object v0, p1

    check-cast v0, Le/a/a/c/a7;

    const-string p1, "view"

    .line 2
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, v0, p2}, Le/a/a/c/k/a/a;->t(Le/a/a/c/a7;I)V

    .line 4
    iget-object p1, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    .line 5
    invoke-interface {p1, p2}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.truecaller.messaging.data.types.Message"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    .line 6
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string p2, "item.entities"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.truecaller.messaging.data.types.TextEntity"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/data/types/TextEntity;

    .line 7
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 8
    invoke-interface/range {v0 .. v6}, Le/a/a/c/a7;->h1(Ljava/lang/String;ZZZLcom/truecaller/messaging/conversation/GoogleAttribution;[Lcom/truecaller/messaging/data/types/Mention;)V

    return-void
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method public m(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/k/a/a;->e:Le/a/a/c/w3;

    .line 2
    invoke-interface {v0, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    iget p1, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n(I)V
    .locals 0

    return-void
.end method
