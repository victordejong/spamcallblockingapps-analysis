.class Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->onHeightChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

.field final synthetic val$currentHeight:I


# direct methods
.method constructor <init>(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    iput p2, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->val$currentHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    invoke-static {v0}, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->access$000(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 2
    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    invoke-static {v1}, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->access$000(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    .line 3
    iget-object v2, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    invoke-static {v2}, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->access$000(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 4
    iget-object v3, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    invoke-static {v3}, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->access$100(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;)I

    move-result v3

    .line 5
    iget v4, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->val$currentHeight:I

    if-lez v4, :cond_0

    add-int/2addr v3, v4

    .line 6
    :cond_0
    iget-object v4, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    invoke-static {v4}, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->access$000(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 7
    iget-object v4, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    invoke-static {v4}, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->access$000(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 8
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener$1;->this$0:Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;->access$200(Lzendesk/support/request/RequestViewConversationsEnabled$RecyclerListener;I)V

    :cond_1
    return-void
.end method
