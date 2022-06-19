.class Lzendesk/support/request/ViewMessageComposer$MessageComposerState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ViewMessageComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageComposerState"
.end annotation


# instance fields
.field private final attachmentButtonState:I

.field private final fieldState:I

.field private final sendButtonState:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->fieldState:I

    .line 3
    iput p2, p0, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->sendButtonState:I

    .line 4
    iput p3, p0, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->attachmentButtonState:I

    return-void
.end method


# virtual methods
.method getFieldState()I
    .locals 1

    .line 1
    iget v0, p0, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->fieldState:I

    return v0
.end method

.method getSendButtonState()I
    .locals 1

    .line 1
    iget v0, p0, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->sendButtonState:I

    return v0
.end method

.method isAttachmentButtonActivated()Z
    .locals 2

    .line 1
    iget v0, p0, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->attachmentButtonState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAttachmentButtonEnabled()Z
    .locals 2

    .line 1
    iget v0, p0, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->attachmentButtonState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageComposerState{fieldState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->fieldState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sendButtonState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->sendButtonState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attachmentButtonEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->attachmentButtonState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
