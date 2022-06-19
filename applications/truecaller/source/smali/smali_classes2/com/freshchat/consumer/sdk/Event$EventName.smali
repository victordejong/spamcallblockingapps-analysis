.class public final enum Lcom/freshchat/consumer/sdk/Event$EventName;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/Event$EventName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventBotFAQOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventBotFAQVote:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCalendarBookingFailure:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCalendarBookingRetry:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCalendarBookingSuccess:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCalendarFindTimeSlotClick:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCalendarInviteCancel:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCalendarNoTimeSlotFound:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCarouselOptionSelect:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCarouselOptionView:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCarouselShow:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventChannelListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventConversationOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCsatExpiry:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCsatOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCsatSubmit:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventDropDownOptionSelect:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventDropDownShow:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventFAQCategoryListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventFAQListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventFAQOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventFAQSearch:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventFAQVote:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventHideOriginalClick:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventIdTokenStatusChange:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventLinkTap:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventMessageReceive:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventMessageSent:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventNotificationReceive:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventScreenView:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventShowOriginalClick:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static eventNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/Event$EventName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 34

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v1, "FCEventFAQCategoryListOpen"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQCategoryListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v1, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v3, "FCEventFAQListOpen"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v3, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v5, "FCEventFAQOpen"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v5, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v7, "FCEventBotFAQOpen"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventBotFAQOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v7, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v9, "FCEventBotFAQVote"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventBotFAQVote:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v9, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v11, "FCEventFAQSearch"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQSearch:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v11, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v13, "FCEventFAQVote"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQVote:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v13, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v15, "FCEventChannelListOpen"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventChannelListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v15, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v14, "FCEventMessageSent"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventMessageSent:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v14, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v12, "FCEventConversationOpen"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventConversationOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v12, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v10, "FCEventCsatOpen"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v10}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCsatOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v10, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v8, "FCEventCsatSubmit"

    const/16 v6, 0xb

    const-string v4, "FCEventCsatSubmit"

    invoke-direct {v10, v8, v6, v4}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCsatSubmit:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventCsatExpiry"

    const/16 v8, 0xc

    const-string v2, "FCEventCsatExpiry"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCsatExpiry:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v2, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventLinkTap"

    const/16 v8, 0xd

    move-object/from16 v16, v4

    const-string v4, "FCEventLinkTap"

    invoke-direct {v2, v6, v8, v4}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventLinkTap:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventScreenView"

    const/16 v8, 0xe

    move-object/from16 v17, v2

    const-string v2, "FCEventScreenView"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventScreenView:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v2, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventMessageReceive"

    const/16 v8, 0xf

    move-object/from16 v18, v4

    const-string v4, "FCEventMessageReceive"

    invoke-direct {v2, v6, v8, v4}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventMessageReceive:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventNotificationReceive"

    const/16 v8, 0x10

    move-object/from16 v19, v2

    const-string v2, "FCEventNotificationReceive"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventNotificationReceive:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v2, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventIdTokenStatusChange"

    const/16 v8, 0x11

    move-object/from16 v20, v4

    const-string v4, "FCEventIdTokenStatusChange"

    invoke-direct {v2, v6, v8, v4}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventIdTokenStatusChange:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventDropDownShow"

    const/16 v8, 0x12

    move-object/from16 v21, v2

    const-string v2, "FCEventDropDownShow"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventDropDownShow:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v2, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventDropDownOptionSelect"

    const/16 v8, 0x13

    move-object/from16 v22, v4

    const-string v4, "FCEventDropDownOptionSelect"

    invoke-direct {v2, v6, v8, v4}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventDropDownOptionSelect:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventCarouselShow"

    const/16 v8, 0x14

    move-object/from16 v23, v2

    const-string v2, "FCEventCarouselShow"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCarouselShow:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v2, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventCarouselOptionSelect"

    const/16 v8, 0x15

    move-object/from16 v24, v4

    const-string v4, "FCEventCarouselOptionSelect"

    invoke-direct {v2, v6, v8, v4}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCarouselOptionSelect:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventCarouselOptionView"

    const/16 v8, 0x16

    move-object/from16 v25, v2

    const-string v2, "FCEventCarouselOptionView"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCarouselOptionView:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v2, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventCalendarFindTimeSlotClick"

    const/16 v8, 0x17

    move-object/from16 v26, v4

    const-string v4, "FCEventCalendarFindTimeSlotClick"

    invoke-direct {v2, v6, v8, v4}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCalendarFindTimeSlotClick:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventCalendarInviteCancel"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const-string v2, "FCEventCalendarInviteCancel"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCalendarInviteCancel:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v2, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventCalendarNoTimeSlotFound"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const-string v4, "FCEventCalendarNoTimeSlotFound"

    invoke-direct {v2, v6, v8, v4}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCalendarNoTimeSlotFound:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventCalendarBookingSuccess"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const-string v2, "FCEventCalendarBookingSuccess"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCalendarBookingSuccess:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v2, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventCalendarBookingRetry"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const-string v4, "FCEventCalendarBookingRetry"

    invoke-direct {v2, v6, v8, v4}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCalendarBookingRetry:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventCalendarBookingFailure"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const-string v2, "FCEventCalendarBookingFailure"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCalendarBookingFailure:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v2, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventShowOriginalClick"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const-string v4, "FCEventShowOriginalClick"

    invoke-direct {v2, v6, v8, v4}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventShowOriginalClick:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v4, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v6, "FCEventHideOriginalClick"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const-string v2, "FCEventHideOriginalClick"

    invoke-direct {v4, v6, v8, v2}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventHideOriginalClick:Lcom/freshchat/consumer/sdk/Event$EventName;

    const/16 v2, 0x1f

    new-array v2, v2, [Lcom/freshchat/consumer/sdk/Event$EventName;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v4, v2, v0

    sput-object v2, Lcom/freshchat/consumer/sdk/Event$EventName;->$VALUES:[Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->eventNameMap:Ljava/util/Map;

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/Event$EventName;->values()[Lcom/freshchat/consumer/sdk/Event$EventName;

    move-result-object v0

    const/16 v1, 0x1f

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/freshchat/consumer/sdk/Event$EventName;->eventNameMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/freshchat/consumer/sdk/Event$EventName;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/Event$EventName;->name:Ljava/lang/String;

    return-void
.end method

.method public static get(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/Event$EventName;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "event_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->eventNameMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/Event$EventName;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Event$EventName;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/Event$EventName;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/Event$EventName;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->$VALUES:[Lcom/freshchat/consumer/sdk/Event$EventName;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/Event$EventName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/Event$EventName;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Event$EventName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Event$EventName;->name:Ljava/lang/String;

    return-object v0
.end method
