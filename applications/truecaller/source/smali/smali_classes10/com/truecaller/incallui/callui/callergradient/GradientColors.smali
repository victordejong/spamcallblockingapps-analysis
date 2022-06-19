.class public final enum Lcom/truecaller/incallui/callui/callergradient/GradientColors;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/incallui/callui/callergradient/GradientColors;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0014\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0008\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/truecaller/incallui/callui/callergradient/GradientColors;",
        "",
        "",
        "position",
        "[F",
        "getPosition",
        "()[F",
        "",
        "colorsResource",
        "[I",
        "getColorsResource",
        "()[I",
        "<init>",
        "(Ljava/lang/String;I[I[F)V",
        "FULL_SCREEN_PROFILE_PICTURE_INCOMING",
        "FULL_SCREEN_PROFILE_PICTURE_ONGOING",
        "GOLD",
        "SPAM",
        "PRIORITY",
        "VERIFIED_BUSINESS",
        "IDENTIFIED",
        "CRED_PRIVILEGE",
        "incallui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/incallui/callui/callergradient/GradientColors;

.field public static final enum CRED_PRIVILEGE:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

.field public static final enum FULL_SCREEN_PROFILE_PICTURE_INCOMING:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

.field public static final enum FULL_SCREEN_PROFILE_PICTURE_ONGOING:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

.field public static final enum GOLD:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

.field public static final enum IDENTIFIED:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

.field public static final enum PRIORITY:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

.field public static final enum SPAM:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

.field public static final enum VERIFIED_BUSINESS:Lcom/truecaller/incallui/callui/callergradient/GradientColors;


