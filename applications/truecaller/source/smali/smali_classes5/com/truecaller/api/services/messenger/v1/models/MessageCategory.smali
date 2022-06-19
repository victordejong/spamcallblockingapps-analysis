.class public final enum Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/MessageCategory$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

.field public static final enum OTHER_BUSINESS:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

.field public static final OTHER_BUSINESS_VALUE:I = 0x4

.field public static final enum OTP:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

.field public static final OTP_VALUE:I = 0x5

.field public static final enum PRIVATE:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

.field public static final PRIVATE_VALUE:I = 0x0

.field public static final enum PROMO:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

.field public static final PROMO_VALUE:I = 0x3

.field public static final enum SERVICE:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

.field public static final SERVICE_VALUE:I = 0x1

.field public static final enum TRANSACTIONAL:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

.field public static final TRANSACTIONAL_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    const-string v1, "PRIVATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->PRIVATE:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    const-string v3, "SERVICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->SERVICE:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    .line 3
    new-instance v3, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    const-string v5, "TRANSACTIONAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->TRANSACTIONAL:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    .line 4
    new-instance v5, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    const-string v7, "PROMO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->PROMO:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    .line 5
    new-instance v7, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    const-string v9, "OTHER_BUSINESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->OTHER_BUSINESS:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    .line 6
    new-instance v9, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    const-string v11, "OTP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->OTP:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    .line 7
    new-instance v11, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    const-string v13, "UNRECOGNIZED"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    .line 9
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory$a;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory$a;-><init>()V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->OTP:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->OTHER_BUSINESS:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->PROMO:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->TRANSACTIONAL:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->SERVICE:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    return-object p0

    .line 6
    :cond_5
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->PRIVATE:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageCategory;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
