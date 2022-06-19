.class public final Le/a/k0/n/e/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/n/e/j;


# instance fields
.field public a:Landroid/media/MediaPlayer;

.field public final b:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/k0/n/e/i;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/n/e/s;->c:Landroid/content/Context;

    .line 2
    sget-object p1, Le/a/k0/n/e/i$c;->a:Le/a/k0/n/e/i$c;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/n/e/s;->b:Lq3/a/x2/a1;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/n/e/s;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k0/n/e/s;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, v0, Ls1/l$a;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final c(Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Landroid/media/MediaPlayer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/k0/n/e/s;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/k0/n/e/s;->b:Lq3/a/x2/a1;

    .line 3
    sget-object v0, Le/a/k0/n/e/i$d;->a:Le/a/k0/n/e/i$d;

    invoke-interface {p1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Le/a/k0/n/e/s;->b:Lq3/a/x2/a1;

    .line 5
    new-instance v1, Le/a/k0/n/e/i$a;

    invoke-direct {v1, p1}, Le/a/k0/n/e/i$a;-><init>(Ljava/io/IOException;)V

    invoke-interface {v0, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 6
    iget-object v0, p0, Le/a/k0/n/e/s;->b:Lq3/a/x2/a1;

    .line 7
    new-instance v1, Le/a/k0/n/e/i$b;

    invoke-direct {v1, p1}, Le/a/k0/n/e/i$b;-><init>(Ljava/lang/IllegalStateException;)V

    invoke-interface {v0, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
