.class public final enum Lcom/amazon/device/ads/DtbMetric;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DtbMetric$DtbMetricType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/DtbMetric;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/DtbMetric;

.field public static final enum AAX_BID_TIME:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum AAX_NETWORK_FAILURE:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum AAX_PUNTED:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum ADSERVER_ADLOAD_FAILURE:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum BANNER_ADSERVER_TIME:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum BANNER_TOTAL_LOAD_TIME:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum INTERSTITIAL_ADSERVER_TIME:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum INTERSTITIAL_TOTAL_LOAD_TIME:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum SIS_LATENCY_REGISTER_EVENT:Lcom/amazon/device/ads/DtbMetric;

.field public static final enum SIS_LATENCY_UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/DtbMetric;


# instance fields
.field private final aaxName3g:Ljava/lang/String;

.field private final aaxNameWifi:Ljava/lang/String;

.field private final metricType:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v6, Lcom/amazon/device/ads/DtbMetric;

    sget-object v7, Lcom/amazon/device/ads/DtbMetric$DtbMetricType;->TIMER:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    const-string v1, "AAX_BID_TIME"

    const/4 v2, 0x0

    const-string v3, "dabtw"

    const-string v4, "dabt3"

    move-object v0, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v6, Lcom/amazon/device/ads/DtbMetric;->AAX_BID_TIME:Lcom/amazon/device/ads/DtbMetric;

    .line 2
    new-instance v14, Lcom/amazon/device/ads/DtbMetric;

    sget-object v15, Lcom/amazon/device/ads/DtbMetric$DtbMetricType;->COUNTER:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    const-string v9, "AAX_PUNTED"

    const/4 v10, 0x1

    const-string v11, "dapw"

    const-string v12, "dap3"

    move-object v8, v14

    move-object v13, v15

    invoke-direct/range {v8 .. v13}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v14, Lcom/amazon/device/ads/DtbMetric;->AAX_PUNTED:Lcom/amazon/device/ads/DtbMetric;

    .line 3
    new-instance v8, Lcom/amazon/device/ads/DtbMetric;

    const-string v1, "AAX_NETWORK_FAILURE"

    const/4 v2, 0x2

    const-string v3, "danfw"

    const-string v4, "danf3"

    move-object v0, v8

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v8, Lcom/amazon/device/ads/DtbMetric;->AAX_NETWORK_FAILURE:Lcom/amazon/device/ads/DtbMetric;

    .line 4
    new-instance v9, Lcom/amazon/device/ads/DtbMetric;

    const-string v1, "BANNER_ADSERVER_TIME"

    const/4 v2, 0x3

    const-string v3, "dbastw"

    const-string v4, "dbast3"

    move-object v0, v9

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v9, Lcom/amazon/device/ads/DtbMetric;->BANNER_ADSERVER_TIME:Lcom/amazon/device/ads/DtbMetric;

    .line 5
    new-instance v10, Lcom/amazon/device/ads/DtbMetric;

    const-string v1, "INTERSTITIAL_ADSERVER_TIME"

    const/4 v2, 0x4

    const-string v3, "diastw"

    const-string v4, "diast3"

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v10, Lcom/amazon/device/ads/DtbMetric;->INTERSTITIAL_ADSERVER_TIME:Lcom/amazon/device/ads/DtbMetric;

    .line 6
    new-instance v11, Lcom/amazon/device/ads/DtbMetric;

    const-string v1, "ADSERVER_ADLOAD_FAILURE"

    const/4 v2, 0x5

    const-string v3, "dasfw"

    const-string v4, "dasf3"

    move-object v0, v11

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v11, Lcom/amazon/device/ads/DtbMetric;->ADSERVER_ADLOAD_FAILURE:Lcom/amazon/device/ads/DtbMetric;

    .line 7
    new-instance v12, Lcom/amazon/device/ads/DtbMetric;

    const-string v1, "BANNER_TOTAL_LOAD_TIME"

    const/4 v2, 0x6

    const-string v3, "dbtltw"

    const-string v4, "dbtlt3"

    move-object v0, v12

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v12, Lcom/amazon/device/ads/DtbMetric;->BANNER_TOTAL_LOAD_TIME:Lcom/amazon/device/ads/DtbMetric;

    .line 8
    new-instance v13, Lcom/amazon/device/ads/DtbMetric;

    const-string v1, "INTERSTITIAL_TOTAL_LOAD_TIME"

    const/4 v2, 0x7

    const-string v3, "ditltw"

    const-string v4, "ditlt3"

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v13, Lcom/amazon/device/ads/DtbMetric;->INTERSTITIAL_TOTAL_LOAD_TIME:Lcom/amazon/device/ads/DtbMetric;

    .line 9
    new-instance v16, Lcom/amazon/device/ads/DtbMetric;

    const-string v1, "CONFIG_DOWNLOAD_LATENCY"

    const/16 v2, 0x8

    const-string v3, "acl"

    const-string v4, "acl"

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v16, Lcom/amazon/device/ads/DtbMetric;->CONFIG_DOWNLOAD_LATENCY:Lcom/amazon/device/ads/DtbMetric;

    .line 10
    new-instance v17, Lcom/amazon/device/ads/DtbMetric;

    const-string v1, "SIS_LATENCY_UPDATE_DEVICE_INFO"

    const/16 v2, 0x9

    const-string v3, "sul"

    const-string v4, "sul"

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v17, Lcom/amazon/device/ads/DtbMetric;->SIS_LATENCY_UPDATE_DEVICE_INFO:Lcom/amazon/device/ads/DtbMetric;

    .line 11
    new-instance v18, Lcom/amazon/device/ads/DtbMetric;

    const-string v1, "SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED"

    const/16 v2, 0xa

    const-string v3, "sid"

    const-string v4, "sid"

    move-object/from16 v0, v18

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v18, Lcom/amazon/device/ads/DtbMetric;->SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED:Lcom/amazon/device/ads/DtbMetric;

    .line 12
    new-instance v15, Lcom/amazon/device/ads/DtbMetric;

    const-string v1, "SIS_LATENCY_REGISTER_EVENT"

    const/16 v2, 0xb

    const-string v3, "srel"

    const-string v4, "srel"

    move-object v0, v15

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/DtbMetric;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V

    sput-object v15, Lcom/amazon/device/ads/DtbMetric;->SIS_LATENCY_REGISTER_EVENT:Lcom/amazon/device/ads/DtbMetric;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/amazon/device/ads/DtbMetric;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v14, v0, v1

    const/4 v1, 0x2

    aput-object v8, v0, v1

    const/4 v1, 0x3

    aput-object v9, v0, v1

    const/4 v1, 0x4

    aput-object v10, v0, v1

    const/4 v1, 0x5

    aput-object v11, v0, v1

    const/4 v1, 0x6

    aput-object v12, v0, v1

    const/4 v1, 0x7

    aput-object v13, v0, v1

    const/16 v1, 0x8

    aput-object v16, v0, v1

    const/16 v1, 0x9

    aput-object v17, v0, v1

    const/16 v1, 0xa

    aput-object v18, v0, v1

    const/16 v1, 0xb

    aput-object v15, v0, v1

    .line 13
    sput-object v0, Lcom/amazon/device/ads/DtbMetric;->$VALUES:[Lcom/amazon/device/ads/DtbMetric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/DtbMetric$DtbMetricType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/DtbMetric$DtbMetricType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/amazon/device/ads/DtbMetric;->aaxNameWifi:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/amazon/device/ads/DtbMetric;->aaxName3g:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcom/amazon/device/ads/DtbMetric;->metricType:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/DtbMetric;
    .locals 1

    .line 1
    const-class v0, Lcom/amazon/device/ads/DtbMetric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/DtbMetric;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/DtbMetric;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/device/ads/DtbMetric;->$VALUES:[Lcom/amazon/device/ads/DtbMetric;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/DtbMetric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/DtbMetric;

    return-object v0
.end method


# virtual methods
.method public getAAXName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/device/ads/DtbNetworkState;->INSTANCE:Lcom/amazon/device/ads/DtbNetworkState;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DtbNetworkState;->isWifiConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/DtbMetric;->aaxNameWifi:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DtbMetric;->aaxName3g:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getMetricType()Lcom/amazon/device/ads/DtbMetric$DtbMetricType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DtbMetric;->metricType:Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/DtbMetric;->getAAXName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DtbMetric;->getMetricType()Lcom/amazon/device/ads/DtbMetric$DtbMetricType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
