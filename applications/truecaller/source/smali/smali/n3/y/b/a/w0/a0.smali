.class public final Ln3/y/b/a/w0/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/w0/a0$g;,
        Ln3/y/b/a/w0/a0$d;,
        Ln3/y/b/a/w0/a0$c;,
        Ln3/y/b/a/w0/a0$f;,
        Ln3/y/b/a/w0/a0$b;,
        Ln3/y/b/a/w0/a0$e;,
        Ln3/y/b/a/w0/a0$h;
    }
.end annotation


# static fields
.field public static final d:Ln3/y/b/a/w0/a0$c;

.field public static final e:Ln3/y/b/a/w0/a0$c;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public b:Ln3/y/b/a/w0/a0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/w0/a0$d<",
            "+",
            "Ln3/y/b/a/w0/a0$e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/io/IOException;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ln3/y/b/a/w0/a0$c;

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ln3/y/b/a/w0/a0$c;-><init>(IJLn3/y/b/a/w0/a0$a;)V

    sput-object v0, Ln3/y/b/a/w0/a0;->d:Ln3/y/b/a/w0/a0$c;

    .line 2
    new-instance v0, Ln3/y/b/a/w0/a0$c;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Ln3/y/b/a/w0/a0$c;-><init>(IJLn3/y/b/a/w0/a0$a;)V

    sput-object v0, Ln3/y/b/a/w0/a0;->e:Ln3/y/b/a/w0/a0$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Ln3/y/b/a/x0/x;->a:I

    .line 3
    new-instance v0, Ln3/y/b/a/x0/w;

    invoke-direct {v0, p1}, Ln3/y/b/a/x0/w;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 4
    iput-object p1, p0, Ln3/y/b/a/w0/a0;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static b(ZJ)Ln3/y/b/a/w0/a0$c;
    .locals 2

    .line 1
    new-instance v0, Ln3/y/b/a/w0/a0$c;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, p1, p2, v1}, Ln3/y/b/a/w0/a0$c;-><init>(IJLn3/y/b/a/w0/a0$a;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/a0;->b:Ln3/y/b/a/w0/a0$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln3/y/b/a/w0/a0$d;->a(Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/a0;->b:Ln3/y/b/a/w0/a0$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/a0;->c:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Ln3/y/b/a/w0/a0;->b:Ln3/y/b/a/w0/a0$d;

    if-eqz v0, :cond_2

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 3
    iget p1, v0, Ln3/y/b/a/w0/a0$d;->a:I

    .line 4
    :cond_0
    iget-object v1, v0, Ln3/y/b/a/w0/a0$d;->e:Ljava/io/IOException;

    if-eqz v1, :cond_2

    iget v0, v0, Ln3/y/b/a/w0/a0$d;->f:I

    if-gt v0, p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    throw v1

    :cond_2
    :goto_0
    return-void

    .line 6
    :cond_3
    throw v0
.end method

.method public e(Ln3/y/b/a/w0/a0$f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/a0;->b:Ln3/y/b/a/w0/a0$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ln3/y/b/a/w0/a0$d;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Ln3/y/b/a/w0/a0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ln3/y/b/a/w0/a0$g;

    invoke-direct {v1, p1}, Ln3/y/b/a/w0/a0$g;-><init>(Ln3/y/b/a/w0/a0$f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 4
    :cond_1
    iget-object p1, p0, Ln3/y/b/a/w0/a0;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public f(Ln3/y/b/a/w0/a0$e;Ln3/y/b/a/w0/a0$b;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ln3/y/b/a/w0/a0$e;",
            ">(TT;",
            "Ln3/y/b/a/w0/a0$b<",
            "TT;>;I)J"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln3/y/b/a/w0/a0;->c:Ljava/io/IOException;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 5
    new-instance v10, Ln3/y/b/a/w0/a0$d;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Ln3/y/b/a/w0/a0$d;-><init>(Ln3/y/b/a/w0/a0;Landroid/os/Looper;Ln3/y/b/a/w0/a0$e;Ln3/y/b/a/w0/a0$b;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Ln3/y/b/a/w0/a0$d;->b(J)V

    return-wide v8
.end method
