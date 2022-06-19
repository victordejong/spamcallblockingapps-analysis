.class public final enum Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/details_view/ui/actionbutton/ActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "CALL",
        "MESSAGE",
        "UNBLOCK",
        "BLOCK",
        "NOT_SPAM",
        "VOIP",
        "FLASH",
        "INVITE",
        "details-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

.field public static final enum BLOCK:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

.field public static final enum CALL:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

.field public static final enum FLASH:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

.field public static final enum INVITE:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

.field public static final enum MESSAGE:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

.field public static final enum NOT_SPAM:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

.field public static final enum UNBLOCK:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

.field public static final enum VOIP:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    new-instance v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    const-string v2, "CALL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->CALL:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    const-string v2, "MESSAGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->MESSAGE:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    const-string v2, "UNBLOCK"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->UNBLOCK:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    const-string v2, "BLOCK"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->BLOCK:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    const-string v2, "NOT_SPAM"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->NOT_SPAM:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    const-string v2, "VOIP"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->VOIP:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    const-string v2, "FLASH"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->FLASH:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    const-string v2, "INVITE"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->INVITE:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->$VALUES:[Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;
    .locals 1

    const-class v0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;
    .locals 1

    sget-object v0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->$VALUES:[Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    invoke-virtual {v0}, [Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    return-object v0
.end method
