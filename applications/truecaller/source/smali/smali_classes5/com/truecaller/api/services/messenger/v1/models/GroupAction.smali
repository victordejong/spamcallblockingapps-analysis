.class public final enum Lcom/truecaller/api/services/messenger/v1/models/GroupAction;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/GroupAction$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/messenger/v1/models/GroupAction;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

.field public static final enum INVITE:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

.field public static final INVITE_VALUE:I = 0x4

.field public static final enum KICK_OUT:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

.field public static final KICK_OUT_VALUE:I = 0x8

.field public static final enum NO_ACTION:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

.field public static final NO_ACTION_VALUE:I = 0x0

.field public static final enum SEND_MESSAGE:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

.field public static final SEND_MESSAGE_VALUE:I = 0x10

.field public static final enum UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

.field public static final enum UPDATE_INFO:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

.field public static final UPDATE_INFO_VALUE:I = 0x2

.field public static final enum UPDATE_SETTINGS:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

.field public static final UPDATE_SETTINGS_VALUE:I = 0x1

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/messenger/v1/models/GroupAction;",
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
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    const-string v1, "NO_ACTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->NO_ACTION:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    const-string v3, "UPDATE_SETTINGS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->UPDATE_SETTINGS:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    .line 3
    new-instance v3, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    const-string v5, "UPDATE_INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->UPDATE_INFO:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    .line 4
    new-instance v5, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    const-string v7, "INVITE"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->INVITE:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    .line 5
    new-instance v7, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    const-string v10, "KICK_OUT"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->KICK_OUT:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    .line 6
    new-instance v10, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    const-string v11, "SEND_MESSAGE"

    const/4 v12, 0x5

    const/16 v13, 0x10

    invoke-direct {v10, v11, v12, v13}, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->SEND_MESSAGE:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    .line 7
    new-instance v11, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    const-string v13, "UNRECOGNIZED"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v9

    aput-object v10, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    .line 9
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction$a;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/GroupAction$a;-><init>()V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/GroupAction;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->SEND_MESSAGE:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->KICK_OUT:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->INVITE:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->UPDATE_INFO:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->UPDATE_SETTINGS:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    return-object p0

    .line 6
    :cond_5
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->NO_ACTION:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/messenger/v1/models/GroupAction;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/messenger/v1/models/GroupAction;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/GroupAction;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/messenger/v1/models/GroupAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/GroupAction;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupAction;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
