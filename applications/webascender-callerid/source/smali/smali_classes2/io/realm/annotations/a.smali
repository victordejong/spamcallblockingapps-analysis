.class public final enum Lio/realm/annotations/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/annotations/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/annotations/a;

.field public static final enum CAMEL_CASE:Lio/realm/annotations/a;

.field public static final enum IDENTITY:Lio/realm/annotations/a;

.field public static final enum LOWER_CASE_WITH_UNDERSCORES:Lio/realm/annotations/a;

.field public static final enum NO_POLICY:Lio/realm/annotations/a;

.field public static final enum PASCAL_CASE:Lio/realm/annotations/a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lio/realm/annotations/a;

    const-string v1, "NO_POLICY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/annotations/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/annotations/a;->NO_POLICY:Lio/realm/annotations/a;

    .line 2
    new-instance v1, Lio/realm/annotations/a;

    const-string v3, "IDENTITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/realm/annotations/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/realm/annotations/a;->IDENTITY:Lio/realm/annotations/a;

    .line 3
    new-instance v3, Lio/realm/annotations/a;

    const-string v5, "CAMEL_CASE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/realm/annotations/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/realm/annotations/a;->CAMEL_CASE:Lio/realm/annotations/a;

    .line 4
    new-instance v5, Lio/realm/annotations/a;

    const-string v7, "PASCAL_CASE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/realm/annotations/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/realm/annotations/a;->PASCAL_CASE:Lio/realm/annotations/a;

    .line 5
    new-instance v7, Lio/realm/annotations/a;

    const-string v9, "LOWER_CASE_WITH_UNDERSCORES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/realm/annotations/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/realm/annotations/a;->LOWER_CASE_WITH_UNDERSCORES:Lio/realm/annotations/a;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/realm/annotations/a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lio/realm/annotations/a;->$VALUES:[Lio/realm/annotations/a;

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

.method public static valueOf(Ljava/lang/String;)Lio/realm/annotations/a;
    .locals 1

    .line 1
    const-class v0, Lio/realm/annotations/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/annotations/a;

    return-object p0
.end method

.method public static values()[Lio/realm/annotations/a;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/annotations/a;->$VALUES:[Lio/realm/annotations/a;

    invoke-virtual {v0}, [Lio/realm/annotations/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/annotations/a;

    return-object v0
.end method
