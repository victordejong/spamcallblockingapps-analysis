.class public final enum Lio/realm/internal/OsRealmConfig$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsRealmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/OsRealmConfig$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/OsRealmConfig$c;

.field public static final enum FULL:Lio/realm/internal/OsRealmConfig$c;

.field public static final enum MEM_ONLY:Lio/realm/internal/OsRealmConfig$c;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/realm/internal/OsRealmConfig$c;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/realm/internal/OsRealmConfig$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/realm/internal/OsRealmConfig$c;->FULL:Lio/realm/internal/OsRealmConfig$c;

    .line 2
    new-instance v1, Lio/realm/internal/OsRealmConfig$c;

    const-string v3, "MEM_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/realm/internal/OsRealmConfig$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/realm/internal/OsRealmConfig$c;->MEM_ONLY:Lio/realm/internal/OsRealmConfig$c;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/realm/internal/OsRealmConfig$c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lio/realm/internal/OsRealmConfig$c;->$VALUES:[Lio/realm/internal/OsRealmConfig$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/realm/internal/OsRealmConfig$c;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/OsRealmConfig$c;
    .locals 1

    .line 1
    const-class v0, Lio/realm/internal/OsRealmConfig$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/internal/OsRealmConfig$c;

    return-object p0
.end method

.method public static values()[Lio/realm/internal/OsRealmConfig$c;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/OsRealmConfig$c;->$VALUES:[Lio/realm/internal/OsRealmConfig$c;

    invoke-virtual {v0}, [Lio/realm/internal/OsRealmConfig$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/OsRealmConfig$c;

    return-object v0
.end method
