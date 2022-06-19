.class public final enum Lcom/revenuecat/purchases/common/LogIntent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/revenuecat/purchases/common/LogIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/revenuecat/purchases/common/LogIntent;

.field public static final enum DEBUG_INFO:Lcom/revenuecat/purchases/common/LogIntent;

.field public static final enum GOOGLE_ERROR:Lcom/revenuecat/purchases/common/LogIntent;

.field public static final enum GOOGLE_INFO:Lcom/revenuecat/purchases/common/LogIntent;

.field public static final enum INFO:Lcom/revenuecat/purchases/common/LogIntent;

.field public static final enum PURCHASE:Lcom/revenuecat/purchases/common/LogIntent;

.field public static final enum RC_ERROR:Lcom/revenuecat/purchases/common/LogIntent;

.field public static final enum RC_PURCHASE_SUCCESS:Lcom/revenuecat/purchases/common/LogIntent;

.field public static final enum RC_SUCCESS:Lcom/revenuecat/purchases/common/LogIntent;

.field public static final enum USER:Lcom/revenuecat/purchases/common/LogIntent;

.field public static final enum WARNING:Lcom/revenuecat/purchases/common/LogIntent;


# instance fields
.field private final emojiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/revenuecat/purchases/common/LogIntent;

    new-instance v1, Lcom/revenuecat/purchases/common/LogIntent;

    const-string v2, "\ud83e\udd16"

    const-string v3, "\u203c\ufe0f"

    .line 1
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "GOOGLE_ERROR"

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6, v4}, Lcom/revenuecat/purchases/common/LogIntent;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v1, Lcom/revenuecat/purchases/common/LogIntent;->GOOGLE_ERROR:Lcom/revenuecat/purchases/common/LogIntent;

    aput-object v1, v0, v6

    new-instance v1, Lcom/revenuecat/purchases/common/LogIntent;

    .line 2
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "GOOGLE_INFO"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/revenuecat/purchases/common/LogIntent;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v1, Lcom/revenuecat/purchases/common/LogIntent;->GOOGLE_INFO:Lcom/revenuecat/purchases/common/LogIntent;

    aput-object v1, v0, v5

    new-instance v1, Lcom/revenuecat/purchases/common/LogIntent;

    const-string v2, "\u2139\ufe0f"

    .line 3
    invoke-static {v2}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "INFO"

    const/4 v6, 0x2

    invoke-direct {v1, v5, v6, v4}, Lcom/revenuecat/purchases/common/LogIntent;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v1, Lcom/revenuecat/purchases/common/LogIntent;->INFO:Lcom/revenuecat/purchases/common/LogIntent;

    aput-object v1, v0, v6

    new-instance v1, Lcom/revenuecat/purchases/common/LogIntent;

    .line 4
    invoke-static {v2}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "DEBUG_INFO"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v5, v2}, Lcom/revenuecat/purchases/common/LogIntent;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v1, Lcom/revenuecat/purchases/common/LogIntent;->DEBUG_INFO:Lcom/revenuecat/purchases/common/LogIntent;

    aput-object v1, v0, v5

    new-instance v1, Lcom/revenuecat/purchases/common/LogIntent;

    const-string v2, "\ud83d\udcb0"

    .line 5
    invoke-static {v2}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "PURCHASE"

    const/4 v6, 0x4

    invoke-direct {v1, v5, v6, v4}, Lcom/revenuecat/purchases/common/LogIntent;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v1, Lcom/revenuecat/purchases/common/LogIntent;->PURCHASE:Lcom/revenuecat/purchases/common/LogIntent;

    aput-object v1, v0, v6

    new-instance v1, Lcom/revenuecat/purchases/common/LogIntent;

    const-string v4, "\ud83d\ude3f"

    .line 6
    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "RC_ERROR"

    const/4 v5, 0x5

    invoke-direct {v1, v4, v5, v3}, Lcom/revenuecat/purchases/common/LogIntent;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v1, Lcom/revenuecat/purchases/common/LogIntent;->RC_ERROR:Lcom/revenuecat/purchases/common/LogIntent;

    aput-object v1, v0, v5

    new-instance v1, Lcom/revenuecat/purchases/common/LogIntent;

    const-string v3, "\ud83d\ude3b"

    .line 7
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "RC_PURCHASE_SUCCESS"

    const/4 v5, 0x6

    invoke-direct {v1, v4, v5, v2}, Lcom/revenuecat/purchases/common/LogIntent;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v1, Lcom/revenuecat/purchases/common/LogIntent;->RC_PURCHASE_SUCCESS:Lcom/revenuecat/purchases/common/LogIntent;

    aput-object v1, v0, v5

    new-instance v1, Lcom/revenuecat/purchases/common/LogIntent;

    .line 8
    invoke-static {v3}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "RC_SUCCESS"

    const/4 v4, 0x7

    invoke-direct {v1, v3, v4, v2}, Lcom/revenuecat/purchases/common/LogIntent;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v1, Lcom/revenuecat/purchases/common/LogIntent;->RC_SUCCESS:Lcom/revenuecat/purchases/common/LogIntent;

    aput-object v1, v0, v4

    new-instance v1, Lcom/revenuecat/purchases/common/LogIntent;

    const-string v2, "\ud83d\udc64"

    .line 9
    invoke-static {v2}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "USER"

    const/16 v4, 0x8

    invoke-direct {v1, v3, v4, v2}, Lcom/revenuecat/purchases/common/LogIntent;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v1, Lcom/revenuecat/purchases/common/LogIntent;->USER:Lcom/revenuecat/purchases/common/LogIntent;

    aput-object v1, v0, v4

    new-instance v1, Lcom/revenuecat/purchases/common/LogIntent;

    const-string v2, "\u26a0\ufe0f"

    .line 10
    invoke-static {v2}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "WARNING"

    const/16 v4, 0x9

    invoke-direct {v1, v3, v4, v2}, Lcom/revenuecat/purchases/common/LogIntent;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sput-object v1, Lcom/revenuecat/purchases/common/LogIntent;->WARNING:Lcom/revenuecat/purchases/common/LogIntent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/revenuecat/purchases/common/LogIntent;->$VALUES:[Lcom/revenuecat/purchases/common/LogIntent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/revenuecat/purchases/common/LogIntent;->emojiList:Ljava/util/List;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/revenuecat/purchases/common/LogIntent;
    .locals 1

    const-class v0, Lcom/revenuecat/purchases/common/LogIntent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/revenuecat/purchases/common/LogIntent;

    return-object p0
.end method

.method public static values()[Lcom/revenuecat/purchases/common/LogIntent;
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/common/LogIntent;->$VALUES:[Lcom/revenuecat/purchases/common/LogIntent;

    invoke-virtual {v0}, [Lcom/revenuecat/purchases/common/LogIntent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/revenuecat/purchases/common/LogIntent;

    return-object v0
.end method


# virtual methods
.method public final getEmojiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/LogIntent;->emojiList:Ljava/util/List;

    return-object v0
.end method
