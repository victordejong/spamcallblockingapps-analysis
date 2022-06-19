.class public final enum Lcom/truecaller/wizard/utils/RolesToRequest;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/wizard/utils/RolesToRequest;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/wizard/utils/RolesToRequest;",
        "",
        "",
        "shouldAskDefaultDialer",
        "()Z",
        "<init>",
        "(Ljava/lang/String;I)V",
        "DefaultDialerAndCallerid",
        "DefaultDialer",
        "CallerId",
        "None",
        "wizard-tc_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/wizard/utils/RolesToRequest;

.field public static final enum CallerId:Lcom/truecaller/wizard/utils/RolesToRequest;

.field public static final enum DefaultDialer:Lcom/truecaller/wizard/utils/RolesToRequest;

.field public static final enum DefaultDialerAndCallerid:Lcom/truecaller/wizard/utils/RolesToRequest;

.field public static final enum None:Lcom/truecaller/wizard/utils/RolesToRequest;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/truecaller/wizard/utils/RolesToRequest;

    new-instance v1, Lcom/truecaller/wizard/utils/RolesToRequest;

    const-string v2, "DefaultDialerAndCallerid"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/wizard/utils/RolesToRequest;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/wizard/utils/RolesToRequest;->DefaultDialerAndCallerid:Lcom/truecaller/wizard/utils/RolesToRequest;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/utils/RolesToRequest;

    const-string v2, "DefaultDialer"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/wizard/utils/RolesToRequest;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/wizard/utils/RolesToRequest;->DefaultDialer:Lcom/truecaller/wizard/utils/RolesToRequest;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/utils/RolesToRequest;

    const-string v2, "CallerId"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/wizard/utils/RolesToRequest;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/wizard/utils/RolesToRequest;->CallerId:Lcom/truecaller/wizard/utils/RolesToRequest;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/wizard/utils/RolesToRequest;

    const-string v2, "None"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/wizard/utils/RolesToRequest;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/wizard/utils/RolesToRequest;->None:Lcom/truecaller/wizard/utils/RolesToRequest;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/wizard/utils/RolesToRequest;->$VALUES:[Lcom/truecaller/wizard/utils/RolesToRequest;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/wizard/utils/RolesToRequest;
    .locals 1

    const-class v0, Lcom/truecaller/wizard/utils/RolesToRequest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/wizard/utils/RolesToRequest;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/wizard/utils/RolesToRequest;
    .locals 1

    sget-object v0, Lcom/truecaller/wizard/utils/RolesToRequest;->$VALUES:[Lcom/truecaller/wizard/utils/RolesToRequest;

    invoke-virtual {v0}, [Lcom/truecaller/wizard/utils/RolesToRequest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/wizard/utils/RolesToRequest;

    return-object v0
.end method


# virtual methods
.method public final shouldAskDefaultDialer()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/wizard/utils/RolesToRequest;->DefaultDialer:Lcom/truecaller/wizard/utils/RolesToRequest;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/truecaller/wizard/utils/RolesToRequest;->DefaultDialerAndCallerid:Lcom/truecaller/wizard/utils/RolesToRequest;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
