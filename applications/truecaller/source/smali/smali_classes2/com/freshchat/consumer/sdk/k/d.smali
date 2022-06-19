.class public Lcom/freshchat/consumer/sdk/k/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic lC:Lcom/freshchat/consumer/sdk/k/c;

.field public final synthetic nr:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/k/c;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/d;->lC:Lcom/freshchat/consumer/sdk/k/c;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/k/d;->nr:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/d;->lC:Lcom/freshchat/consumer/sdk/k/c;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/d;->nr:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/k/h;->C(Ljava/util/List;)Lcom/freshchat/consumer/sdk/b/k;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/b/k;->nd:Lcom/freshchat/consumer/sdk/b/k;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/d;->lC:Lcom/freshchat/consumer/sdk/k/c;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/d;->nr:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/k/h;->E(Ljava/util/List;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/d;->lC:Lcom/freshchat/consumer/sdk/k/c;

    invoke-virtual {v2, v0, v1}, Lcom/freshchat/consumer/sdk/k/c;->x(J)V

    :cond_0
    return-void
.end method
