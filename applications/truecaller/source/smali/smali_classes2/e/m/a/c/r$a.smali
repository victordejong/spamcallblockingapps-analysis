.class public final Le/m/a/c/r$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/a/c/r$b;

.field public final b:Landroid/os/Handler;

.field public final synthetic c:Le/m/a/c/r;


# direct methods
.method public constructor <init>(Le/m/a/c/r;Landroid/os/Handler;Le/m/a/c/r$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/r$a;->c:Le/m/a/c/r;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p2, p0, Le/m/a/c/r$a;->b:Landroid/os/Handler;

    .line 3
    iput-object p3, p0, Le/m/a/c/r$a;->a:Le/m/a/c/r$b;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/m/a/c/r$a;->b:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/r$a;->c:Le/m/a/c/r;

    .line 2
    iget-boolean v0, v0, Le/m/a/c/r;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/m/a/c/r$a;->a:Le/m/a/c/r$b;

    check-cast v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$c;

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$c;->a:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method
