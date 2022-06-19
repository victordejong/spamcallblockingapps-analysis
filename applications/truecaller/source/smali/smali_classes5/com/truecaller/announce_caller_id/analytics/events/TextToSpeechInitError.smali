.class public final enum Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "LANGUAGE_NOT_SUPPORTED",
        "LANGUAGE_FILE_NOT_AVAILABLE",
        "UNKNOWN",
        "announce-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

.field public static final enum LANGUAGE_FILE_NOT_AVAILABLE:Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

.field public static final enum LANGUAGE_NOT_SUPPORTED:Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

.field public static final enum UNKNOWN:Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    new-instance v1, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    const-string v2, "LANGUAGE_NOT_SUPPORTED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;->LANGUAGE_NOT_SUPPORTED:Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    const-string v2, "LANGUAGE_FILE_NOT_AVAILABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;->LANGUAGE_FILE_NOT_AVAILABLE:Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;->UNKNOWN:Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;->$VALUES:[Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;
    .locals 1

    const-class v0, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;
    .locals 1

    sget-object v0, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;->$VALUES:[Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    invoke-virtual {v0}, [Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    return-object v0
.end method
