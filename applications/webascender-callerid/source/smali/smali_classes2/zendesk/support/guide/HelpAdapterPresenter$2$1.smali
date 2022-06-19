.class Lzendesk/support/guide/HelpAdapterPresenter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/core/RetryAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/guide/HelpAdapterPresenter$2;->onError(Lcom/zendesk/service/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzendesk/support/guide/HelpAdapterPresenter$2;


# direct methods
.method constructor <init>(Lzendesk/support/guide/HelpAdapterPresenter$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter$2$1;->this$1:Lzendesk/support/guide/HelpAdapterPresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetry()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter$2$1;->this$1:Lzendesk/support/guide/HelpAdapterPresenter$2;

    iget-object v0, v0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzendesk/support/guide/HelpAdapterPresenter;->access$102(Lzendesk/support/guide/HelpAdapterPresenter;Z)Z

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter$2$1;->this$1:Lzendesk/support/guide/HelpAdapterPresenter$2;

    iget-object v0, v0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {v0}, Lzendesk/support/guide/HelpAdapterPresenter;->access$700(Lzendesk/support/guide/HelpAdapterPresenter;)Lzendesk/support/guide/HelpMvp$View;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/guide/HelpAdapterPresenter$2$1;->this$1:Lzendesk/support/guide/HelpAdapterPresenter$2;

    iget-object v1, v1, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {v1}, Lzendesk/support/guide/HelpAdapterPresenter;->access$400(Lzendesk/support/guide/HelpAdapterPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lzendesk/support/guide/HelpMvp$View;->showItems(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter$2$1;->this$1:Lzendesk/support/guide/HelpAdapterPresenter$2;

    iget-object v0, v0, Lzendesk/support/guide/HelpAdapterPresenter$2;->this$0:Lzendesk/support/guide/HelpAdapterPresenter;

    invoke-static {v0}, Lzendesk/support/guide/HelpAdapterPresenter;->access$000(Lzendesk/support/guide/HelpAdapterPresenter;)V

    return-void
.end method
