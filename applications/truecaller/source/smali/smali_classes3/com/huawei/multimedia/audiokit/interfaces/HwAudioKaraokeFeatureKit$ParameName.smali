.class public final enum Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParameName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

.field public static final enum CMD_SET_AUDIO_EFFECT_MODE_BASE:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

.field public static final enum CMD_SET_VOCAL_EQUALIZER_MODE:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

.field public static final enum CMD_SET_VOCAL_VOLUME_BASE:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;


# instance fields
.field private mParameName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    const-string v1, "CMD_SET_AUDIO_EFFECT_MODE_BASE"

    const/4 v2, 0x0

    const-string v3, "Karaoke_reverb_mode="

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->CMD_SET_AUDIO_EFFECT_MODE_BASE:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    .line 2
    new-instance v1, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    const-string v3, "CMD_SET_VOCAL_VOLUME_BASE"

    const/4 v4, 0x1

    const-string v5, "Karaoke_volume="

    invoke-direct {v1, v3, v4, v5}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->CMD_SET_VOCAL_VOLUME_BASE:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    .line 3
    new-instance v3, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    const-string v5, "CMD_SET_VOCAL_EQUALIZER_MODE"

    const/4 v6, 0x2

    const-string v7, "Karaoke_eq_mode="

    invoke-direct {v3, v5, v6, v7}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->CMD_SET_VOCAL_EQUALIZER_MODE:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->$VALUES:[Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

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

    .line 2
    iput-object p3, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->mParameName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    return-object p0
.end method

.method public static values()[Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->$VALUES:[Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    invoke-virtual {v0}, [Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    return-object v0
.end method


# virtual methods
.method public getParameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->mParameName:Ljava/lang/String;

    return-object v0
.end method
