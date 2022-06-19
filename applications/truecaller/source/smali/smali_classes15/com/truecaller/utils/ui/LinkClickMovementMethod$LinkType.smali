.class public final enum Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/utils/ui/LinkClickMovementMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "PHONE",
        "WEB_URL",
        "EMAIL_ADDRESS",
        "MENTION",
        "DEEPLINK",
        "NONE",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

.field public static final enum DEEPLINK:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

.field public static final enum EMAIL_ADDRESS:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

.field public static final enum MENTION:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

.field public static final enum NONE:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

.field public static final enum PHONE:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

.field public static final enum WEB_URL:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    new-instance v1, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    const-string v2, "PHONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->PHONE:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    const-string v2, "WEB_URL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->WEB_URL:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    const-string v2, "EMAIL_ADDRESS"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->EMAIL_ADDRESS:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    const-string v2, "MENTION"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->MENTION:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    const-string v2, "DEEPLINK"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->DEEPLINK:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    const-string v2, "NONE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->NONE:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->$VALUES:[Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;
    .locals 1

    const-class v0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;
    .locals 1

    sget-object v0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->$VALUES:[Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    invoke-virtual {v0}, [Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    return-object v0
.end method
