.class public Lcom/freshchat/consumer/sdk/a/t;
.super Lcom/freshchat/consumer/sdk/a/v;
.source "SourceFile"


# instance fields
.field public final synthetic qS:Ljava/util/List;

.field public final synthetic qT:Lcom/freshchat/consumer/sdk/a/s;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/a/s;Landroidx/recyclerview/widget/RecyclerView$g;Lcom/freshchat/consumer/sdk/f/e;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/t;->qT:Lcom/freshchat/consumer/sdk/a/s;

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/a/t;->qS:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/freshchat/consumer/sdk/a/v;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;Lcom/freshchat/consumer/sdk/f/e;)V

    return-void
.end method


# virtual methods
.method public iH()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/t;->qS:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method
