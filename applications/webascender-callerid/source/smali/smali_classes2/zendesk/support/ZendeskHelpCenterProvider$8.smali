.class Lzendesk/support/ZendeskHelpCenterProvider$8;
.super Lzendesk/support/ZendeskCallbackSuccess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/ZendeskHelpCenterProvider;->getArticle(Ljava/lang/Long;Lcom/zendesk/service/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/support/ZendeskCallbackSuccess<",
        "Lzendesk/support/SupportSdkSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/ZendeskHelpCenterProvider;

.field final synthetic val$articleId:Ljava/lang/Long;

.field final synthetic val$callback:Lcom/zendesk/service/f;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/f;Lcom/zendesk/service/f;Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterProvider$8;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    iput-object p3, p0, Lzendesk/support/ZendeskHelpCenterProvider$8;->val$callback:Lcom/zendesk/service/f;

    iput-object p4, p0, Lzendesk/support/ZendeskHelpCenterProvider$8;->val$articleId:Ljava/lang/Long;

    invoke-direct {p0, p2}, Lzendesk/support/ZendeskCallbackSuccess;-><init>(Lcom/zendesk/service/f;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/SupportSdkSettings;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskHelpCenterProvider$8;->onSuccess(Lzendesk/support/SupportSdkSettings;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/SupportSdkSettings;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$8;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    iget-object v1, p0, Lzendesk/support/ZendeskHelpCenterProvider$8;->val$callback:Lcom/zendesk/service/f;

    invoke-virtual {v0, v1, p1}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheckHelpCenterSettings(Lcom/zendesk/service/f;Lzendesk/support/SupportSdkSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$8;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    invoke-static {v0}, Lzendesk/support/ZendeskHelpCenterProvider;->access$200(Lzendesk/support/ZendeskHelpCenterProvider;)Lzendesk/support/ZendeskHelpCenterService;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/ZendeskHelpCenterProvider$8;->val$articleId:Ljava/lang/Long;

    iget-object v2, p0, Lzendesk/support/ZendeskHelpCenterProvider$8;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    .line 4
    invoke-virtual {v2, p1}, Lzendesk/support/ZendeskHelpCenterProvider;->getLocale(Lzendesk/support/SupportSdkSettings;)Ljava/util/Locale;

    move-result-object p1

    new-instance v2, Lzendesk/support/ZendeskHelpCenterProvider$8$1;

    iget-object v3, p0, Lzendesk/support/ZendeskHelpCenterProvider$8;->val$callback:Lcom/zendesk/service/f;

    invoke-direct {v2, p0, v3}, Lzendesk/support/ZendeskHelpCenterProvider$8$1;-><init>(Lzendesk/support/ZendeskHelpCenterProvider$8;Lcom/zendesk/service/f;)V

    const-string v3, "users"

    .line 5
    invoke-virtual {v0, v1, p1, v3, v2}, Lzendesk/support/ZendeskHelpCenterService;->getArticle(Ljava/lang/Long;Ljava/util/Locale;Ljava/lang/String;Lcom/zendesk/service/f;)V

    :cond_0
    return-void
.end method
