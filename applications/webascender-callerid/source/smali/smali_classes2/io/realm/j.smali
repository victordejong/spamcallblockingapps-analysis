.class public final enum Lio/realm/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/j;

.field public static final enum INDEXED:Lio/realm/j;

.field public static final enum PRIMARY_KEY:Lio/realm/j;

.field public static final enum REQUIRED:Lio/realm/j;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/realm/j;

    const-string v1, "INDEXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/j;->INDEXED:Lio/realm/j;

    .line 2
    new-instance v1, Lio/realm/j;

    const-string v3, "PRIMARY_KEY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/realm/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/realm/j;->PRIMARY_KEY:Lio/realm/j;

    .line 3
    new-instance v3, Lio/realm/j;

    const-string v5, "REQUIRED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/realm/j;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/realm/j;->REQUIRED:Lio/realm/j;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/realm/j;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/realm/j;->$VALUES:[Lio/realm/j;

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

.method public static valueOf(Ljava/lang/String;)Lio/realm/j;
    .locals 1

    .line 1
    const-class v0, Lio/realm/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/j;

    return-object p0
.end method

.method public static values()[Lio/realm/j;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/j;->$VALUES:[Lio/realm/j;

    invoke-virtual {v0}, [Lio/realm/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/j;

    return-object v0
.end method
