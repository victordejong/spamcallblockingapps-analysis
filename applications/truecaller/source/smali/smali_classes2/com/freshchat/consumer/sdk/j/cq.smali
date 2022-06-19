.class public abstract Lcom/freshchat/consumer/sdk/j/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b0/a/q;


# instance fields
.field private final lo:Landroidx/recyclerview/widget/RecyclerView$g;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/cq;->lo:Landroidx/recyclerview/widget/RecyclerView$g;

    return-void
.end method


# virtual methods
.method public abstract ht()V
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/cq;->lo:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeChanged(IILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/cq;->ht()V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/cq;->lo:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeInserted(II)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/cq;->ht()V

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/cq;->lo:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemMoved(II)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/cq;->ht()V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/cq;->lo:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeRemoved(II)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/cq;->ht()V

    return-void
.end method
