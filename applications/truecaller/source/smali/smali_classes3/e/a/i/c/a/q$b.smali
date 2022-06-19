.class public final Le/a/i/c/a/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/a/q;->setVideoAd(Le/a/i/c/a/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/c/a/q;


# direct methods
.method public constructor <init>(Le/a/i/c/a/q;IILandroid/widget/MediaController;Le/a/i/c/a/n;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/a/q$b;->a:Le/a/i/c/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/c/a/q$b;->a:Le/a/i/c/a/q;

    .line 2
    iput-object p1, v0, Le/a/i/c/a/q;->g:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/a/i/c/a/q;->f:Z

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method
