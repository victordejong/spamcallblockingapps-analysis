.class Lzendesk/support/request/CellUserMessage;
.super Lzendesk/support/request/CellBase;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/CellType$Message;
.implements Lzendesk/support/request/CellType$Stateful;


# instance fields
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

.field private final showError:Z

.field private final textMessage:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateMessage;ZZLjava/lang/CharSequence;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/CellBindHelper;",
            "Lzendesk/support/request/StateMessage;",
            "ZZ",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    sget v2, Lg/k/c/h;->t:I

    invoke-virtual {p2}, Lzendesk/support/request/StateMessage;->getId()J

    move-result-wide v3

    invoke-virtual {p2}, Lzendesk/support/request/StateMessage;->getDate()Ljava/util/Date;

    move-result-object v7

    const-wide/32 v5, -0x7fffffff

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lzendesk/support/request/CellBase;-><init>(Lzendesk/support/request/CellBindHelper;IJJLjava/util/Date;)V

    .line 2
    iput-object p5, p0, Lzendesk/support/request/CellUserMessage;->textMessage:Ljava/lang/CharSequence;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/CellUserMessage;->message:Lzendesk/support/request/StateMessage;

    .line 4
    iput-boolean p3, p0, Lzendesk/support/request/CellUserMessage;->markAsDelivered:Z

    .line 5
    iput-boolean p4, p0, Lzendesk/support/request/CellUserMessage;->showError:Z

    .line 6
    sget p2, Lg/k/c/d;->r:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p3, p2}, Lzendesk/support/request/CellBindHelper;->getInsets(IIII)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/CellUserMessage;->insets:Landroid/graphics/Rect;

    .line 7
    iput-object p6, p0, Lzendesk/support/request/CellUserMessage;->erroredMessages:Ljava/util/List;

    .line 8
    iput-boolean p7, p0, Lzendesk/support/request/CellUserMessage;->lastErrorCellOfBlock:Z

    return-void
.end method

.method private buildTalkBackString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget v1, Lg/k/c/j;->i0:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lzendesk/support/request/CellUserMessage;->textMessage:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-boolean v1, p0, Lzendesk/support/request/CellUserMessage;->showError:Z

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lzendesk/support/request/CellUserMessage;->message:Lzendesk/support/request/StateMessage;

    invoke-virtual {v1}, Lzendesk/support/request/StateMessage;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {p1, v3, v4, v2}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    sget v3, Lg/k/c/j;->h0:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_0
    sget v1, Lg/k/c/j;->e0:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
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

    invoke-virtual {v0, p0, p1}, Lzendesk/support/request/CellBindHelper;->areMessageContentsTheSame(Lzendesk/support/request/CellType$Message;Lzendesk/support/request/CellType$Base;)Z

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
    .locals 6

    .line 1
    sget v0, Lg/k/c/f;->U0:I

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/ViewRequestText;

    .line 2
    iget-object v1, p0, Lzendesk/support/request/CellUserMessage;->textMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget v1, Lg/k/c/f;->T0:I

    invoke-virtual {p1, v1}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    iget-object v2, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-boolean v3, p0, Lzendesk/support/request/CellUserMessage;->lastErrorCellOfBlock:Z

    iget-boolean v4, p0, Lzendesk/support/request/CellUserMessage;->markAsDelivered:Z

    invoke-virtual {v2, v1, v3, v4}, Lzendesk/support/request/CellBindHelper;->bindStatusLabel(Landroid/widget/TextView;ZZ)V

    .line 5
    sget v2, Lg/k/c/f;->S0:I

    invoke-virtual {p1, v2}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-boolean v4, p0, Lzendesk/support/request/CellUserMessage;->showError:Z

    iget-object v5, p0, Lzendesk/support/request/CellUserMessage;->erroredMessages:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lzendesk/support/request/CellBindHelper;->errorClickListener(ZLjava/util/List;)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    invoke-virtual {p0}, Lzendesk/support/request/CellUserMessage;->isErrorShown()Z

    move-result v5

    invoke-virtual {v4, v5}, Lzendesk/support/request/CellBindHelper;->colorForError(Z)I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lzendesk/support/UiUtils;->setTint(ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lzendesk/support/request/CellUserMessage;->buildTalkBackString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
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
    iget-object v0, p0, Lzendesk/support/request/CellUserMessage;->erroredMessages:Ljava/util/List;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellUserMessage;->insets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public bridge synthetic getMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/request/CellUserMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/support/request/CellUserMessage;->message:Lzendesk/support/request/StateMessage;

    invoke-virtual {v0}, Lzendesk/support/request/StateMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateMessage()Lzendesk/support/request/StateMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellUserMessage;->message:Lzendesk/support/request/StateMessage;

    return-object v0
.end method

.method public isErrorShown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/CellUserMessage;->showError:Z

    return v0
.end method

.method public isLastErrorCellOfBlock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/CellUserMessage;->lastErrorCellOfBlock:Z

    return v0
.end method

.method public isMarkedAsDelivered()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/CellUserMessage;->markAsDelivered:Z

    return v0
.end method

.method public markAsDelivered()Lzendesk/support/request/CellType$Stateful;
    .locals 9

    .line 1
    new-instance v8, Lzendesk/support/request/CellUserMessage;

    iget-object v1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-object v2, p0, Lzendesk/support/request/CellUserMessage;->message:Lzendesk/support/request/StateMessage;

    iget-boolean v4, p0, Lzendesk/support/request/CellUserMessage;->showError:Z

    iget-object v5, p0, Lzendesk/support/request/CellUserMessage;->textMessage:Ljava/lang/CharSequence;

    iget-object v6, p0, Lzendesk/support/request/CellUserMessage;->erroredMessages:Ljava/util/List;

    iget-boolean v7, p0, Lzendesk/support/request/CellUserMessage;->lastErrorCellOfBlock:Z

    const/4 v3, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lzendesk/support/request/CellUserMessage;-><init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateMessage;ZZLjava/lang/CharSequence;Ljava/util/List;Z)V

    .line 2
    invoke-virtual {p0}, Lzendesk/support/request/CellBase;->getPositionType()I

    move-result v0

    invoke-virtual {v8, v0}, Lzendesk/support/request/CellBase;->setPositionType(I)V

    return-object v8
.end method

.method public markAsErrored(Ljava/util/List;Z)Lzendesk/support/request/CellType$Stateful;
    .locals 9
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
    new-instance v8, Lzendesk/support/request/CellUserMessage;

    iget-object v1, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    iget-object v2, p0, Lzendesk/support/request/CellUserMessage;->message:Lzendesk/support/request/StateMessage;

    iget-boolean v3, p0, Lzendesk/support/request/CellUserMessage;->markAsDelivered:Z

    iget-object v5, p0, Lzendesk/support/request/CellUserMessage;->textMessage:Ljava/lang/CharSequence;

    const/4 v4, 0x1

    move-object v0, v8

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lzendesk/support/request/CellUserMessage;-><init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateMessage;ZZLjava/lang/CharSequence;Ljava/util/List;Z)V

    .line 2
    invoke-virtual {p0}, Lzendesk/support/request/CellBase;->getPositionType()I

    move-result p1

    invoke-virtual {v8, p1}, Lzendesk/support/request/CellBase;->setPositionType(I)V

    return-object v8
.end method
