.class public final Lcom/google/android/exoplayer2/scheduler/Requirements;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/scheduler/Requirements;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/scheduler/Requirements$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/scheduler/Requirements$a;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/scheduler/Requirements;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    .line 2
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x2

    if-nez v0, :cond_1

    goto :goto_5

    :cond_1
    const-string v0, "connectivity"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 5
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 6
    sget v4, Le/m/a/c/q1/d0;->a:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    if-eqz v4, :cond_4

    const/16 v5, 0x10

    .line 9
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    move v4, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v2

    :goto_3
    if-nez v4, :cond_5

    goto :goto_6

    .line 10
    :cond_5
    iget v4, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->a:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    if-eqz v4, :cond_7

    .line 11
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_7

    :cond_7
    :goto_5
    move v0, v2

    goto :goto_7

    .line 12
    :cond_8
    :goto_6
    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->a:I

    and-int/lit8 v0, v0, 0x3

    .line 13
    :goto_7
    iget v4, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->a:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_9

    move v4, v1

    goto :goto_8

    :cond_9
    move v4, v2

    :goto_8
    if-eqz v4, :cond_d

    .line 14
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 15
    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_9

    :cond_a
    const/4 v5, -0x1

    const-string v6, "status"

    .line 16
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_c

    const/4 v3, 0x5

    if-ne v4, v3, :cond_b

    goto :goto_a

    :cond_b
    :goto_9
    move v3, v2

    goto :goto_b

    :cond_c
    :goto_a
    move v3, v1

    :goto_b
    if-nez v3, :cond_d

    or-int/lit8 v0, v0, 0x8

    .line 17
    :cond_d
    iget v3, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->a:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_e

    move v3, v1

    goto :goto_c

    :cond_e
    move v3, v2

    :goto_c
    if-eqz v3, :cond_12

    const-string v3, "power"

    .line 18
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 19
    sget v3, Le/m/a/c/q1/d0;->a:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_f

    .line 20
    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    goto :goto_d

    :cond_f
    const/16 v4, 0x14

    if-lt v3, v4, :cond_10

    .line 21
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_d

    :cond_10
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_d

    :cond_11
    move v1, v2

    :goto_d
    if-nez v1, :cond_12

    or-int/lit8 v0, v0, 0x4

    :cond_12
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/google/android/exoplayer2/scheduler/Requirements;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->a:I

    check-cast p1, Lcom/google/android/exoplayer2/scheduler/Requirements;

    iget p1, p1, Lcom/google/android/exoplayer2/scheduler/Requirements;->a:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->a:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
