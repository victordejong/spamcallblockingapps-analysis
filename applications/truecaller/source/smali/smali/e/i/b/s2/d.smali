.class public Le/i/b/s2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final a:Le/i/b/p1/a;

.field public final b:Le/i/b/y1;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Le/i/b/p1/a;Le/i/b/y1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/s2/d;->a:Le/i/b/p1/a;

    .line 3
    iput-object p2, p0, Le/i/b/s2/d;->b:Le/i/b/y1;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Le/i/b/s2/d;->c:I

    .line 5
    iput p1, p0, Le/i/b/s2/d;->d:I

    .line 6
    iput-boolean p1, p0, Le/i/b/s2/d;->e:Z

    .line 7
    iput-boolean p1, p0, Le/i/b/s2/d;->f:Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Le/i/b/s2/d;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/i/b/s2/d;->f:Z

    .line 3
    iget-object p1, p0, Le/i/b/s2/d;->a:Le/i/b/p1/a;

    const-string p2, "Launch"

    .line 4
    invoke-virtual {p1, p2}, Le/i/b/p1/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Le/i/b/s2/d;->e:Z

    .line 2
    iget v0, p0, Le/i/b/s2/d;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Le/i/b/s2/d;->d:I

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget p1, p0, Le/i/b/s2/d;->d:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Le/i/b/s2/d;->e:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/i/b/s2/d;->a:Le/i/b/p1/a;

    const-string v0, "Active"

    .line 3
    invoke-virtual {p1, v0}, Le/i/b/p1/a;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Le/i/b/s2/d;->e:Z

    .line 5
    iget p1, p0, Le/i/b/s2/d;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/i/b/s2/d;->d:I

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget p1, p0, Le/i/b/s2/d;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le/i/b/s2/d;->c:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iget p1, p0, Le/i/b/s2/d;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 2
    iget-boolean p1, p0, Le/i/b/s2/d;->e:Z

    if-eqz p1, :cond_0

    iget p1, p0, Le/i/b/s2/d;->d:I

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Le/i/b/s2/d;->a:Le/i/b/p1/a;

    const-string v1, "Inactive"

    .line 4
    invoke-virtual {p1, v1}, Le/i/b/p1/a;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/i/b/s2/d;->a:Le/i/b/p1/a;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Le/i/b/s2/d;->b:Le/i/b/y1;

    .line 8
    iget-object p1, p1, Le/i/b/y1;->h:Le/i/b/i2/c;

    .line 9
    iget-object v1, p1, Le/i/b/i2/c;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p1, Le/i/b/i2/c;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 11
    invoke-interface {v3, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p1, Le/i/b/i2/c;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 13
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Le/i/b/s2/d;->e:Z

    .line 15
    iget p1, p0, Le/i/b/s2/d;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Le/i/b/s2/d;->c:I

    return-void
.end method
