.class public final enum Landroidx/work/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/work/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/work/f;

.field public static final enum KEEP:Landroidx/work/f;

.field public static final enum REPLACE:Landroidx/work/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/work/f;

    const-string v1, "REPLACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/work/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/f;->REPLACE:Landroidx/work/f;

    .line 2
    new-instance v1, Landroidx/work/f;

    const-string v3, "KEEP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/work/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/work/f;->KEEP:Landroidx/work/f;

    const/4 v3, 0x2

    new-array v3, v3, [Landroidx/work/f;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Landroidx/work/f;->$VALUES:[Landroidx/work/f;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/work/f;
    .locals 1

    .line 1
    const-class v0, Landroidx/work/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/work/f;

    return-object p0
.end method

.method public static values()[Landroidx/work/f;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/f;->$VALUES:[Landroidx/work/f;

    invoke-virtual {v0}, [Landroidx/work/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/f;

    return-object v0
.end method
