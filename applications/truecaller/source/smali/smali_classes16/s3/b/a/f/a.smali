.class public Ls3/b/a/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/b/a/f/a$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ls3/b/a/f/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ls3/b/a/f/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/media/MediaCodec;

.field public final d:Landroid/media/MediaCodec;

.field public final e:Landroid/media/MediaFormat;

.field public f:I

.field public g:I

.field public h:I

.field public i:Ls3/b/a/f/b;

.field public final j:Ls3/b/a/e/a;

.field public final k:Ls3/b/a/e/a;

.field public final l:Ls3/b/a/f/a$b;

.field public m:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ls3/b/a/f/a;->a:Ljava/util/Queue;

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ls3/b/a/f/a;->b:Ljava/util/Queue;

    .line 4
    new-instance v0, Ls3/b/a/f/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls3/b/a/f/a$b;-><init>(Ls3/b/a/f/a$a;)V

    iput-object v0, p0, Ls3/b/a/f/a;->l:Ls3/b/a/f/a$b;

    .line 5
    iput-object p1, p0, Ls3/b/a/f/a;->c:Landroid/media/MediaCodec;

    .line 6
    iput-object p2, p0, Ls3/b/a/f/a;->d:Landroid/media/MediaCodec;

    .line 7
    iput-object p3, p0, Ls3/b/a/f/a;->e:Landroid/media/MediaFormat;

    .line 8
    new-instance p3, Ls3/b/a/e/a;

    invoke-direct {p3, p1}, Ls3/b/a/e/a;-><init>(Landroid/media/MediaCodec;)V

    iput-object p3, p0, Ls3/b/a/f/a;->j:Ls3/b/a/e/a;

    .line 9
    new-instance p1, Ls3/b/a/e/a;

    invoke-direct {p1, p2}, Ls3/b/a/e/a;-><init>(Landroid/media/MediaCodec;)V

    iput-object p1, p0, Ls3/b/a/f/a;->k:Ls3/b/a/e/a;

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Ls3/b/a/f/a;->m:Landroid/media/MediaFormat;

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ls3/b/a/f/a;->j:Ls3/b/a/e/a;

    .line 3
    iget-object v0, v0, Ls3/b/a/e/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v2, p0, Ls3/b/a/f/a;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls3/b/a/f/a$b;

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Ls3/b/a/f/a$b;

    invoke-direct {v2, v1}, Ls3/b/a/f/a$b;-><init>(Ls3/b/a/f/a$a;)V

    .line 6
    :cond_1
    iput p1, v2, Ls3/b/a/f/a$b;->a:I

    .line 7
    iput-wide p2, v2, Ls3/b/a/f/a$b;->b:J

    if-nez v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    :goto_1
    iput-object v1, v2, Ls3/b/a/f/a$b;->c:Ljava/nio/ShortBuffer;

    .line 9
    iget-object p1, p0, Ls3/b/a/f/a;->l:Ls3/b/a/f/a$b;

    iget-object p2, p1, Ls3/b/a/f/a$b;->c:Ljava/nio/ShortBuffer;

    if-nez p2, :cond_3

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 11
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p2

    iput-object p2, p1, Ls3/b/a/f/a$b;->c:Ljava/nio/ShortBuffer;

    .line 13
    iget-object p1, p0, Ls3/b/a/f/a;->l:Ls3/b/a/f/a$b;

    iget-object p1, p1, Ls3/b/a/f/a$b;->c:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 14
    :cond_3
    iget-object p1, p0, Ls3/b/a/f/a;->b:Ljava/util/Queue;

    invoke-interface {p1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Buffer received before format!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
