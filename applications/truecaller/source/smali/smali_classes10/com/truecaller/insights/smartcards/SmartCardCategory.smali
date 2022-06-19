.class public final enum Lcom/truecaller/insights/smartcards/SmartCardCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/insights/smartcards/SmartCardCategory$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/smartcards/SmartCardCategory;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\"\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#\u00a8\u0006$"
    }
    d2 = {
        "Lcom/truecaller/insights/smartcards/SmartCardCategory;",
        "",
        "",
        "key",
        "Ljava/lang/String;",
        "getKey",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Companion",
        "a",
        "Transaction",
        "Loan",
        "Travel",
        "Flight",
        "Bus",
        "Train",
        "Event",
        "Bill",
        "Recharge",
        "Appointment",
        "Delivery",
        "Prescription",
        "School",
        "Tax",
        "Vaccine",
        "WeatherAlert",
        "Balance",
        "Investments",
        "DataUsage",
        "SecurityAlert",
        "MissedCall",
        "VoiceMail",
        "Betting",
        "Promotion",
        "OTP",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Appointment:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Balance:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Betting:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Bill:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Bus:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final Companion:Lcom/truecaller/insights/smartcards/SmartCardCategory$a;

.field public static final enum DataUsage:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Delivery:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Event:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Flight:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Investments:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Loan:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum MissedCall:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum OTP:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Prescription:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Promotion:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Recharge:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum School:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum SecurityAlert:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Tax:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Train:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Travel:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum Vaccine:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum VoiceMail:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field public static final enum WeatherAlert:Lcom/truecaller/insights/smartcards/SmartCardCategory;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/insights/smartcards/SmartCardCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x19

    new-array v1, v0, [Lcom/truecaller/insights/smartcards/SmartCardCategory;

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Transaction"

    const/4 v4, 0x0

    .line 1
    invoke-direct {v2, v3, v4, v3}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Transaction:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    aput-object v2, v1, v4

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Loan"

    const/4 v5, 0x1

    .line 2
    invoke-direct {v2, v3, v5, v3}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Loan:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Travel"

    const/4 v5, 0x2

    .line 3
    invoke-direct {v2, v3, v5, v3}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Travel:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Flight"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v2, v3, v5, v3}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Flight:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Bus"

    const/4 v5, 0x4

    .line 5
    invoke-direct {v2, v3, v5, v3}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Bus:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Train"

    const/4 v5, 0x5

    .line 6
    invoke-direct {v2, v3, v5, v3}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Train:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Event"

    const/4 v5, 0x6

    .line 7
    invoke-direct {v2, v3, v5, v3}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Event:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Bill"

    const/4 v5, 0x7

    .line 8
    invoke-direct {v2, v3, v5, v3}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Bill:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Recharge"

    const/16 v5, 0x8

    .line 9
    invoke-direct {v2, v3, v5, v3}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Recharge:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Appointment"

    const/16 v5, 0x9

    .line 10
    invoke-direct {v2, v3, v5, v3}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Appointment:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Delivery"

    const/16 v5, 0xa

    const-string v6, "Delivery"

    .line 11
    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Delivery:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Prescription"

    const/16 v5, 0xb

    const-string v6, "Prescription"

    .line 12
    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Prescription:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "School"

    const/16 v5, 0xc

    const-string v6, "School"

    .line 13
    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->School:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Tax"

    const/16 v5, 0xd

    const-string v6, "Tax"

    .line 14
    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Tax:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Vaccine"

    const/16 v5, 0xe

    const-string v6, "Vaccine"

    .line 15
    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Vaccine:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "WeatherAlert"

    const/16 v5, 0xf

    const-string v6, "Weather alert"

    .line 16
    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->WeatherAlert:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Balance"

    const/16 v5, 0x10

    const-string v6, "Balance"

    .line 17
    invoke-direct {v2, v3, v5, v6}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Balance:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    aput-object v2, v1, v5

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Investments"

    const/16 v6, 0x11

    const-string v7, "Investments"

    .line 18
    invoke-direct {v2, v3, v6, v7}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Investments:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "DataUsage"

    const/16 v6, 0x12

    const-string v7, "Data usage"

    .line 19
    invoke-direct {v2, v3, v6, v7}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->DataUsage:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "SecurityAlert"

    const/16 v6, 0x13

    const-string v7, "Security alert"

    .line 20
    invoke-direct {v2, v3, v6, v7}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->SecurityAlert:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "MissedCall"

    const/16 v6, 0x14

    const-string v7, "Missed call"

    .line 21
    invoke-direct {v2, v3, v6, v7}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->MissedCall:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "VoiceMail"

    const/16 v6, 0x15

    const-string v7, "Voice mail"

    .line 22
    invoke-direct {v2, v3, v6, v7}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->VoiceMail:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Betting"

    const/16 v6, 0x16

    const-string v7, "Betting"

    .line 23
    invoke-direct {v2, v3, v6, v7}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Betting:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "Promotion"

    const/16 v6, 0x17

    const-string v7, "Promotion"

    .line 24
    invoke-direct {v2, v3, v6, v7}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Promotion:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    new-instance v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const-string v3, "OTP"

    const/16 v6, 0x18

    const-string v7, "OTP"

    .line 25
    invoke-direct {v2, v3, v6, v7}, Lcom/truecaller/insights/smartcards/SmartCardCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/truecaller/insights/smartcards/SmartCardCategory;->OTP:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardCategory;->$VALUES:[Lcom/truecaller/insights/smartcards/SmartCardCategory;

    new-instance v1, Lcom/truecaller/insights/smartcards/SmartCardCategory$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/truecaller/insights/smartcards/SmartCardCategory$a;-><init>(Ls1/z/c/f;)V

    sput-object v1, Lcom/truecaller/insights/smartcards/SmartCardCategory;->Companion:Lcom/truecaller/insights/smartcards/SmartCardCategory$a;

    .line 26
    invoke-static {}, Lcom/truecaller/insights/smartcards/SmartCardCategory;->values()[Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object v1

    .line 27
    invoke-static {v0}, Le/q/f/a/d/a;->Y1(I)I

    move-result v0

    if-ge v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v0

    .line 28
    :goto_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 29
    array-length v2, v1

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v3, v1, v4

    .line 30
    iget-object v5, v3, Lcom/truecaller/insights/smartcards/SmartCardCategory;->key:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "Locale.ENGLISH"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v5, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 31
    :cond_1
    sput-object v0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->map:Ljava/util/Map;

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

    iput-object p3, p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->key:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getMap$cp()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->map:Ljava/util/Map;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/smartcards/SmartCardCategory;
    .locals 1

    const-class v0, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/smartcards/SmartCardCategory;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->$VALUES:[Lcom/truecaller/insights/smartcards/SmartCardCategory;

    invoke-virtual {v0}, [Lcom/truecaller/insights/smartcards/SmartCardCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/smartcards/SmartCardCategory;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/smartcards/SmartCardCategory;->key:Ljava/lang/String;

    return-object v0
.end method
