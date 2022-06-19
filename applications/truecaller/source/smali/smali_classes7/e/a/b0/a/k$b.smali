.class public final Le/a/b0/a/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[F

.field public final b:[F

.field public final c:[F

.field public final d:[F

.field public final e:[F

.field public final f:[F

.field public g:Z

.field public h:Z

.field public i:Z

.field public final j:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Le/a/b0/a/k$a;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Le/a/b0/a/k$a;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/a/k$b;->j:Ls1/z/b/l;

    const/4 p1, 0x3

    new-array v0, p1, [F

    .line 2
    iput-object v0, p0, Le/a/b0/a/k$b;->a:[F

    new-array v0, p1, [F

    .line 3
    iput-object v0, p0, Le/a/b0/a/k$b;->b:[F

    new-array p1, p1, [F

    .line 4
    iput-object p1, p0, Le/a/b0/a/k$b;->c:[F

    const/16 p1, 0x9

    new-array v0, p1, [F

    .line 5
    iput-object v0, p0, Le/a/b0/a/k$b;->d:[F

    new-array v0, p1, [F

    .line 6
    iput-object v0, p0, Le/a/b0/a/k$b;->e:[F

    new-array p1, p1, [F

    .line 7
    iput-object p1, p0, Le/a/b0/a/k$b;->f:[F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    const-string p2, "sensor"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    const-string v1, "event.sensor"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/b0/a/k$b;->a:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, p1, v1

    aput v4, v0, v1

    .line 3
    aget v4, p1, v3

    aput v4, v0, v3

    .line 4
    aget p1, p1, v2

    aput p1, v0, v2

    .line 5
    iput-boolean v3, p0, Le/a/b0/a/k$b;->g:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/b0/a/k$b;->b:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, p1, v1

    aput v4, v0, v1

    .line 7
    aget v4, p1, v3

    aput v4, v0, v3

    .line 8
    aget p1, p1, v2

    aput p1, v0, v2

    .line 9
    iput-boolean v3, p0, Le/a/b0/a/k$b;->i:Z

    goto :goto_0

    .line 10
    :cond_2
    iget-boolean v0, p0, Le/a/b0/a/k$b;->g:Z

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Le/a/b0/a/k$b;->a:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, p1, v1

    aput v4, v0, v1

    .line 12
    aget v4, p1, v3

    aput v4, v0, v3

    .line 13
    aget p1, p1, v2

    aput p1, v0, v2

    .line 14
    iput-boolean v3, p0, Le/a/b0/a/k$b;->h:Z

    .line 15
    :cond_3
    :goto_0
    iget-boolean p1, p0, Le/a/b0/a/k$b;->g:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Le/a/b0/a/k$b;->h:Z

    if-eqz p1, :cond_5

    :cond_4
    iget-boolean p1, p0, Le/a/b0/a/k$b;->i:Z

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Le/a/b0/a/k$b;->d:[F

    iget-object v0, p0, Le/a/b0/a/k$b;->e:[F

    iget-object v4, p0, Le/a/b0/a/k$b;->a:[F

    iget-object v5, p0, Le/a/b0/a/k$b;->b:[F

    invoke-static {p1, v0, v4, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 17
    iget-object p1, p0, Le/a/b0/a/k$b;->d:[F

    const/16 v0, 0x81

    iget-object v4, p0, Le/a/b0/a/k$b;->f:[F

    invoke-static {p1, v2, v0, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 18
    iget-object p1, p0, Le/a/b0/a/k$b;->f:[F

    iget-object v0, p0, Le/a/b0/a/k$b;->c:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 19
    iget-object p1, p0, Le/a/b0/a/k$b;->j:Ls1/z/b/l;

    new-instance v0, Le/a/b0/a/k$a;

    iget-object v4, p0, Le/a/b0/a/k$b;->c:[F

    aget v1, v4, v1

    aget v3, v4, v3

    aget v2, v4, v2

    invoke-direct {v0, v1, v3, v2}, Le/a/b0/a/k$a;-><init>(FFF)V

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method
