.class public final enum Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "BUBBLE",
        "INCALLUI",
        "INCALLUI_NOTIFICATION",
        "AUTO",
        "RECORDING_LIST",
        "DETAILS_VIEW",
        "DETAILS_VIEW_CALL_HISTORY",
        "STORAGE_MANAGER",
        "callrecorder_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

.field public static final enum AUTO:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

.field public static final enum BUBBLE:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

.field public static final enum DETAILS_VIEW:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

.field public static final enum DETAILS_VIEW_CALL_HISTORY:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

.field public static final enum INCALLUI:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

.field public static final enum INCALLUI_NOTIFICATION:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

.field public static final enum RECORDING_LIST:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

.field public static final enum STORAGE_MANAGER:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    new-instance v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    const-string v2, "BUBBLE"

    const/4 v3, 0x0

    const-string v4, "Bubble"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->BUBBLE:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    const-string v2, "INCALLUI"

    const/4 v3, 0x1

    const-string v4, "InCallUi"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->INCALLUI:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    const-string v2, "INCALLUI_NOTIFICATION"

    const/4 v3, 0x2

    const-string v4, "InCallUiNotification"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->INCALLUI_NOTIFICATION:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    const-string v2, "AUTO"

    const/4 v3, 0x3

    const-string v4, "Auto"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->AUTO:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    const-string v2, "RECORDING_LIST"

    const/4 v3, 0x4

    const-string v4, "RecordingList"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->RECORDING_LIST:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    const-string v2, "DETAILS_VIEW"

    const/4 v3, 0x5

    const-string v4, "DetailsView"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->DETAILS_VIEW:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    const-string v2, "DETAILS_VIEW_CALL_HISTORY"

    const/4 v3, 0x6

    const-string v4, "DetailsViewCallHistory"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->DETAILS_VIEW_CALL_HISTORY:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    const-string v2, "STORAGE_MANAGER"

    const/4 v3, 0x7

    const-string v4, "StorageManager"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->STORAGE_MANAGER:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->$VALUES:[Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;
    .locals 1

    const-class v0, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;
    .locals 1

    sget-object v0, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->$VALUES:[Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    invoke-virtual {v0}, [Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->value:Ljava/lang/String;

    return-object v0
.end method
