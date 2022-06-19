.class public final enum Li/a/a/c/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/a/a/c/h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/a/a/c/h;

.field public static final enum BOOLEAN:Li/a/a/c/h;

.field public static final enum BOOLEAN_ARRAY:Li/a/a/c/h;

.field public static final enum DOUBLE:Li/a/a/c/h;

.field public static final enum DOUBLE_ARRAY:Li/a/a/c/h;

.field public static final enum LONG:Li/a/a/c/h;

.field public static final enum LONG_ARRAY:Li/a/a/c/h;

.field public static final enum STRING:Li/a/a/c/h;

.field public static final enum STRING_ARRAY:Li/a/a/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Li/a/a/c/h;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/a/a/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/a/a/c/h;->STRING:Li/a/a/c/h;

    .line 2
    new-instance v1, Li/a/a/c/h;

    const-string v3, "BOOLEAN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li/a/a/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li/a/a/c/h;->BOOLEAN:Li/a/a/c/h;

    .line 3
    new-instance v3, Li/a/a/c/h;

    const-string v5, "LONG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Li/a/a/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li/a/a/c/h;->LONG:Li/a/a/c/h;

    .line 4
    new-instance v5, Li/a/a/c/h;

    const-string v7, "DOUBLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Li/a/a/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v5, Li/a/a/c/h;->DOUBLE:Li/a/a/c/h;

    .line 5
    new-instance v7, Li/a/a/c/h;

    const-string v9, "STRING_ARRAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Li/a/a/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v7, Li/a/a/c/h;->STRING_ARRAY:Li/a/a/c/h;

    .line 6
    new-instance v9, Li/a/a/c/h;

    const-string v11, "BOOLEAN_ARRAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Li/a/a/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v9, Li/a/a/c/h;->BOOLEAN_ARRAY:Li/a/a/c/h;

    .line 7
    new-instance v11, Li/a/a/c/h;

    const-string v13, "LONG_ARRAY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Li/a/a/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v11, Li/a/a/c/h;->LONG_ARRAY:Li/a/a/c/h;

    .line 8
    new-instance v13, Li/a/a/c/h;

    const-string v15, "DOUBLE_ARRAY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Li/a/a/c/h;-><init>(Ljava/lang/String;I)V

    sput-object v13, Li/a/a/c/h;->DOUBLE_ARRAY:Li/a/a/c/h;

    const/16 v15, 0x8

    new-array v15, v15, [Li/a/a/c/h;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Li/a/a/c/h;->$VALUES:[Li/a/a/c/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li/a/a/c/h;
    .locals 1

    .line 1
    const-class v0, Li/a/a/c/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/a/a/c/h;

    return-object p0
.end method

.method public static values()[Li/a/a/c/h;
    .locals 1

    .line 1
    sget-object v0, Li/a/a/c/h;->$VALUES:[Li/a/a/c/h;

    invoke-virtual {v0}, [Li/a/a/c/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/a/a/c/h;

    return-object v0
.end method
