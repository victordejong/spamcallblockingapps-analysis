.class public final Le/a/i/c/a/r;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/i/c/a/s;


# direct methods
.method public constructor <init>(Le/a/i/c/a/s;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/a/r;->a:Le/a/i/c/a/s;

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/i/c/a/r;->a:Le/a/i/c/a/s;

    iget-object v0, v0, Le/a/i/c/a/s;->b:Le/a/i/c/a/q;

    .line 2
    iget-object v1, v0, Le/a/i/c/a/q;->c:Landroid/widget/VideoView;

    const-string v2, "videoView"

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    :try_start_0
    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ls1/l;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 3
    iget-object v4, v0, Le/a/i/c/a/q;->c:Landroid/widget/VideoView;

    if-eqz v4, :cond_6

    :try_start_1
    invoke-virtual {v4}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-static {v2}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Ls1/l;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2

    const v1, 0x411fd70a    # 9.99f

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_2

    .line 4
    iget-object v0, v0, Le/a/i/c/a/q;->l:Le/a/i/h0/n;

    invoke-virtual {v0}, Le/a/i/h0/n;->a()Ljava/lang/Object;

    goto :goto_4

    :cond_2
    const/high16 v1, 0x41c80000    # 25.0f

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_3

    const v1, 0x4247f5c3    # 49.99f

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_3

    .line 5
    iget-object v0, v0, Le/a/i/c/a/q;->m:Le/a/i/h0/n;

    invoke-virtual {v0}, Le/a/i/h0/n;->a()Ljava/lang/Object;

    goto :goto_4

    :cond_3
    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_4

    const v1, 0x4295fae1    # 74.99f

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_4

    .line 6
    iget-object v0, v0, Le/a/i/c/a/q;->n:Le/a/i/h0/n;

    invoke-virtual {v0}, Le/a/i/h0/n;->a()Ljava/lang/Object;

    goto :goto_4

    :cond_4
    const/high16 v1, 0x42960000    # 75.0f

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_5

    const v1, 0x42c7fae1    # 99.99f

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_5

    .line 7
    iget-object v0, v0, Le/a/i/c/a/q;->o:Le/a/i/h0/n;

    invoke-virtual {v0}, Le/a/i/h0/n;->a()Ljava/lang/Object;

    :cond_5
    :goto_4
    return-void

    .line 8
    :cond_6
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 9
    :cond_7
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
