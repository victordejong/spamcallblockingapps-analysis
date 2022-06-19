.class public final enum Lio/realm/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/d;

.field public static final enum INSENSITIVE:Lio/realm/d;

.field public static final enum SENSITIVE:Lio/realm/d;


# instance fields
.field private final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/realm/d;

    const-string v1, "SENSITIVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/realm/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lio/realm/d;->SENSITIVE:Lio/realm/d;

    .line 2
    new-instance v1, Lio/realm/d;

    const-string v4, "INSENSITIVE"

    invoke-direct {v1, v4, v3, v2}, Lio/realm/d;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lio/realm/d;->INSENSITIVE:Lio/realm/d;

    const/4 v4, 0x2

    new-array v4, v4, [Lio/realm/d;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lio/realm/d;->$VALUES:[Lio/realm/d;

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
    iput-boolean p3, p0, Lio/realm/d;->value:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/d;
    .locals 1

    .line 1
    const-class v0, Lio/realm/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/d;

    return-object p0
.end method

.method public static values()[Lio/realm/d;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/d;->$VALUES:[Lio/realm/d;

    invoke-virtual {v0}, [Lio/realm/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/d;

    return-object v0
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/realm/d;->value:Z

    return v0
.end method
