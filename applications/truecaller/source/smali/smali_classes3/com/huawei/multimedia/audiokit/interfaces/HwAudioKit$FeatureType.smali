.class public final enum Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;

.field public static final enum HWAUDIO_FEATURE_KARAOKE:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;


# instance fields
.field private mFeatureType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;

    const-string v1, "HWAUDIO_FEATURE_KARAOKE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;->HWAUDIO_FEATURE_KARAOKE:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;

    new-array v1, v3, [Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;->$VALUES:[Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;

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
    iput p3, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;->mFeatureType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;

    return-object p0
.end method

.method public static values()[Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;->$VALUES:[Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;

    invoke-virtual {v0}, [Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;

    return-object v0
.end method


# virtual methods
.method public getFeatureType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;->mFeatureType:I

    return v0
.end method
