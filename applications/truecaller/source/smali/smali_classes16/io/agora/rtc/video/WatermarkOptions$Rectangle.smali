.class public Lio/agora/rtc/video/WatermarkOptions$Rectangle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/WatermarkOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rectangle"
.end annotation


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->x:I

    .line 3
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->y:I

    .line 4
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->width:I

    .line 5
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->height:I

    .line 6
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->x:I

    .line 7
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->y:I

    .line 8
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->width:I

    .line 9
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->height:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->x:I

    .line 12
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->y:I

    .line 13
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->width:I

    .line 14
    iput v0, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->height:I

    .line 15
    iput p1, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->x:I

    .line 16
    iput p2, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->y:I

    .line 17
    iput p3, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->width:I

    .line 18
    iput p4, p0, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->height:I

    return-void
.end method
