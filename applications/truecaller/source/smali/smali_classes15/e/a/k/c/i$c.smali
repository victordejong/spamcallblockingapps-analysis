.class public final Le/a/k/c/i$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/i;->a(Ln3/e/b/f1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;",
        "Landroid/media/MediaRecorder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ln3/e/b/f1;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ln3/e/b/f1;I)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/i$c;->b:Ljava/io/File;

    iput-object p2, p0, Le/a/k/c/i$c;->c:Ln3/e/b/f1;

    iput p3, p0, Le/a/k/c/i$c;->d:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/media/MediaRecorder;

    invoke-direct {p1}, Landroid/media/MediaRecorder;-><init>()V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 6
    iget-object v1, p0, Le/a/k/c/i$c;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    const v1, 0x2625a0

    .line 7
    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 8
    iget-object v1, p0, Le/a/k/c/i$c;->c:Ln3/e/b/f1;

    .line 9
    iget-object v1, v1, Ln3/e/b/f1;->a:Landroid/util/Size;

    const-string v2, "surfaceRequest.resolution"

    .line 10
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v3, p0, Le/a/k/c/i$c;->c:Ln3/e/b/f1;

    .line 11
    iget-object v3, v3, Ln3/e/b/f1;->a:Landroid/util/Size;

    .line 12
    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    const/16 v0, 0x1e

    .line 14
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 15
    iget v0, p0, Le/a/k/c/i$c;->d:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    const/16 v0, 0x2710

    .line 16
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 17
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    return-object p1
.end method
