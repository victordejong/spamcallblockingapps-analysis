.class public final enum Lcom/amazon/device/ads/MRAIDPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/MRAIDPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/MRAIDPolicy;

.field public static final enum AUTO_DETECT:Lcom/amazon/device/ads/MRAIDPolicy;

.field public static final enum CUSTOM:Lcom/amazon/device/ads/MRAIDPolicy;

.field public static final enum DFP:Lcom/amazon/device/ads/MRAIDPolicy;

.field public static final enum MOPUB:Lcom/amazon/device/ads/MRAIDPolicy;

.field public static final enum NONE:Lcom/amazon/device/ads/MRAIDPolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/amazon/device/ads/MRAIDPolicy;

    const-string v1, "AUTO_DETECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/MRAIDPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/MRAIDPolicy;->AUTO_DETECT:Lcom/amazon/device/ads/MRAIDPolicy;

    .line 2
    new-instance v1, Lcom/amazon/device/ads/MRAIDPolicy;

    const-string v3, "MOPUB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/amazon/device/ads/MRAIDPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/device/ads/MRAIDPolicy;->MOPUB:Lcom/amazon/device/ads/MRAIDPolicy;

    .line 3
    new-instance v3, Lcom/amazon/device/ads/MRAIDPolicy;

    const-string v5, "DFP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/amazon/device/ads/MRAIDPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/amazon/device/ads/MRAIDPolicy;->DFP:Lcom/amazon/device/ads/MRAIDPolicy;

    .line 4
    new-instance v5, Lcom/amazon/device/ads/MRAIDPolicy;

    const-string v7, "CUSTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/amazon/device/ads/MRAIDPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/amazon/device/ads/MRAIDPolicy;->CUSTOM:Lcom/amazon/device/ads/MRAIDPolicy;

    .line 5
    new-instance v7, Lcom/amazon/device/ads/MRAIDPolicy;

    const-string v9, "NONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/amazon/device/ads/MRAIDPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/amazon/device/ads/MRAIDPolicy;->NONE:Lcom/amazon/device/ads/MRAIDPolicy;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/amazon/device/ads/MRAIDPolicy;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/amazon/device/ads/MRAIDPolicy;->$VALUES:[Lcom/amazon/device/ads/MRAIDPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/MRAIDPolicy;
    .locals 1

    .line 1
    const-class v0, Lcom/amazon/device/ads/MRAIDPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/MRAIDPolicy;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/MRAIDPolicy;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/device/ads/MRAIDPolicy;->$VALUES:[Lcom/amazon/device/ads/MRAIDPolicy;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/MRAIDPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/MRAIDPolicy;

    return-object v0
.end method
