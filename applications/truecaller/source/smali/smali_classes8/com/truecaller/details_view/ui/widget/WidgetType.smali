.class public final enum Lcom/truecaller/details_view/ui/widget/WidgetType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/details_view/ui/widget/WidgetType;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0013\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/details_view/ui/widget/WidgetType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "ABOUT",
        "NOTES",
        "CALL_HISTORY",
        "CONTACT_INFO",
        "COMMENTS",
        "FEEDBACK",
        "NUMBERS",
        "PRIVATE_NUMBER",
        "PREMIUM",
        "REQUEST_CONTACT",
        "SWISH",
        "SPAM_STATS",
        "SOCIAL_MEDIA",
        "MODERATION_NOTICE",
        "LEARN_MORE",
        "AD",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum ABOUT:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum AD:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum CALL_HISTORY:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum COMMENTS:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum CONTACT_INFO:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum FEEDBACK:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum LEARN_MORE:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum MODERATION_NOTICE:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum NOTES:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum NUMBERS:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum PREMIUM:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum PRIVATE_NUMBER:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum REQUEST_CONTACT:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum SOCIAL_MEDIA:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum SPAM_STATS:Lcom/truecaller/details_view/ui/widget/WidgetType;

.field public static final enum SWISH:Lcom/truecaller/details_view/ui/widget/WidgetType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/truecaller/details_view/ui/widget/WidgetType;

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "ABOUT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->ABOUT:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "NOTES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->NOTES:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "CALL_HISTORY"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->CALL_HISTORY:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "CONTACT_INFO"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->CONTACT_INFO:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "COMMENTS"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->COMMENTS:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "FEEDBACK"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->FEEDBACK:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "NUMBERS"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->NUMBERS:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "PRIVATE_NUMBER"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->PRIVATE_NUMBER:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "PREMIUM"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->PREMIUM:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "REQUEST_CONTACT"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->REQUEST_CONTACT:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "SWISH"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->SWISH:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "SPAM_STATS"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->SPAM_STATS:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "SOCIAL_MEDIA"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->SOCIAL_MEDIA:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "MODERATION_NOTICE"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->MODERATION_NOTICE:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "LEARN_MORE"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->LEARN_MORE:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/details_view/ui/widget/WidgetType;

    const-string v2, "AD"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lcom/truecaller/details_view/ui/widget/WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/details_view/ui/widget/WidgetType;->AD:Lcom/truecaller/details_view/ui/widget/WidgetType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/details_view/ui/widget/WidgetType;->$VALUES:[Lcom/truecaller/details_view/ui/widget/WidgetType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/details_view/ui/widget/WidgetType;
    .locals 1

    const-class v0, Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/details_view/ui/widget/WidgetType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/details_view/ui/widget/WidgetType;
    .locals 1

    sget-object v0, Lcom/truecaller/details_view/ui/widget/WidgetType;->$VALUES:[Lcom/truecaller/details_view/ui/widget/WidgetType;

    invoke-virtual {v0}, [Lcom/truecaller/details_view/ui/widget/WidgetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/details_view/ui/widget/WidgetType;

    return-object v0
.end method
