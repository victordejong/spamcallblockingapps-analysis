.class Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;->bindTo(Lzendesk/support/HelpItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;

.field final synthetic val$categoryItem:Lzendesk/support/CategoryItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;Lzendesk/support/CategoryItem;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder$1;->this$1:Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;

    iput-object p2, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder$1;->val$categoryItem:Lzendesk/support/CategoryItem;

    iput p3, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder$1;->this$1:Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;

    iget-object v0, p1, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;->this$0:Lzendesk/support/guide/HelpRecyclerViewAdapter;

    invoke-static {v0}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->access$200(Lzendesk/support/guide/HelpRecyclerViewAdapter;)Lzendesk/support/guide/HelpMvp$Presenter;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder$1;->val$categoryItem:Lzendesk/support/CategoryItem;

    iget v2, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder$1;->val$position:I

    invoke-interface {v0, v1, v2}, Lzendesk/support/guide/HelpMvp$Presenter;->onCategoryClick(Lzendesk/support/CategoryItem;I)Z

    move-result v0

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;->access$102(Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;Z)Z

    .line 2
    iget-object p1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder$1;->this$1:Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;

    .line 3
    invoke-static {p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;->access$300(Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder$1;->this$1:Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;

    .line 4
    invoke-static {v1}, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;->access$100(Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;)Z

    move-result v1

    const/16 v2, 0x2710

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2710

    :goto_0
    aput v1, v0, v3

    const/4 v1, 0x1

    iget-object v4, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder$1;->this$1:Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;

    .line 5
    invoke-static {v4}, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;->access$100(Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    aput v2, v0, v1

    const-string v1, "level"

    .line 6
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 8
    iget-object p1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder$1;->this$1:Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;

    invoke-static {p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;->access$100(Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;)Z

    move-result v0

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;->access$400(Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;Z)V

    return-void
.end method
