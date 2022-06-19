.class Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;
.super Lcom/zendesk/service/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/HelpCenterPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewSafeRetryZendeskCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/f<",
        "Ljava/util/List<",
        "Lzendesk/support/SearchArticle;",
        ">;>;"
    }
.end annotation


# instance fields
.field private query:Ljava/lang/String;

.field final synthetic this$0:Lzendesk/support/guide/HelpCenterPresenter;


# direct methods
.method constructor <init>(Lzendesk/support/guide/HelpCenterPresenter;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->this$0:Lzendesk/support/guide/HelpCenterPresenter;

    invoke-direct {p0}, Lcom/zendesk/service/f;-><init>()V

    .line 2
    iput-object p2, p0, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->query:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->query:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->this$0:Lzendesk/support/guide/HelpCenterPresenter;

    invoke-static {v0}, Lzendesk/support/guide/HelpCenterPresenter;->access$000(Lzendesk/support/guide/HelpCenterPresenter;)Lzendesk/support/guide/HelpCenterMvp$View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->this$0:Lzendesk/support/guide/HelpCenterPresenter;

    invoke-static {p1}, Lzendesk/support/guide/HelpCenterPresenter;->access$000(Lzendesk/support/guide/HelpCenterPresenter;)Lzendesk/support/guide/HelpCenterMvp$View;

    move-result-object p1

    invoke-interface {p1}, Lzendesk/support/guide/HelpCenterMvp$View;->hideLoadingState()V

    .line 3
    iget-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->this$0:Lzendesk/support/guide/HelpCenterPresenter;

    invoke-static {p1}, Lzendesk/support/guide/HelpCenterPresenter;->access$000(Lzendesk/support/guide/HelpCenterPresenter;)Lzendesk/support/guide/HelpCenterMvp$View;

    move-result-object p1

    sget-object v0, Lzendesk/support/guide/HelpCenterMvp$ErrorType;->ARTICLES_LOAD:Lzendesk/support/guide/HelpCenterMvp$ErrorType;

    new-instance v1, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback$2;

    invoke-direct {v1, p0}, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback$2;-><init>(Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;)V

    invoke-interface {p1, v0, v1}, Lzendesk/support/guide/HelpCenterMvp$View;->showLoadArticleErrorWithRetry(Lzendesk/support/guide/HelpCenterMvp$ErrorType;Lzendesk/core/RetryAction;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->this$0:Lzendesk/support/guide/HelpCenterPresenter;

    invoke-static {v0}, Lzendesk/support/guide/HelpCenterPresenter;->access$200(Lzendesk/support/guide/HelpCenterPresenter;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback$3;

    invoke-direct {v1, p0, p1}, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback$3;-><init>(Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;Lcom/zendesk/service/a;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/SearchArticle;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->this$0:Lzendesk/support/guide/HelpCenterPresenter;

    invoke-static {v0}, Lzendesk/support/guide/HelpCenterPresenter;->access$000(Lzendesk/support/guide/HelpCenterPresenter;)Lzendesk/support/guide/HelpCenterMvp$View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->this$0:Lzendesk/support/guide/HelpCenterPresenter;

    invoke-static {v0}, Lzendesk/support/guide/HelpCenterPresenter;->access$000(Lzendesk/support/guide/HelpCenterPresenter;)Lzendesk/support/guide/HelpCenterMvp$View;

    move-result-object v0

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->hideLoadingState()V

    .line 4
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->this$0:Lzendesk/support/guide/HelpCenterPresenter;

    invoke-static {v0}, Lzendesk/support/guide/HelpCenterPresenter;->access$000(Lzendesk/support/guide/HelpCenterPresenter;)Lzendesk/support/guide/HelpCenterMvp$View;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->query:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lzendesk/support/guide/HelpCenterMvp$View;->showSearchResults(Ljava/util/List;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->this$0:Lzendesk/support/guide/HelpCenterPresenter;

    invoke-static {p1}, Lzendesk/support/guide/HelpCenterPresenter;->access$100(Lzendesk/support/guide/HelpCenterPresenter;)Lzendesk/support/guide/HelpCenterUiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/guide/HelpCenterUiConfig;->isContactUsButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->this$0:Lzendesk/support/guide/HelpCenterPresenter;

    invoke-static {p1}, Lzendesk/support/guide/HelpCenterPresenter;->access$000(Lzendesk/support/guide/HelpCenterPresenter;)Lzendesk/support/guide/HelpCenterMvp$View;

    move-result-object p1

    invoke-interface {p1}, Lzendesk/support/guide/HelpCenterMvp$View;->showContactUsButton()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;->this$0:Lzendesk/support/guide/HelpCenterPresenter;

    invoke-static {v0}, Lzendesk/support/guide/HelpCenterPresenter;->access$200(Lzendesk/support/guide/HelpCenterPresenter;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback$1;

    invoke-direct {v1, p0, p1}, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback$1;-><init>(Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
