.class Lzendesk/support/request/CellSystemMessages$CellDateMessage;
.super Lzendesk/support/request/CellBase;
.source "SourceFile"


# direct methods
.method constructor <init>(Lzendesk/support/request/CellBindHelper;JLjava/util/Date;)V
    .locals 8

    .line 1
    sget v2, Lg/k/c/h;->n:I

    const-wide/32 v5, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lzendesk/support/request/CellBase;-><init>(Lzendesk/support/request/CellBindHelper;IJJLjava/util/Date;)V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lzendesk/support/request/CellType$Base;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/request/CellBase;->getTimeStamp()Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1}, Lzendesk/support/request/CellType$Base;->getTimeStamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bind(Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;)V
    .locals 2

    .line 1
    sget v0, Lg/k/c/f;->i0:I

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentRequestAdapter$RequestViewHolder;->findCachedView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    iget-object v0, p0, Lzendesk/support/request/CellBase;->utils:Lzendesk/support/request/CellBindHelper;

    invoke-virtual {p0}, Lzendesk/support/request/CellBase;->getTimeStamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lzendesk/support/request/CellBindHelper;->bindDate(Landroid/widget/TextView;Ljava/util/Date;)V

    return-void
.end method
