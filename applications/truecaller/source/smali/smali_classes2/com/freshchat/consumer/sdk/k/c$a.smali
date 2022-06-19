.class public Lcom/freshchat/consumer/sdk/k/c$a;
.super Ln3/b0/a/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final lA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final lB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic lC:Lcom/freshchat/consumer/sdk/k/c;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/k/c;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/c$a;->lC:Lcom/freshchat/consumer/sdk/k/c;

    invoke-direct {p0}, Ln3/b0/a/h$b;-><init>()V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/k/c$a;->lA:Ljava/util/List;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/k/c$a;->lB:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/c$a;->lA:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Message;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/c$a;->lB:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freshchat/consumer/sdk/beans/Message;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/c$a;->lA:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/c$a;->lB:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getNewListSize()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/c$a;->lB:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/c$a;->lA:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method
