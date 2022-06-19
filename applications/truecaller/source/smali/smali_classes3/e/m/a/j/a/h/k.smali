.class public abstract Le/m/a/j/a/h/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/j/a/h/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/j/a/h/k$e;,
        Le/m/a/j/a/h/k$d;,
        Le/m/a/j/a/h/k$c;,
        Le/m/a/j/a/h/k$b;,
        Le/m/a/j/a/h/k$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Le/m/a/j/a/h/m;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public c:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/m/a/j/a/h/m$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/m/a/j/a/h/m$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/m/a/j/a/h/m$b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/m/a/j/a/h/k$c<",
            "*>;>;"
        }
    .end annotation
.end field

.field public i:Landroid/content/ServiceConnection;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/a/j/a/h/m$a;Le/m/a/j/a/h/m$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/m/a/j/a/h/k;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/m/a/j/a/h/k;->f:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le/m/a/j/a/h/k;->h:Ljava/util/ArrayList;

    iput-boolean v0, p0, Le/m/a/j/a/h/k;->j:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Le/m/a/j/a/h/k;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/m/a/j/a/h/k;->d:Ljava/util/ArrayList;

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/m/a/j/a/h/k;->g:Ljava/util/ArrayList;

    .line 5
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Le/m/a/j/a/h/k$b;

    invoke-direct {p1, p0}, Le/m/a/j/a/h/k$b;-><init>(Le/m/a/j/a/h/k;)V

    iput-object p1, p0, Le/m/a/j/a/h/k;->b:Landroid/os/Handler;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Clients must be created on the UI thread."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Le/m/a/j/a/h/k;->i:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Le/m/a/j/a/h/k;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Le/m/a/j/a/h/k;->c:Landroid/os/IInterface;

    iput-object v0, p0, Le/m/a/j/a/h/k;->i:Landroid/content/ServiceConnection;

    return-void
.end method

.method public final c(Le/m/a/j/a/b;)V
    .locals 6

    iget-object v0, p0, Le/m/a/j/a/h/k;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Le/m/a/j/a/h/k;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/j/a/h/k;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    iget-boolean v4, p0, Le/m/a/j/a/h/k;->j:Z

    if-nez v4, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v4, p0, Le/m/a/j/a/h/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/j/a/h/m$b;

    invoke-interface {v4, p1}, Le/m/a/j/a/h/m$b;->a(Le/m/a/j/a/b;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e()V
    .locals 9

    sget-object v0, Le/m/a/j/a/b;->a:Le/m/a/j/a/b;

    const/4 v1, 0x1

    iput-boolean v1, p0, Le/m/a/j/a/h/k;->j:Z

    iget-object v2, p0, Le/m/a/j/a/h/k;->a:Landroid/content/Context;

    .line 1
    sget-object v3, Le/m/a/j/a/a;->a:[[B

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v2}, Le/m/a/j/a/h/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    invoke-static {v5}, Le/m/a/j/a/a;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v1, Le/m/a/j/a/b;->g:Le/m/a/j/a/b;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    .line 2
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v6, "com.google.android.youtube.googletvdev"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "com.google.android.youtube.googletv"

    goto :goto_0

    :cond_1
    move-object v6, v4

    :goto_0
    const-string v7, "youtube_api_version_code"

    const-string v8, "integer"

    invoke-virtual {v2, v7, v8, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v6, 0xc

    div-int/lit8 v2, v2, 0x64

    if-le v6, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v5

    :catch_0
    :goto_1
    if-eqz v1, :cond_4

    .line 3
    sget-object v1, Le/m/a/j/a/b;->e:Le/m/a/j/a/b;

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_5

    sget-object v1, Le/m/a/j/a/b;->f:Le/m/a/j/a/b;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_2

    :catch_1
    sget-object v1, Le/m/a/j/a/b;->d:Le/m/a/j/a/b;

    :goto_2
    const/4 v2, 0x3

    if-eq v1, v0, :cond_6

    .line 4
    iget-object v0, p0, Le/m/a/j/a/h/k;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.youtube.api.service.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le/m/a/j/a/h/k;->a:Landroid/content/Context;

    invoke-static {v1}, Le/m/a/j/a/h/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Le/m/a/j/a/h/k;->i:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Le/m/a/j/a/h/k;->b()V

    :cond_7
    new-instance v1, Le/m/a/j/a/h/k$f;

    invoke-direct {v1, p0}, Le/m/a/j/a/h/k$f;-><init>(Le/m/a/j/a/h/k;)V

    iput-object v1, p0, Le/m/a/j/a/h/k;->i:Landroid/content/ServiceConnection;

    iget-object v3, p0, Le/m/a/j/a/h/k;->a:Landroid/content/Context;

    const/16 v4, 0x81

    invoke-virtual {v3, v0, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Le/m/a/j/a/h/k;->b:Landroid/os/Handler;

    sget-object v1, Le/m/a/j/a/b;->h:Le/m/a/j/a/b;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Le/m/a/j/a/h/k;->c:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 7

    iget-object v0, p0, Le/m/a/j/a/h/k;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Le/m/a/j/a/h/k;->f:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_4

    iget-object v1, p0, Le/m/a/j/a/h/k;->b:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Le/m/a/j/a/h/k;->f:Z

    iget-object v1, p0, Le/m/a/j/a/h/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    iget-object v1, p0, Le/m/a/j/a/h/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    iget-boolean v5, p0, Le/m/a/j/a/h/k;->j:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Le/m/a/j/a/h/k;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Le/m/a/j/a/h/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/j/a/h/m$a;

    invoke-interface {v5}, Le/m/a/j/a/h/m$a;->a()V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Le/m/a/j/a/h/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Le/m/a/j/a/h/k;->f:Z

    monitor-exit v0

    return-void

    .line 1
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()V
    .locals 7

    iget-object v0, p0, Le/m/a/j/a/h/k;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Le/m/a/j/a/h/k;->d:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Le/m/a/j/a/h/k;->f:Z

    iget-object v1, p0, Le/m/a/j/a/h/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-boolean v5, p0, Le/m/a/j/a/h/k;->j:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Le/m/a/j/a/h/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/j/a/h/m$a;

    invoke-interface {v5}, Le/m/a/j/a/h/m$a;->b()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Le/m/a/j/a/h/k;->f:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
