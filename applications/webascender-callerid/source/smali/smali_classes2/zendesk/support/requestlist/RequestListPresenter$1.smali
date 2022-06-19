.class Lzendesk/support/requestlist/RequestListPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestListPresenter;->onCreate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/requestlist/RequestListPresenter;

.field final synthetic val$init:Z


# direct methods
.method constructor <init>(Lzendesk/support/requestlist/RequestListPresenter;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter$1;->this$0:Lzendesk/support/requestlist/RequestListPresenter;

    iput-boolean p2, p0, Lzendesk/support/requestlist/RequestListPresenter$1;->val$init:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettings(Lzendesk/support/SupportSdkSettings;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lzendesk/support/SupportSdkSettings;->isConversationsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter$1;->this$0:Lzendesk/support/requestlist/RequestListPresenter;

    invoke-static {v0}, Lzendesk/support/requestlist/RequestListPresenter;->access$000(Lzendesk/support/requestlist/RequestListPresenter;)Lzendesk/support/requestlist/RequestListView;

    move-result-object v1

    invoke-virtual {p1}, Lzendesk/support/SupportSdkSettings;->isShowReferrerLogoEnabled()Z

    move-result v2

    invoke-virtual {p1}, Lzendesk/support/SupportSdkSettings;->getReferrerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lzendesk/support/requestlist/RequestListPresenter;->access$100(Lzendesk/support/requestlist/RequestListPresenter;Lzendesk/support/requestlist/RequestListView;ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter$1;->this$0:Lzendesk/support/requestlist/RequestListPresenter;

    iget-boolean v1, p0, Lzendesk/support/requestlist/RequestListPresenter$1;->val$init:Z

    invoke-static {v0, v1, p1}, Lzendesk/support/requestlist/RequestListPresenter;->access$200(Lzendesk/support/requestlist/RequestListPresenter;ZLzendesk/support/SupportSdkSettings;)V

    .line 4
    iget-boolean p1, p0, Lzendesk/support/requestlist/RequestListPresenter$1;->val$init:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter$1;->this$0:Lzendesk/support/requestlist/RequestListPresenter;

    invoke-static {p1}, Lzendesk/support/requestlist/RequestListPresenter;->access$300(Lzendesk/support/requestlist/RequestListPresenter;)Lzendesk/support/requestlist/RequestListModel;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListModel;->trackRequestListViewed()V

    :cond_1
    return-void

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter$1;->this$0:Lzendesk/support/requestlist/RequestListPresenter;

    invoke-static {p1}, Lzendesk/support/requestlist/RequestListPresenter;->access$000(Lzendesk/support/requestlist/RequestListPresenter;)Lzendesk/support/requestlist/RequestListView;

    move-result-object p1

    const-string v0, "Conversations are disabled in sdk settings, closing the request list screen!"

    invoke-virtual {p1, v0}, Lzendesk/support/requestlist/RequestListView;->finish(Ljava/lang/String;)V

    return-void
.end method
