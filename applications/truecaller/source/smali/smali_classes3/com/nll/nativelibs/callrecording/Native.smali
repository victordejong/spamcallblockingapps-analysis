.class public Lcom/nll/nativelibs/callrecording/Native;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static AUDIO_SOURCE_DOWN_LINK:I

.field public static AUDIO_SOURCE_UP_LINK:I

.field public static BLUETOOTH_NOISE_REDUCTION_OFF:I

.field public static BLUETOOTH_NOISE_REDUCTION_ON:I

.field public static FIX_ANDROID_7_1_OFF:I

.field public static FIX_ANDROID_7_1_ON:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "acr"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 2
    sput v0, Lcom/nll/nativelibs/callrecording/Native;->AUDIO_SOURCE_UP_LINK:I

    const/4 v0, 0x3

    .line 3
    sput v0, Lcom/nll/nativelibs/callrecording/Native;->AUDIO_SOURCE_DOWN_LINK:I

    const/4 v0, 0x1

    .line 4
    sput v0, Lcom/nll/nativelibs/callrecording/Native;->BLUETOOTH_NOISE_REDUCTION_ON:I

    const/4 v1, 0x0

    .line 5
    sput v1, Lcom/nll/nativelibs/callrecording/Native;->BLUETOOTH_NOISE_REDUCTION_OFF:I

    .line 6
    sput v1, Lcom/nll/nativelibs/callrecording/Native;->FIX_ANDROID_7_1_OFF:I

    .line 7
    sput v0, Lcom/nll/nativelibs/callrecording/Native;->FIX_ANDROID_7_1_ON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkPackageAndCert(Landroid/content/Context;)I
.end method

.method public static native fixAndroid71(I)I
.end method

.method public static native getExpiry(JLjava/lang/String;)J
.end method

.method public static native init(Landroid/content/Context;IIIIIJLjava/lang/String;)Ljava/lang/Object;
.end method

.method public static native setBluetoothNoiseReduction(I)I
.end method

.method public static native setSource(I)I
.end method

.method public static native start3(Landroid/content/Context;Landroid/media/AudioRecord;JLjava/lang/String;)I
.end method

.method public static native start7(Landroid/content/Context;Landroid/media/AudioRecord;JLjava/lang/String;)I
.end method

.method public static native stop3()I
.end method

.method public static native stop7()I
.end method
