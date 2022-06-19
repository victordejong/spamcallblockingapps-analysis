.class Lzendesk/support/SupportSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/core/Settings;


# static fields
.field private static DEFAULT:Lzendesk/support/SupportSettings;


# instance fields
.field private final attachments:Lzendesk/support/AttachmentSettings;

.field private final contactUs:Lzendesk/support/ContactUsSettings;

.field private final conversations:Lzendesk/support/ConversationsSettings;

.field private final neverRequestEmail:Z

.field private final referrerUrl:Ljava/lang/String;

.field private final showClosedRequests:Z

.field private final showReferrerLogo:Z

.field private final systemMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v10, Lzendesk/support/SupportSettings;

    .line 2
    invoke-static {}, Lzendesk/support/ConversationsSettings;->defaultSettings()Lzendesk/support/ConversationsSettings;

    move-result-object v1

    .line 3
    invoke-static {}, Lzendesk/support/ContactUsSettings;->defaultSettings()Lzendesk/support/ContactUsSettings;

    move-result-object v2

    .line 4
    invoke-static {}, Lzendesk/support/AttachmentSettings;->defaultSettings()Lzendesk/support/AttachmentSettings;

    move-result-object v3

    .line 5
    invoke-static {}, Lzendesk/support/TicketFormSettings;->defaultSettings()Lzendesk/support/TicketFormSettings;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, ""

    const-string v9, ""

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lzendesk/support/SupportSettings;-><init>(Lzendesk/support/ConversationsSettings;Lzendesk/support/ContactUsSettings;Lzendesk/support/AttachmentSettings;Lzendesk/support/TicketFormSettings;ZZZLjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lzendesk/support/SupportSettings;->DEFAULT:Lzendesk/support/SupportSettings;

    return-void
.end method

.method constructor <init>(Lzendesk/support/ConversationsSettings;Lzendesk/support/ContactUsSettings;Lzendesk/support/AttachmentSettings;Lzendesk/support/TicketFormSettings;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/SupportSettings;->conversations:Lzendesk/support/ConversationsSettings;

    .line 3
    iput-object p2, p0, Lzendesk/support/SupportSettings;->contactUs:Lzendesk/support/ContactUsSettings;

    .line 4
    iput-object p3, p0, Lzendesk/support/SupportSettings;->attachments:Lzendesk/support/AttachmentSettings;

    .line 5
    iput-boolean p5, p0, Lzendesk/support/SupportSettings;->neverRequestEmail:Z

    .line 6
    iput-boolean p6, p0, Lzendesk/support/SupportSettings;->showClosedRequests:Z

    .line 7
    iput-boolean p7, p0, Lzendesk/support/SupportSettings;->showReferrerLogo:Z

    .line 8
    iput-object p8, p0, Lzendesk/support/SupportSettings;->referrerUrl:Ljava/lang/String;

    .line 9
    iput-object p9, p0, Lzendesk/support/SupportSettings;->systemMessage:Ljava/lang/String;

    return-void
.end method

.method static defaultSettings()Lzendesk/support/SupportSettings;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/SupportSettings;->DEFAULT:Lzendesk/support/SupportSettings;

    return-object v0
.end method


# virtual methods
.method getAttachments()Lzendesk/support/AttachmentSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSettings;->attachments:Lzendesk/support/AttachmentSettings;

    return-object v0
.end method

.method getContactUs()Lzendesk/support/ContactUsSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSettings;->contactUs:Lzendesk/support/ContactUsSettings;

    return-object v0
.end method

.method getConversations()Lzendesk/support/ConversationsSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSettings;->conversations:Lzendesk/support/ConversationsSettings;

    return-object v0
.end method

.method getReferrerUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSettings;->referrerUrl:Ljava/lang/String;

    return-object v0
.end method

.method getSystemMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/SupportSettings;->systemMessage:Ljava/lang/String;

    return-object v0
.end method

.method isNeverRequestEmailOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/SupportSettings;->neverRequestEmail:Z

    return v0
.end method

.method isShowClosedRequests()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/SupportSettings;->showClosedRequests:Z

    return v0
.end method

.method isShowReferrerLogo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/SupportSettings;->showReferrerLogo:Z

    return v0
.end method
