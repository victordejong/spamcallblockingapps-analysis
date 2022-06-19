.class Lzendesk/support/guide/ViewArticleActivity$AttachmentRequestCallback;
.super Lcom/zendesk/service/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/ViewArticleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttachmentRequestCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/f<",
        "Ljava/util/List<",
        "Lzendesk/support/HelpCenterAttachment;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/guide/ViewArticleActivity;


# direct methods
.method constructor <init>(Lzendesk/support/guide/ViewArticleActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/ViewArticleActivity$AttachmentRequestCallback;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-direct {p0}, Lcom/zendesk/service/f;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/ViewArticleActivity$AttachmentRequestCallback;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-static {v0}, Lzendesk/support/guide/ViewArticleActivity;->access$1000(Lzendesk/support/guide/ViewArticleActivity;)Lzendesk/support/guide/ViewArticleActivity$ArticleAttachmentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/ViewArticleActivity$AttachmentRequestCallback;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    sget-object v1, Lzendesk/support/guide/ViewArticleActivity$LoadingState;->ERRORED_ATTACHMENT:Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    invoke-virtual {v0, v1}, Lzendesk/support/guide/ViewArticleActivity;->setLoadingState(Lzendesk/support/guide/ViewArticleActivity$LoadingState;)V

    const-string v0, "ViewArticleActivity"

    .line 3
    invoke-static {v0, p1}, Lg/k/b/a;->c(Ljava/lang/String;Lcom/zendesk/service/a;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzendesk/support/guide/ViewArticleActivity$AttachmentRequestCallback;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/HelpCenterAttachment;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/ViewArticleActivity$AttachmentRequestCallback;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-static {v0}, Lzendesk/support/guide/ViewArticleActivity;->access$1000(Lzendesk/support/guide/ViewArticleActivity;)Lzendesk/support/guide/ViewArticleActivity$ArticleAttachmentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 3
    iget-object v0, p0, Lzendesk/support/guide/ViewArticleActivity$AttachmentRequestCallback;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-static {v0}, Lzendesk/support/guide/ViewArticleActivity;->access$1000(Lzendesk/support/guide/ViewArticleActivity;)Lzendesk/support/guide/ViewArticleActivity$ArticleAttachmentAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 4
    iget-object p1, p0, Lzendesk/support/guide/ViewArticleActivity$AttachmentRequestCallback;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    invoke-static {p1}, Lzendesk/support/guide/ViewArticleActivity;->access$1100(Lzendesk/support/guide/ViewArticleActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-static {p1}, Lzendesk/support/guide/ViewArticleActivity;->access$1200(Landroid/widget/ListView;)V

    .line 5
    iget-object p1, p0, Lzendesk/support/guide/ViewArticleActivity$AttachmentRequestCallback;->this$0:Lzendesk/support/guide/ViewArticleActivity;

    sget-object v0, Lzendesk/support/guide/ViewArticleActivity$LoadingState;->DISPLAYING:Lzendesk/support/guide/ViewArticleActivity$LoadingState;

    invoke-virtual {p1, v0}, Lzendesk/support/guide/ViewArticleActivity;->setLoadingState(Lzendesk/support/guide/ViewArticleActivity$LoadingState;)V

    return-void
.end method
