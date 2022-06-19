.class public final enum Lcom/google/api/BackendRule$d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/BackendRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/BackendRule$d;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/google/api/BackendRule$d;

.field public static final enum c:Lcom/google/api/BackendRule$d;

.field public static final enum d:Lcom/google/api/BackendRule$d;

.field public static final enum e:Lcom/google/api/BackendRule$d;

.field public static final synthetic f:[Lcom/google/api/BackendRule$d;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/google/api/BackendRule$d;

    const-string v1, "PATH_TRANSLATION_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/BackendRule$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/BackendRule$d;->b:Lcom/google/api/BackendRule$d;

    .line 2
    new-instance v1, Lcom/google/api/BackendRule$d;

    const-string v3, "CONSTANT_ADDRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/api/BackendRule$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/api/BackendRule$d;->c:Lcom/google/api/BackendRule$d;

    .line 3
    new-instance v3, Lcom/google/api/BackendRule$d;

    const-string v5, "APPEND_PATH_TO_ADDRESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/api/BackendRule$d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/api/BackendRule$d;->d:Lcom/google/api/BackendRule$d;

    .line 4
    new-instance v5, Lcom/google/api/BackendRule$d;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lcom/google/api/BackendRule$d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/api/BackendRule$d;->e:Lcom/google/api/BackendRule$d;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/api/BackendRule$d;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/google/api/BackendRule$d;->f:[Lcom/google/api/BackendRule$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/api/BackendRule$d;->a:I

    return-void
.end method

.method public static a(I)Lcom/google/api/BackendRule$d;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/api/BackendRule$d;->d:Lcom/google/api/BackendRule$d;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/google/api/BackendRule$d;->c:Lcom/google/api/BackendRule$d;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/google/api/BackendRule$d;->b:Lcom/google/api/BackendRule$d;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/BackendRule$d;
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/BackendRule$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/BackendRule$d;

    return-object p0
.end method

.method public static values()[Lcom/google/api/BackendRule$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/BackendRule$d;->f:[Lcom/google/api/BackendRule$d;

    invoke-virtual {v0}, [Lcom/google/api/BackendRule$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/BackendRule$d;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/api/BackendRule$d;->e:Lcom/google/api/BackendRule$d;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/api/BackendRule$d;->a:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
