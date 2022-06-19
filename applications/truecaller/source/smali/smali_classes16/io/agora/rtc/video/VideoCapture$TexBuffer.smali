.class public Lio/agora/rtc/video/VideoCapture$TexBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TexBuffer"
.end annotation


# instance fields
.field public rotation:I

.field public textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

.field public timestampNs:J


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/VideoFrame$TextureBuffer;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/VideoCapture$TexBuffer;->textureBuffer:Lio/agora/rtc/gl/VideoFrame$TextureBuffer;

    .line 3
    iput p2, p0, Lio/agora/rtc/video/VideoCapture$TexBuffer;->rotation:I

    .line 4
    iput-wide p3, p0, Lio/agora/rtc/video/VideoCapture$TexBuffer;->timestampNs:J

    return-void
.end method
