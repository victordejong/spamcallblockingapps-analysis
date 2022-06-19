.class public final Lcom/facebook/ads/redexgen/X/6L;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/6K;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/61;

.field public final A01:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/6h;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/61;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/61;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/6h;",
            ">;)V"
        }
    .end annotation

    .line 14934
    .local v1, "biometricSignals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/signals/model/BDSignal;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14935
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6L;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14936
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6L;->A00:Lcom/facebook/ads/redexgen/X/61;

    .line 14937
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:Ljava/util/Map;

    .line 14938
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/6L;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 14939
    return-void
.end method

.method private A00(I)I
    .locals 1

    .line 14940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6L;->A00:Lcom/facebook/ads/redexgen/X/61;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/61;->A0e(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6L;->A00:Lcom/facebook/ads/redexgen/X/61;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/61;->A0e(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 14942
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6L;->A00:Lcom/facebook/ads/redexgen/X/61;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/61;->A0R()I

    move-result v0

    return v0
.end method

.method private declared-synchronized A01(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/6h;)V
    .locals 4

    monitor-enter p0

    .line 14943
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6h;->A00()I

    move-result v3

    .line 14944
    .local p0, "signalId":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6m;->A01()Lcom/facebook/ads/redexgen/X/6m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6m;->A03()Ljava/util/Map;

    move-result-object v1

    .line 14945
    .local p1, "signalCollectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14946
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/66;

    .line 14947
    .local p2, "signalCollectedValues":Lcom/facebook/ads/redexgen/X/66;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/66;->A02()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6z;

    goto :goto_0

    .end local v0
    :cond_0
    const/4 v1, 0x0

    .line 14948
    .local v3, "lastSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6z;
    :goto_0
    if-nez v2, :cond_1

    .line 14949
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/6L;->A00(I)I

    move-result v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/66;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/66;-><init>(I)V

    .line 14950
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6h;->A03()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/6z;->A0B(Lcom/facebook/ads/redexgen/X/6z;Ljava/util/EnumSet;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14951
    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/66;->A04(Ljava/lang/Object;)V

    .line 14952
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6m;->A01()Lcom/facebook/ads/redexgen/X/6m;

    move-result-object v1

    .line 14953
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6z;->A05()I

    move-result v0

    invoke-virtual {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/6m;->A04(ILcom/facebook/ads/redexgen/X/66;I)V

    goto :goto_1

    .line 14954
    :cond_2
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/6L;->A00(I)I

    move-result v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/66;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/66;-><init>(I)V

    .line 14955
    .local p2, "signalValueCircularBuffer":Lcom/facebook/ads/redexgen/X/66;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/66;->A04(Ljava/lang/Object;)V

    .line 14956
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6m;->A01()Lcom/facebook/ads/redexgen/X/6m;

    move-result-object v1

    .line 14957
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6z;->A05()I

    move-result v0

    invoke-virtual {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/6m;->A04(ILcom/facebook/ads/redexgen/X/66;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14958
    .end local p2    # "signalValueCircularBuffer":Lcom/facebook/ads/redexgen/X/66;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;"
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 14959
    .end local p0    # "signalId":I
    .end local p1    # "signalCollectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef;>;>;"
    .end local v0
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/6K;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 14960
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6L;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14961
    return-void

    .line 14962
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/6J;->A00:[I

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/6K;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 14963
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:Ljava/util/Map;

    const/16 v0, 0x2a44

    .line 14964
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6h;

    .line 14965
    .local p0, "bdRelativeHumiditySensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    if-eqz p1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 14966
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6L;->A01(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/6h;)V

    goto/16 :goto_0

    .line 14967
    .end local p0    # "bdRelativeHumiditySensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:Ljava/util/Map;

    const/16 v0, 0x2a43

    .line 14968
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6h;

    .line 14969
    .local p0, "bdAmbientTemperatureSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    if-eqz p1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    return-void

    .line 14970
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6L;->A01(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/6h;)V

    goto/16 :goto_0

    .line 14971
    .end local p0    # "bdAmbientTemperatureSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:Ljava/util/Map;

    const/16 v0, 0x2a42

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6h;

    .line 14972
    .local p0, "bdBarometerSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    if-eqz p1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    return-void

    .line 14973
    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6L;->A01(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/6h;)V

    goto/16 :goto_0

    .line 14974
    .end local p0    # "bdBarometerSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:Ljava/util/Map;

    const/16 v0, 0x2a41

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6h;

    .line 14975
    .local p0, "bdLightSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    if-eqz p1, :cond_7

    if-nez v0, :cond_8

    :cond_7
    return-void

    .line 14976
    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6L;->A01(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/6h;)V

    goto/16 :goto_0

    .line 14977
    .end local p0    # "bdLightSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:Ljava/util/Map;

    const/16 v0, 0x2a40

    .line 14978
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6h;

    .line 14979
    .local p0, "bdStepDetectorSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    if-eqz p1, :cond_9

    if-nez v0, :cond_a

    :cond_9
    return-void

    .line 14980
    :cond_a
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6L;->A01(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/6h;)V

    goto/16 :goto_0

    .line 14981
    .end local p0    # "bdStepDetectorSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    :pswitch_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:Ljava/util/Map;

    const/16 v0, 0x2a3f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6h;

    .line 14982
    .local p0, "bdProximitySensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    if-eqz p1, :cond_b

    if-nez v0, :cond_c

    :cond_b
    return-void

    .line 14983
    :cond_c
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6L;->A01(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/6h;)V

    goto :goto_0

    .line 14984
    .end local p0    # "bdProximitySensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    :pswitch_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:Ljava/util/Map;

    const/16 v0, 0x2a3e

    .line 14985
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6h;

    .line 14986
    .local p0, "bdOrientationSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    if-eqz p1, :cond_d

    if-nez v0, :cond_e

    :cond_d
    return-void

    .line 14987
    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6L;->A01(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/6h;)V

    goto :goto_0

    .line 14988
    .end local p0    # "bdOrientationSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    :pswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:Ljava/util/Map;

    const/16 v0, 0x2a3d

    .line 14989
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6h;

    .line 14990
    .local p0, "bdGeomagneticRotationSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    if-eqz p1, :cond_f

    if-nez v0, :cond_10

    :cond_f
    return-void

    .line 14991
    :cond_10
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6L;->A01(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/6h;)V

    goto :goto_0

    .line 14992
    .end local p0    # "bdGeomagneticRotationSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    :pswitch_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:Ljava/util/Map;

    const/16 v0, 0x2a3c

    .line 14993
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6h;

    .line 14994
    .local p0, "bdMagnetometerSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    if-eqz p1, :cond_11

    if-nez v0, :cond_12

    :cond_11
    return-void

    .line 14995
    :cond_12
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6L;->A01(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/6h;)V

    goto :goto_0

    .line 14996
    .end local p0    # "bdMagnetometerSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    :pswitch_9
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:Ljava/util/Map;

    const/16 v0, 0x2a3a

    .line 14997
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6h;

    .line 14998
    .local p0, "bdAccelerometerSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    if-eqz p1, :cond_13

    if-nez v0, :cond_14

    :cond_13
    return-void

    .line 14999
    :cond_14
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6L;->A01(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/6h;)V

    goto :goto_0

    .line 15000
    .end local p0    # "bdAccelerometerSensorSignal":Lcom/facebook/ads/redexgen/X/6h;
    :pswitch_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6L;->A01:Ljava/util/Map;

    const/16 v0, 0x2a30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6h;

    .line 15001
    .local p0, "bdTouchSignal":Lcom/facebook/ads/redexgen/X/6h;
    if-eqz p1, :cond_15

    if-nez v0, :cond_16

    :cond_15
    return-void

    .line 15002
    :cond_16
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6L;->A01(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/6h;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15003
    :catchall_0
    move-exception v0

    .line 15004
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6D;->A03(Ljava/lang/Throwable;)V

    .line 15005
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
