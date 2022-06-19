.class public Ls3/b/a/f/i$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls3/b/a/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ls3/b/a/f/i$d;

.field public final b:I

.field public final c:J

.field public final d:I


# direct methods
.method public constructor <init>(Ls3/b/a/f/i$d;ILandroid/media/MediaCodec$BufferInfo;Ls3/b/a/f/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls3/b/a/f/i$c;->a:Ls3/b/a/f/i$d;

    .line 3
    iput p2, p0, Ls3/b/a/f/i$c;->b:I

    .line 4
    iget-wide p1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide p1, p0, Ls3/b/a/f/i$c;->c:J

    .line 5
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput p1, p0, Ls3/b/a/f/i$c;->d:I

    return-void
.end method
