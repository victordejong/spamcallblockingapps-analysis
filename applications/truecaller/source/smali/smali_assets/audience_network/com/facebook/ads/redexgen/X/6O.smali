.class public final Lcom/facebook/ads/redexgen/X/6O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final A00:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorEventListener;)V
    .locals 0

    .line 15033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15034
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6O;->A00:Landroid/hardware/SensorEventListener;

    .line 15035
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 15036
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6O;->A00:Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15037
    :catchall_0
    move-exception v0

    .line 15038
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6D;->A03(Ljava/lang/Throwable;)V

    .line 15039
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 15040
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6O;->A00:Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15041
    :catchall_0
    move-exception v0

    .line 15042
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6D;->A03(Ljava/lang/Throwable;)V

    .line 15043
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
