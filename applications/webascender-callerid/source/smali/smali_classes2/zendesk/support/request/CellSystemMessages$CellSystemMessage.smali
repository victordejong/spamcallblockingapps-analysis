.class Lzendesk/support/request/CellSystemMessages$CellSystemMessage;
.super Lzendesk/support/request/CellBase;
.source "SourceFile"


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Date;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget v2, Lg/k/c/h;->q:I

    const/4 v1, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    const-wide/32 v5, -0x80000000

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lzendesk/support/request/CellBase;-><init>(Lzendesk/support/request/CellBindHelper;IJJLjava/util/Date;)V

    .line 2
    iput-object p2, p0, Lzendesk/support/request/CellSystemMessages$CellSystemMessage;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lzendesk/support/request/CellType$Base;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lzendesk/support/request/CellSystemMessages$CellSystemMessage;

    return p1
.end method

.method public bind(Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;)V
    .locals 1

    .line 1
    sget v0, Lg/k/c/f;->J0:I

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    iget-object v0, p0, Lzendesk/support/request/CellSystemMessages$CellSystemMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
