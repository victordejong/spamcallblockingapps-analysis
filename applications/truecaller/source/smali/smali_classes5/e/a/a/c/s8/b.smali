.class public final synthetic Le/a/a/c/s8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Le/a/a/c/s8/h;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/s8/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/s8/b;->a:Le/a/a/c/s8/h;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object p1, p0, Le/a/a/c/s8/b;->a:Le/a/a/c/s8/h;

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Le/a/a/c/s8/h;->d(Z)V

    .line 2
    iget-object v0, p1, Le/a/a/c/s8/h;->g:Le/a/a/c/s8/c;

    iget-object v1, p1, Le/a/a/c/s8/h;->a:Landroid/content/Context;

    invoke-static {v1}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/c/s8/c;->a(Landroid/media/AudioManager;)V

    .line 3
    iget-object v0, p1, Le/a/a/c/s8/h;->d:Le/a/a/c/s8/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 4
    invoke-interface {v0, v1}, Le/a/a/c/s8/i;->a(I)V

    .line 5
    iget-object v0, p1, Le/a/a/c/s8/h;->d:Le/a/a/c/s8/i;

    invoke-interface {v0}, Le/a/a/c/s8/i;->c()V

    .line 6
    invoke-virtual {p1}, Le/a/a/c/s8/h;->release()V

    :cond_0
    return-void
.end method
