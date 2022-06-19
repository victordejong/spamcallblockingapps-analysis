.class public Lcom/freshchat/consumer/sdk/a/l$c;
.super Lcom/freshchat/consumer/sdk/a/l$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/freshchat/consumer/sdk/a/l$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final oH:Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

.field private final oI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/a/o;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/a/o;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/a/l$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/a/l$b;-><init>(Landroid/os/Parcel;)V

    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->values()[Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/l$c;->oH:Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/l$c;->oI:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/freshchat/consumer/sdk/a/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/a/l$c;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/a/l$b;-><init>(I)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/l$c;->oH:Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/l$c;->oI:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hy()Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/l$c;->oH:Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    return-object v0
.end method

.method public hz()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/l$c;->oI:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/a/l$b;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/l$c;->oH:Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/a/l$c;->oI:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
