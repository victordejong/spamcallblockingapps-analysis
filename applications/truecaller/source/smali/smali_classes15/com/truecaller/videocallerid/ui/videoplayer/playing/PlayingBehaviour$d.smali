.class public final Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$d;
.super Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

.field public static final c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$d;

    invoke-direct {v0}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$d;-><init>()V

    sput-object v0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$d;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$d;

    .line 2
    new-instance v0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 3
    sget-object v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->DO_NOT_PLAY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 4
    sget-object v2, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;->DO_NOT_PLAY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;)V

    sput-object v0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$d;->b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;-><init>(Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$d;->b:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    return-object v0
.end method
