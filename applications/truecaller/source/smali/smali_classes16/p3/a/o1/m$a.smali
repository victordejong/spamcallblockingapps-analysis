.class public final Lp3/a/o1/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/o1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lv3/f;

.field public final b:I

.field public c:I

.field public d:I

.field public e:Lp3/a/o1/e;

.field public f:Z

.field public final synthetic g:Lp3/a/o1/m;


# direct methods
.method public constructor <init>(Lp3/a/o1/m;II)V
    .locals 0

    .line 8
    iput-object p1, p0, Lp3/a/o1/m$a;->g:Lp3/a/o1/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lp3/a/o1/m$a;->f:Z

    .line 10
    iput p2, p0, Lp3/a/o1/m$a;->b:I

    .line 11
    iput p3, p0, Lp3/a/o1/m$a;->c:I

    .line 12
    new-instance p1, Lv3/f;

    invoke-direct {p1}, Lv3/f;-><init>()V

    iput-object p1, p0, Lp3/a/o1/m$a;->a:Lv3/f;

    return-void
.end method

.method public constructor <init>(Lp3/a/o1/m;Lp3/a/o1/e;I)V
    .locals 1

    .line 1
    iget v0, p2, Lp3/a/o1/e;->l:I

    .line 2
    iput-object p1, p0, Lp3/a/o1/m$a;->g:Lp3/a/o1/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lp3/a/o1/m$a;->f:Z

    .line 4
    iput v0, p0, Lp3/a/o1/m$a;->b:I

    .line 5
    iput p3, p0, Lp3/a/o1/m$a;->c:I

    .line 6
    new-instance p1, Lv3/f;

    invoke-direct {p1}, Lv3/f;-><init>()V

    iput-object p1, p0, Lp3/a/o1/m$a;->a:Lv3/f;

    .line 7
    iput-object p2, p0, Lp3/a/o1/m$a;->e:Lp3/a/o1/e;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    if-lez p1, :cond_1

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    .line 1
    iget v1, p0, Lp3/a/o1/m$a;->c:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Window size overflow for stream: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lp3/a/o1/m$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget v0, p0, Lp3/a/o1/m$a;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lp3/a/o1/m$a;->c:I

    return v0
.end method

.method public b()I
    .locals 3

    .line 1
    iget v0, p0, Lp3/a/o1/m$a;->c:I

    iget-object v1, p0, Lp3/a/o1/m$a;->a:Lv3/f;

    .line 2
    iget-wide v1, v1, Lv3/f;->b:J

    long-to-int v1, v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    iget v1, p0, Lp3/a/o1/m$a;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget v0, p0, Lp3/a/o1/m$a;->c:I

    iget-object v1, p0, Lp3/a/o1/m$a;->g:Lp3/a/o1/m;

    .line 2
    iget-object v1, v1, Lp3/a/o1/m;->d:Lp3/a/o1/m$a;

    .line 3
    iget v1, v1, Lp3/a/o1/m$a;->c:I

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public d(Lv3/f;IZ)V
    .locals 8

    .line 1
    :cond_0
    iget-object v0, p0, Lp3/a/o1/m$a;->g:Lp3/a/o1/m;

    .line 2
    iget-object v0, v0, Lp3/a/o1/m;->b:Lp3/a/o1/o/m/c;

    .line 3
    invoke-interface {v0}, Lp3/a/o1/o/m/c;->t()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lp3/a/o1/m$a;->g:Lp3/a/o1/m;

    .line 5
    iget-object v1, v1, Lp3/a/o1/m;->d:Lp3/a/o1/m$a;

    neg-int v2, v0

    .line 6
    invoke-virtual {v1, v2}, Lp3/a/o1/m$a;->a(I)I

    .line 7
    invoke-virtual {p0, v2}, Lp3/a/o1/m$a;->a(I)I

    .line 8
    :try_start_0
    iget-wide v1, p1, Lv3/f;->b:J

    int-to-long v3, v0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 9
    :goto_0
    iget-object v4, p0, Lp3/a/o1/m$a;->g:Lp3/a/o1/m;

    .line 10
    iget-object v4, v4, Lp3/a/o1/m;->b:Lp3/a/o1/o/m/c;

    .line 11
    iget v5, p0, Lp3/a/o1/m$a;->b:I

    invoke-interface {v4, v1, v5, p1, v0}, Lp3/a/o1/o/m/c;->r(ZILv3/f;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget-object v1, p0, Lp3/a/o1/m$a;->e:Lp3/a/o1/e;

    .line 13
    iget-object v1, v1, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    .line 14
    iget-object v4, v1, Lp3/a/n1/e$a;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 15
    :try_start_1
    iget-boolean v5, v1, Lp3/a/n1/e$a;->f:Z

    const-string v6, "onStreamAllocated was not called, but it seems the stream is active"

    invoke-static {v5, v6}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 16
    iget v5, v1, Lp3/a/n1/e$a;->e:I

    const v6, 0x8000

    if-ge v5, v6, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_1
    sub-int/2addr v5, v0

    .line 17
    iput v5, v1, Lp3/a/n1/e$a;->e:I

    if-ge v5, v6, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    if-nez v7, :cond_4

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    .line 18
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 19
    invoke-virtual {v1}, Lp3/a/n1/e$a;->f()V

    :cond_5
    sub-int/2addr p2, v0

    if-gtz p2, :cond_0

    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
