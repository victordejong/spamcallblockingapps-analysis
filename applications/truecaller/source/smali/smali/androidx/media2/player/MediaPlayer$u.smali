.class public final Landroidx/media2/player/MediaPlayer$u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "u"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ln3/h/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h/a/f<",
            "+",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroidx/media2/common/SessionPlayer$TrackInfo;


# direct methods
.method public constructor <init>(ILn3/h/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ln3/h/a/f<",
            "+",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/media2/player/MediaPlayer$u;->a:I

    .line 3
    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$u;->b:Ln3/h/a/f;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$u;->c:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-void
.end method

.method public constructor <init>(ILn3/h/a/f;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ln3/h/a/f<",
            "+",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Landroidx/media2/player/MediaPlayer$u;->a:I

    .line 7
    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$u;->b:Ln3/h/a/f;

    .line 8
    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$u;->c:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-void
.end method
