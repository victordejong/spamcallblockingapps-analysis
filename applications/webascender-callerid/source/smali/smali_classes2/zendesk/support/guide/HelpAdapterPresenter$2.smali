.class Lzendesk/support/guide/HelpAdapterPresenter$2;
.super Lcom/zendesk/service/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/HelpAdapterPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/f<",
        "Ljava/util/List<",
        "Lzendesk/support/HelpItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/guide/HelpAdapterPresenter;


# direct methods
.method constructor <init>(Lzendesk/support/guide/HelpAdapterPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-direct {p0}, Lcom/zendesk/service/f;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/a;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {p1}, Lzendesk/support/guide/HelpAdapterPresenter;->access$300(Lzendesk/support/guide/HelpAdapterPresenter;)Lzendesk/support/guide/HelpCenterUiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/guide/HelpCenterUiConfig;->getCategoryIds()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lg/k/d/a;->i(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lzendesk/support/guide/HelpCenterMvp$ErrorType;->CATEGORY_LOAD:Lzendesk/support/guide/HelpCenterMvp$ErrorType;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {p1}, Lzendesk/support/guide/HelpAdapterPresenter;->access$300(Lzendesk/support/guide/HelpAdapterPresenter;)Lzendesk/support/guide/HelpCenterUiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/guide/HelpCenterUiConfig;->getSectionIds()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lg/k/d/a;->i(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lzendesk/support/guide/HelpCenterMvp$ErrorType;->SECTION_LOAD:Lzendesk/support/guide/HelpCenterMvp$ErrorType;

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lzendesk/support/guide/HelpCenterMvp$ErrorType;->ARTICLES_LOAD:Lzendesk/support/guide/HelpCenterMvp$ErrorType;

    .line 6
    :goto_0
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {v0}, Lzendesk/support/guide/HelpAdapterPresenter;->access$800(Lzendesk/support/guide/HelpAdapterPresenter;)Lzendesk/support/guide/HelpCenterMvp$Presenter;

    move-result-object v0

    new-instance v1, Lzendesk/support/guide/HelpAdapterPresenter$2$1;

    invoke-direct {v1, p0}, Lzendesk/support/guide/HelpAdapterPresenter$2$1;-><init>(Lzendesk/support/guide/HelpAdapterPresenter$2;)V

    invoke-interface {v0, p1, v1}, Lzendesk/support/guide/HelpCenterMvp$Presenter;->onErrorWithRetry(Lzendesk/support/guide/HelpCenterMvp$ErrorType;Lzendesk/core/RetryAction;)V

    .line 7
    iget-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpAdapterPresenter;->access$102(Lzendesk/support/guide/HelpAdapterPresenter;Z)Z

    .line 8
    iget-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {p1}, Lzendesk/support/guide/HelpAdapterPresenter;->access$700(Lzendesk/support/guide/HelpAdapterPresenter;)Lzendesk/support/guide/HelpMvp$View;

    move-result-object p1

    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {v0}, Lzendesk/support/guide/HelpAdapterPresenter;->access$400(Lzendesk/support/guide/HelpAdapterPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lzendesk/support/guide/HelpMvp$View;->showItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzendesk/support/guide/HelpAdapterPresenter$2;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/HelpItem;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzendesk/support/guide/HelpAdapterPresenter;->access$102(Lzendesk/support/guide/HelpAdapterPresenter;Z)Z

    .line 3
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {p1}, Lg/k/d/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lzendesk/support/guide/HelpAdapterPresenter;->access$202(Lzendesk/support/guide/HelpAdapterPresenter;Ljava/util/List;)Ljava/util/List;

    .line 4
    iget-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {p1}, Lzendesk/support/guide/HelpAdapterPresenter;->access$300(Lzendesk/support/guide/HelpAdapterPresenter;)Lzendesk/support/guide/HelpCenterUiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/guide/HelpCenterUiConfig;->isCollapseCategories()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {p1}, Lzendesk/support/guide/HelpAdapterPresenter;->access$200(Lzendesk/support/guide/HelpAdapterPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpAdapterPresenter;->access$500(Lzendesk/support/guide/HelpAdapterPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpAdapterPresenter;->access$402(Lzendesk/support/guide/HelpAdapterPresenter;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {p1}, Lzendesk/support/guide/HelpAdapterPresenter;->access$200(Lzendesk/support/guide/HelpAdapterPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpAdapterPresenter;->access$402(Lzendesk/support/guide/HelpAdapterPresenter;Ljava/util/List;)Ljava/util/List;

    .line 7
    :goto_0
    iget-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {p1}, Lzendesk/support/guide/HelpAdapterPresenter;->access$400(Lzendesk/support/guide/HelpAdapterPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/a;->g(Ljava/util/Collection;)Z

    move-result v0

    invoke-static {p1, v0}, Lzendesk/support/guide/HelpAdapterPresenter;->access$602(Lzendesk/support/guide/HelpAdapterPresenter;Z)Z

    .line 8
    iget-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {p1}, Lzendesk/support/guide/HelpAdapterPresenter;->access$700(Lzendesk/support/guide/HelpAdapterPresenter;)Lzendesk/support/guide/HelpMvp$View;

    move-result-object p1

    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {v0}, Lzendesk/support/guide/HelpAdapterPresenter;->access$400(Lzendesk/support/guide/HelpAdapterPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lzendesk/support/guide/HelpMvp$View;->showItems(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {p1}, Lzendesk/support/guide/HelpAdapterPresenter;->access$800(Lzendesk/support/guide/HelpAdapterPresenter;)Lzendesk/support/guide/HelpCenterMvp$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lzendesk/support/guide/HelpCenterMvp$Presenter;->onLoad()V

    return-void
.end method
