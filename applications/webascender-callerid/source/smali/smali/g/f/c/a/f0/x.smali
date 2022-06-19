.class public final enum Lg/f/c/a/f0/x;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/a0$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/c/a/f0/x$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/f/c/a/f0/x;",
        ">;",
        "Lcom/google/protobuf/a0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/f/c/a/f0/x;

.field public static final enum COMPRESSED:Lg/f/c/a/f0/x;

.field public static final COMPRESSED_VALUE:I = 0x2

.field public static final enum DO_NOT_USE_CRUNCHY_UNCOMPRESSED:Lg/f/c/a/f0/x;

.field public static final DO_NOT_USE_CRUNCHY_UNCOMPRESSED_VALUE:I = 0x3

.field public static final enum UNCOMPRESSED:Lg/f/c/a/f0/x;

.field public static final UNCOMPRESSED_VALUE:I = 0x1

.field public static final enum UNKNOWN_FORMAT:Lg/f/c/a/f0/x;

.field public static final UNKNOWN_FORMAT_VALUE:I

.field public static final enum UNRECOGNIZED:Lg/f/c/a/f0/x;

.field private static final internalValueMap:Lcom/google/protobuf/a0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/a0$d<",
            "Lg/f/c/a/f0/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lg/f/c/a/f0/x;

    const-string v1, "UNKNOWN_FORMAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lg/f/c/a/f0/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lg/f/c/a/f0/x;->UNKNOWN_FORMAT:Lg/f/c/a/f0/x;

    .line 2
    new-instance v1, Lg/f/c/a/f0/x;

    const-string v3, "UNCOMPRESSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lg/f/c/a/f0/x;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lg/f/c/a/f0/x;->UNCOMPRESSED:Lg/f/c/a/f0/x;

    .line 3
    new-instance v3, Lg/f/c/a/f0/x;

    const-string v5, "COMPRESSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lg/f/c/a/f0/x;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lg/f/c/a/f0/x;->COMPRESSED:Lg/f/c/a/f0/x;

    .line 4
    new-instance v5, Lg/f/c/a/f0/x;

    const-string v7, "DO_NOT_USE_CRUNCHY_UNCOMPRESSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lg/f/c/a/f0/x;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lg/f/c/a/f0/x;->DO_NOT_USE_CRUNCHY_UNCOMPRESSED:Lg/f/c/a/f0/x;

    .line 5
    new-instance v7, Lg/f/c/a/f0/x;

    const-string v9, "UNRECOGNIZED"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lg/f/c/a/f0/x;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lg/f/c/a/f0/x;->UNRECOGNIZED:Lg/f/c/a/f0/x;

    const/4 v9, 0x5

    new-array v9, v9, [Lg/f/c/a/f0/x;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lg/f/c/a/f0/x;->$VALUES:[Lg/f/c/a/f0/x;

    .line 7
    new-instance v0, Lg/f/c/a/f0/x$a;

    invoke-direct {v0}, Lg/f/c/a/f0/x$a;-><init>()V

    sput-object v0, Lg/f/c/a/f0/x;->internalValueMap:Lcom/google/protobuf/a0$d;

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
    iput p3, p0, Lg/f/c/a/f0/x;->value:I

    return-void
.end method

.method public static forNumber(I)Lg/f/c/a/f0/x;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lg/f/c/a/f0/x;->DO_NOT_USE_CRUNCHY_UNCOMPRESSED:Lg/f/c/a/f0/x;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lg/f/c/a/f0/x;->COMPRESSED:Lg/f/c/a/f0/x;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lg/f/c/a/f0/x;->UNCOMPRESSED:Lg/f/c/a/f0/x;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lg/f/c/a/f0/x;->UNKNOWN_FORMAT:Lg/f/c/a/f0/x;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/a0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/a0$d<",
            "Lg/f/c/a/f0/x;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg/f/c/a/f0/x;->internalValueMap:Lcom/google/protobuf/a0$d;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/a0$e;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/x$b;->a:Lcom/google/protobuf/a0$e;

    return-object v0
.end method

.method public static valueOf(I)Lg/f/c/a/f0/x;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lg/f/c/a/f0/x;->forNumber(I)Lg/f/c/a/f0/x;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/f/c/a/f0/x;
    .locals 1

    .line 1
    const-class v0, Lg/f/c/a/f0/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/x;

    return-object p0
.end method

.method public static values()[Lg/f/c/a/f0/x;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/x;->$VALUES:[Lg/f/c/a/f0/x;

    invoke-virtual {v0}, [Lg/f/c/a/f0/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/f/c/a/f0/x;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lg/f/c/a/f0/x;->UNRECOGNIZED:Lg/f/c/a/f0/x;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lg/f/c/a/f0/x;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
