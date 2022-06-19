.class public final enum Lg/e/a/a/i/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/e/a/a/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/e/a/a/i/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/e/a/a/i/b$a;

.field public static final enum DOUBLE_TAP:Lg/e/a/a/i/b$a;

.field public static final enum DRAG:Lg/e/a/a/i/b$a;

.field public static final enum FLING:Lg/e/a/a/i/b$a;

.field public static final enum LONG_PRESS:Lg/e/a/a/i/b$a;

.field public static final enum NONE:Lg/e/a/a/i/b$a;

.field public static final enum PINCH_ZOOM:Lg/e/a/a/i/b$a;

.field public static final enum ROTATE:Lg/e/a/a/i/b$a;

.field public static final enum SINGLE_TAP:Lg/e/a/a/i/b$a;

.field public static final enum X_ZOOM:Lg/e/a/a/i/b$a;

.field public static final enum Y_ZOOM:Lg/e/a/a/i/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lg/e/a/a/i/b$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/e/a/a/i/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/e/a/a/i/b$a;->NONE:Lg/e/a/a/i/b$a;

    new-instance v1, Lg/e/a/a/i/b$a;

    const-string v3, "DRAG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg/e/a/a/i/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/e/a/a/i/b$a;->DRAG:Lg/e/a/a/i/b$a;

    new-instance v3, Lg/e/a/a/i/b$a;

    const-string v5, "X_ZOOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg/e/a/a/i/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg/e/a/a/i/b$a;->X_ZOOM:Lg/e/a/a/i/b$a;

    new-instance v5, Lg/e/a/a/i/b$a;

    const-string v7, "Y_ZOOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lg/e/a/a/i/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg/e/a/a/i/b$a;->Y_ZOOM:Lg/e/a/a/i/b$a;

    new-instance v7, Lg/e/a/a/i/b$a;

    const-string v9, "PINCH_ZOOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lg/e/a/a/i/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg/e/a/a/i/b$a;->PINCH_ZOOM:Lg/e/a/a/i/b$a;

    new-instance v9, Lg/e/a/a/i/b$a;

    const-string v11, "ROTATE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lg/e/a/a/i/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg/e/a/a/i/b$a;->ROTATE:Lg/e/a/a/i/b$a;

    new-instance v11, Lg/e/a/a/i/b$a;

    const-string v13, "SINGLE_TAP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lg/e/a/a/i/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg/e/a/a/i/b$a;->SINGLE_TAP:Lg/e/a/a/i/b$a;

    new-instance v13, Lg/e/a/a/i/b$a;

    const-string v15, "DOUBLE_TAP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lg/e/a/a/i/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lg/e/a/a/i/b$a;->DOUBLE_TAP:Lg/e/a/a/i/b$a;

    new-instance v15, Lg/e/a/a/i/b$a;

    const-string v14, "LONG_PRESS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lg/e/a/a/i/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lg/e/a/a/i/b$a;->LONG_PRESS:Lg/e/a/a/i/b$a;

    new-instance v14, Lg/e/a/a/i/b$a;

    const-string v12, "FLING"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lg/e/a/a/i/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lg/e/a/a/i/b$a;->FLING:Lg/e/a/a/i/b$a;

    const/16 v12, 0xa

    new-array v12, v12, [Lg/e/a/a/i/b$a;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 2
    sput-object v12, Lg/e/a/a/i/b$a;->$VALUES:[Lg/e/a/a/i/b$a;

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

.method public static valueOf(Ljava/lang/String;)Lg/e/a/a/i/b$a;
    .locals 1

    .line 1
    const-class v0, Lg/e/a/a/i/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/e/a/a/i/b$a;

    return-object p0
.end method

.method public static values()[Lg/e/a/a/i/b$a;
    .locals 1

    .line 1
    sget-object v0, Lg/e/a/a/i/b$a;->$VALUES:[Lg/e/a/a/i/b$a;

    invoke-virtual {v0}, [Lg/e/a/a/i/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/e/a/a/i/b$a;

    return-object v0
.end method
