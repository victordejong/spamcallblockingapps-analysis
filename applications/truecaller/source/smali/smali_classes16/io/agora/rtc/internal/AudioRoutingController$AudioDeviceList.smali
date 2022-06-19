.class public Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioDeviceList"
.end annotation


# instance fields
.field public mBTRoute:I

.field public mDefaultRoute:I

.field public mForcedRoute:I

.field public mHeadSetRoute:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
