.class Lzendesk/support/requestlist/RequestListPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestListPresenter;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/requestlist/RequestListPresenter;


# direct methods
.method constructor <init>(Lzendesk/support/requestlist/RequestListPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter$2;->this$0:Lzendesk/support/requestlist/RequestListPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettings(Lzendesk/support/SupportSdkSettings;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lzendesk/support/SupportSdkSettings;->isConversationsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter$2;->this$0:Lzendesk/support/requestlist/RequestListPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lzendesk/support/requestlist/RequestListPresenter;->access$200(Lzendesk/support/requestlist/RequestListPresenter;ZLzendesk/support/SupportSdkSettings;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter$2;->this$0:Lzendesk/support/requestlist/RequestListPresenter;

    invoke-static {p1}, Lzendesk/support/requestlist/RequestListPresenter;->access$000(Lzendesk/support/requestlist/RequestListPresenter;)Lzendesk/support/requestlist/RequestListView;

    move-result-object p1

    const-string v0, "Conversations are disabled in sdk settings, closing the request list screen!"

    invoke-virtual {p1, v0}, Lzendesk/support/requestlist/RequestListView;->finish(Ljava/lang/String;)V

    return-void
.end method
