.class Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;->onError(Lcom/zendesk/service/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;

.field final synthetic val$errorResponse:Lcom/zendesk/service/a;


# direct methods
.method constructor <init>(Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;Lcom/zendesk/service/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback$2;->this$0:Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;

    iput-object p2, p0, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback$2;->val$errorResponse:Lcom/zendesk/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback$2;->this$0:Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;

    iget-object v1, p0, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback$2;->val$errorResponse:Lcom/zendesk/service/a;

    invoke-virtual {v0, v1}, Lzendesk/support/request/ActionLoadComments$MinimumTimeCallback;->onDelayedError(Lcom/zendesk/service/a;)V

    return-void
.end method
