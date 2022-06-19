.class public Le/n/b/k0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/n/b/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Le/n/b/k0;


# direct methods
.method public constructor <init>(Le/n/b/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/b/k0$c;->a:Le/n/b/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/n/b/k0$c;->a:Le/n/b/k0;

    .line 2
    iget-boolean v1, v0, Le/n/b/k0;->j:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Le/n/b/k0;->i:Z

    .line 4
    iget-object v2, v0, Le/n/b/k0;->e:Le/n/b/k0$b;

    .line 5
    iget-object v3, v0, Le/n/b/k0;->d:Landroid/view/View;

    .line 6
    iget-object v0, v0, Le/n/b/k0;->c:Landroid/view/View;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gtz v3, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v3, v2, Le/n/b/k0$b;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget-object v3, v2, Le/n/b/k0$b;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 13
    invoke-static {v3, v5}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v3

    .line 14
    iget-object v5, v2, Le/n/b/k0$b;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 16
    invoke-static {v5, v0}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v0

    mul-int/2addr v0, v3

    int-to-long v5, v0

    .line 17
    iget v0, v2, Le/n/b/k0$b;->a:I

    int-to-long v2, v0

    cmp-long v0, v5, v2

    if-ltz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_a

    .line 18
    iget-object v0, p0, Le/n/b/k0$c;->a:Le/n/b/k0;

    .line 19
    iget-object v0, v0, Le/n/b/k0;->e:Le/n/b/k0$b;

    .line 20
    iget-wide v2, v0, Le/n/b/k0$b;->c:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v2, v2, v5

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    if-nez v2, :cond_6

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Le/n/b/k0$b;->c:J

    .line 22
    :cond_6
    iget-object v0, p0, Le/n/b/k0$c;->a:Le/n/b/k0;

    .line 23
    iget-object v0, v0, Le/n/b/k0;->e:Le/n/b/k0$b;

    .line 24
    iget-wide v2, v0, Le/n/b/k0$b;->c:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_7

    move v2, v4

    goto :goto_3

    :cond_7
    move v2, v1

    :goto_3
    if-nez v2, :cond_8

    goto :goto_4

    .line 25
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v5, v0, Le/n/b/k0$b;->c:J

    sub-long/2addr v2, v5

    iget v0, v0, Le/n/b/k0$b;->b:I

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_9

    move v1, v4

    :cond_9
    :goto_4
    if-eqz v1, :cond_a

    .line 26
    iget-object v0, p0, Le/n/b/k0$c;->a:Le/n/b/k0;

    .line 27
    iget-object v0, v0, Le/n/b/k0;->f:Le/n/b/k0$d;

    if-eqz v0, :cond_a

    .line 28
    invoke-interface {v0}, Le/n/b/k0$d;->onVisibilityChanged()V

    .line 29
    iget-object v0, p0, Le/n/b/k0$c;->a:Le/n/b/k0;

    .line 30
    iput-boolean v4, v0, Le/n/b/k0;->j:Z

    .line 31
    :cond_a
    iget-object v0, p0, Le/n/b/k0$c;->a:Le/n/b/k0;

    .line 32
    iget-boolean v1, v0, Le/n/b/k0;->j:Z

    if-nez v1, :cond_c

    .line 33
    iget-boolean v1, v0, Le/n/b/k0;->i:Z

    if-eqz v1, :cond_b

    goto :goto_5

    .line 34
    :cond_b
    iput-boolean v4, v0, Le/n/b/k0;->i:Z

    .line 35
    iget-object v1, v0, Le/n/b/k0;->h:Landroid/os/Handler;

    iget-object v0, v0, Le/n/b/k0;->g:Le/n/b/k0$c;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_5
    return-void
.end method
