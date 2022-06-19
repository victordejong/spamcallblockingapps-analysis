.class public final enum Lcom/truecaller/clevertap/MonthSegment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/clevertap/MonthSegment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/clevertap/MonthSegment;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u0000 \u00042\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/clevertap/MonthSegment;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Companion",
        "a",
        "UNDEFINED",
        "CURRENT_MONTH",
        "ONE_MONTH",
        "TWO_MONTH",
        "THREE_MONTH",
        "FOUR_SIX_MONTH",
        "SEVEN_NINE_MONTH",
        "TEN_TWELVE_MONTH",
        "YEAR_MORE",
        "clevertap_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/clevertap/MonthSegment;

.field public static final enum CURRENT_MONTH:Lcom/truecaller/clevertap/MonthSegment;

.field public static final Companion:Lcom/truecaller/clevertap/MonthSegment$a;

.field public static final enum FOUR_SIX_MONTH:Lcom/truecaller/clevertap/MonthSegment;

.field public static final enum ONE_MONTH:Lcom/truecaller/clevertap/MonthSegment;

.field public static final enum SEVEN_NINE_MONTH:Lcom/truecaller/clevertap/MonthSegment;

.field public static final enum TEN_TWELVE_MONTH:Lcom/truecaller/clevertap/MonthSegment;

.field public static final enum THREE_MONTH:Lcom/truecaller/clevertap/MonthSegment;

.field public static final enum TWO_MONTH:Lcom/truecaller/clevertap/MonthSegment;

.field public static final enum UNDEFINED:Lcom/truecaller/clevertap/MonthSegment;

.field public static final enum YEAR_MORE:Lcom/truecaller/clevertap/MonthSegment;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/truecaller/clevertap/MonthSegment;

    new-instance v1, Lcom/truecaller/clevertap/MonthSegment;

    const-string v2, "UNDEFINED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/MonthSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/MonthSegment;->UNDEFINED:Lcom/truecaller/clevertap/MonthSegment;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/clevertap/MonthSegment;

    const-string v2, "CURRENT_MONTH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/MonthSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/MonthSegment;->CURRENT_MONTH:Lcom/truecaller/clevertap/MonthSegment;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/clevertap/MonthSegment;

    const-string v2, "ONE_MONTH"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/MonthSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/MonthSegment;->ONE_MONTH:Lcom/truecaller/clevertap/MonthSegment;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/clevertap/MonthSegment;

    const-string v2, "TWO_MONTH"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/MonthSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/MonthSegment;->TWO_MONTH:Lcom/truecaller/clevertap/MonthSegment;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/clevertap/MonthSegment;

    const-string v2, "THREE_MONTH"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/MonthSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/MonthSegment;->THREE_MONTH:Lcom/truecaller/clevertap/MonthSegment;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/clevertap/MonthSegment;

    const-string v2, "FOUR_SIX_MONTH"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/MonthSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/MonthSegment;->FOUR_SIX_MONTH:Lcom/truecaller/clevertap/MonthSegment;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/clevertap/MonthSegment;

    const-string v2, "SEVEN_NINE_MONTH"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/MonthSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/MonthSegment;->SEVEN_NINE_MONTH:Lcom/truecaller/clevertap/MonthSegment;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/clevertap/MonthSegment;

    const-string v2, "TEN_TWELVE_MONTH"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/MonthSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/MonthSegment;->TEN_TWELVE_MONTH:Lcom/truecaller/clevertap/MonthSegment;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/clevertap/MonthSegment;

    const-string v2, "YEAR_MORE"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/MonthSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/MonthSegment;->YEAR_MORE:Lcom/truecaller/clevertap/MonthSegment;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/clevertap/MonthSegment;->$VALUES:[Lcom/truecaller/clevertap/MonthSegment;

    new-instance v0, Lcom/truecaller/clevertap/MonthSegment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/clevertap/MonthSegment$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/clevertap/MonthSegment;->Companion:Lcom/truecaller/clevertap/MonthSegment$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/clevertap/MonthSegment;
    .locals 1

    const-class v0, Lcom/truecaller/clevertap/MonthSegment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/clevertap/MonthSegment;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/clevertap/MonthSegment;
    .locals 1

    sget-object v0, Lcom/truecaller/clevertap/MonthSegment;->$VALUES:[Lcom/truecaller/clevertap/MonthSegment;

    invoke-virtual {v0}, [Lcom/truecaller/clevertap/MonthSegment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/clevertap/MonthSegment;

    return-object v0
.end method
