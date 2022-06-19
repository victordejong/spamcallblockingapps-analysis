.class Lzendesk/support/requestlist/RequestInfoDataSource$Network$1;
.super Lcom/zendesk/service/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestInfoDataSource$Network;->load(Lcom/zendesk/service/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/f<",
        "Ljava/util/List<",
        "Lzendesk/support/Request;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/requestlist/RequestInfoDataSource$Network;

.field final synthetic val$callback:Lcom/zendesk/service/f;


# direct methods
.method constructor <init>(Lzendesk/support/requestlist/RequestInfoDataSource$Network;Lcom/zendesk/service/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Network$1;->this$0:Lzendesk/support/requestlist/RequestInfoDataSource$Network;

    iput-object p2, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Network$1;->val$callback:Lcom/zendesk/service/f;

    invoke-direct {p0}, Lcom/zendesk/service/f;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Network$1;->val$callback:Lcom/zendesk/service/f;

    invoke-virtual {v0, p1}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzendesk/support/requestlist/RequestInfoDataSource$Network$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/Request;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Network$1;->this$0:Lzendesk/support/requestlist/RequestInfoDataSource$Network;

    invoke-static {v0}, Lzendesk/support/requestlist/RequestInfoDataSource$Network;->access$600(Lzendesk/support/requestlist/RequestInfoDataSource$Network;)Lzendesk/support/RequestProvider;

    move-result-object v0

    new-instance v1, Lzendesk/support/requestlist/RequestInfoDataSource$Network$1$1;

    invoke-direct {v1, p0, p1}, Lzendesk/support/requestlist/RequestInfoDataSource$Network$1$1;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource$Network$1;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lzendesk/support/RequestProvider;->getUpdatesForDevice(Lcom/zendesk/service/f;)V

    return-void
.end method
