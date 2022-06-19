.class public final enum Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/CalendarDay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PartOfDay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

.field public static final enum AFTERNOON:Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

.field public static final enum EVENING:Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

.field public static final enum MORNING:Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

.field public static final enum NIGHT:Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;


# instance fields
.field private final endHour:I

.field private final startHour:I

.field private final stringResId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    sget v5, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_part_of_day_morning:I

    const-string v1, "MORNING"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->MORNING:Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    sget v12, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_part_of_day_afternoon:I

    const-string v8, "AFTERNOON"

    const/4 v9, 0x1

    const/16 v10, 0xc

    const/16 v11, 0x10

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->AFTERNOON:Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    sget v18, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_part_of_day_evening:I

    const-string v14, "EVENING"

    const/4 v15, 0x2

    const/16 v16, 0x10

    const/16 v17, 0x14

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->EVENING:Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    new-instance v2, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    sget v12, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_part_of_day_night:I

    const-string v8, "NIGHT"

    const/4 v9, 0x3

    const/16 v10, 0x14

    const/16 v11, 0x18

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->NIGHT:Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    sput-object v3, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->startHour:I

    iput p4, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->endHour:I

    iput p5, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->stringResId:I

    return-void
.end method

.method public static synthetic access$000(Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;)I
    .locals 0

    iget p0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->startHour:I

    return p0
.end method

.method public static getPartOfDay(I)Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->values()[Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget v3, v2, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->startHour:I

    if-gt v3, p0, :cond_0

    iget v3, v2, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->endHour:I

    if-ge p0, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    return-object v0
.end method


# virtual methods
.method public getEndHour()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->endHour:I

    return v0
.end method

.method public getStartHour()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->startHour:I

    return v0
.end method

.method public getStringResId()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->stringResId:I

    return v0
.end method
