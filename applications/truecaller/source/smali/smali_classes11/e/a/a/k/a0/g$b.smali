.class public Le/a/a/k/a0/g$b;
.super Le/a/a/k/o$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/a0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public b:J

.field public final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Le/a/a/k/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILe/a/a/k/a0/g$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/a/k/o$e;-><init>()V

    .line 2
    new-instance p3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p3, p0, Le/a/a/k/a0/g$b;->c:Ljava/util/concurrent/BlockingQueue;

    .line 3
    iput-object p1, p0, Le/a/a/k/a0/g$b;->a:Landroid/net/Uri;

    int-to-double p1, p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-long p1, p1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    iput-wide p1, p0, Le/a/a/k/a0/g$b;->b:J

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Le/a/a/k/o;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/a/k/a0/g$b;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/k/o;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Le/a/a/k/a0/c;

    const-string p2, "timeout"

    invoke-direct {p1, p2, v0, v0}, Le/a/a/k/a0/c;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Le/a/a/k/a0/c;

    const-string p2, "resultInterrupted"

    invoke-direct {p1, p2, v0, v0}, Le/a/a/k/a0/c;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p1
.end method

.method public b(Landroid/net/Uri;IIJ)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/k/a0/g$b;->a:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 2
    iget-wide p1, p0, Le/a/a/k/a0/g$b;->b:J

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    long-to-double p3, p4

    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    double-to-int p3, p3

    not-int p3, p3

    int-to-long p3, p3

    and-long/2addr p1, p3

    iput-wide p1, p0, Le/a/a/k/a0/g$b;->b:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/a/k/a0/g$b;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance p2, Le/a/a/k/o$d;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Le/a/a/k/o$d;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/a/k/a0/g$b;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance p4, Le/a/a/k/a0/c;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p5, "errorResult"

    invoke-direct {p4, p5, p2, p3}, Le/a/a/k/a0/c;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-interface {p1, p4}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    return v0
.end method
