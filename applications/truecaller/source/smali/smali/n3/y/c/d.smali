.class public Ln3/y/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/c/d$b;,
        Ln3/y/c/d$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/c/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/y/c/d$b;

    invoke-direct {v0, p1, p2}, Ln3/y/c/d$b;-><init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V

    iput-object v0, p0, Ln3/y/c/d;->a:Ln3/y/c/d$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/c/d;->a:Ln3/y/c/d$a;

    check-cast v0, Ln3/y/c/d$b;

    .line 2
    iget-object v1, v0, Ln3/y/c/d$b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ln3/y/c/d$b;->a()V

    .line 4
    invoke-virtual {v0}, Ln3/y/c/d$b;->c()V

    .line 5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
