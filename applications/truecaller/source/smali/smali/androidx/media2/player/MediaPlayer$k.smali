.class public Landroidx/media2/player/MediaPlayer$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->U0(Landroidx/media2/player/MediaPlayer$r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/player/MediaPlayer$r;

.field public final synthetic b:Landroidx/media2/player/MediaPlayer$w;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$r;Landroidx/media2/player/MediaPlayer$w;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$k;->a:Landroidx/media2/player/MediaPlayer$r;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$k;->b:Landroidx/media2/player/MediaPlayer$w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$k;->a:Landroidx/media2/player/MediaPlayer$r;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$k;->b:Landroidx/media2/player/MediaPlayer$w;

    invoke-interface {v0, v1}, Landroidx/media2/player/MediaPlayer$r;->a(Landroidx/media2/player/MediaPlayer$w;)V

    return-void
.end method
