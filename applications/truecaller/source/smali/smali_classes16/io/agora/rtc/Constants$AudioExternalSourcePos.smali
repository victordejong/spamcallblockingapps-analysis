.class public final enum Lio/agora/rtc/Constants$AudioExternalSourcePos;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioExternalSourcePos"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/agora/rtc/Constants$AudioExternalSourcePos;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/agora/rtc/Constants$AudioExternalSourcePos;

.field public static final enum AUDIO_EXTERNAL_PLAYOUT_SOURCE:Lio/agora/rtc/Constants$AudioExternalSourcePos;

.field public static final enum AUDIO_EXTERNAL_RECORD_SOURCE_POST_PROCESS:Lio/agora/rtc/Constants$AudioExternalSourcePos;

.field public static final enum AUDIO_EXTERNAL_RECORD_SOURCE_PRE_PROCESS:Lio/agora/rtc/Constants$AudioExternalSourcePos;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/agora/rtc/Constants$AudioExternalSourcePos;

    const-string v1, "AUDIO_EXTERNAL_PLAYOUT_SOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/agora/rtc/Constants$AudioExternalSourcePos;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/agora/rtc/Constants$AudioExternalSourcePos;->AUDIO_EXTERNAL_PLAYOUT_SOURCE:Lio/agora/rtc/Constants$AudioExternalSourcePos;

    .line 2
    new-instance v1, Lio/agora/rtc/Constants$AudioExternalSourcePos;

    const-string v3, "AUDIO_EXTERNAL_RECORD_SOURCE_PRE_PROCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/agora/rtc/Constants$AudioExternalSourcePos;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/agora/rtc/Constants$AudioExternalSourcePos;->AUDIO_EXTERNAL_RECORD_SOURCE_PRE_PROCESS:Lio/agora/rtc/Constants$AudioExternalSourcePos;

    .line 3
    new-instance v3, Lio/agora/rtc/Constants$AudioExternalSourcePos;

    const-string v5, "AUDIO_EXTERNAL_RECORD_SOURCE_POST_PROCESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/agora/rtc/Constants$AudioExternalSourcePos;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/agora/rtc/Constants$AudioExternalSourcePos;->AUDIO_EXTERNAL_RECORD_SOURCE_POST_PROCESS:Lio/agora/rtc/Constants$AudioExternalSourcePos;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/agora/rtc/Constants$AudioExternalSourcePos;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/agora/rtc/Constants$AudioExternalSourcePos;->$VALUES:[Lio/agora/rtc/Constants$AudioExternalSourcePos;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/agora/rtc/Constants$AudioExternalSourcePos;->value:I

    return-void
.end method

.method public static getValue(Lio/agora/rtc/Constants$AudioExternalSourcePos;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/agora/rtc/Constants$AudioExternalSourcePos;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/agora/rtc/Constants$AudioExternalSourcePos;
    .locals 1

    .line 1
    const-class v0, Lio/agora/rtc/Constants$AudioExternalSourcePos;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/agora/rtc/Constants$AudioExternalSourcePos;

    return-object p0
.end method

.method public static values()[Lio/agora/rtc/Constants$AudioExternalSourcePos;
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtc/Constants$AudioExternalSourcePos;->$VALUES:[Lio/agora/rtc/Constants$AudioExternalSourcePos;

    invoke-virtual {v0}, [Lio/agora/rtc/Constants$AudioExternalSourcePos;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/agora/rtc/Constants$AudioExternalSourcePos;

    return-object v0
.end method
