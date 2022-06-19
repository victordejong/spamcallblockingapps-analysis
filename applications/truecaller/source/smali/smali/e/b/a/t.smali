.class public final enum Le/b/a/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/b/a/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/b/a/t;

.field public static final enum b:Le/b/a/t;

.field public static final enum c:Le/b/a/t;

.field public static final synthetic d:[Le/b/a/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le/b/a/t;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/b/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/b/a/t;->a:Le/b/a/t;

    .line 2
    new-instance v1, Le/b/a/t;

    const-string v3, "HARDWARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/b/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/b/a/t;->b:Le/b/a/t;

    .line 3
    new-instance v3, Le/b/a/t;

    const-string v5, "SOFTWARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/b/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/b/a/t;->c:Le/b/a/t;

    const/4 v5, 0x3

    new-array v5, v5, [Le/b/a/t;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le/b/a/t;->d:[Le/b/a/t;

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

.method public static valueOf(Ljava/lang/String;)Le/b/a/t;
    .locals 1

    .line 1
    const-class v0, Le/b/a/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/b/a/t;

    return-object p0
.end method

.method public static values()[Le/b/a/t;
    .locals 1

    .line 1
    sget-object v0, Le/b/a/t;->d:[Le/b/a/t;

    invoke-virtual {v0}, [Le/b/a/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/b/a/t;

    return-object v0
.end method
