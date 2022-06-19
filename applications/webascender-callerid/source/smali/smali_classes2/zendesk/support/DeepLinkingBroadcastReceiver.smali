.class public Lzendesk/support/DeepLinkingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field deepLinkHelper:Lzendesk/support/ZendeskDeepLinkHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget-object v0, Lzendesk/support/SdkDependencyProvider;->INSTANCE:Lzendesk/support/SdkDependencyProvider;

    invoke-virtual {v0}, Lzendesk/support/SdkDependencyProvider;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "DeepLinkingBroadcastReceiver"

    const-string v0, "Cannot use Support SDK without initializing Zendesk. Call Zendesk.INSTANCE.init(...) and Support.INSTANCE.init(Zendesk)"

    .line 2
    invoke-static {p2, v0, p1}, Lg/k/b/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lzendesk/support/SdkDependencyProvider;->provideSupportSdkComponent()Lzendesk/support/SupportSdkComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lzendesk/support/SupportSdkComponent;->inject(Lzendesk/support/DeepLinkingBroadcastReceiver;)V

    const-string v0, "extra_request_intent"

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "extra_follow_up_activities"

    .line 5
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 6
    iget-object v1, p0, Lzendesk/support/DeepLinkingBroadcastReceiver;->deepLinkHelper:Lzendesk/support/ZendeskDeepLinkHelper;

    invoke-virtual {v1, v0, p1, p2}, Lzendesk/support/ZendeskDeepLinkHelper;->deepLinkToRequest(Landroid/content/Intent;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
