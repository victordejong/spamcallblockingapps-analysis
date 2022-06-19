.class public final enum Lcom/truecaller/messaging/conversation/draft/DraftMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/messaging/conversation/draft/DraftMode;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/messaging/conversation/draft/DraftMode;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "GALLERY",
        "DOCUMENTS",
        "VCARD",
        "CAPTURE_PHOTO",
        "CAPTURE_VIDEO",
        "GIF",
        "SHARED_CONTENT",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/messaging/conversation/draft/DraftMode;

.field public static final enum CAPTURE_PHOTO:Lcom/truecaller/messaging/conversation/draft/DraftMode;

.field public static final enum CAPTURE_VIDEO:Lcom/truecaller/messaging/conversation/draft/DraftMode;

.field public static final enum DOCUMENTS:Lcom/truecaller/messaging/conversation/draft/DraftMode;

.field public static final enum GALLERY:Lcom/truecaller/messaging/conversation/draft/DraftMode;

.field public static final enum GIF:Lcom/truecaller/messaging/conversation/draft/DraftMode;

.field public static final enum SHARED_CONTENT:Lcom/truecaller/messaging/conversation/draft/DraftMode;

.field public static final enum VCARD:Lcom/truecaller/messaging/conversation/draft/DraftMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/truecaller/messaging/conversation/draft/DraftMode;

    new-instance v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;

    const-string v2, "GALLERY"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/messaging/conversation/draft/DraftMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;->GALLERY:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;

    const-string v2, "DOCUMENTS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/messaging/conversation/draft/DraftMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;->DOCUMENTS:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;

    const-string v2, "VCARD"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/messaging/conversation/draft/DraftMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;->VCARD:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;

    const-string v2, "CAPTURE_PHOTO"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/messaging/conversation/draft/DraftMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;->CAPTURE_PHOTO:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;

    const-string v2, "CAPTURE_VIDEO"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/messaging/conversation/draft/DraftMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;->CAPTURE_VIDEO:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;

    const-string v2, "GIF"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/messaging/conversation/draft/DraftMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;->GIF:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;

    const-string v2, "SHARED_CONTENT"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/messaging/conversation/draft/DraftMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/messaging/conversation/draft/DraftMode;->SHARED_CONTENT:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/messaging/conversation/draft/DraftMode;->$VALUES:[Lcom/truecaller/messaging/conversation/draft/DraftMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/messaging/conversation/draft/DraftMode;
    .locals 1

    const-class v0, Lcom/truecaller/messaging/conversation/draft/DraftMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/messaging/conversation/draft/DraftMode;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/messaging/conversation/draft/DraftMode;
    .locals 1

    sget-object v0, Lcom/truecaller/messaging/conversation/draft/DraftMode;->$VALUES:[Lcom/truecaller/messaging/conversation/draft/DraftMode;

    invoke-virtual {v0}, [Lcom/truecaller/messaging/conversation/draft/DraftMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/messaging/conversation/draft/DraftMode;

    return-object v0
.end method
