.class public final enum Lcom/truecaller/messaging/conversation/QuickAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/messaging/conversation/QuickAction;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B%\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u0019\u0010\n\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/truecaller/messaging/conversation/QuickAction;",
        "",
        "",
        "icon",
        "I",
        "getIcon",
        "()I",
        "text",
        "getText",
        "",
        "analyticsValue",
        "Ljava/lang/String;",
        "getAnalyticsValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;IIILjava/lang/String;)V",
        "CALL",
        "VOIP",
        "FLASH",
        "SAVE_CONTACT",
        "VIEW_PROFILE",
        "NEVER_MARK_AS_SPAM",
        "NEVER_MARK_AS_PROMOTIONAL",
        "UNBLOCK",
        "INVITE",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/messaging/conversation/QuickAction;

.field public static final enum CALL:Lcom/truecaller/messaging/conversation/QuickAction;

.field public static final enum FLASH:Lcom/truecaller/messaging/conversation/QuickAction;

.field public static final enum INVITE:Lcom/truecaller/messaging/conversation/QuickAction;

.field public static final enum NEVER_MARK_AS_PROMOTIONAL:Lcom/truecaller/messaging/conversation/QuickAction;

.field public static final enum NEVER_MARK_AS_SPAM:Lcom/truecaller/messaging/conversation/QuickAction;

.field public static final enum SAVE_CONTACT:Lcom/truecaller/messaging/conversation/QuickAction;

.field public static final enum UNBLOCK:Lcom/truecaller/messaging/conversation/QuickAction;

.field public static final enum VIEW_PROFILE:Lcom/truecaller/messaging/conversation/QuickAction;

.field public static final enum VOIP:Lcom/truecaller/messaging/conversation/QuickAction;


# instance fields
.field private final analyticsValue:Ljava/lang/String;

.field private final icon:I

.field private final text:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/truecaller/messaging/conversation/QuickAction;

    new-instance v7, Lcom/truecaller/messaging/conversation/QuickAction;

    const-string v2, "CALL"

    const/4 v3, 0x0

    const v4, 0x7f080693

    const v5, 0x7f120918

    const-string v6, "Call"

    move-object v1, v7

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/truecaller/messaging/conversation/QuickAction;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v7, Lcom/truecaller/messaging/conversation/QuickAction;->CALL:Lcom/truecaller/messaging/conversation/QuickAction;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/truecaller/messaging/conversation/QuickAction;

    const-string v9, "VOIP"

    const/4 v10, 0x1

    const v11, 0x7f0806ad

    const v12, 0x7f12106d

    const-string v13, "Voice"

    move-object v8, v1

    .line 2
    invoke-direct/range {v8 .. v13}, Lcom/truecaller/messaging/conversation/QuickAction;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/conversation/QuickAction;->VOIP:Lcom/truecaller/messaging/conversation/QuickAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/QuickAction;

    const-string v4, "FLASH"

    const/4 v5, 0x2

    const v6, 0x7f08069e

    const v7, 0x7f120b18

    const-string v8, "Flash"

    move-object v3, v1

    .line 3
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/QuickAction;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/conversation/QuickAction;->FLASH:Lcom/truecaller/messaging/conversation/QuickAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/QuickAction;

    const-string v4, "SAVE_CONTACT"

    const/4 v5, 0x3

    const v6, 0x7f0806af

    const v7, 0x7f120218

    const-string v8, "SaveContact"

    move-object v3, v1

    .line 4
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/QuickAction;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/conversation/QuickAction;->SAVE_CONTACT:Lcom/truecaller/messaging/conversation/QuickAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/QuickAction;

    const-string v4, "VIEW_PROFILE"

    const/4 v5, 0x4

    const v6, 0x7f0806a0

    const v7, 0x7f1202e2

    const-string v8, "ViewDetails"

    move-object v3, v1

    .line 5
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/QuickAction;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/conversation/QuickAction;->VIEW_PROFILE:Lcom/truecaller/messaging/conversation/QuickAction;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/QuickAction;

    const-string v4, "NEVER_MARK_AS_SPAM"

    const/4 v5, 0x5

    const v6, 0x7f08072c

    const v7, 0x7f1203d1

    const-string v8, "NeverMarkAsSpam"

    move-object v3, v1

    .line 6
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/QuickAction;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/conversation/QuickAction;->NEVER_MARK_AS_SPAM:Lcom/truecaller/messaging/conversation/QuickAction;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/QuickAction;

    const-string v4, "NEVER_MARK_AS_PROMOTIONAL"

    const/4 v5, 0x6

    const v6, 0x7f08059f

    const v7, 0x7f1203d0

    const-string v8, "NeverMarkAsPromotional"

    move-object v3, v1

    .line 7
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/QuickAction;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/conversation/QuickAction;->NEVER_MARK_AS_PROMOTIONAL:Lcom/truecaller/messaging/conversation/QuickAction;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/QuickAction;

    const-string v4, "UNBLOCK"

    const/4 v5, 0x7

    const v6, 0x7f080811

    const v7, 0x7f12078b

    const-string v8, "Unblock"

    move-object v3, v1

    .line 8
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/QuickAction;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/conversation/QuickAction;->UNBLOCK:Lcom/truecaller/messaging/conversation/QuickAction;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/QuickAction;

    const-string v4, "INVITE"

    const/16 v5, 0x8

    const v6, 0x7f080739

    const v7, 0x7f120e98

    const-string v8, "Invite"

    move-object v3, v1

    .line 9
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/QuickAction;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/conversation/QuickAction;->INVITE:Lcom/truecaller/messaging/conversation/QuickAction;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/messaging/conversation/QuickAction;->$VALUES:[Lcom/truecaller/messaging/conversation/QuickAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/messaging/conversation/QuickAction;->icon:I

    iput p4, p0, Lcom/truecaller/messaging/conversation/QuickAction;->text:I

    iput-object p5, p0, Lcom/truecaller/messaging/conversation/QuickAction;->analyticsValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/messaging/conversation/QuickAction;
    .locals 1

    const-class v0, Lcom/truecaller/messaging/conversation/QuickAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/messaging/conversation/QuickAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/messaging/conversation/QuickAction;
    .locals 1

    sget-object v0, Lcom/truecaller/messaging/conversation/QuickAction;->$VALUES:[Lcom/truecaller/messaging/conversation/QuickAction;

    invoke-virtual {v0}, [Lcom/truecaller/messaging/conversation/QuickAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/messaging/conversation/QuickAction;

    return-object v0
.end method


# virtual methods
.method public final getAnalyticsValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/QuickAction;->analyticsValue:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/conversation/QuickAction;->icon:I

    return v0
.end method

.method public final getText()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/conversation/QuickAction;->text:I

    return v0
.end method
