.class Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentMessageComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageComposerModel"
.end annotation


# instance fields
.field private final attachmentsButtonEnabled:Z

.field private final extraAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private final maxFileSize:J

.field private final messageComposerVisible:Z

.field private final requestAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private final sendButtonEnabled:Z


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;JZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;JZZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;->requestAttachments:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;->extraAttachments:Ljava/util/List;

    .line 4
    iput-wide p3, p0, Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;->maxFileSize:J

    .line 5
    iput-boolean p5, p0, Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;->sendButtonEnabled:Z

    .line 6
    iput-boolean p6, p0, Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;->attachmentsButtonEnabled:Z

    .line 7
    iput-boolean p7, p0, Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;->messageComposerVisible:Z

    return-void
.end method


# virtual methods
.method getExtraAttachments()Ljava/util/List;
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
    iget-object v0, p0, Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;->extraAttachments:Ljava/util/List;

    return-object v0
.end method

.method getMaxFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;->maxFileSize:J

    return-wide v0
.end method

.method getRequestAttachments()Ljava/util/List;
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
    iget-object v0, p0, Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;->requestAttachments:Ljava/util/List;

    return-object v0
.end method

.method isAttachmentsButtonEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;->attachmentsButtonEnabled:Z

    return v0
.end method

.method isMessageComposerVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;->messageComposerVisible:Z

    return v0
.end method

.method isSendButtonEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;->sendButtonEnabled:Z

    return v0
.end method
