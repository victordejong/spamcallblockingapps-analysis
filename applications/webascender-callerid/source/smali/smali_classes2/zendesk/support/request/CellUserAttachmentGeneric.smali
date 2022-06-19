.class Lzendesk/support/request/CellUserAttachmentGeneric;
.super Lzendesk/support/request/CellBase;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/CellType$Attachment;
.implements Lzendesk/support/request/CellType$Stateful;


# instance fields
.field private final appInfo:Landroid/content/pm/ResolveInfo;

.field private final erroredMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final insets:Landroid/graphics/Rect;

.field private final lastErrorCellOfBlock:Z

.field private final markAsDelivered:Z

.field private final message:Lzendesk/support/request/StateMessage;

.field private final requestAttachment:Lzendesk/support/request/StateRequestAttachment;

.field private final showError:Z


# direct methods
.method constructor <init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateMessage;Lzendesk/support/request/StateRequestAttachment;Ljava/util/Date;ZZLjava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/CellBindHelper;",
            "Lzendesk/support/request/StateMessage;",
            "Lzendesk/support/request/StateRequestAttachment;",
            "Ljava/util/Date;",
            "ZZ",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;Z)V"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p1

    .line 1
    sget v2, Lg/k/c/h;->r:I

    invoke-virtual {p3}, Lzendesk/support/request/StateRequestAttachment;->getId()J

    move-result-wide v3

    const-wide/32 v5, -0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lzendesk/support/request/CellBase;-><init>(Lzendesk/support/request/CellBindHelper;IJJLjava/util/Date;)V

    move-object v0, p3

    .line 2
    iput-object v0, v8, Lzendesk/support/request/CellUserAttachmentGeneric;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    move v1, p5

    .line 3
    iput-boolean v1, v8, Lzendesk/support/request/CellUserAttachmentGeneric;->markAsDelivered:Z

    move-object v1, p2

    .line 4
    iput-object v1, v8, Lzendesk/support/request/CellUserAttachmentGeneric;->message:Lzendesk/support/request/StateMessage;

    move/from16 v1, p6

    .line 5
    iput-boolean v1, v8, Lzendesk/support/request/CellUserAttachmentGeneric;->showError:Z

    move-object/from16 v1, p7

    .line 6
    iput-object v1, v8, Lzendesk/support/request/CellUserAttachmentGeneric;->erroredMessages:Ljava/util/List;

    move/from16 v1, p8

    .line 7
    iput-boolean v1, v8, Lzendesk/support/request/CellUserAttachmentGeneric;->lastErrorCellOfBlock:Z

    .line 8
    invoke-virtual {p3}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzendesk/support/request/CellBindHelper;->getAppInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, v8, Lzendesk/support/request/CellUserAttachmentGeneric;->appInfo:Landroid/content/pm/ResolveInfo;

    .line 9
    sget v0, Lg/k/c/d;->r:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Lzendesk/support/request/CellBindHelper;->getInsets(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v8, Lzendesk/support/request/CellUserAttachmentGeneric;->insets:Landroid/graphics/Rect;

    return-void
.end method

.method private buildTalkBackString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget v1, Lg/k/c/j;->f0:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    .line 3
    invoke-virtual {v4}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-boolean v1, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->showError:Z

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->message:Lzendesk/support/request/StateMessage;

    invoke-virtual {v1}, Lzendesk/support/request/StateMessage;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {p1, v3, v4, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 8
    sget v3, Lg/k/c/j;->h0:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_0
    sget v1, Lg/k/c/j;->e0:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public areContentsTheSame(Lzendesk/support/request/CellType$Base;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    invoke-virtual {v0, p0, p1}, Lzendesk/support/request/CellBindHelper;->areAttachmentCellContentsTheSame(Lzendesk/support/request/CellType$Attachment;Lzendesk/support/request/CellType$Base;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    invoke-virtual {v1, p0, p1}, Lzendesk/support/request/CellBindHelper;->areStatefulCellContentsTheSame(Lzendesk/support/request/CellType$Stateful;Lzendesk/support/request/CellType$Base;)Z

    move-result p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bind(Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;)V
    .locals 5

    .line 1
    sget v0, Lg/k/c/f;->M0:I

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    invoke-virtual {v1}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget v0, Lg/k/c/f;->O0:I

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    sget v1, Lg/k/c/f;->L0:I

    invoke-virtual {p1, v1}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 5
    iget-object v2, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-object v3, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->appInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v3, v0, v1}, Lzendesk/support/request/CellBindHelper;->bindAppInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 6
    sget v0, Lg/k/c/f;->K0:I

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 7
    iget-object v1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-object v2, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    invoke-virtual {v1, v0, v2}, Lzendesk/support/request/CellBindHelper;->addOnClickListenerForFileAttachment(Landroid/view/View;Lzendesk/support/request/StateRequestAttachment;)V

    .line 8
    sget v1, Lg/k/c/f;->N0:I

    invoke-virtual {p1, v1}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9
    iget-object v2, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-boolean v3, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->lastErrorCellOfBlock:Z

    iget-boolean v4, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->markAsDelivered:Z

    invoke-virtual {v2, v1, v3, v4}, Lzendesk/support/request/CellBindHelper;->bindStatusLabel(Landroid/widget/TextView;ZZ)V

    .line 10
    iget-object v1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-boolean v2, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->showError:Z

    iget-object v3, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->erroredMessages:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lzendesk/support/request/CellBindHelper;->errorClickListener(ZLjava/util/List;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 11
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-boolean v2, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->showError:Z

    invoke-virtual {p1, v2}, Lzendesk/support/request/CellBindHelper;->colorForError(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lzendesk/support/request/CellUserAttachmentGeneric;->buildTalkBackString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAttachment()Lzendesk/support/request/StateRequestAttachment;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    return-object v0
.end method

.method public getErrorGroupMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->erroredMessages:Ljava/util/List;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->insets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStateMessage()Lzendesk/support/request/StateMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->message:Lzendesk/support/request/StateMessage;

    return-object v0
.end method

.method public isErrorShown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->showError:Z

    return v0
.end method

.method public isLastErrorCellOfBlock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->lastErrorCellOfBlock:Z

    return v0
.end method

.method public isMarkedAsDelivered()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->markAsDelivered:Z

    return v0
.end method

.method public markAsDelivered()Lzendesk/support/request/CellType$Stateful;
    .locals 10

    .line 1
    new-instance v9, Lzendesk/support/request/CellUserAttachmentGeneric;

    iget-object v1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-object v2, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->message:Lzendesk/support/request/StateMessage;

    iget-object v3, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    invoke-virtual {p0}, Lzendesk/support/request/CellBase;->getTimeStamp()Ljava/util/Date;

    move-result-object v4

    iget-boolean v6, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->showError:Z

    iget-object v7, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->erroredMessages:Ljava/util/List;

    iget-boolean v8, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->lastErrorCellOfBlock:Z

    const/4 v5, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lzendesk/support/request/CellUserAttachmentGeneric;-><init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateMessage;Lzendesk/support/request/StateRequestAttachment;Ljava/util/Date;ZZLjava/util/List;Z)V

    return-object v9
.end method

.method public markAsErrored(Ljava/util/List;Z)Lzendesk/support/request/CellType$Stateful;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;Z)",
            "Lzendesk/support/request/CellType$Stateful;"
        }
    .end annotation

    .line 1
    new-instance v9, Lzendesk/support/request/CellUserAttachmentGeneric;

    iget-object v1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-object v2, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->message:Lzendesk/support/request/StateMessage;

    iget-object v3, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    invoke-virtual {p0}, Lzendesk/support/request/CellBase;->getTimeStamp()Ljava/util/Date;

    move-result-object v4

    iget-boolean v5, p0, Lzendesk/support/request/CellUserAttachmentGeneric;->markAsDelivered:Z

    const/4 v6, 0x1

    move-object v0, v9

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lzendesk/support/request/CellUserAttachmentGeneric;-><init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateMessage;Lzendesk/support/request/StateRequestAttachment;Ljava/util/Date;ZZLjava/util/List;Z)V

    return-object v9
.end method
