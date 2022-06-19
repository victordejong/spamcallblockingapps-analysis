.class public Lio/agora/rtc/video/VideoCanvas;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RENDER_MODE_ADAPTIVE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RENDER_MODE_FILL:I = 0x4

.field public static final RENDER_MODE_FIT:I = 0x2

.field public static final RENDER_MODE_HIDDEN:I = 0x1


# instance fields
.field public channelId:Ljava/lang/String;

.field public mirrorMode:I

.field public renderMode:I

.field public uid:I

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/View;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/agora/rtc/video/VideoCanvas;->mirrorMode:I

    .line 5
    iput p1, p0, Lio/agora/rtc/video/VideoCanvas;->uid:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/View;

    .line 8
    iput p2, p0, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    .line 9
    iput p3, p0, Lio/agora/rtc/video/VideoCanvas;->uid:I

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lio/agora/rtc/video/VideoCanvas;->mirrorMode:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;III)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/View;

    .line 19
    iput p2, p0, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    .line 20
    iput p3, p0, Lio/agora/rtc/video/VideoCanvas;->uid:I

    .line 21
    iput p4, p0, Lio/agora/rtc/video/VideoCanvas;->mirrorMode:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILjava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/View;

    .line 13
    iput p2, p0, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    .line 14
    iput-object p3, p0, Lio/agora/rtc/video/VideoCanvas;->channelId:Ljava/lang/String;

    .line 15
    iput p4, p0, Lio/agora/rtc/video/VideoCanvas;->uid:I

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lio/agora/rtc/video/VideoCanvas;->mirrorMode:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILjava/lang/String;II)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/View;

    .line 24
    iput p2, p0, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    .line 25
    iput p5, p0, Lio/agora/rtc/video/VideoCanvas;->mirrorMode:I

    .line 26
    iput-object p3, p0, Lio/agora/rtc/video/VideoCanvas;->channelId:Ljava/lang/String;

    .line 27
    iput p4, p0, Lio/agora/rtc/video/VideoCanvas;->uid:I

    return-void
.end method
