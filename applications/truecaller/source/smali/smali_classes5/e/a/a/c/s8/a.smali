.class public final synthetic Le/a/a/c/s8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/a/c/s8/h;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/s8/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/s8/a;->a:Le/a/a/c/s8/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/a/a/c/s8/a;->a:Le/a/a/c/s8/h;

    .line 1
    iget-object v1, v0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Le/a/a/c/s8/h;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 3
    iget-object v0, v0, Le/a/a/c/s8/h;->d:Le/a/a/c/s8/i;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, v1}, Le/a/a/c/s8/i;->C0(I)V

    :cond_0
    return-void
.end method
