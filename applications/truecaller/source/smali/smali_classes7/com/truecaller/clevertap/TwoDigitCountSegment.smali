.class public final enum Lcom/truecaller/clevertap/TwoDigitCountSegment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/clevertap/TwoDigitCountSegment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/clevertap/TwoDigitCountSegment;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u0000 \u00042\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/truecaller/clevertap/TwoDigitCountSegment;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Companion",
        "a",
        "NONE",
        "ONE_TO_FIVE",
        "SIX_TO_TEN",
        "ELEVEN_TO_TWENTY",
        "TWENTY_ONE_TO_THIRTY",
        "THIRTY_ONE_MORE",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/clevertap/TwoDigitCountSegment;

.field public static final Companion:Lcom/truecaller/clevertap/TwoDigitCountSegment$a;

.field public static final enum ELEVEN_TO_TWENTY:Lcom/truecaller/clevertap/TwoDigitCountSegment;

.field public static final enum NONE:Lcom/truecaller/clevertap/TwoDigitCountSegment;

.field public static final enum ONE_TO_FIVE:Lcom/truecaller/clevertap/TwoDigitCountSegment;

.field public static final enum SIX_TO_TEN:Lcom/truecaller/clevertap/TwoDigitCountSegment;

.field public static final enum THIRTY_ONE_MORE:Lcom/truecaller/clevertap/TwoDigitCountSegment;

.field public static final enum TWENTY_ONE_TO_THIRTY:Lcom/truecaller/clevertap/TwoDigitCountSegment;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/truecaller/clevertap/TwoDigitCountSegment;

    new-instance v1, Lcom/truecaller/clevertap/TwoDigitCountSegment;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/TwoDigitCountSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/TwoDigitCountSegment;->NONE:Lcom/truecaller/clevertap/TwoDigitCountSegment;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/clevertap/TwoDigitCountSegment;

    const-string v2, "ONE_TO_FIVE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/TwoDigitCountSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/TwoDigitCountSegment;->ONE_TO_FIVE:Lcom/truecaller/clevertap/TwoDigitCountSegment;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/clevertap/TwoDigitCountSegment;

    const-string v2, "SIX_TO_TEN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/TwoDigitCountSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/TwoDigitCountSegment;->SIX_TO_TEN:Lcom/truecaller/clevertap/TwoDigitCountSegment;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/clevertap/TwoDigitCountSegment;

    const-string v2, "ELEVEN_TO_TWENTY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/TwoDigitCountSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/TwoDigitCountSegment;->ELEVEN_TO_TWENTY:Lcom/truecaller/clevertap/TwoDigitCountSegment;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/clevertap/TwoDigitCountSegment;

    const-string v2, "TWENTY_ONE_TO_THIRTY"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/TwoDigitCountSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/TwoDigitCountSegment;->TWENTY_ONE_TO_THIRTY:Lcom/truecaller/clevertap/TwoDigitCountSegment;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/clevertap/TwoDigitCountSegment;

    const-string v2, "THIRTY_ONE_MORE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/clevertap/TwoDigitCountSegment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/clevertap/TwoDigitCountSegment;->THIRTY_ONE_MORE:Lcom/truecaller/clevertap/TwoDigitCountSegment;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/clevertap/TwoDigitCountSegment;->$VALUES:[Lcom/truecaller/clevertap/TwoDigitCountSegment;

    new-instance v0, Lcom/truecaller/clevertap/TwoDigitCountSegment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/clevertap/TwoDigitCountSegment$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/clevertap/TwoDigitCountSegment;->Companion:Lcom/truecaller/clevertap/TwoDigitCountSegment$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/clevertap/TwoDigitCountSegment;
    .locals 1

    const-class v0, Lcom/truecaller/clevertap/TwoDigitCountSegment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/clevertap/TwoDigitCountSegment;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/clevertap/TwoDigitCountSegment;
    .locals 1

    sget-object v0, Lcom/truecaller/clevertap/TwoDigitCountSegment;->$VALUES:[Lcom/truecaller/clevertap/TwoDigitCountSegment;

    invoke-virtual {v0}, [Lcom/truecaller/clevertap/TwoDigitCountSegment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/clevertap/TwoDigitCountSegment;

    return-object v0
.end method
