.class public final enum Lio/realm/l0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/l0;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/l0;

.field public static final enum ASCENDING:Lio/realm/l0;

.field public static final enum DESCENDING:Lio/realm/l0;


# instance fields
.field private final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/realm/l0;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/realm/l0;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lio/realm/l0;->ASCENDING:Lio/realm/l0;

    .line 2
    new-instance v1, Lio/realm/l0;

    const-string v4, "DESCENDING"

    invoke-direct {v1, v4, v3, v2}, Lio/realm/l0;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lio/realm/l0;->DESCENDING:Lio/realm/l0;

    const/4 v4, 0x2

    new-array v4, v4, [Lio/realm/l0;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lio/realm/l0;->$VALUES:[Lio/realm/l0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lio/realm/l0;->value:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/l0;
    .locals 1

    .line 1
    const-class v0, Lio/realm/l0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/l0;

    return-object p0
.end method

.method public static values()[Lio/realm/l0;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/l0;->$VALUES:[Lio/realm/l0;

    invoke-virtual {v0}, [Lio/realm/l0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/l0;

    return-object v0
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/l0;->value:Z

    return v0
.end method
