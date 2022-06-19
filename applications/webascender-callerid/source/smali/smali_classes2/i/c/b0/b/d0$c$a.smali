.class final Li/c/b0/b/d0$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/b/d0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final f:Ljava/lang/Runnable;

.field final g:Li/c/b0/e/a/f;

.field final h:J

.field i:J

.field j:J

.field k:J

.field final synthetic l:Li/c/b0/b/d0$c;


# direct methods
.method constructor <init>(Li/c/b0/b/d0$c;JLjava/lang/Runnable;JLi/c/b0/e/a/f;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/b/d0$c$a;->l:Li/c/b0/b/d0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Li/c/b0/b/d0$c$a;->f:Ljava/lang/Runnable;

    .line 3
    iput-object p7, p0, Li/c/b0/b/d0$c$a;->g:Li/c/b0/e/a/f;

    .line 4
    iput-wide p8, p0, Li/c/b0/b/d0$c$a;->h:J

    .line 5
    iput-wide p5, p0, Li/c/b0/b/d0$c$a;->j:J

    .line 6
    iput-wide p2, p0, Li/c/b0/b/d0$c$a;->k:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Li/c/b0/b/d0$c$a;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2
    iget-object v0, p0, Li/c/b0/b/d0$c$a;->g:Li/c/b0/e/a/f;

    invoke-virtual {v0}, Li/c/b0/e/a/f;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Li/c/b0/b/d0$c$a;->l:Li/c/b0/b/d0$c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Li/c/b0/b/d0$c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 4
    sget-wide v4, Li/c/b0/b/d0;->a:J

    add-long v6, v2, v4

    iget-wide v8, p0, Li/c/b0/b/d0$c$a;->j:J

    const-wide/16 v10, 0x1

    cmp-long v0, v6, v8

    if-ltz v0, :cond_1

    iget-wide v6, p0, Li/c/b0/b/d0$c$a;->h:J

    add-long/2addr v8, v6

    add-long/2addr v8, v4

    cmp-long v0, v2, v8

    if-ltz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v4, p0, Li/c/b0/b/d0$c$a;->k:J

    iget-wide v8, p0, Li/c/b0/b/d0$c$a;->i:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Li/c/b0/b/d0$c$a;->i:J

    mul-long v8, v8, v6

    add-long/2addr v4, v8

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-wide v4, p0, Li/c/b0/b/d0$c$a;->h:J

    add-long v6, v2, v4

    .line 7
    iget-wide v8, p0, Li/c/b0/b/d0$c$a;->i:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Li/c/b0/b/d0$c$a;->i:J

    mul-long v4, v4, v8

    sub-long v4, v6, v4

    iput-wide v4, p0, Li/c/b0/b/d0$c$a;->k:J

    move-wide v4, v6

    .line 8
    :goto_1
    iput-wide v2, p0, Li/c/b0/b/d0$c$a;->j:J

    sub-long/2addr v4, v2

    .line 9
    iget-object v0, p0, Li/c/b0/b/d0$c$a;->g:Li/c/b0/e/a/f;

    iget-object v2, p0, Li/c/b0/b/d0$c$a;->l:Li/c/b0/b/d0$c;

    invoke-virtual {v2, p0, v4, v5, v1}, Li/c/b0/b/d0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/e/a/f;->a(Li/c/b0/c/c;)Z

    :cond_2
    return-void
.end method
