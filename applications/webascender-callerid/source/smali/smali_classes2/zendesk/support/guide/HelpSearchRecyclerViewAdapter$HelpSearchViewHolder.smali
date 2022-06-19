.class Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpSearchViewHolder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private subtitleTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;->this$0:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$d0;-><init>(Landroid/view/View;)V

    .line 3
    sget p1, Lg/k/c/f;->a1:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;->titleTextView:Landroid/widget/TextView;

    .line 4
    sget p1, Lg/k/c/f;->X0:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;->subtitleTextView:Landroid/widget/TextView;

    .line 5
    iput-object p3, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method bindTo(Lzendesk/support/SearchArticle;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lzendesk/support/SearchArticle;->getArticle()Lzendesk/support/Article;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p1}, Lzendesk/support/SearchArticle;->getArticle()Lzendesk/support/Article;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/Article;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lzendesk/support/SearchArticle;->getArticle()Lzendesk/support/Article;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/Article;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 4
    :goto_0
    iget-object v2, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;->this$0:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;

    invoke-static {v2}, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;->access$000(Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_2

    const/4 v2, -0x1

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;->this$0:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;

    invoke-static {v4}, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;->access$000(Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :goto_1
    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    .line 6
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget-object v5, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;->this$0:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;

    .line 8
    invoke-static {v5}, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;->access$000(Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x12

    .line 9
    invoke-virtual {v3, v1, v2, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 10
    iget-object v1, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 11
    :cond_3
    iget-object v2, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_2
    iget-object v1, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;->subtitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;->context:Landroid/content/Context;

    sget v3, Lg/k/c/j;->c:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Lzendesk/support/SearchArticle;->getCategory()Lzendesk/support/Category;

    move-result-object v6

    invoke-virtual {v6}, Lzendesk/support/Category;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p1}, Lzendesk/support/SearchArticle;->getSection()Lzendesk/support/Section;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/Section;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    .line 14
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder$1;

    invoke-direct {v1, p0, p1}, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder$1;-><init>(Lzendesk/support/guide/HelpSearchRecyclerViewAdapter$HelpSearchViewHolder;Lzendesk/support/SearchArticle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    :goto_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "HelpCenterActivity"

    const-string v1, "The article was null, cannot bind the view."

    .line 16
    invoke-static {v0, v1, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
