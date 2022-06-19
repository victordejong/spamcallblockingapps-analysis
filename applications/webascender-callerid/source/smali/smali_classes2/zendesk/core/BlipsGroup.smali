.class public final enum Lzendesk/core/BlipsGroup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/core/BlipsGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/core/BlipsGroup;

.field public static final enum BEHAVIOURAL:Lzendesk/core/BlipsGroup;

.field public static final enum PATHFINDER:Lzendesk/core/BlipsGroup;

.field public static final enum REQUIRED:Lzendesk/core/BlipsGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lzendesk/core/BlipsGroup;

    const-string v1, "REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/core/BlipsGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/core/BlipsGroup;->REQUIRED:Lzendesk/core/BlipsGroup;

    .line 2
    new-instance v1, Lzendesk/core/BlipsGroup;

    const-string v3, "BEHAVIOURAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzendesk/core/BlipsGroup;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzendesk/core/BlipsGroup;->BEHAVIOURAL:Lzendesk/core/BlipsGroup;

    .line 3
    new-instance v3, Lzendesk/core/BlipsGroup;

    const-string v5, "PATHFINDER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzendesk/core/BlipsGroup;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzendesk/core/BlipsGroup;->PATHFINDER:Lzendesk/core/BlipsGroup;

    const/4 v5, 0x3

    new-array v5, v5, [Lzendesk/core/BlipsGroup;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lzendesk/core/BlipsGroup;->$VALUES:[Lzendesk/core/BlipsGroup;

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

.method public static valueOf(Ljava/lang/String;)Lzendesk/core/BlipsGroup;
    .locals 1

    .line 1
    const-class v0, Lzendesk/core/BlipsGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/core/BlipsGroup;

    return-object p0
.end method

.method public static values()[Lzendesk/core/BlipsGroup;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/core/BlipsGroup;->$VALUES:[Lzendesk/core/BlipsGroup;

    invoke-virtual {v0}, [Lzendesk/core/BlipsGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/core/BlipsGroup;

    return-object v0
.end method
