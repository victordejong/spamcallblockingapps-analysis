.class public final enum Landroidx/work/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/work/n;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/work/n;

.field public static final enum CONNECTED:Landroidx/work/n;

.field public static final enum METERED:Landroidx/work/n;

.field public static final enum NOT_REQUIRED:Landroidx/work/n;

.field public static final enum NOT_ROAMING:Landroidx/work/n;

.field public static final enum UNMETERED:Landroidx/work/n;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Landroidx/work/n;

    const-string v1, "NOT_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/work/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/n;->NOT_REQUIRED:Landroidx/work/n;

    .line 2
    new-instance v1, Landroidx/work/n;

    const-string v3, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/work/n;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/work/n;->CONNECTED:Landroidx/work/n;

    .line 3
    new-instance v3, Landroidx/work/n;

    const-string v5, "UNMETERED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/work/n;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/work/n;->UNMETERED:Landroidx/work/n;

    .line 4
    new-instance v5, Landroidx/work/n;

    const-string v7, "NOT_ROAMING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/work/n;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/work/n;->NOT_ROAMING:Landroidx/work/n;

    .line 5
    new-instance v7, Landroidx/work/n;

    const-string v9, "METERED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/work/n;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/work/n;->METERED:Landroidx/work/n;

    const/4 v9, 0x5

    new-array v9, v9, [Landroidx/work/n;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Landroidx/work/n;->$VALUES:[Landroidx/work/n;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/work/n;
    .locals 1

    .line 1
    const-class v0, Landroidx/work/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/work/n;

    return-object p0
.end method

.method public static values()[Landroidx/work/n;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/n;->$VALUES:[Landroidx/work/n;

    invoke-virtual {v0}, [Landroidx/work/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/n;

    return-object v0
.end method
