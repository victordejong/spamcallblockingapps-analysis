.class public final enum Lcom/hiya/api/exception/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/api/exception/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/api/exception/a;

.field public static final enum BAD_REQUEST:Lcom/hiya/api/exception/a;

.field public static final enum FORBIDDEN:Lcom/hiya/api/exception/a;

.field public static final enum IMPOSSIBLE_ERROR:Lcom/hiya/api/exception/a;

.field public static final enum NETWORK_ERROR:Lcom/hiya/api/exception/a;

.field public static final enum SYSTEM_ERROR:Lcom/hiya/api/exception/a;

.field private static final TAG:Ljava/lang/String;

.field public static final enum TIMEOUT:Lcom/hiya/api/exception/a;

.field public static final enum UNAUTHORIZED:Lcom/hiya/api/exception/a;

.field public static final enum UNKNOWN_ERROR:Lcom/hiya/api/exception/a;

.field private static final lookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/hiya/api/exception/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorCodeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/hiya/api/exception/a;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x0

    const/16 v3, 0x198

    invoke-direct {v0, v1, v2, v3}, Lcom/hiya/api/exception/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hiya/api/exception/a;->TIMEOUT:Lcom/hiya/api/exception/a;

    .line 2
    new-instance v1, Lcom/hiya/api/exception/a;

    const-string v3, "BAD_REQUEST"

    const/4 v4, 0x1

    const/16 v5, 0x190

    invoke-direct {v1, v3, v4, v5}, Lcom/hiya/api/exception/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/hiya/api/exception/a;->BAD_REQUEST:Lcom/hiya/api/exception/a;

    .line 3
    new-instance v3, Lcom/hiya/api/exception/a;

    const-string v5, "UNAUTHORIZED"

    const/4 v6, 0x2

    const/16 v7, 0x191

    invoke-direct {v3, v5, v6, v7}, Lcom/hiya/api/exception/a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/hiya/api/exception/a;->UNAUTHORIZED:Lcom/hiya/api/exception/a;

    .line 4
    new-instance v5, Lcom/hiya/api/exception/a;

    const-string v7, "FORBIDDEN"

    const/4 v8, 0x3

    const/16 v9, 0x193

    invoke-direct {v5, v7, v8, v9}, Lcom/hiya/api/exception/a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/hiya/api/exception/a;->FORBIDDEN:Lcom/hiya/api/exception/a;

    .line 5
    new-instance v7, Lcom/hiya/api/exception/a;

    const-string v9, "SYSTEM_ERROR"

    const/4 v10, 0x4

    const/16 v11, 0x1f4

    invoke-direct {v7, v9, v10, v11}, Lcom/hiya/api/exception/a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/hiya/api/exception/a;->SYSTEM_ERROR:Lcom/hiya/api/exception/a;

    .line 6
    new-instance v9, Lcom/hiya/api/exception/a;

    const-string v11, "UNKNOWN_ERROR"

    const/4 v12, 0x5

    const/16 v13, 0x3e8

    invoke-direct {v9, v11, v12, v13}, Lcom/hiya/api/exception/a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/hiya/api/exception/a;->UNKNOWN_ERROR:Lcom/hiya/api/exception/a;

    .line 7
    new-instance v11, Lcom/hiya/api/exception/a;

    const-string v13, "NETWORK_ERROR"

    const/4 v14, 0x6

    const/16 v15, 0x3e9

    invoke-direct {v11, v13, v14, v15}, Lcom/hiya/api/exception/a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/hiya/api/exception/a;->NETWORK_ERROR:Lcom/hiya/api/exception/a;

    .line 8
    new-instance v13, Lcom/hiya/api/exception/a;

    const-string v15, "IMPOSSIBLE_ERROR"

    const/4 v14, 0x7

    const/16 v12, 0x3ea

    invoke-direct {v13, v15, v14, v12}, Lcom/hiya/api/exception/a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/hiya/api/exception/a;->IMPOSSIBLE_ERROR:Lcom/hiya/api/exception/a;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/hiya/api/exception/a;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 9
    sput-object v12, Lcom/hiya/api/exception/a;->$VALUES:[Lcom/hiya/api/exception/a;

    .line 10
    const-class v0, Lcom/hiya/api/exception/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hiya/api/exception/a;->TAG:Ljava/lang/String;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/hiya/api/exception/a;->lookup:Landroid/util/SparseArray;

    .line 12
    invoke-static {}, Lcom/hiya/api/exception/a;->values()[Lcom/hiya/api/exception/a;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 13
    sget-object v4, Lcom/hiya/api/exception/a;->lookup:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/hiya/api/exception/a;->getErrorCodeCode()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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
    iput p3, p0, Lcom/hiya/api/exception/a;->errorCodeCode:I

    return-void
.end method

.method public static get(I)Lcom/hiya/api/exception/a;
    .locals 5

    .line 1
    sget-object v0, Lcom/hiya/api/exception/a;->lookup:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hiya/api/exception/a;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/hiya/api/exception/a;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/hiya/api/exception/HiyaGenericException;

    invoke-direct {v1}, Lcom/hiya/api/exception/HiyaGenericException;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unrecognized Http Status code: %d"

    invoke-static {v0, v1, v3, v2}, Lcom/hiya/client/support/logging/d;->k(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x190

    const/16 v1, 0x1f4

    if-lt p0, v0, :cond_1

    if-ge p0, v1, :cond_1

    .line 4
    sget-object p0, Lcom/hiya/api/exception/a;->BAD_REQUEST:Lcom/hiya/api/exception/a;

    return-object p0

    :cond_1
    if-lt p0, v1, :cond_2

    const/16 v0, 0x258

    if-ge p0, v0, :cond_2

    .line 5
    sget-object p0, Lcom/hiya/api/exception/a;->SYSTEM_ERROR:Lcom/hiya/api/exception/a;

    return-object p0

    .line 6
    :cond_2
    sget-object p0, Lcom/hiya/api/exception/a;->UNKNOWN_ERROR:Lcom/hiya/api/exception/a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/api/exception/a;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/api/exception/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/api/exception/a;

    return-object p0
.end method

.method public static values()[Lcom/hiya/api/exception/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/api/exception/a;->$VALUES:[Lcom/hiya/api/exception/a;

    invoke-virtual {v0}, [Lcom/hiya/api/exception/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/api/exception/a;

    return-object v0
.end method


# virtual methods
.method public getErrorCodeCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/api/exception/a;->errorCodeCode:I

    return v0
.end method
