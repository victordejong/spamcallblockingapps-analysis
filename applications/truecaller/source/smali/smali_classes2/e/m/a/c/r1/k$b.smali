.class public final Le/m/a/c/r1/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/r1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final synthetic b:Le/m/a/c/r1/k;


# direct methods
.method public constructor <init>(Le/m/a/c/r1/k;Landroid/media/MediaCodec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/r1/k$b;->b:Le/m/a/c/r1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Le/m/a/c/r1/k$b;->a:Landroid/os/Handler;

    .line 3
    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/c/r1/k$b;->b:Le/m/a/c/r1/k;

    iget-object v1, v0, Le/m/a/c/r1/k;->n1:Le/m/a/c/r1/k$b;

    if-eq p0, v1, :cond_0

    return-void

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, v0, Le/m/a/c/h1/f;->B0:Z

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0, p1, p2}, Le/m/a/c/r1/k;->C0(J)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 3
    invoke-static {v0}, Le/m/a/c/q1/d0;->E(I)J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p1}, Le/m/a/c/q1/d0;->E(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 4
    invoke-virtual {p0, v0, v1}, Le/m/a/c/r1/k$b;->a(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 2

    .line 1
    sget p1, Le/m/a/c/q1/d0;->a:I

    const/16 p4, 0x1e

    if-ge p1, p4, :cond_0

    .line 2
    iget-object p1, p0, Le/m/a/c/r1/k$b;->a:Landroid/os/Handler;

    const/4 p4, 0x0

    const/16 p5, 0x20

    shr-long v0, p2, p5

    long-to-int p5, v0

    long-to-int p2, p2

    .line 3
    invoke-static {p1, p4, p5, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p2, p0, Le/m/a/c/r1/k$b;->a:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p2, p3}, Le/m/a/c/r1/k$b;->a(J)V

    :goto_0
    return-void
.end method
