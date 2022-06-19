.class public final synthetic Ln3/e/a/e/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ln3/e/a/e/c2;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ln3/e/a/e/k2/f;

.field public final synthetic d:Ln3/e/a/e/k2/o/g;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/c2;Ljava/util/List;Ln3/e/a/e/k2/f;Ln3/e/a/e/k2/o/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/l0;->a:Ln3/e/a/e/c2;

    iput-object p2, p0, Ln3/e/a/e/l0;->b:Ljava/util/List;

    iput-object p3, p0, Ln3/e/a/e/l0;->c:Ln3/e/a/e/k2/f;

    iput-object p4, p0, Ln3/e/a/e/l0;->d:Ln3/e/a/e/k2/o/g;

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Ln3/e/a/e/l0;->a:Ln3/e/a/e/c2;

    iget-object v1, p0, Ln3/e/a/e/l0;->b:Ljava/util/List;

    iget-object v2, p0, Ln3/e/a/e/l0;->c:Ln3/e/a/e/k2/f;

    iget-object v3, p0, Ln3/e/a/e/l0;->d:Ln3/e/a/e/k2/o/g;

    .line 1
    iget-object v4, v0, Ln3/e/a/e/c2;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Ln3/e/a/e/c2;->t(Ljava/util/List;)V

    .line 3
    iget-object v1, v0, Ln3/e/a/e/c2;->i:Ln3/h/a/b;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v5, "The openCaptureSessionCompleter can only set once!"

    invoke-static {v1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 4
    iput-object p1, v0, Ln3/e/a/e/c2;->i:Ln3/h/a/b;

    .line 5
    iget-object p1, v2, Ln3/e/a/e/k2/f;->a:Ln3/e/a/e/k2/f$a;

    invoke-interface {p1, v3}, Ln3/e/a/e/k2/f$a;->a(Ln3/e/a/e/k2/o/g;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openCaptureSession[session="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v4

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
