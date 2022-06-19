.class public abstract Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;,
        Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$b;,
        Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;,
        Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$d;,
        Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;->a:Z

    return-void
.end method

.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;->a:Z

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;
.end method