# instance fields
.field private final colorsResource:[I

.field private final position:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    new-instance v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    const/4 v2, 0x3

    new-array v3, v2, [I

    .line 1
    sget v4, Lcom/truecaller/incallui/R$color;->incallui_caller_default_gradient_step1:I

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 2
    sget v6, Lcom/truecaller/incallui/R$color;->incallui_caller_gradient_step2:I

    const/4 v7, 0x1

    aput v6, v3, v7

    .line 3
    sget v6, Lcom/truecaller/incallui/R$color;->incallui_caller_default_gradient_step3:I

    const/4 v8, 0x2

    aput v6, v3, v8

    new-array v9, v2, [F

    .line 4
    fill-array-data v9, :array_0

    const-string v10, "FULL_SCREEN_PROFILE_PICTURE_INCOMING"

    .line 5
    invoke-direct {v1, v10, v5, v3, v9}, Lcom/truecaller/incallui/callui/callergradient/GradientColors;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->FULL_SCREEN_PROFILE_PICTURE_INCOMING:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    aput-object v1, v0, v5

    new-instance v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    new-array v3, v2, [I

    aput v4, v3, v5

    .line 6
    sget v4, Lcom/truecaller/incallui/R$color;->incallui_caller_default_gradient_step2:I

    aput v4, v3, v7

    aput v6, v3, v8

    new-array v4, v2, [F

    .line 7
    fill-array-data v4, :array_1

    const-string v6, "FULL_SCREEN_PROFILE_PICTURE_ONGOING"

    .line 8
    invoke-direct {v1, v6, v7, v3, v4}, Lcom/truecaller/incallui/callui/callergradient/GradientColors;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->FULL_SCREEN_PROFILE_PICTURE_ONGOING:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    aput-object v1, v0, v7

    new-instance v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    const/4 v3, 0x4

    new-array v4, v3, [I

    .line 9
    sget v6, Lcom/truecaller/incallui/R$color;->incallui_caller_gradient_gold_step1:I

    aput v6, v4, v5

    .line 10
    sget v6, Lcom/truecaller/incallui/R$color;->incallui_caller_gradient_gold_step2:I

    aput v6, v4, v7

    .line 11
    sget v6, Lcom/truecaller/incallui/R$color;->incallui_caller_gradient_gold_step3:I

    aput v6, v4, v8

    .line 12
    sget v6, Lcom/truecaller/incallui/R$color;->incallui_caller_default_gradient_transparent:I

    aput v6, v4, v2

    new-array v9, v3, [F

    .line 13
    fill-array-data v9, :array_2

    const-string v10, "GOLD"

    .line 14
    invoke-direct {v1, v10, v8, v4, v9}, Lcom/truecaller/incallui/callui/callergradient/GradientColors;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->GOLD:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    aput-object v1, v0, v8

    new-instance v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    new-array v4, v8, [I

    .line 15
    sget v9, Lcom/truecaller/incallui/R$color;->incallui_spam_color:I

    aput v9, v4, v5

    aput v6, v4, v7

    new-array v9, v8, [F

    .line 16
    fill-array-data v9, :array_3

    const-string v10, "SPAM"

    .line 17
    invoke-direct {v1, v10, v2, v4, v9}, Lcom/truecaller/incallui/callui/callergradient/GradientColors;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->SPAM:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    new-array v2, v8, [I

    .line 18
    sget v4, Lcom/truecaller/incallui/R$color;->incallui_priority_color:I

    aput v4, v2, v5

    aput v6, v2, v7

    new-array v4, v8, [F

    .line 19
    fill-array-data v4, :array_4

    const-string v9, "PRIORITY"

    .line 20
    invoke-direct {v1, v9, v3, v2, v4}, Lcom/truecaller/incallui/callui/callergradient/GradientColors;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->PRIORITY:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    new-array v2, v8, [I

    .line 21
    sget v3, Lcom/truecaller/incallui/R$color;->tcx_verifiedBusinessGreen:I

    aput v3, v2, v5

    aput v6, v2, v7

    new-array v3, v8, [F

    .line 22
    fill-array-data v3, :array_5

    const-string v4, "VERIFIED_BUSINESS"

    const/4 v9, 0x5

    .line 23
    invoke-direct {v1, v4, v9, v2, v3}, Lcom/truecaller/incallui/callui/callergradient/GradientColors;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->VERIFIED_BUSINESS:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    aput-object v1, v0, v9

    new-instance v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    new-array v2, v8, [I

    .line 24
    sget v3, Lcom/truecaller/incallui/R$color;->incallui_identified_color:I

    aput v3, v2, v5

    aput v6, v2, v7

    new-array v3, v8, [F

    .line 25
    fill-array-data v3, :array_6

    const-string v4, "IDENTIFIED"

    const/4 v6, 0x6

    .line 26
    invoke-direct {v1, v4, v6, v2, v3}, Lcom/truecaller/incallui/callui/callergradient/GradientColors;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->IDENTIFIED:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    aput-object v1, v0, v6

    new-instance v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    new-array v2, v8, [I

    .line 27
    sget v3, Lcom/truecaller/incallui/R$color;->credInCallUiGradient1:I

    aput v3, v2, v5

    .line 28
    sget v3, Lcom/truecaller/incallui/R$color;->credInCallUiGradient2:I

    aput v3, v2, v7

    new-array v3, v8, [F

    .line 29
    fill-array-data v3, :array_7

    const-string v4, "CRED_PRIVILEGE"

    const/4 v5, 0x7

    .line 30
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/truecaller/incallui/callui/callergradient/GradientColors;-><init>(Ljava/lang/String;I[I[F)V

    sput-object v1, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->CRED_PRIVILEGE:Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    aput-object v1, v0, v5

    sput-object v0, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->$VALUES:[Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3efae148    # 0.49f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3efae148    # 0.49f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3e3851ec    # 0.18f
        0x3eb33333    # 0.35f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[I[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[F)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->colorsResource:[I

    iput-object p4, p0, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->position:[F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I[I[FILs1/z/c/f;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/truecaller/incallui/callui/callergradient/GradientColors;-><init>(Ljava/lang/String;I[I[F)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/incallui/callui/callergradient/GradientColors;
    .locals 1

    const-class v0, Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/incallui/callui/callergradient/GradientColors;
    .locals 1

    sget-object v0, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->$VALUES:[Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    invoke-virtual {v0}, [Lcom/truecaller/incallui/callui/callergradient/GradientColors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/incallui/callui/callergradient/GradientColors;

    return-object v0
.end method


# virtual methods
.method public final getColorsResource()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->colorsResource:[I

    return-object v0
.end method

.method public final getPosition()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->position:[F

    return-object v0
.end method
