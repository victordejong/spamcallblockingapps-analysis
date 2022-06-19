.class public final enum Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Partly"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "WAIT_FOR_BUFFER",
        "LOOP_PARTLY",
        "FIRST_FRAME",
        "FIRST_FRAME_WITH_LOADER",
        "DO_NOT_PLAY",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

.field public static final enum DO_NOT_PLAY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

.field public static final enum FIRST_FRAME:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

.field public static final enum FIRST_FRAME_WITH_LOADER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

.field public static final enum LOOP_PARTLY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

.field public static final enum WAIT_FOR_BUFFER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    new-instance v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    const-string v2, "WAIT_FOR_BUFFER"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->WAIT_FOR_BUFFER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    const-string v2, "LOOP_PARTLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->LOOP_PARTLY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    const-string v2, "FIRST_FRAME"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->FIRST_FRAME:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    const-string v2, "FIRST_FRAME_WITH_LOADER"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->FIRST_FRAME_WITH_LOADER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    const-string v2, "DO_NOT_PLAY"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->DO_NOT_PLAY:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->$VALUES:[Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;
    .locals 1

    const-class v0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;
    .locals 1

    sget-object v0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->$VALUES:[Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    invoke-virtual {v0}, [Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    return-object v0
.end method
