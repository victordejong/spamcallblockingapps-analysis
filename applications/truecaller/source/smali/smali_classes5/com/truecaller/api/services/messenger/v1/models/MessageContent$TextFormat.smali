.class public final enum Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

.field public static final enum PLAIN:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

.field public static final PLAIN_VALUE:I = 0x0

.field public static final enum RICH:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

.field public static final RICH_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->PLAIN:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    const-string v3, "RICH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->RICH:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    .line 3
    new-instance v3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    .line 5
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat$a;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat$a;-><init>()V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->RICH:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->PLAIN:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$TextFormat;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
