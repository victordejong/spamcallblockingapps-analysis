.class public Lcom/freshchat/consumer/sdk/beans/CalendarDay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;,
        Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;
    }
.end annotation


# instance fields
.field private final day:Ljava/lang/String;

.field private final timeSlotsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/CalendarDay$1;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$1;-><init>(Lcom/freshchat/consumer/sdk/beans/CalendarDay;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay;->timeSlotsMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay;->day:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay;->day:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSlotsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay;->timeSlotsMap:Ljava/util/Map;

    return-object v0
.end method
