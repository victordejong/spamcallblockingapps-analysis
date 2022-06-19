.class Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ViewMessageComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageComposerStateHelper"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasAttachments(Lzendesk/support/request/ViewAttachmentsIndicator;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/ViewAttachmentsIndicator;->getAttachmentsCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasLength(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasValidText(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method getAttachmentButtonState(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    return p1

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0xc

    return p1

    :cond_1
    const/16 p1, 0xb

    return p1
.end method

.method getFieldState(ZZZZ)I
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method getSendButtonState(ZZZI)I
    .locals 0

    if-nez p2, :cond_3

    if-eqz p3, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p4, p1, :cond_1

    const/16 p1, 0xb

    return p1

    :cond_1
    const/4 p1, 0x2

    const/16 p2, 0xa

    if-ne p4, p1, :cond_2

    :cond_2
    return p2

    :cond_3
    :goto_0
    const/16 p1, 0xc

    return p1
.end method

.method getState(Landroid/widget/EditText;Landroid/widget/EditText;Lzendesk/support/request/ViewAttachmentsIndicator;ZZZ)Lzendesk/support/request/ViewMessageComposer$MessageComposerState;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;->hasLength(Ljava/lang/String;)Z

    move-result v1

    .line 3
    invoke-direct {p0, v0}, Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;->hasValidText(Ljava/lang/String;)Z

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/widget/EditText;->hasFocus()Z

    move-result p2

    .line 6
    invoke-direct {p0, p3}, Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;->hasAttachments(Lzendesk/support/request/ViewAttachmentsIndicator;)Z

    move-result p3

    .line 7
    invoke-virtual {p0, p1, v1, p2, p3}, Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;->getFieldState(ZZZZ)I

    move-result p1

    .line 8
    invoke-virtual {p0, p5, v0, p3, p1}, Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;->getSendButtonState(ZZZI)I

    move-result p2

    .line 9
    invoke-virtual {p0, p6, p4}, Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;->getAttachmentButtonState(ZZ)I

    move-result p3

    .line 10
    new-instance p4, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;

    invoke-direct {p4, p1, p2, p3}, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;-><init>(III)V

    return-object p4
.end method

.method onAttachmentClicked(ZZLandroid/widget/EditText;Landroid/widget/EditText;Lzendesk/support/request/ViewAttachmentsIndicator;)Lzendesk/support/request/ViewMessageComposer$MessageComposerState;
    .locals 7

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v5, p1

    move v6, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;->getState(Landroid/widget/EditText;Landroid/widget/EditText;Lzendesk/support/request/ViewAttachmentsIndicator;ZZZ)Lzendesk/support/request/ViewMessageComposer$MessageComposerState;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->getSendButtonState()I

    move-result p3

    const/16 p4, 0xa

    if-ne p3, p4, :cond_0

    const/16 p1, 0xb

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;->getSendButtonState()I

    move-result p1

    :goto_0
    const/4 p3, 0x1

    .line 4
    invoke-virtual {p0, p2, p3}, Lzendesk/support/request/ViewMessageComposer$MessageComposerStateHelper;->getAttachmentButtonState(ZZ)I

    move-result p2

    .line 5
    new-instance p4, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;

    invoke-direct {p4, p3, p1, p2}, Lzendesk/support/request/ViewMessageComposer$MessageComposerState;-><init>(III)V

    return-object p4
.end method
