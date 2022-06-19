.class public final enum Li/a/a/f/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/a/a/f/q;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Li/a/a/f/q;

.field public static final enum CLIENT:Li/a/a/f/q;

.field public static final enum CONSUMER:Li/a/a/f/q;

.field public static final enum INTERNAL:Li/a/a/f/q;

.field public static final enum PRODUCER:Li/a/a/f/q;

.field public static final enum SERVER:Li/a/a/f/q;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Li/a/a/f/q;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/a/a/f/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li/a/a/f/q;->INTERNAL:Li/a/a/f/q;

    .line 2
    new-instance v1, Li/a/a/f/q;

    const-string v3, "SERVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li/a/a/f/q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li/a/a/f/q;->SERVER:Li/a/a/f/q;

    .line 3
    new-instance v3, Li/a/a/f/q;

    const-string v5, "CLIENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Li/a/a/f/q;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li/a/a/f/q;->CLIENT:Li/a/a/f/q;

    .line 4
    new-instance v5, Li/a/a/f/q;

    const-string v7, "PRODUCER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Li/a/a/f/q;-><init>(Ljava/lang/String;I)V

    sput-object v5, Li/a/a/f/q;->PRODUCER:Li/a/a/f/q;

    .line 5
    new-instance v7, Li/a/a/f/q;

    const-string v9, "CONSUMER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Li/a/a/f/q;-><init>(Ljava/lang/String;I)V

    sput-object v7, Li/a/a/f/q;->CONSUMER:Li/a/a/f/q;

    const/4 v9, 0x5

    new-array v9, v9, [Li/a/a/f/q;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Li/a/a/f/q;->$VALUES:[Li/a/a/f/q;

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

.method public static valueOf(Ljava/lang/String;)Li/a/a/f/q;
    .locals 1

    .line 1
    const-class v0, Li/a/a/f/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/a/a/f/q;

    return-object p0
.end method

.method public static values()[Li/a/a/f/q;
    .locals 1

    .line 1
    sget-object v0, Li/a/a/f/q;->$VALUES:[Li/a/a/f/q;

    invoke-virtual {v0}, [Li/a/a/f/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/a/a/f/q;

    return-object v0
.end method
