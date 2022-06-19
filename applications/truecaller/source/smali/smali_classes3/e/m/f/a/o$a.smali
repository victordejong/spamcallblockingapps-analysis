.class public final enum Le/m/f/a/o$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/f/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/f/a/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/m/f/a/o$a;

.field public static final enum b:Le/m/f/a/o$a;

.field public static final enum c:Le/m/f/a/o$a;

.field public static final enum d:Le/m/f/a/o$a;

.field public static final enum e:Le/m/f/a/o$a;

.field public static final synthetic f:[Le/m/f/a/o$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Le/m/f/a/o$a;

    const-string v1, "FROM_NUMBER_WITH_PLUS_SIGN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/m/f/a/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/m/f/a/o$a;->a:Le/m/f/a/o$a;

    .line 2
    new-instance v1, Le/m/f/a/o$a;

    const-string v3, "FROM_NUMBER_WITH_IDD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/m/f/a/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/m/f/a/o$a;->b:Le/m/f/a/o$a;

    .line 3
    new-instance v3, Le/m/f/a/o$a;

    const-string v5, "FROM_NUMBER_WITHOUT_PLUS_SIGN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/m/f/a/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/m/f/a/o$a;->c:Le/m/f/a/o$a;

    .line 4
    new-instance v5, Le/m/f/a/o$a;

    const-string v7, "FROM_DEFAULT_COUNTRY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/m/f/a/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/m/f/a/o$a;->d:Le/m/f/a/o$a;

    .line 5
    new-instance v7, Le/m/f/a/o$a;

    const-string v9, "UNSPECIFIED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Le/m/f/a/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Le/m/f/a/o$a;->e:Le/m/f/a/o$a;

    const/4 v9, 0x5

    new-array v9, v9, [Le/m/f/a/o$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Le/m/f/a/o$a;->f:[Le/m/f/a/o$a;

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

.method public static valueOf(Ljava/lang/String;)Le/m/f/a/o$a;
    .locals 1

    .line 1
    const-class v0, Le/m/f/a/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/m/f/a/o$a;

    return-object p0
.end method

.method public static values()[Le/m/f/a/o$a;
    .locals 1

    .line 1
    sget-object v0, Le/m/f/a/o$a;->f:[Le/m/f/a/o$a;

    invoke-virtual {v0}, [Le/m/f/a/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/f/a/o$a;

    return-object v0
.end method
