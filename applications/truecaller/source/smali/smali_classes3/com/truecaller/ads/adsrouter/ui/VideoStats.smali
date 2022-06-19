.class public final enum Lcom/truecaller/ads/adsrouter/ui/VideoStats;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/ads/adsrouter/ui/VideoStats;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/truecaller/ads/adsrouter/ui/VideoStats;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "VIDEO_START",
        "PLAY_10",
        "PLAY_25",
        "PLAY_50",
        "PLAY_75",
        "VIDEO_END",
        "VIDEO_MUTE",
        "VIDEO_UNMUTE",
        "ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/ads/adsrouter/ui/VideoStats;

.field public static final enum PLAY_10:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

.field public static final enum PLAY_25:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

.field public static final enum PLAY_50:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

.field public static final enum PLAY_75:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

.field public static final enum VIDEO_END:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

.field public static final enum VIDEO_MUTE:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

.field public static final enum VIDEO_START:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

.field public static final enum VIDEO_UNMUTE:Lcom/truecaller/ads/adsrouter/ui/VideoStats;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    const-string v2, "VIDEO_START"

    const/4 v3, 0x0

    const-string v4, "video_start"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/ads/adsrouter/ui/VideoStats;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->VIDEO_START:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    const-string v2, "PLAY_10"

    const/4 v3, 0x1

    const-string v4, "play_10"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/ads/adsrouter/ui/VideoStats;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->PLAY_10:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    const-string v2, "PLAY_25"

    const/4 v3, 0x2

    const-string v4, "play_25"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/ads/adsrouter/ui/VideoStats;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->PLAY_25:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    const-string v2, "PLAY_50"

    const/4 v3, 0x3

    const-string v4, "play_50"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/ads/adsrouter/ui/VideoStats;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->PLAY_50:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    const-string v2, "PLAY_75"

    const/4 v3, 0x4

    const-string v4, "play_75"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/ads/adsrouter/ui/VideoStats;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->PLAY_75:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    const-string v2, "VIDEO_END"

    const/4 v3, 0x5

    const-string v4, "video_end"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/ads/adsrouter/ui/VideoStats;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->VIDEO_END:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    const-string v2, "VIDEO_MUTE"

    const/4 v3, 0x6

    const-string v4, "volume_mute"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/ads/adsrouter/ui/VideoStats;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->VIDEO_MUTE:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    const-string v2, "VIDEO_UNMUTE"

    const/4 v3, 0x7

    const-string v4, "volume_unmute"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/ads/adsrouter/ui/VideoStats;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->VIDEO_UNMUTE:Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->$VALUES:[Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/ads/adsrouter/ui/VideoStats;
    .locals 1

    const-class v0, Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/ads/adsrouter/ui/VideoStats;
    .locals 1

    sget-object v0, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->$VALUES:[Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    invoke-virtual {v0}, [Lcom/truecaller/ads/adsrouter/ui/VideoStats;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ads/adsrouter/ui/VideoStats;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/adsrouter/ui/VideoStats;->value:Ljava/lang/String;

    return-object v0
.end method
