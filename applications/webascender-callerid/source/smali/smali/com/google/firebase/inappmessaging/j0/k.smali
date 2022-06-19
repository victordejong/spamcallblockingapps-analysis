.class public Lcom/google/firebase/inappmessaging/j0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/u2;

.field private final b:Landroid/app/Application;

.field private final c:Lcom/google/firebase/inappmessaging/j0/r3/a;

.field private d:Lg/f/e/a/a/a/e/e;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/j0/u2;Landroid/app/Application;Lcom/google/firebase/inappmessaging/j0/r3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/k;->a:Lcom/google/firebase/inappmessaging/j0/u2;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/k;->b:Landroid/app/Application;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/j0/k;->c:Lcom/google/firebase/inappmessaging/j0/r3/a;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/inappmessaging/j0/k;Lg/f/e/a/a/a/e/e;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/j0/k;->c(Lg/f/e/a/a/a/e/e;)Z

    move-result p0

    return p0
.end method

.method private c(Lg/f/e/a/a/a/e/e;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Lg/f/e/a/a/a/e/e;->Z()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/j0/k;->c:Lcom/google/firebase/inappmessaging/j0/r3/a;

    invoke-interface {p1}, Lcom/google/firebase/inappmessaging/j0/r3/a;->b()J

    move-result-wide v2

    .line 3
    new-instance p1, Ljava/io/File;

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/j0/k;->b:Landroid/app/Application;

    .line 4
    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "fiam_eligible_campaigns_cache_file"

    invoke-direct {p1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-eqz v8, :cond_1

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    cmp-long p1, v2, v0

    if-gez p1, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4

    :cond_3
    return v5
.end method

.method static synthetic d(Lcom/google/firebase/inappmessaging/j0/k;)Lg/f/e/a/a/a/e/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/j0/k;->d:Lg/f/e/a/a/a/e/e;

    return-object p0
.end method

.method static synthetic e(Lcom/google/firebase/inappmessaging/j0/k;Lg/f/e/a/a/a/e/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/k;->d:Lg/f/e/a/a/a/e/e;

    return-void
.end method

.method static synthetic f(Lcom/google/firebase/inappmessaging/j0/k;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/k;->d:Lg/f/e/a/a/a/e/e;

    return-void
.end method

.method static synthetic g(Lcom/google/firebase/inappmessaging/j0/k;Lg/f/e/a/a/a/e/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/k;->d:Lg/f/e/a/a/a/e/e;

    return-void
.end method


# virtual methods
.method public b()Li/c/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/j<",
            "Lg/f/e/a/a/a/e/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/g;->a(Lcom/google/firebase/inappmessaging/j0/k;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Li/c/j;->l(Ljava/util/concurrent/Callable;)Li/c/j;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/k;->a:Lcom/google/firebase/inappmessaging/j0/u2;

    .line 3
    invoke-static {}, Lg/f/e/a/a/a/e/e;->c0()Lcom/google/protobuf/z0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/j0/u2;->c(Lcom/google/protobuf/z0;)Li/c/j;

    move-result-object v1

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/h;->a(Lcom/google/firebase/inappmessaging/j0/k;)Li/c/y/c;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Li/c/j;->f(Li/c/y/c;)Li/c/j;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Li/c/j;->x(Li/c/n;)Li/c/j;

    move-result-object v0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/i;->a(Lcom/google/firebase/inappmessaging/j0/k;)Li/c/y/e;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Li/c/j;->h(Li/c/y/e;)Li/c/j;

    move-result-object v0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/j;->a(Lcom/google/firebase/inappmessaging/j0/k;)Li/c/y/c;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Li/c/j;->e(Li/c/y/c;)Li/c/j;

    move-result-object v0

    return-object v0
.end method

.method public h(Lg/f/e/a/a/a/e/e;)Li/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/k;->a:Lcom/google/firebase/inappmessaging/j0/u2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/j0/u2;->d(Lcom/google/protobuf/a;)Li/c/b;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/j0/f;->a(Lcom/google/firebase/inappmessaging/j0/k;Lg/f/e/a/a/a/e/e;)Li/c/y/a;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Li/c/b;->d(Li/c/y/a;)Li/c/b;

    move-result-object p1

    return-object p1
.end method
