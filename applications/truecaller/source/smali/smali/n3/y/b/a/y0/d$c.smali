.class public final Ln3/y/b/a/y0/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/y0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/b/a/y0/d;


# direct methods
.method public constructor <init>(Ln3/y/b/a/y0/d;Landroid/media/MediaCodec;Ln3/y/b/a/y0/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/b/a/y0/d$c;->a:Ln3/y/b/a/y0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/y/b/a/y0/d$c;->a:Ln3/y/b/a/y0/d;

    iget-object p4, p1, Ln3/y/b/a/y0/d;->h1:Ln3/y/b/a/y0/d$c;

    if-eq p0, p4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p2, p3}, Ln3/y/b/a/y0/d;->B0(J)V

    return-void
.end method
