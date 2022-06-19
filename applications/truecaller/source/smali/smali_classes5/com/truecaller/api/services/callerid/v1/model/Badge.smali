.class public final enum Lcom/truecaller/api/services/callerid/v1/model/Badge;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/callerid/v1/model/Badge$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/callerid/v1/model/Badge;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/callerid/v1/model/Badge;

.field public static final enum AMBASSADOR:Lcom/truecaller/api/services/callerid/v1/model/Badge;

.field public static final AMBASSADOR_VALUE:I = 0x1

.field public static final enum CRED:Lcom/truecaller/api/services/callerid/v1/model/Badge;

.field public static final CRED_VALUE:I = 0x8

.field public static final enum GOLD:Lcom/truecaller/api/services/callerid/v1/model/Badge;

.field public static final GOLD_VALUE:I = 0x4

.field public static final enum PREMIUM:Lcom/truecaller/api/services/callerid/v1/model/Badge;

.field public static final PREMIUM_VALUE:I = 0x3

.field public static final enum PRIORITY:Lcom/truecaller/api/services/callerid/v1/model/Badge;

.field public static final PRIORITY_VALUE:I = 0x6

.field public static final enum UNKNOWN:Lcom/truecaller/api/services/callerid/v1/model/Badge;

.field public static final UNKNOWN_VALUE:I = 0x0

.field public static final enum UNRECOGNIZED:Lcom/truecaller/api/services/callerid/v1/model/Badge;

.field public static final enum USER:Lcom/truecaller/api/services/callerid/v1/model/Badge;

.field public static final USER_VALUE:I = 0x5

.field public static final enum VERIFIED:Lcom/truecaller/api/services/callerid/v1/model/Badge;

.field public static final enum VERIFIED_BUSINESS:Lcom/truecaller/api/services/callerid/v1/model/Badge;

.field public static final VERIFIED_BUSINESS_VALUE:I = 0x7

.field public static final VERIFIED_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/callerid/v1/model/Badge;",
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
    new-instance v0, Lcom/truecaller/api/services/callerid/v1/model/Badge;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/truecaller/api/services/callerid/v1/model/Badge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->UNKNOWN:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/callerid/v1/model/Badge;

    const-string v3, "AMBASSADOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/truecaller/api/services/callerid/v1/model/Badge;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/callerid/v1/model/Badge;->AMBASSADOR:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    .line 3
    new-instance v3, Lcom/truecaller/api/services/callerid/v1/model/Badge;

    const-string v5, "VERIFIED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/truecaller/api/services/callerid/v1/model/Badge;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/api/services/callerid/v1/model/Badge;->VERIFIED:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    .line 4
    new-instance v5, Lcom/truecaller/api/services/callerid/v1/model/Badge;

    const-string v7, "PREMIUM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/truecaller/api/services/callerid/v1/model/Badge;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/api/services/callerid/v1/model/Badge;->PREMIUM:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    .line 5
    new-instance v7, Lcom/truecaller/api/services/callerid/v1/model/Badge;

    const-string v9, "GOLD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/truecaller/api/services/callerid/v1/model/Badge;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/api/services/callerid/v1/model/Badge;->GOLD:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    .line 6
    new-instance v9, Lcom/truecaller/api/services/callerid/v1/model/Badge;

    const-string v11, "USER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/truecaller/api/services/callerid/v1/model/Badge;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/truecaller/api/services/callerid/v1/model/Badge;->USER:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    .line 7
    new-instance v11, Lcom/truecaller/api/services/callerid/v1/model/Badge;

    const-string v13, "PRIORITY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/truecaller/api/services/callerid/v1/model/Badge;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/truecaller/api/services/callerid/v1/model/Badge;->PRIORITY:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    .line 8
    new-instance v13, Lcom/truecaller/api/services/callerid/v1/model/Badge;

    const-string v15, "VERIFIED_BUSINESS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/truecaller/api/services/callerid/v1/model/Badge;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/truecaller/api/services/callerid/v1/model/Badge;->VERIFIED_BUSINESS:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    .line 9
    new-instance v15, Lcom/truecaller/api/services/callerid/v1/model/Badge;

    const-string v14, "CRED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/truecaller/api/services/callerid/v1/model/Badge;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/truecaller/api/services/callerid/v1/model/Badge;->CRED:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    .line 10
    new-instance v14, Lcom/truecaller/api/services/callerid/v1/model/Badge;

    const-string v12, "UNRECOGNIZED"

    const/16 v10, 0x9

    const/4 v8, -0x1

    invoke-direct {v14, v12, v10, v8}, Lcom/truecaller/api/services/callerid/v1/model/Badge;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/truecaller/api/services/callerid/v1/model/Badge;->UNRECOGNIZED:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/truecaller/api/services/callerid/v1/model/Badge;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    aput-object v14, v8, v10

    .line 11
    sput-object v8, Lcom/truecaller/api/services/callerid/v1/model/Badge;->$VALUES:[Lcom/truecaller/api/services/callerid/v1/model/Badge;

    .line 12
    new-instance v0, Lcom/truecaller/api/services/callerid/v1/model/Badge$a;

    invoke-direct {v0}, Lcom/truecaller/api/services/callerid/v1/model/Badge$a;-><init>()V

    sput-object v0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/callerid/v1/model/Badge;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->CRED:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->VERIFIED_BUSINESS:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->PRIORITY:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->USER:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->GOLD:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->PREMIUM:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->VERIFIED:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->AMBASSADOR:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->UNKNOWN:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/callerid/v1/model/Badge;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/Badge$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/callerid/v1/model/Badge;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/callerid/v1/model/Badge;->forNumber(I)Lcom/truecaller/api/services/callerid/v1/model/Badge;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/callerid/v1/model/Badge;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/callerid/v1/model/Badge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/Badge;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/callerid/v1/model/Badge;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->$VALUES:[Lcom/truecaller/api/services/callerid/v1/model/Badge;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/callerid/v1/model/Badge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/callerid/v1/model/Badge;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->UNRECOGNIZED:Lcom/truecaller/api/services/callerid/v1/model/Badge;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/callerid/v1/model/Badge;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
