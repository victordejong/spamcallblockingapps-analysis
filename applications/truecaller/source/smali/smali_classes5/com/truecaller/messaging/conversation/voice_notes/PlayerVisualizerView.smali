.class public Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:Landroid/graphics/Rect;

.field public c:Landroid/media/audiofx/Visualizer;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/a/a/c/s8/o;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/Paint;

.field public g:Landroid/graphics/Bitmap;

.field public h:Landroid/graphics/Canvas;

.field public i:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->b:Landroid/graphics/Rect;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->e:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->f:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->a:[B

    .line 6
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->e:Landroid/graphics/Paint;

    const/16 p2, 0x58

    const/16 v0, 0xff

    invoke-static {p2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->f:Landroid/graphics/Paint;

    const/16 p2, 0xee

    invoke-static {p2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->f:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 9
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->d:Ljava/util/Set;

    .line 10
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->i:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->g:Landroid/graphics/Bitmap;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->h:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->g:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->h:Landroid/graphics/Canvas;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->a:[B

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/s8/o;

    .line 9
    iget-object v2, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->h:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->a:[B

    iget-object v4, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->b:Landroid/graphics/Rect;

    .line 10
    iget-object v5, v1, Le/a/a/c/s8/o;->a:[F

    if-eqz v5, :cond_2

    array-length v5, v5

    array-length v6, v3

    mul-int/lit8 v6, v6, 0x4

    if-ge v5, v6, :cond_3

    .line 11
    :cond_2
    array-length v5, v3

    mul-int/lit8 v5, v5, 0x4

    new-array v5, v5, [F

    iput-object v5, v1, Le/a/a/c/s8/o;->a:[F

    .line 12
    :cond_3
    invoke-virtual {v1, v2, v3, v4}, Le/a/a/c/s8/o;->a(Landroid/graphics/Canvas;[BLandroid/graphics/Rect;)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->h:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 14
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->g:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->i:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->c:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    :cond_0
    return-void
.end method
