.class Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;->bindTo(Lzendesk/support/SearchArticle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;

.field final synthetic val$searchArticle:Lzendesk/support/SearchArticle;


# direct methods
.method constructor <init>(Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;Lzendesk/support/SearchArticle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder$1;->this$1:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;

    iput-object p2, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder$1;->val$searchArticle:Lzendesk/support/SearchArticle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder$1;->this$1:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;

    iget-object p1, p1, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;->this$0:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;

    invoke-static {p1}, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;->access$100(Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;)Lzendesk/support/HelpCenterProvider;

    move-result-object p1

    iget-object v0, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder$1;->val$searchArticle:Lzendesk/support/SearchArticle;

    .line 2
    invoke-virtual {v0}, Lzendesk/support/SearchArticle;->getArticle()Lzendesk/support/Article;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder$1;->val$searchArticle:Lzendesk/support/SearchArticle;

    .line 3
    invoke-virtual {v1}, Lzendesk/support/SearchArticle;->getArticle()Lzendesk/support/Article;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/Article;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/k/d/d;->c(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder$1$1;

    invoke-direct {v2, p0}, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder$1$1;-><init>(Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder$1;)V

    .line 4
    invoke-interface {p1, v0, v1, v2}, Lzendesk/support/HelpCenterProvider;->submitRecordArticleView(Lzendesk/support/Article;Ljava/util/Locale;Lcom/zendesk/service/f;)V

    .line 5
    iget-object p1, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder$1;->val$searchArticle:Lzendesk/support/SearchArticle;

    invoke-virtual {p1}, Lzendesk/support/SearchArticle;->getArticle()Lzendesk/support/Article;

    move-result-object p1

    invoke-static {p1}, Lzendesk/support/guide/ViewArticleActivity;->builder(Lzendesk/support/Article;)Lzendesk/support/guide/ArticleUiConfig$Builder;

    move-result-object p1

    iget-object v0, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder$1;->this$1:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder$1;->this$1:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;

    iget-object v1, v1, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;->this$0:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;

    invoke-static {v1}, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;->access$200(Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;)Lzendesk/support/guide/HelpCenterUiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/guide/HelpCenterUiConfig;->getUiConfigs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lzendesk/support/guide/ArticleUiConfig$Builder;->show(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
