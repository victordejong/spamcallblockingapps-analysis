.class public final enum Lcom/amazon/device/ads/MraidPlacementType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/MraidPlacementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/MraidPlacementType;

.field public static final enum INLINE:Lcom/amazon/device/ads/MraidPlacementType;

.field public static final enum INTERSTITIAL:Lcom/amazon/device/ads/MraidPlacementType;

.field public static final enum UNKNOWN:Lcom/amazon/device/ads/MraidPlacementType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/amazon/device/ads/MraidPlacementType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/MraidPlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/MraidPlacementType;->UNKNOWN:Lcom/amazon/device/ads/MraidPlacementType;

    .line 2
    new-instance v1, Lcom/amazon/device/ads/MraidPlacementType;

    const-string v3, "INLINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/amazon/device/ads/MraidPlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/device/ads/MraidPlacementType;->INLINE:Lcom/amazon/device/ads/MraidPlacementType;

    .line 3
    new-instance v3, Lcom/amazon/device/ads/MraidPlacementType;

    const-string v5, "INTERSTITIAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/amazon/device/ads/MraidPlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/amazon/device/ads/MraidPlacementType;->INTERSTITIAL:Lcom/amazon/device/ads/MraidPlacementType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/amazon/device/ads/MraidPlacementType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/amazon/device/ads/MraidPlacementType;->$VALUES:[Lcom/amazon/device/ads/MraidPlacementType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/MraidPlacementType;
    .locals 1

    .line 1
    const-class v0, Lcom/amazon/device/ads/MraidPlacementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/MraidPlacementType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/MraidPlacementType;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/device/ads/MraidPlacementType;->$VALUES:[Lcom/amazon/device/ads/MraidPlacementType;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/MraidPlacementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/MraidPlacementType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "interstitial"

    return-object v0

    :cond_1
    const-string v0, "inline"

    return-object v0

    :cond_2
    const-string v0, "unknown"

    return-object v0
.end method
