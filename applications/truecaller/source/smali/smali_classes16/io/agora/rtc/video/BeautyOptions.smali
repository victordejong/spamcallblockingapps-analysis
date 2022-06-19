.class public Lio/agora/rtc/video/BeautyOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LIGHTENING_CONTRAST_HIGH:I = 0x2

.field public static final LIGHTENING_CONTRAST_LOW:I = 0x0

.field public static final LIGHTENING_CONTRAST_NORMAL:I = 0x1


# instance fields
.field public lighteningContrastLevel:I

.field public lighteningLevel:F

.field public rednessLevel:F

.field public sharpnessLevel:F

.field public smoothnessLevel:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lio/agora/rtc/video/BeautyOptions;->lighteningContrastLevel:I

    const v0, 0x3f19999a    # 0.6f

    .line 9
    iput v0, p0, Lio/agora/rtc/video/BeautyOptions;->lighteningLevel:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 10
    iput v0, p0, Lio/agora/rtc/video/BeautyOptions;->smoothnessLevel:F

    const v0, 0x3dcccccd    # 0.1f

    .line 11
    iput v0, p0, Lio/agora/rtc/video/BeautyOptions;->rednessLevel:F

    const v0, 0x3e99999a    # 0.3f

    .line 12
    iput v0, p0, Lio/agora/rtc/video/BeautyOptions;->sharpnessLevel:F

    return-void
.end method

.method public constructor <init>(IFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/agora/rtc/video/BeautyOptions;->lighteningContrastLevel:I

    .line 3
    iput p2, p0, Lio/agora/rtc/video/BeautyOptions;->lighteningLevel:F

    .line 4
    iput p3, p0, Lio/agora/rtc/video/BeautyOptions;->smoothnessLevel:F

    .line 5
    iput p4, p0, Lio/agora/rtc/video/BeautyOptions;->rednessLevel:F

    .line 6
    iput p5, p0, Lio/agora/rtc/video/BeautyOptions;->sharpnessLevel:F

    return-void
.end method
