.class public final enum Lio/realm/internal/OsResults$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/realm/internal/OsResults$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/realm/internal/OsResults$c;

.field public static final enum EMPTY:Lio/realm/internal/OsResults$c;

.field public static final enum LINK_LIST:Lio/realm/internal/OsResults$c;

.field public static final enum PRIMITIVE_LIST:Lio/realm/internal/OsResults$c;

.field public static final enum QUERY:Lio/realm/internal/OsResults$c;

.field public static final enum TABLE:Lio/realm/internal/OsResults$c;

.field public static final enum TABLEVIEW:Lio/realm/internal/OsResults$c;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lio/realm/internal/OsResults$c;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/realm/internal/OsResults$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/OsResults$c;->EMPTY:Lio/realm/internal/OsResults$c;

    .line 2
    new-instance v1, Lio/realm/internal/OsResults$c;

    const-string v3, "TABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/realm/internal/OsResults$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/realm/internal/OsResults$c;->TABLE:Lio/realm/internal/OsResults$c;

    .line 3
    new-instance v3, Lio/realm/internal/OsResults$c;

    const-string v5, "PRIMITIVE_LIST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/realm/internal/OsResults$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/realm/internal/OsResults$c;->PRIMITIVE_LIST:Lio/realm/internal/OsResults$c;

    .line 4
    new-instance v5, Lio/realm/internal/OsResults$c;

    const-string v7, "QUERY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/realm/internal/OsResults$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/realm/internal/OsResults$c;->QUERY:Lio/realm/internal/OsResults$c;

    .line 5
    new-instance v7, Lio/realm/internal/OsResults$c;

    const-string v9, "LINK_LIST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/realm/internal/OsResults$c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/realm/internal/OsResults$c;->LINK_LIST:Lio/realm/internal/OsResults$c;

    .line 6
    new-instance v9, Lio/realm/internal/OsResults$c;

    const-string v11, "TABLEVIEW"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/realm/internal/OsResults$c;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/realm/internal/OsResults$c;->TABLEVIEW:Lio/realm/internal/OsResults$c;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/realm/internal/OsResults$c;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lio/realm/internal/OsResults$c;->$VALUES:[Lio/realm/internal/OsResults$c;

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

.method static getByValue(B)Lio/realm/internal/OsResults$c;
    .locals 3

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lio/realm/internal/OsResults$c;->TABLEVIEW:Lio/realm/internal/OsResults$c;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object p0, Lio/realm/internal/OsResults$c;->LINK_LIST:Lio/realm/internal/OsResults$c;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lio/realm/internal/OsResults$c;->QUERY:Lio/realm/internal/OsResults$c;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lio/realm/internal/OsResults$c;->PRIMITIVE_LIST:Lio/realm/internal/OsResults$c;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lio/realm/internal/OsResults$c;->TABLE:Lio/realm/internal/OsResults$c;

    return-object p0

    .line 7
    :cond_5
    sget-object p0, Lio/realm/internal/OsResults$c;->EMPTY:Lio/realm/internal/OsResults$c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/OsResults$c;
    .locals 1

    .line 1
    const-class v0, Lio/realm/internal/OsResults$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/realm/internal/OsResults$c;

    return-object p0
.end method

.method public static values()[Lio/realm/internal/OsResults$c;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/internal/OsResults$c;->$VALUES:[Lio/realm/internal/OsResults$c;

    invoke-virtual {v0}, [Lio/realm/internal/OsResults$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/OsResults$c;

    return-object v0
.end method
