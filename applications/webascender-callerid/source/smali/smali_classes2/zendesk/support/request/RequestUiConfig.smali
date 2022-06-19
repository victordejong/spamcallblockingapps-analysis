.class public Lzendesk/support/request/RequestUiConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/commonui/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/RequestUiConfig$Builder;
    }
.end annotation


# instance fields
.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private final hasAgentReplies:Z

.field private final localRequestId:Ljava/lang/String;

.field private final requestId:Ljava/lang/String;

.field private final requestStatus:Lzendesk/support/RequestStatus;

.field private final requestSubject:Ljava/lang/String;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ticketForm:Lzendesk/support/request/StateRequestTicketForm;

.field private final uiConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/commonui/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lzendesk/support/RequestStatus;Lzendesk/support/request/StateRequestTicketForm;Ljava/util/List;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lzendesk/support/RequestStatus;",
            "Lzendesk/support/request/StateRequestTicketForm;",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;Z",
            "Ljava/util/List<",
            "Lzendesk/commonui/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/RequestUiConfig;->requestSubject:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lg/k/d/a;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/RequestUiConfig;->tags:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lzendesk/support/request/RequestUiConfig;->requestId:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lzendesk/support/request/RequestUiConfig;->localRequestId:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lzendesk/support/request/RequestUiConfig;->requestStatus:Lzendesk/support/RequestStatus;

    .line 7
    iput-boolean p8, p0, Lzendesk/support/request/RequestUiConfig;->hasAgentReplies:Z

    .line 8
    iput-object p6, p0, Lzendesk/support/request/RequestUiConfig;->ticketForm:Lzendesk/support/request/StateRequestTicketForm;

    .line 9
    iput-object p7, p0, Lzendesk/support/request/RequestUiConfig;->files:Ljava/util/List;

    .line 10
    iput-object p9, p0, Lzendesk/support/request/RequestUiConfig;->uiConfigs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestUiConfig;->files:Ljava/util/List;

    return-object v0
.end method

.method public getLocalRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestUiConfig;->localRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestUiConfig;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestStatus()Lzendesk/support/RequestStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestUiConfig;->requestStatus:Lzendesk/support/RequestStatus;

    return-object v0
.end method

.method public getRequestSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestUiConfig;->requestSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestUiConfig;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTicketForm()Lzendesk/support/request/StateRequestTicketForm;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestUiConfig;->ticketForm:Lzendesk/support/request/StateRequestTicketForm;

    return-object v0
.end method

.method public getUiConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/commonui/p;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestUiConfig;->uiConfigs:Ljava/util/List;

    invoke-static {v0, p0}, Lzendesk/commonui/q;->a(Ljava/util/List;Lzendesk/commonui/p;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method hasAgentReplies()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/RequestUiConfig;->hasAgentReplies:Z

    return v0
.end method
