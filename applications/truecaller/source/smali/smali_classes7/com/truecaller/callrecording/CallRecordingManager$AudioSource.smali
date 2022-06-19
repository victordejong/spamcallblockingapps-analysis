.class public final enum Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/callrecording/CallRecordingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;",
        "",
        "",
        "mediaRecorderAudioSource",
        "I",
        "getMediaRecorderAudioSource",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "MIC",
        "VOICE_RECOGNITION",
        "SYSTEM_DEFAULT",
        "VOICE_COMMUNICATION",
        "VOICE_CALL",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

.field public static final enum MIC:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

.field public static final enum SYSTEM_DEFAULT:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

.field public static final enum VOICE_CALL:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

.field public static final enum VOICE_COMMUNICATION:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

.field public static final enum VOICE_RECOGNITION:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;


# instance fields
.field private final mediaRecorderAudioSource:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    new-instance v1, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    const-string v2, "MIC"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->MIC:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    const-string v2, "VOICE_RECOGNITION"

    const/4 v5, 0x6

    .line 2
    invoke-direct {v1, v2, v4, v5}, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->VOICE_RECOGNITION:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    const-string v2, "SYSTEM_DEFAULT"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v1, v2, v4, v3}, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->SYSTEM_DEFAULT:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    const-string v2, "VOICE_COMMUNICATION"

    const/4 v3, 0x3

    const/4 v4, 0x7

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->VOICE_COMMUNICATION:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    const-string v2, "VOICE_CALL"

    const/4 v3, 0x4

    .line 5
    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->VOICE_CALL:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->$VALUES:[Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

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

    iput p3, p0, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->mediaRecorderAudioSource:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;
    .locals 1

    const-class v0, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;
    .locals 1

    sget-object v0, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->$VALUES:[Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    invoke-virtual {v0}, [Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    return-object v0
.end method


# virtual methods
.method public final getMediaRecorderAudioSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->mediaRecorderAudioSource:I

    return v0
.end method
