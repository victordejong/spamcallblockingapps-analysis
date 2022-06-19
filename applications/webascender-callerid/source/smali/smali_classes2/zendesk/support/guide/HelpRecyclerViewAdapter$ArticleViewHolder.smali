.class Lzendesk/support/guide/HelpRecyclerViewAdapter$ArticleViewHolder;
.super Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/HelpRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArticleViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/guide/HelpRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lzendesk/support/guide/HelpRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$ArticleViewHolder;->this$0:Lzendesk/support/guide/HelpRecyclerViewAdapter;

    .line 2
    invoke-direct {p0, p2}, Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;->textView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindTo(Lzendesk/support/HelpItem;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Lzendesk/support/HelpItem;->getId()Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;->textView:Landroid/widget/TextView;

    invoke-interface {p1}, Lzendesk/support/HelpItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzendesk/support/UiUtils;->decodeHtmlEntities(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;->textView:Landroid/widget/TextView;

    new-instance v0, Lzendesk/support/guide/HelpRecyclerViewAdapter$ArticleViewHolder$1;

    invoke-direct {v0, p0, p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter$ArticleViewHolder$1;-><init>(Lzendesk/support/guide/HelpRecyclerViewAdapter$ArticleViewHolder;Lzendesk/support/HelpItem;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "HelpCenterActivity"

    const-string v0, "Article item was null, cannot bind"

    .line 4
    invoke-static {p2, v0, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
