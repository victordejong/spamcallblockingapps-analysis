.class public final enum Li/c/z/j/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/c/z/j/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/c/z/j/f;

.field public static final enum BOUNDARY:Li/c/z/j/f;

.field public static final enum END:Li/c/z/j/f;

.field public static final enum IMMEDIATE:Li/c/z/j/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Li/c/z/j/f;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/c/z/j/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/c/z/j/f;->IMMEDIATE:Li/c/z/j/f;

    .line 2
    new-instance v1, Li/c/z/j/f;

    const-string v3, "BOUNDARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li/c/z/j/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li/c/z/j/f;->BOUNDARY:Li/c/z/j/f;

    .line 3
    new-instance v3, Li/c/z/j/f;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Li/c/z/j/f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li/c/z/j/f;->END:Li/c/z/j/f;

    const/4 v5, 0x3

    new-array v5, v5, [Li/c/z/j/f;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Li/c/z/j/f;->$VALUES:[Li/c/z/j/f;

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

.method public static valueOf(Ljava/lang/String;)Li/c/z/j/f;
    .locals 1

    .line 1
    const-class v0, Li/c/z/j/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/c/z/j/f;

    return-object p0
.end method

.method public static values()[Li/c/z/j/f;
    .locals 1

    .line 1
    sget-object v0, Li/c/z/j/f;->$VALUES:[Li/c/z/j/f;

    invoke-virtual {v0}, [Li/c/z/j/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/c/z/j/f;

    return-object v0
.end method
