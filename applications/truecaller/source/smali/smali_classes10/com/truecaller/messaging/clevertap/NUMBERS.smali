.class public final enum Lcom/truecaller/messaging/clevertap/NUMBERS;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/messaging/clevertap/NUMBERS;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0018\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/truecaller/messaging/clevertap/NUMBERS;",
        "",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "NONE",
        "ZERO",
        "ONE",
        "TWO",
        "TWO_FOUR",
        "TWO_FIVE",
        "THREE_FIVE",
        "FIVE_SEVEN",
        "EIGHT_FOURTEEN",
        "ELEVEN_TWENTY",
        "SIX_TEN",
        "TEN_PLUS",
        "FIFTEEN_THIRTY",
        "TWENTY_ONE_THIRTY",
        "THIRTY_PLUS",
        "THIRTY_ONE_FIFTY",
        "FIFTY_PLUS",
        "messaging-storage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum EIGHT_FOURTEEN:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum ELEVEN_TWENTY:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum FIFTEEN_THIRTY:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum FIFTY_PLUS:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum FIVE_SEVEN:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum NONE:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum ONE:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum SIX_TEN:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum TEN_PLUS:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum THIRTY_ONE_FIFTY:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum THIRTY_PLUS:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum THREE_FIVE:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum TWENTY_ONE_THIRTY:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum TWO:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum TWO_FIVE:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum TWO_FOUR:Lcom/truecaller/messaging/clevertap/NUMBERS;

.field public static final enum ZERO:Lcom/truecaller/messaging/clevertap/NUMBERS;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/truecaller/messaging/clevertap/NUMBERS;

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "NONE"

    const/4 v3, 0x0

    const-string v4, "None"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->NONE:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "ZERO"

    const/4 v3, 0x1

    const-string v4, "Zero"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->ZERO:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "ONE"

    const/4 v3, 0x2

    const-string v4, "One"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->ONE:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "TWO"

    const/4 v3, 0x3

    const-string v4, "Two"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->TWO:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "TWO_FOUR"

    const/4 v3, 0x4

    const-string v4, "Two_Four"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->TWO_FOUR:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "TWO_FIVE"

    const/4 v3, 0x5

    const-string v4, "Two_Five"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->TWO_FIVE:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "THREE_FIVE"

    const/4 v3, 0x6

    const-string v4, "Three_Five"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->THREE_FIVE:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "FIVE_SEVEN"

    const/4 v3, 0x7

    const-string v4, "Five_Seven"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->FIVE_SEVEN:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "EIGHT_FOURTEEN"

    const/16 v3, 0x8

    const-string v4, "Eight_Fourteen"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->EIGHT_FOURTEEN:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "ELEVEN_TWENTY"

    const/16 v3, 0x9

    const-string v4, "Eleven_Twenty"

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->ELEVEN_TWENTY:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "SIX_TEN"

    const/16 v3, 0xa

    const-string v4, "Six_Ten"

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->SIX_TEN:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "TEN_PLUS"

    const/16 v3, 0xb

    const-string v4, "Tenplus"

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->TEN_PLUS:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "FIFTEEN_THIRTY"

    const/16 v3, 0xc

    const-string v4, "Fifteen_Thirty"

    .line 13
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->FIFTEEN_THIRTY:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "TWENTY_ONE_THIRTY"

    const/16 v3, 0xd

    const-string v4, "TwentyOne_Thirty"

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->TWENTY_ONE_THIRTY:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "THIRTY_PLUS"

    const/16 v3, 0xe

    const-string v4, "Thirtyplus"

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->THIRTY_PLUS:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "THIRTY_ONE_FIFTY"

    const/16 v3, 0xf

    const-string v4, "ThirtyOne_Fifty"

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->THIRTY_ONE_FIFTY:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/messaging/clevertap/NUMBERS;

    const-string v2, "FIFTY_PLUS"

    const/16 v3, 0x10

    const-string v4, "Fiftyplus"

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/messaging/clevertap/NUMBERS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/messaging/clevertap/NUMBERS;->FIFTY_PLUS:Lcom/truecaller/messaging/clevertap/NUMBERS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/messaging/clevertap/NUMBERS;->$VALUES:[Lcom/truecaller/messaging/clevertap/NUMBERS;

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

    iput-object p3, p0, Lcom/truecaller/messaging/clevertap/NUMBERS;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/messaging/clevertap/NUMBERS;
    .locals 1

    const-class v0, Lcom/truecaller/messaging/clevertap/NUMBERS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/messaging/clevertap/NUMBERS;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/messaging/clevertap/NUMBERS;
    .locals 1

    sget-object v0, Lcom/truecaller/messaging/clevertap/NUMBERS;->$VALUES:[Lcom/truecaller/messaging/clevertap/NUMBERS;

    invoke-virtual {v0}, [Lcom/truecaller/messaging/clevertap/NUMBERS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/messaging/clevertap/NUMBERS;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/clevertap/NUMBERS;->value:Ljava/lang/String;

    return-object v0
.end method
