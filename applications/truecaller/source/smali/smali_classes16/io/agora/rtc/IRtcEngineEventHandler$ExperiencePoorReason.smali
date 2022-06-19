.class public Lio/agora/rtc/IRtcEngineEventHandler$ExperiencePoorReason;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/IRtcEngineEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExperiencePoorReason"
.end annotation


# static fields
.field public static final EXPERIENCE_REASON_NONE:I = 0x0

.field public static final LOCAL_NETWORK_QUALITY_POOR:I = 0x2

.field public static final REMOTE_NETWORK_QUALITY_POOR:I = 0x1

.field public static final WIFI_BLUETOOTH_COEXIST:I = 0x8

.field public static final WIRELESS_SIGNAL_POOR:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
