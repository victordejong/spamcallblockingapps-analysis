.class public Lio/agora/rtc/video/VideoCapture$RawBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawBuffer"
.end annotation


# instance fields
.field public data:[B

.field public length:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/VideoCapture$RawBuffer;->data:[B

    .line 3
    iput p2, p0, Lio/agora/rtc/video/VideoCapture$RawBuffer;->length:I

    return-void
.end method
