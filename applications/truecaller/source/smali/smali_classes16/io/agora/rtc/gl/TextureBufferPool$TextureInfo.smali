.class public Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/TextureBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureInfo"
.end annotation


# instance fields
.field public frameBufferId:I

.field public height:I

.field public inUse:Z

.field public specified:Z

.field public textureId:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->textureId:I

    .line 3
    iput p2, p0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->frameBufferId:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->inUse:Z

    .line 5
    iput-boolean p1, p0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->specified:Z

    .line 6
    iput p1, p0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->width:I

    .line 7
    iput p1, p0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->height:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "TextureInfo{textureId="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->textureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frameBufferId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->frameBufferId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->inUse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", specified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->specified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/gl/TextureBufferPool$TextureInfo;->height:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
