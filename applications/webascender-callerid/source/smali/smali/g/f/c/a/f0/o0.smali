.class public final enum Lg/f/c/a/f0/o0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/a0$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/c/a/f0/o0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/f/c/a/f0/o0;",
        ">;",
        "Lcom/google/protobuf/a0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/f/c/a/f0/o0;

.field public static final enum SHA1:Lg/f/c/a/f0/o0;

.field public static final SHA1_VALUE:I = 0x1

.field public static final enum SHA256:Lg/f/c/a/f0/o0;

.field public static final SHA256_VALUE:I = 0x3

.field public static final enum SHA384:Lg/f/c/a/f0/o0;

.field public static final SHA384_VALUE:I = 0x2

.field public static final enum SHA512:Lg/f/c/a/f0/o0;

.field public static final SHA512_VALUE:I = 0x4

.field public static final enum UNKNOWN_HASH:Lg/f/c/a/f0/o0;

.field public static final UNKNOWN_HASH_VALUE:I

.field public static final enum UNRECOGNIZED:Lg/f/c/a/f0/o0;

.field private static final internalValueMap:Lcom/google/protobuf/a0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a0$d<",
            "Lg/f/c/a/f0/o0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lg/f/c/a/f0/o0;

    const-string v1, "UNKNOWN_HASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lg/f/c/a/f0/o0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/f/c/a/f0/o0;->UNKNOWN_HASH:Lg/f/c/a/f0/o0;

    .line 2
    new-instance v1, Lg/f/c/a/f0/o0;

    const-string v3, "SHA1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lg/f/c/a/f0/o0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/f/c/a/f0/o0;->SHA1:Lg/f/c/a/f0/o0;

    .line 3
    new-instance v3, Lg/f/c/a/f0/o0;

    const-string v5, "SHA384"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lg/f/c/a/f0/o0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lg/f/c/a/f0/o0;->SHA384:Lg/f/c/a/f0/o0;

    .line 4
    new-instance v5, Lg/f/c/a/f0/o0;

    const-string v7, "SHA256"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lg/f/c/a/f0/o0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lg/f/c/a/f0/o0;->SHA256:Lg/f/c/a/f0/o0;

    .line 5
    new-instance v7, Lg/f/c/a/f0/o0;

    const-string v9, "SHA512"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lg/f/c/a/f0/o0;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lg/f/c/a/f0/o0;->SHA512:Lg/f/c/a/f0/o0;

    .line 6
    new-instance v9, Lg/f/c/a/f0/o0;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lg/f/c/a/f0/o0;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lg/f/c/a/f0/o0;->UNRECOGNIZED:Lg/f/c/a/f0/o0;

    const/4 v11, 0x6

    new-array v11, v11, [Lg/f/c/a/f0/o0;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lg/f/c/a/f0/o0;->$VALUES:[Lg/f/c/a/f0/o0;

    .line 8
    new-instance v0, Lg/f/c/a/f0/o0$a;

    invoke-direct {v0}, Lg/f/c/a/f0/o0$a;-><init>()V

    sput-object v0, Lg/f/c/a/f0/o0;->internalValueMap:Lcom/google/protobuf/a0$d;

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
    iput p3, p0, Lg/f/c/a/f0/o0;->value:I

    return-void
.end method

.method public static forNumber(I)Lg/f/c/a/f0/o0;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lg/f/c/a/f0/o0;->SHA512:Lg/f/c/a/f0/o0;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lg/f/c/a/f0/o0;->SHA256:Lg/f/c/a/f0/o0;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lg/f/c/a/f0/o0;->SHA384:Lg/f/c/a/f0/o0;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lg/f/c/a/f0/o0;->SHA1:Lg/f/c/a/f0/o0;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lg/f/c/a/f0/o0;->UNKNOWN_HASH:Lg/f/c/a/f0/o0;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/a0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/a0$d<",
            "Lg/f/c/a/f0/o0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg/f/c/a/f0/o0;->internalValueMap:Lcom/google/protobuf/a0$d;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/a0$e;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/o0$b;->a:Lcom/google/protobuf/a0$e;

    return-object v0
.end method

.method public static valueOf(I)Lg/f/c/a/f0/o0;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lg/f/c/a/f0/o0;->forNumber(I)Lg/f/c/a/f0/o0;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/f/c/a/f0/o0;
    .locals 1

    .line 1
    const-class v0, Lg/f/c/a/f0/o0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/o0;

    return-object p0
.end method

.method public static values()[Lg/f/c/a/f0/o0;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/o0;->$VALUES:[Lg/f/c/a/f0/o0;

    invoke-virtual {v0}, [Lg/f/c/a/f0/o0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/f/c/a/f0/o0;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lg/f/c/a/f0/o0;->UNRECOGNIZED:Lg/f/c/a/f0/o0;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lg/f/c/a/f0/o0;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
