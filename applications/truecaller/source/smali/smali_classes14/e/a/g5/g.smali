.class public abstract Le/a/g5/g;
.super Le/a/g5/l;
.source "SourceFile"

# interfaces
.implements Lo3/b/b/b;


# instance fields
.field public volatile e:Lo3/b/a/c/c/a;

.field public final f:Ljava/lang/Object;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/g5/l;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/a/g5/g;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/a/g5/g;->g:Z

    .line 4
    new-instance v0, Le/a/g5/f;

    invoke-direct {v0, p0}, Le/a/g5/f;-><init>(Le/a/g5/g;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Ln3/a/d/b;)V

    return-void
.end method


# virtual methods
.method public final Yt()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g5/g;->e:Lo3/b/a/c/c/a;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/g5/g;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Le/a/g5/g;->e:Lo3/b/a/c/c/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lo3/b/a/c/c/a;

    invoke-direct {v1, p0}, Lo3/b/a/c/c/a;-><init>(Landroid/app/Activity;)V

    .line 5
    iput-object v1, p0, Le/a/g5/g;->e:Lo3/b/a/c/c/a;

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
    iget-object v0, p0, Le/a/g5/g;->e:Lo3/b/a/c/c/a;

    .line 8
    invoke-virtual {v0}, Lo3/b/a/c/c/a;->Yt()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Ln3/v/a1$b;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelProviderFactory()Ln3/v/a1$b;

    move-result-object v0

    invoke-static {p0, v0}, Le/q/f/a/d/a;->A0(Landroidx/activity/ComponentActivity;Ln3/v/a1$b;)Ln3/v/a1$b;

    move-result-object v0

    return-object v0
.end method
