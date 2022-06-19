.class public final enum Lcom/truecaller/voip/ConnectionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/voip/ConnectionState;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B9\u0008\u0002\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u001b\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000b\u001a\u0004\u0008\u000f\u0010\rj\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/truecaller/voip/ConnectionState;",
        "",
        "",
        "showAvatarRing",
        "Ljava/lang/Boolean;",
        "getShowAvatarRing",
        "()Ljava/lang/Boolean;",
        "startTimer",
        "getStartTimer",
        "",
        "callStatusColor",
        "Ljava/lang/Integer;",
        "getCallStatusColor",
        "()Ljava/lang/Integer;",
        "statusId",
        "getStatusId",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V",
        "CONNECTED",
        "INTERRUPTED",
        "DISCONNECTED",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/voip/ConnectionState;

.field public static final enum CONNECTED:Lcom/truecaller/voip/ConnectionState;

.field public static final enum DISCONNECTED:Lcom/truecaller/voip/ConnectionState;

.field public static final enum INTERRUPTED:Lcom/truecaller/voip/ConnectionState;


# instance fields
.field private final callStatusColor:Ljava/lang/Integer;

.field private final showAvatarRing:Ljava/lang/Boolean;

.field private final startTimer:Ljava/lang/Boolean;

.field private final statusId:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/voip/ConnectionState;

    new-instance v10, Lcom/truecaller/voip/ConnectionState;

    const-string v2, "CONNECTED"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/truecaller/voip/ConnectionState;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;ILs1/z/c/f;)V

    sput-object v10, Lcom/truecaller/voip/ConnectionState;->CONNECTED:Lcom/truecaller/voip/ConnectionState;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    new-instance v1, Lcom/truecaller/voip/ConnectionState;

    .line 1
    sget v2, Lcom/truecaller/voip/R$string;->voip_status_reconnecting:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2
    sget v2, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 3
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "INTERRUPTED"

    const/4 v4, 0x1

    move-object v2, v1

    move-object v6, v12

    move-object v8, v14

    .line 5
    invoke-direct/range {v2 .. v8}, Lcom/truecaller/voip/ConnectionState;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    sput-object v1, Lcom/truecaller/voip/ConnectionState;->INTERRUPTED:Lcom/truecaller/voip/ConnectionState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/voip/ConnectionState;

    .line 6
    sget v2, Lcom/truecaller/voip/R$string;->voip_status_call_failed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 7
    sget v2, Lcom/truecaller/voip/R$attr;->voip_call_status_error_color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v9, "DISCONNECTED"

    const/4 v10, 0x2

    move-object v8, v1

    .line 8
    invoke-direct/range {v8 .. v14}, Lcom/truecaller/voip/ConnectionState;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    sput-object v1, Lcom/truecaller/voip/ConnectionState;->DISCONNECTED:Lcom/truecaller/voip/ConnectionState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/voip/ConnectionState;->$VALUES:[Lcom/truecaller/voip/ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/voip/ConnectionState;->statusId:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/truecaller/voip/ConnectionState;->startTimer:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/truecaller/voip/ConnectionState;->callStatusColor:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/truecaller/voip/ConnectionState;->showAvatarRing:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;ILs1/z/c/f;)V
    .locals 9

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    .line 2
    invoke-direct/range {v2 .. v8}, Lcom/truecaller/voip/ConnectionState;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/voip/ConnectionState;
    .locals 1

    const-class v0, Lcom/truecaller/voip/ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/voip/ConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/voip/ConnectionState;
    .locals 1

    sget-object v0, Lcom/truecaller/voip/ConnectionState;->$VALUES:[Lcom/truecaller/voip/ConnectionState;

    invoke-virtual {v0}, [Lcom/truecaller/voip/ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/voip/ConnectionState;

    return-object v0
.end method


# virtual methods
.method public final getCallStatusColor()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ConnectionState;->callStatusColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getShowAvatarRing()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ConnectionState;->showAvatarRing:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getStartTimer()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ConnectionState;->startTimer:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getStatusId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ConnectionState;->statusId:Ljava/lang/Integer;

    return-object v0
.end method
