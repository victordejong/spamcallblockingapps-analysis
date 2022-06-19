.class Lzendesk/support/ZendeskHelpCenterService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final helpCenterService:Lzendesk/support/HelpCenterService;

.field private final localeConverter:Lzendesk/core/ZendeskLocaleConverter;


# direct methods
.method constructor <init>(Lzendesk/support/HelpCenterService;Lzendesk/core/ZendeskLocaleConverter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterService;->helpCenterService:Lzendesk/support/HelpCenterService;

    .line 3
    iput-object p2, p0, Lzendesk/support/ZendeskHelpCenterService;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    return-void
.end method


# virtual methods
.method public deleteVote(Ljava/lang/Long;Lcom/zendesk/service/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/zendesk/service/f<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ZendeskHelpCenterService"

    const-string v1, "The vote id was null, can not delete the vote"

    .line 1
    invoke-static {v0, v1, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Lcom/zendesk/service/b;

    invoke-direct {p1, v1}, Lcom/zendesk/service/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterService;->helpCenterService:Lzendesk/support/HelpCenterService;

    .line 4
    invoke-interface {v0, p1}, Lzendesk/support/HelpCenterService;->deleteVote(Ljava/lang/Long;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/zendesk/service/d;

    invoke-direct {v0, p2}, Lcom/zendesk/service/d;-><init>(Lcom/zendesk/service/f;)V

    .line 5
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public downvoteArticle(Ljava/lang/Long;Ljava/lang/String;Lcom/zendesk/service/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/ArticleVoteResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ZendeskHelpCenterService"

    const-string v0, "The article id was null, can not create down vote"

    .line 1
    invoke-static {p2, v0, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 2
    new-instance p1, Lcom/zendesk/service/b;

    invoke-direct {p1, v0}, Lcom/zendesk/service/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterService;->helpCenterService:Lzendesk/support/HelpCenterService;

    .line 4
    invoke-interface {v0, p1, p2}, Lzendesk/support/HelpCenterService;->downvoteArticle(Ljava/lang/Long;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/zendesk/service/d;

    invoke-direct {p2, p3}, Lcom/zendesk/service/d;-><init>(Lcom/zendesk/service/f;)V

    .line 5
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getArticle(Ljava/lang/Long;Ljava/util/Locale;Ljava/lang/String;Lcom/zendesk/service/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/Article;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterService;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    invoke-virtual {v0, p2}, Lzendesk/core/ZendeskLocaleConverter;->toHelpCenterLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Lzendesk/support/ZendeskHelpCenterService$4;

    invoke-direct {v0, p0}, Lzendesk/support/ZendeskHelpCenterService$4;-><init>(Lzendesk/support/ZendeskHelpCenterService;)V

    .line 3
    new-instance v1, Lcom/zendesk/service/d;

    invoke-direct {v1, p4, v0}, Lcom/zendesk/service/d;-><init>(Lcom/zendesk/service/f;Lcom/zendesk/service/d$b;)V

    .line 4
    iget-object p4, p0, Lzendesk/support/ZendeskHelpCenterService;->helpCenterService:Lzendesk/support/HelpCenterService;

    .line 5
    invoke-interface {p4, p2, p1, p3}, Lzendesk/support/HelpCenterService;->getArticle(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 6
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method getArticlesForSection(Ljava/lang/Long;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Lcom/zendesk/service/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/f<",
            "Ljava/util/List<",
            "Lzendesk/support/Article;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterService;->helpCenterService:Lzendesk/support/HelpCenterService;

    iget-object v1, p0, Lzendesk/support/ZendeskHelpCenterService;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    .line 2
    invoke-virtual {v1, p2}, Lzendesk/core/ZendeskLocaleConverter;->toHelpCenterLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x3e8

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lzendesk/support/HelpCenterService;->getArticles(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/zendesk/service/d;

    new-instance p3, Lzendesk/support/ZendeskHelpCenterService$3;

    invoke-direct {p3, p0}, Lzendesk/support/ZendeskHelpCenterService$3;-><init>(Lzendesk/support/ZendeskHelpCenterService;)V

    invoke-direct {p2, p5, p3}, Lcom/zendesk/service/d;-><init>(Lcom/zendesk/service/f;Lcom/zendesk/service/d$b;)V

    .line 3
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getAttachments(Ljava/util/Locale;Ljava/lang/Long;Lzendesk/support/AttachmentType;Lcom/zendesk/service/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/lang/Long;",
            "Lzendesk/support/AttachmentType;",
            "Lcom/zendesk/service/f<",
            "Ljava/util/List<",
            "Lzendesk/support/HelpCenterAttachment;",
            ">;>;)V"
        }
    .end annotation

    if-nez p3, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ZendeskHelpCenterService"

    const-string p3, "getAttachments() was called with null attachment type"

    .line 1
    invoke-static {p2, p3, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    .line 2
    new-instance p1, Lcom/zendesk/service/b;

    invoke-direct {p1, p3}, Lcom/zendesk/service/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterService;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    invoke-virtual {v0, p1}, Lzendesk/core/ZendeskLocaleConverter;->toHelpCenterLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterService;->helpCenterService:Lzendesk/support/HelpCenterService;

    .line 5
    invoke-virtual {p3}, Lzendesk/support/AttachmentType;->getAttachmentType()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lzendesk/support/HelpCenterService;->getAttachments(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/zendesk/service/d;

    new-instance p3, Lzendesk/support/ZendeskHelpCenterService$7;

    invoke-direct {p3, p0}, Lzendesk/support/ZendeskHelpCenterService$7;-><init>(Lzendesk/support/ZendeskHelpCenterService;)V

    invoke-direct {p2, p4, p3}, Lcom/zendesk/service/d;-><init>(Lcom/zendesk/service/f;Lcom/zendesk/service/d$b;)V

    .line 6
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method getHelp(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/zendesk/service/f;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/HelpResponse;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lzendesk/support/ZendeskHelpCenterService;->helpCenterService:Lzendesk/support/HelpCenterService;

    iget-object v2, v0, Lzendesk/support/ZendeskHelpCenterService;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    move-object v3, p1

    .line 2
    invoke-virtual {v2, p1}, Lzendesk/core/ZendeskLocaleConverter;->toHelpCenterLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lzendesk/support/SortBy;->CREATED_AT:Lzendesk/support/SortBy;

    .line 3
    invoke-virtual {v3}, Lzendesk/support/SortBy;->getApiValue()Ljava/lang/String;

    move-result-object v9

    sget-object v3, Lzendesk/support/SortOrder;->DESCENDING:Lzendesk/support/SortOrder;

    .line 4
    invoke-virtual {v3}, Lzendesk/support/SortOrder;->getApiValue()Ljava/lang/String;

    move-result-object v10

    const/16 v8, 0x3e8

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    .line 5
    invoke-interface/range {v1 .. v10}, Lzendesk/support/HelpCenterService;->getHelp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/zendesk/service/d;

    move-object/from16 v3, p7

    invoke-direct {v2, v3}, Lcom/zendesk/service/d;-><init>(Lcom/zendesk/service/f;)V

    .line 6
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method matchArticleWithUsers(Lzendesk/support/Article;Ljava/util/List;)Lzendesk/support/Article;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/Article;",
            "Ljava/util/List<",
            "Lzendesk/support/User;",
            ">;)",
            "Lzendesk/support/Article;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lzendesk/support/Article;

    invoke-direct {p1}, Lzendesk/support/Article;-><init>()V

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/User;

    .line 3
    invoke-virtual {v0}, Lzendesk/support/User;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lzendesk/support/User;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lzendesk/support/Article;->getAuthorId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lzendesk/support/Article;->setAuthor(Lzendesk/support/User;)V

    :cond_2
    return-object p1
.end method

.method matchArticlesWithUsers(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/User;",
            ">;",
            "Ljava/util/List<",
            "Lzendesk/support/Article;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/support/Article;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/User;

    .line 3
    invoke-virtual {v1}, Lzendesk/support/User;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/Article;

    .line 6
    invoke-virtual {v1}, Lzendesk/support/Article;->getAuthorId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/User;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v1, v2}, Lzendesk/support/Article;->setAuthor(Lzendesk/support/User;)V

    .line 8
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public searchArticles(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/zendesk/service/f;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/ArticlesSearchResponse;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lzendesk/support/ZendeskHelpCenterService;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    move-object v2, p2

    invoke-virtual {v1, p2}, Lzendesk/core/ZendeskLocaleConverter;->toHelpCenterLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 2
    iget-object v2, v0, Lzendesk/support/ZendeskHelpCenterService;->helpCenterService:Lzendesk/support/HelpCenterService;

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 3
    invoke-interface/range {v2 .. v10}, Lzendesk/support/HelpCenterService;->searchArticles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/zendesk/service/d;

    move-object/from16 v3, p9

    invoke-direct {v2, v3}, Lcom/zendesk/service/d;-><init>(Lcom/zendesk/service/f;)V

    .line 4
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public submitRecordArticleView(Ljava/lang/Long;Ljava/util/Locale;Lzendesk/support/RecordArticleViewRequest;Lcom/zendesk/service/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Locale;",
            "Lzendesk/support/RecordArticleViewRequest;",
            "Lcom/zendesk/service/f<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterService;->helpCenterService:Lzendesk/support/HelpCenterService;

    iget-object v1, p0, Lzendesk/support/ZendeskHelpCenterService;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    .line 2
    invoke-virtual {v1, p2}, Lzendesk/core/ZendeskLocaleConverter;->toHelpCenterLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lzendesk/support/HelpCenterService;->submitRecordArticleView(Ljava/lang/Long;Ljava/lang/String;Lzendesk/support/RecordArticleViewRequest;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/zendesk/service/d;

    invoke-direct {p2, p4}, Lcom/zendesk/service/d;-><init>(Lcom/zendesk/service/f;)V

    .line 4
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public upvoteArticle(Ljava/lang/Long;Ljava/lang/String;Lcom/zendesk/service/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/ArticleVoteResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ZendeskHelpCenterService"

    const-string v0, "The article id was null, can not create up vote"

    .line 1
    invoke-static {p2, v0, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 2
    new-instance p1, Lcom/zendesk/service/b;

    invoke-direct {p1, v0}, Lcom/zendesk/service/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterService;->helpCenterService:Lzendesk/support/HelpCenterService;

    .line 4
    invoke-interface {v0, p1, p2}, Lzendesk/support/HelpCenterService;->upvoteArticle(Ljava/lang/Long;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/zendesk/service/d;

    invoke-direct {p2, p3}, Lcom/zendesk/service/d;-><init>(Lcom/zendesk/service/f;)V

    .line 5
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
