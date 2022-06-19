.class public Lcom/freshchat/consumer/sdk/beans/CalendarDay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/freshchat/consumer/sdk/beans/CalendarDay;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/beans/CalendarDay;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$1;->this$0:Lcom/freshchat/consumer/sdk/beans/CalendarDay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;)I
    .locals 0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->access$000(Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;)I

    move-result p1

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->access$000(Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$1;->compare(Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;)I

    move-result p1

    return p1
.end method
