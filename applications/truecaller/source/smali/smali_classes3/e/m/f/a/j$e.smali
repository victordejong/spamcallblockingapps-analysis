.class public final enum Le/m/f/a/j$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/f/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/f/a/j$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/m/f/a/j$e;

.field public static final enum b:Le/m/f/a/j$e;

.field public static final enum c:Le/m/f/a/j$e;

.field public static final enum d:Le/m/f/a/j$e;

.field public static final enum e:Le/m/f/a/j$e;

.field public static final enum f:Le/m/f/a/j$e;

.field public static final synthetic g:[Le/m/f/a/j$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Le/m/f/a/j$e;

    const-string v1, "IS_POSSIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/m/f/a/j$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/m/f/a/j$e;->a:Le/m/f/a/j$e;

    .line 2
    new-instance v1, Le/m/f/a/j$e;

    const-string v3, "IS_POSSIBLE_LOCAL_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/m/f/a/j$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/m/f/a/j$e;->b:Le/m/f/a/j$e;

    .line 3
    new-instance v3, Le/m/f/a/j$e;

    const-string v5, "INVALID_COUNTRY_CODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/m/f/a/j$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/m/f/a/j$e;->c:Le/m/f/a/j$e;

    .line 4
    new-instance v5, Le/m/f/a/j$e;

    const-string v7, "TOO_SHORT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/m/f/a/j$e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/m/f/a/j$e;->d:Le/m/f/a/j$e;

    .line 5
    new-instance v7, Le/m/f/a/j$e;

    const-string v9, "INVALID_LENGTH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Le/m/f/a/j$e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Le/m/f/a/j$e;->e:Le/m/f/a/j$e;

    .line 6
    new-instance v9, Le/m/f/a/j$e;

    const-string v11, "TOO_LONG"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Le/m/f/a/j$e;-><init>(Ljava/lang/String;I)V

    sput-object v9, Le/m/f/a/j$e;->f:Le/m/f/a/j$e;

    const/4 v11, 0x6

    new-array v11, v11, [Le/m/f/a/j$e;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Le/m/f/a/j$e;->g:[Le/m/f/a/j$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Le/m/f/a/j$e;
    .locals 1

    .line 1
    const-class v0, Le/m/f/a/j$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/m/f/a/j$e;

    return-object p0
.end method

.method public static values()[Le/m/f/a/j$e;
    .locals 1

    .line 1
    sget-object v0, Le/m/f/a/j$e;->g:[Le/m/f/a/j$e;

    invoke-virtual {v0}, [Le/m/f/a/j$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/f/a/j$e;

    return-object v0
.end method
