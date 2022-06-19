.class public Lio/agora/rtc/video/VirtualBackgroundSource;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BACKGROUND_BLUR:I = 0x3

.field public static final BACKGROUND_COLOR:I = 0x1

.field public static final BACKGROUND_IMG:I = 0x2

.field public static final BLUR_DEGREE_HIGH:I = 0x3

.field public static final BLUR_DEGREE_LOW:I = 0x1

.field public static final BLUR_DEGREE_MEDIUM:I = 0x2


# instance fields
.field public backgroundSourceType:I

.field public blur_degree:I

.field public color:I

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lio/agora/rtc/video/VirtualBackgroundSource;->source:Ljava/lang/String;

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lio/agora/rtc/video/VirtualBackgroundSource;->backgroundSourceType:I

    const v0, 0xffffff

    .line 10
    iput v0, p0, Lio/agora/rtc/video/VirtualBackgroundSource;->color:I

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lio/agora/rtc/video/VirtualBackgroundSource;->source:Ljava/lang/String;

    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lio/agora/rtc/video/VirtualBackgroundSource;->blur_degree:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/agora/rtc/video/VirtualBackgroundSource;->source:Ljava/lang/String;

    .line 3
    iput p1, p0, Lio/agora/rtc/video/VirtualBackgroundSource;->backgroundSourceType:I

    .line 4
    iput p2, p0, Lio/agora/rtc/video/VirtualBackgroundSource;->color:I

    .line 5
    iput-object p3, p0, Lio/agora/rtc/video/VirtualBackgroundSource;->source:Ljava/lang/String;

    .line 6
    iput p4, p0, Lio/agora/rtc/video/VirtualBackgroundSource;->blur_degree:I

    return-void
.end method
