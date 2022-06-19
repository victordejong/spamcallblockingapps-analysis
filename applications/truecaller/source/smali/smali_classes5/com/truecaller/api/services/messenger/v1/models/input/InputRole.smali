.class public final enum Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/input/InputRole$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

.field public static final enum ADMIN:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

.field public static final ADMIN_VALUE:I = 0x20000000

.field public static final enum INVITEE:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

.field public static final INVITEE_VALUE:I = 0x2

.field public static final enum NO_ROLE:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

.field public static final NO_ROLE_VALUE:I = 0x0

.field public static final enum SUPER_ADMIN:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

.field public static final SUPER_ADMIN_VALUE:I = 0x40000000

.field public static final enum UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

.field public static final enum USER:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

.field public static final USER_VALUE:I = 0x8

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    const-string v1, "NO_ROLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->NO_ROLE:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    const-string v3, "INVITEE"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->INVITEE:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    .line 3
    new-instance v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    const-string v6, "USER"

    const/16 v7, 0x8

    invoke-direct {v3, v6, v5, v7}, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->USER:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    .line 4
    new-instance v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    const-string v7, "ADMIN"

    const/4 v8, 0x3

    const/high16 v9, 0x20000000

    invoke-direct {v6, v7, v8, v9}, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->ADMIN:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    .line 5
    new-instance v7, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    const-string v9, "SUPER_ADMIN"

    const/4 v10, 0x4

    const/high16 v11, 0x40000000    # 2.0f

    invoke-direct {v7, v9, v10, v11}, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->SUPER_ADMIN:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    .line 6
    new-instance v9, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v5

    aput-object v6, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    .line 8
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole$a;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole$a;-><init>()V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x20000000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->SUPER_ADMIN:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->ADMIN:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->USER:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->INVITEE:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->NO_ROLE:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputRole;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
