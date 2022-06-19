.class public final Le/a/a/c/k/c/d;
.super Le/a/a/c/k/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/c/k/b<",
        "Le/a/a/c/y2;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Z

.field public final d:Le/a/a/c/c5;

.field public final e:Le/a/a/c/w3;


# direct methods
.method public constructor <init>(Le/a/a/c/c5;Le/a/a/c/w3;)V
    .locals 1

    const-string v0, "actionClickListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/a/c/k/b;-><init>(Le/a/a/c/w3;)V

    iput-object p1, p0, Le/a/a/c/k/c/d;->d:Le/a/a/c/c5;

    iput-object p2, p0, Le/a/a/c/k/c/d;->e:Le/a/a/c/w3;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/a/c/k/c/d;->c:Z

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 3

    .line 1
    check-cast p1, Le/a/a/c/y2;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/c/k/c/d;->e:Le/a/a/c/w3;

    invoke-interface {v0, p2}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.truecaller.messaging.conversation.adapter.action.ActionsItem"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/a/c/k/c/a;

    .line 4
    invoke-interface {p1}, Le/a/a/c/y2;->N0()V

    .line 5
    iget-object p2, p2, Le/a/a/c/k/c/a;->b:Ljava/util/List;

    .line 6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/conversation/ConversationAction;

    .line 7
    iget v1, v0, Lcom/truecaller/messaging/conversation/ConversationAction;->menuId:I

    invoke-interface {p1, v1}, Le/a/a/c/y2;->I1(I)V

    .line 8
    iget-object v1, v0, Lcom/truecaller/messaging/conversation/ConversationAction;->dynamicTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/truecaller/messaging/conversation/ConversationAction;->textViewId:I

    const-string v2, "it"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Le/a/a/c/y2;->t1(ILjava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p1}, Le/a/a/c/y2;->J3()V

    .line 10
    new-instance p2, Le/a/a/c/k/c/b;

    invoke-direct {p2, p0}, Le/a/a/c/k/c/b;-><init>(Le/a/a/c/k/c/d;)V

    invoke-interface {p1, p2}, Le/a/a/c/y2;->u4(Ls1/z/b/a;)V

    .line 11
    new-instance p2, Le/a/a/c/k/c/c;

    invoke-direct {p2, p0}, Le/a/a/c/k/c/c;-><init>(Le/a/a/c/k/c/d;)V

    invoke-interface {p1, p2}, Le/a/a/c/y2;->s0(Ls1/z/b/l;)V

    .line 12
    iget-boolean p2, p0, Le/a/a/c/k/c/d;->c:Z

    if-eqz p2, :cond_2

    .line 13
    invoke-interface {p1}, Le/a/a/c/y2;->P0()V

    goto :goto_1

    .line 14
    :cond_2
    invoke-interface {p1}, Le/a/a/c/y2;->F3()V

    :goto_1
    return-void
.end method

.method public m(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/k/c/d;->e:Le/a/a/c/w3;

    invoke-interface {v0, p1}, Le/a/a/c/w3;->getItem(I)Le/a/a/g/l0/a;

    move-result-object p1

    .line 2
    instance-of p1, p1, Le/a/a/c/k/c/a;

    return p1
.end method
