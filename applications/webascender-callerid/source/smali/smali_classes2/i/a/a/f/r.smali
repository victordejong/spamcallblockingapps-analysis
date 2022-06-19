.class public final enum Li/a/a/f/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/a/a/f/r;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/a/a/f/r;

.field public static final enum ERROR:Li/a/a/f/r;

.field public static final enum OK:Li/a/a/f/r;

.field public static final enum UNSET:Li/a/a/f/r;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Li/a/a/f/r;

    const-string v1, "UNSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/a/a/f/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/a/a/f/r;->UNSET:Li/a/a/f/r;

    .line 2
    new-instance v1, Li/a/a/f/r;

    const-string v3, "OK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li/a/a/f/r;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li/a/a/f/r;->OK:Li/a/a/f/r;

    .line 3
    new-instance v3, Li/a/a/f/r;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Li/a/a/f/r;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li/a/a/f/r;->ERROR:Li/a/a/f/r;

    const/4 v5, 0x3

    new-array v5, v5, [Li/a/a/f/r;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Li/a/a/f/r;->$VALUES:[Li/a/a/f/r;

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

.method public static valueOf(Ljava/lang/String;)Li/a/a/f/r;
    .locals 1

    .line 1
    const-class v0, Li/a/a/f/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/a/a/f/r;

    return-object p0
.end method

.method public static values()[Li/a/a/f/r;
    .locals 1

    .line 1
    sget-object v0, Li/a/a/f/r;->$VALUES:[Li/a/a/f/r;

    invoke-virtual {v0}, [Li/a/a/f/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/a/a/f/r;

    return-object v0
.end method
