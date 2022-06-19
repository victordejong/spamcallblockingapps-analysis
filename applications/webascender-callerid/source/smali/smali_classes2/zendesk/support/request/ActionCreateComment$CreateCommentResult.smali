.class Lzendesk/support/request/ActionCreateComment$CreateCommentResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ActionCreateComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CreateCommentResult"
.end annotation


# instance fields
.field private final commentRemoteId:J

.field private final localToRemoteAttachments:Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;

.field private final message:Lzendesk/support/request/StateMessage;

.field private final requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzendesk/support/request/StateMessage;Ljava/lang/String;JLzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/ActionCreateComment$CreateCommentResult;->message:Lzendesk/support/request/StateMessage;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/ActionCreateComment$CreateCommentResult;->requestId:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lzendesk/support/request/ActionCreateComment$CreateCommentResult;->commentRemoteId:J

    .line 5
    iput-object p5, p0, Lzendesk/support/request/ActionCreateComment$CreateCommentResult;->localToRemoteAttachments:Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;

    return-void
.end method


# virtual methods
.method getCommentRemoteId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzendesk/support/request/ActionCreateComment$CreateCommentResult;->commentRemoteId:J

    return-wide v0
.end method

.method getLocalToRemoteAttachments()Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ActionCreateComment$CreateCommentResult;->localToRemoteAttachments:Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;

    return-object v0
.end method

.method getMessage()Lzendesk/support/request/StateMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ActionCreateComment$CreateCommentResult;->message:Lzendesk/support/request/StateMessage;

    return-object v0
.end method

.method getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ActionCreateComment$CreateCommentResult;->requestId:Ljava/lang/String;

    return-object v0
.end method
