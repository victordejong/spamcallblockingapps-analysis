.class public final enum Li/c/b0/e/k/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/c/b0/e/k/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/c/b0/e/k/i;

.field public static final enum BOUNDARY:Li/c/b0/e/k/i;

.field public static final enum END:Li/c/b0/e/k/i;

.field public static final enum IMMEDIATE:Li/c/b0/e/k/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Li/c/b0/e/k/i;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/c/b0/e/k/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/c/b0/e/k/i;->IMMEDIATE:Li/c/b0/e/k/i;

    .line 2
    new-instance v1, Li/c/b0/e/k/i;

    const-string v3, "BOUNDARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li/c/b0/e/k/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li/c/b0/e/k/i;->BOUNDARY:Li/c/b0/e/k/i;

    .line 3
    new-instance v3, Li/c/b0/e/k/i;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Li/c/b0/e/k/i;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li/c/b0/e/k/i;->END:Li/c/b0/e/k/i;

    const/4 v5, 0x3

    new-array v5, v5, [Li/c/b0/e/k/i;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Li/c/b0/e/k/i;->$VALUES:[Li/c/b0/e/k/i;

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

.method public static valueOf(Ljava/lang/String;)Li/c/b0/e/k/i;
    .locals 1

    .line 1
    const-class v0, Li/c/b0/e/k/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/c/b0/e/k/i;

    return-object p0
.end method

.method public static values()[Li/c/b0/e/k/i;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/k/i;->$VALUES:[Li/c/b0/e/k/i;

    invoke-virtual {v0}, [Li/c/b0/e/k/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/b0/e/k/i;

    return-object v0
.end method
