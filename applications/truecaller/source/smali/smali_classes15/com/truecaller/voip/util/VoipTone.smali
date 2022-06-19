.class public final enum Lcom/truecaller/voip/util/VoipTone;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/voip/util/VoipTone;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/voip/util/VoipTone;",
        "",
        "",
        "toneGeneratorType",
        "I",
        "getToneGeneratorType",
        "()I",
        "",
        "playsInLoop",
        "Z",
        "getPlaysInLoop",
        "()Z",
        "<init>",
        "(Ljava/lang/String;IIZ)V",
        "NO_TONE",
        "RINGING",
        "WAITING",
        "BUSY",
        "ACK",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/voip/util/VoipTone;

.field public static final enum ACK:Lcom/truecaller/voip/util/VoipTone;

.field public static final enum BUSY:Lcom/truecaller/voip/util/VoipTone;

.field public static final enum NO_TONE:Lcom/truecaller/voip/util/VoipTone;

.field public static final enum RINGING:Lcom/truecaller/voip/util/VoipTone;

.field public static final enum WAITING:Lcom/truecaller/voip/util/VoipTone;


# instance fields
.field private final playsInLoop:Z

.field private final toneGeneratorType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/voip/util/VoipTone;

    new-instance v1, Lcom/truecaller/voip/util/VoipTone;

    const-string v2, "NO_TONE"

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1
    invoke-direct {v1, v2, v3, v4, v3}, Lcom/truecaller/voip/util/VoipTone;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/truecaller/voip/util/VoipTone;->NO_TONE:Lcom/truecaller/voip/util/VoipTone;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/util/VoipTone;

    const-string v2, "RINGING"

    const/4 v4, 0x1

    const/16 v5, 0x17

    .line 2
    invoke-direct {v1, v2, v4, v5, v4}, Lcom/truecaller/voip/util/VoipTone;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/truecaller/voip/util/VoipTone;->RINGING:Lcom/truecaller/voip/util/VoipTone;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/voip/util/VoipTone;

    const-string v2, "WAITING"

    const/4 v5, 0x2

    const/16 v6, 0x16

    .line 3
    invoke-direct {v1, v2, v5, v6, v4}, Lcom/truecaller/voip/util/VoipTone;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/truecaller/voip/util/VoipTone;->WAITING:Lcom/truecaller/voip/util/VoipTone;

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/voip/util/VoipTone;

    const-string v2, "BUSY"

    const/4 v4, 0x3

    const/16 v5, 0x60

    .line 4
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/truecaller/voip/util/VoipTone;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/truecaller/voip/util/VoipTone;->BUSY:Lcom/truecaller/voip/util/VoipTone;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/voip/util/VoipTone;

    const-string v2, "ACK"

    const/4 v4, 0x4

    const/16 v5, 0x13

    .line 5
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/truecaller/voip/util/VoipTone;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/truecaller/voip/util/VoipTone;->ACK:Lcom/truecaller/voip/util/VoipTone;

    aput-object v1, v0, v4

    sput-object v0, Lcom/truecaller/voip/util/VoipTone;->$VALUES:[Lcom/truecaller/voip/util/VoipTone;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/voip/util/VoipTone;->toneGeneratorType:I

    iput-boolean p4, p0, Lcom/truecaller/voip/util/VoipTone;->playsInLoop:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/voip/util/VoipTone;
    .locals 1

    const-class v0, Lcom/truecaller/voip/util/VoipTone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/voip/util/VoipTone;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/voip/util/VoipTone;
    .locals 1

    sget-object v0, Lcom/truecaller/voip/util/VoipTone;->$VALUES:[Lcom/truecaller/voip/util/VoipTone;

    invoke-virtual {v0}, [Lcom/truecaller/voip/util/VoipTone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/voip/util/VoipTone;

    return-object v0
.end method


# virtual methods
.method public final getPlaysInLoop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/voip/util/VoipTone;->playsInLoop:Z

    return v0
.end method

.method public final getToneGeneratorType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/voip/util/VoipTone;->toneGeneratorType:I

    return v0
.end method
