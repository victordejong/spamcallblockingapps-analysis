.class public final enum Lcom/truecaller/callrecording/recorder/RecordingError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/callrecording/recorder/RecordingError;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/callrecording/recorder/RecordingError;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NONE",
        "UNMAPPED",
        "START_FAILED",
        "STOP_FAILED",
        "RECORDER_ERROR",
        "CREATE_FILE_FAILED",
        "CREATE_DIRECTORY_FAILED",
        "INVALID_STORAGE_STATE",
        "MISSING_SESSION",
        "RESET_WITH_ONGOING_SESSION",
        "WATCHDOG_TRIGGERED",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/callrecording/recorder/RecordingError;

.field public static final enum CREATE_DIRECTORY_FAILED:Lcom/truecaller/callrecording/recorder/RecordingError;

.field public static final enum CREATE_FILE_FAILED:Lcom/truecaller/callrecording/recorder/RecordingError;

.field public static final enum INVALID_STORAGE_STATE:Lcom/truecaller/callrecording/recorder/RecordingError;

.field public static final enum MISSING_SESSION:Lcom/truecaller/callrecording/recorder/RecordingError;

.field public static final enum NONE:Lcom/truecaller/callrecording/recorder/RecordingError;

.field public static final enum RECORDER_ERROR:Lcom/truecaller/callrecording/recorder/RecordingError;

.field public static final enum RESET_WITH_ONGOING_SESSION:Lcom/truecaller/callrecording/recorder/RecordingError;

.field public static final enum START_FAILED:Lcom/truecaller/callrecording/recorder/RecordingError;

.field public static final enum STOP_FAILED:Lcom/truecaller/callrecording/recorder/RecordingError;

.field public static final enum UNMAPPED:Lcom/truecaller/callrecording/recorder/RecordingError;

.field public static final enum WATCHDOG_TRIGGERED:Lcom/truecaller/callrecording/recorder/RecordingError;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/truecaller/callrecording/recorder/RecordingError;

    new-instance v1, Lcom/truecaller/callrecording/recorder/RecordingError;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callrecording/recorder/RecordingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callrecording/recorder/RecordingError;->NONE:Lcom/truecaller/callrecording/recorder/RecordingError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/recorder/RecordingError;

    const-string v2, "UNMAPPED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callrecording/recorder/RecordingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callrecording/recorder/RecordingError;->UNMAPPED:Lcom/truecaller/callrecording/recorder/RecordingError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/recorder/RecordingError;

    const-string v2, "START_FAILED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callrecording/recorder/RecordingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callrecording/recorder/RecordingError;->START_FAILED:Lcom/truecaller/callrecording/recorder/RecordingError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/recorder/RecordingError;

    const-string v2, "STOP_FAILED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callrecording/recorder/RecordingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callrecording/recorder/RecordingError;->STOP_FAILED:Lcom/truecaller/callrecording/recorder/RecordingError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/recorder/RecordingError;

    const-string v2, "RECORDER_ERROR"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callrecording/recorder/RecordingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callrecording/recorder/RecordingError;->RECORDER_ERROR:Lcom/truecaller/callrecording/recorder/RecordingError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/recorder/RecordingError;

    const-string v2, "CREATE_FILE_FAILED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callrecording/recorder/RecordingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callrecording/recorder/RecordingError;->CREATE_FILE_FAILED:Lcom/truecaller/callrecording/recorder/RecordingError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/recorder/RecordingError;

    const-string v2, "CREATE_DIRECTORY_FAILED"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callrecording/recorder/RecordingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callrecording/recorder/RecordingError;->CREATE_DIRECTORY_FAILED:Lcom/truecaller/callrecording/recorder/RecordingError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/recorder/RecordingError;

    const-string v2, "INVALID_STORAGE_STATE"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callrecording/recorder/RecordingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callrecording/recorder/RecordingError;->INVALID_STORAGE_STATE:Lcom/truecaller/callrecording/recorder/RecordingError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/recorder/RecordingError;

    const-string v2, "MISSING_SESSION"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callrecording/recorder/RecordingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callrecording/recorder/RecordingError;->MISSING_SESSION:Lcom/truecaller/callrecording/recorder/RecordingError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/recorder/RecordingError;

    const-string v2, "RESET_WITH_ONGOING_SESSION"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callrecording/recorder/RecordingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callrecording/recorder/RecordingError;->RESET_WITH_ONGOING_SESSION:Lcom/truecaller/callrecording/recorder/RecordingError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/recorder/RecordingError;

    const-string v2, "WATCHDOG_TRIGGERED"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/callrecording/recorder/RecordingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/callrecording/recorder/RecordingError;->WATCHDOG_TRIGGERED:Lcom/truecaller/callrecording/recorder/RecordingError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/callrecording/recorder/RecordingError;->$VALUES:[Lcom/truecaller/callrecording/recorder/RecordingError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/callrecording/recorder/RecordingError;
    .locals 1

    const-class v0, Lcom/truecaller/callrecording/recorder/RecordingError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/callrecording/recorder/RecordingError;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/callrecording/recorder/RecordingError;
    .locals 1

    sget-object v0, Lcom/truecaller/callrecording/recorder/RecordingError;->$VALUES:[Lcom/truecaller/callrecording/recorder/RecordingError;

    invoke-virtual {v0}, [Lcom/truecaller/callrecording/recorder/RecordingError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/callrecording/recorder/RecordingError;

    return-object v0
.end method
