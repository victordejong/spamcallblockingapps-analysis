.class public abstract Le/a/l/x;
.super Ln3/k/a/a0;
.source "SourceFile"

# interfaces
.implements Lo3/b/b/b;


# instance fields
.field public volatile a:Lo3/b/a/c/c/g;

.field public final b:Ljava/lang/Object;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/k/a/a0;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/a/l/x;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/a/l/x;->c:Z

    return-void
.end method


# virtual methods
.method public final Yt()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/x;->a:Lo3/b/a/c/c/g;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/l/x;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Le/a/l/x;->a:Lo3/b/a/c/c/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lo3/b/a/c/c/g;

    invoke-direct {v1, p0}, Lo3/b/a/c/c/g;-><init>(Landroid/app/Service;)V

    .line 5
    iput-object v1, p0, Le/a/l/x;->a:Lo3/b/a/c/c/g;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Le/a/l/x;->a:Lo3/b/a/c/c/g;

    .line 8
    invoke-virtual {v0}, Lo3/b/a/c/c/g;->Yt()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/l/x;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a/l/x;->c:Z

    .line 3
    invoke-virtual {p0}, Le/a/l/x;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/r1;

    move-object v1, p0

    check-cast v1, Lcom/truecaller/premium/PremiumNotificationService;

    invoke-interface {v0, v1}, Le/a/l/r1;->e(Lcom/truecaller/premium/PremiumNotificationService;)V

    .line 4
    :cond_0
    invoke-super {p0}, Ln3/k/a/i;->onCreate()V

    return-void
.end method
