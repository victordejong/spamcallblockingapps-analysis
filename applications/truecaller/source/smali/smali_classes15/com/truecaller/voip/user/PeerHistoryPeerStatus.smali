.class public final enum Lcom/truecaller/voip/user/PeerHistoryPeerStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/voip/user/PeerHistoryPeerStatus;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/truecaller/voip/user/PeerHistoryPeerStatus;",
        "",
        "",
        "value",
        "I",
        "getValue",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "STATUS_ERROR",
        "STATUS_ACCEPTED",
        "STATUS_NO_ANSWER",
        "voip_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

.field public static final enum STATUS_ACCEPTED:Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

.field public static final enum STATUS_ERROR:Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

.field public static final enum STATUS_NO_ANSWER:Lcom/truecaller/voip/user/PeerHistoryPeerStatus;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    new-instance v1, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    const-string v2, "STATUS_ERROR"

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->STATUS_ERROR:Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    const-string v2, "STATUS_ACCEPTED"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v2, v4, v3}, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->STATUS_ACCEPTED:Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    const-string v2, "STATUS_NO_ANSWER"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->STATUS_NO_ANSWER:Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->$VALUES:[Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/voip/user/PeerHistoryPeerStatus;
    .locals 1

    const-class v0, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/voip/user/PeerHistoryPeerStatus;
    .locals 1

    sget-object v0, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->$VALUES:[Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    invoke-virtual {v0}, [Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->value:I

    return v0
.end method
