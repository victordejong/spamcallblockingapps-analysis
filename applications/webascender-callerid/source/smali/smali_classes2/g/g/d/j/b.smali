.class public final enum Lg/g/d/j/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/g/d/j/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lg/g/d/j/b;

.field public static final enum DATA_3G:Lg/g/d/j/b;

.field public static final enum DATA_5G:Lg/g/d/j/b;

.field public static final enum DATA_LTE:Lg/g/d/j/b;

.field public static final enum OFF:Lg/g/d/j/b;

.field public static final enum UNKNOWN:Lg/g/d/j/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lg/g/d/j/b;

    new-instance v1, Lg/g/d/j/b;

    const-string v2, "DATA_5G"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/g/d/j/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/d/j/b;->DATA_5G:Lg/g/d/j/b;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/d/j/b;

    const-string v2, "DATA_LTE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lg/g/d/j/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/d/j/b;->DATA_LTE:Lg/g/d/j/b;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/d/j/b;

    const-string v2, "DATA_3G"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lg/g/d/j/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/d/j/b;->DATA_3G:Lg/g/d/j/b;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/d/j/b;

    const-string v2, "OFF"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lg/g/d/j/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/d/j/b;->OFF:Lg/g/d/j/b;

    aput-object v1, v0, v3

    new-instance v1, Lg/g/d/j/b;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lg/g/d/j/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/g/d/j/b;->UNKNOWN:Lg/g/d/j/b;

    aput-object v1, v0, v3

    sput-object v0, Lg/g/d/j/b;->$VALUES:[Lg/g/d/j/b;

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

.method public static valueOf(Ljava/lang/String;)Lg/g/d/j/b;
    .locals 1

    const-class v0, Lg/g/d/j/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/g/d/j/b;

    return-object p0
.end method

.method public static values()[Lg/g/d/j/b;
    .locals 1

    sget-object v0, Lg/g/d/j/b;->$VALUES:[Lg/g/d/j/b;

    invoke-virtual {v0}, [Lg/g/d/j/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/g/d/j/b;

    return-object v0
.end method
