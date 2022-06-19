.class public final enum Lcom/truecaller/api/services/messenger/v1/models/NamedContext;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/NamedContext$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/messenger/v1/models/NamedContext;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

.field public static final enum GLOBAL:Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

.field public static final GLOBAL_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/messenger/v1/models/NamedContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

    const-string v1, "GLOBAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;->GLOBAL:Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

    const-string v3, "UNRECOGNIZED"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

    .line 4
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/NamedContext$a;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/NamedContext$a;-><init>()V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/NamedContext;
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;->GLOBAL:Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/messenger/v1/models/NamedContext;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NamedContext$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/messenger/v1/models/NamedContext;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/NamedContext;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/messenger/v1/models/NamedContext;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/messenger/v1/models/NamedContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/NamedContext;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NamedContext;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
