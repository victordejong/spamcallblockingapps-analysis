.class public final enum Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;",
        "",
        "",
        "eventAction",
        "Ljava/lang/String;",
        "getEventAction",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Companion",
        "a",
        "VOIP_ADD_TO_GROUP",
        "VOIP_REMOVE_FROM_GROUP",
        "VOIP_CALL",
        "VOIP_VIEW_PROFILE",
        "VOIP_ITEM_CLICK",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

.field public static final Companion:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType$a;

.field public static final enum VOIP_ADD_TO_GROUP:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

.field public static final enum VOIP_CALL:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

.field public static final enum VOIP_ITEM_CLICK:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

.field public static final enum VOIP_REMOVE_FROM_GROUP:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

.field public static final enum VOIP_VIEW_PROFILE:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;


# instance fields
.field private final eventAction:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    new-instance v1, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    const-string v2, "VOIP_ADD_TO_GROUP"

    const/4 v3, 0x0

    const-string v4, "ItemEvent.ACTION_VOIP_ADD_TO_GROUP"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->VOIP_ADD_TO_GROUP:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    const-string v2, "VOIP_REMOVE_FROM_GROUP"

    const/4 v3, 0x1

    const-string v4, "ItemEvent.VOIP_REMOVE_FROM_GROUP"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->VOIP_REMOVE_FROM_GROUP:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    const-string v2, "VOIP_CALL"

    const/4 v3, 0x2

    const-string v4, "ItemEvent.ACTION_VOIP_CALL"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->VOIP_CALL:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    const-string v2, "VOIP_VIEW_PROFILE"

    const/4 v3, 0x3

    const-string v4, "ItemEvent.ACTION_VOIP_VIEW_PROFILE"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->VOIP_VIEW_PROFILE:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    const-string v2, "VOIP_ITEM_CLICK"

    const/4 v3, 0x4

    const-string v4, "ItemEvent.ACTION_VOIP_ITEM_CLICK"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->VOIP_ITEM_CLICK:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->$VALUES:[Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    new-instance v0, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->Companion:Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType$a;

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

    iput-object p3, p0, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->eventAction:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;
    .locals 1

    const-class v0, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;
    .locals 1

    sget-object v0, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->$VALUES:[Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    invoke-virtual {v0}, [Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;

    return-object v0
.end method


# virtual methods
.method public final getEventAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;->eventAction:Ljava/lang/String;

    return-object v0
.end method
