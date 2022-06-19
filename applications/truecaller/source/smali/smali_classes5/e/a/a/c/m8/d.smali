.class public final Le/a/a/c/m8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/m8/d;->a:Landroid/view/View;

    iput-object p2, p0, Le/a/a/c/m8/d;->b:Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/c/m8/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Le/a/a/c/m8/d;->b:Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;

    invoke-static {v0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->c(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)Lnl/dionsegijn/konfetti/KonfettiView;

    move-result-object v0

    .line 3
    new-instance v1, Lt3/a/a/b;

    invoke-direct {v1, v0}, Lt3/a/a/b;-><init>(Lnl/dionsegijn/konfetti/KonfettiView;)V

    .line 4
    iget-object v0, p0, Le/a/a/c/m8/d;->b:Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;

    invoke-static {v0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->a(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)[I

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v2, "colors"

    .line 5
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object v0, v1, Lt3/a/a/b;->d:[I

    const-wide/16 v2, 0x0

    const-wide v4, 0x4076700000000000L    # 359.0

    .line 7
    invoke-virtual {v1, v2, v3, v4, v5}, Lt3/a/a/b;->c(DD)Lt3/a/a/b;

    const/high16 v0, 0x40e00000    # 7.0f

    const/high16 v2, 0x41500000    # 13.0f

    .line 8
    invoke-virtual {v1, v0, v2}, Lt3/a/a/b;->d(FF)Lt3/a/a/b;

    .line 9
    iget-object v0, v1, Lt3/a/a/b;->g:Lt3/a/a/e/a;

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v0, Lt3/a/a/e/a;->a:Z

    const-wide/16 v3, 0x1f4

    .line 11
    iput-wide v3, v0, Lt3/a/a/e/a;->b:J

    const/4 v0, 0x2

    new-array v3, v0, [Lt3/a/a/e/b;

    .line 12
    sget-object v4, Lt3/a/a/e/b;->a:Lt3/a/a/e/b;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lt3/a/a/e/b;->b:Lt3/a/a/e/b;

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lt3/a/a/b;->a([Lt3/a/a/e/b;)Lt3/a/a/b;

    new-array v3, v0, [Lt3/a/a/e/c;

    .line 13
    new-instance v4, Lt3/a/a/e/c;

    const/4 v6, 0x4

    const/high16 v7, 0x40a00000    # 5.0f

    .line 14
    invoke-direct {v4, v6, v7}, Lt3/a/a/e/c;-><init>(IF)V

    aput-object v4, v3, v5

    .line 15
    new-instance v4, Lt3/a/a/e/c;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v4, v6, v7}, Lt3/a/a/e/c;-><init>(IF)V

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lt3/a/a/b;->b([Lt3/a/a/e/c;)Lt3/a/a/b;

    .line 16
    iget-object v2, p0, Le/a/a/c/m8/d;->b:Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;

    invoke-static {v2}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->c(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)Lnl/dionsegijn/konfetti/KonfettiView;

    move-result-object v2

    const-string v3, "konfetti"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    iget-object v4, p0, Le/a/a/c/m8/d;->b:Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;

    invoke-static {v4}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->c(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)Lnl/dionsegijn/konfetti/KonfettiView;

    move-result-object v4

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    int-to-float v0, v4

    add-float/2addr v2, v0

    iget-object v0, p0, Le/a/a/c/m8/d;->b:Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;

    invoke-static {v0}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->c(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)Lnl/dionsegijn/konfetti/KonfettiView;

    move-result-object v0

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v4, p0, Le/a/a/c/m8/d;->b:Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;

    invoke-static {v4}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->c(Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;)Lnl/dionsegijn/konfetti/KonfettiView;

    move-result-object v4

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget-object v3, p0, Le/a/a/c/m8/d;->b:Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;

    .line 17
    invoke-virtual {v3}, Lcom/truecaller/messaging/conversation/emoji/EmojiPokeView;->f()F

    move-result v3

    sub-float/2addr v0, v3

    .line 18
    iget-object v3, v1, Lt3/a/a/b;->b:Lt3/a/a/f/a;

    .line 19
    iput v2, v3, Lt3/a/a/f/a;->a:F

    .line 20
    iput v0, v3, Lt3/a/a/f/a;->c:F

    .line 21
    new-instance v0, Lt3/a/a/c/a;

    invoke-direct {v0}, Lt3/a/a/c/a;-><init>()V

    const/16 v2, 0xc8

    .line 22
    iput v2, v0, Lt3/a/a/c/a;->b:I

    .line 23
    iput-boolean v5, v0, Lt3/a/a/c/a;->c:Z

    .line 24
    invoke-virtual {v1, v0}, Lt3/a/a/b;->e(Lt3/a/a/c/b;)V

    return-void
.end method
