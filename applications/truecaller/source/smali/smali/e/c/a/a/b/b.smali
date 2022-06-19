.class public final enum Le/c/a/a/b/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/c/a/a/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/c/a/a/b/b;

.field public static final enum b:Le/c/a/a/b/b;

.field public static final enum c:Le/c/a/a/b/b;

.field public static final enum d:Le/c/a/a/b/b;

.field public static final enum e:Le/c/a/a/b/b;

.field public static final synthetic f:[Le/c/a/a/b/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Le/c/a/a/b/b;

    const-string v1, "FATAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/c/a/a/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/a/a/b/b;->a:Le/c/a/a/b/b;

    .line 2
    new-instance v1, Le/c/a/a/b/b;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/c/a/a/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    .line 3
    new-instance v3, Le/c/a/a/b/b;

    const-string v5, "INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/c/a/a/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/c/a/a/b/b;->c:Le/c/a/a/b/b;

    .line 4
    new-instance v5, Le/c/a/a/b/b;

    const-string v7, "WARN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/c/a/a/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/c/a/a/b/b;->d:Le/c/a/a/b/b;

    .line 5
    new-instance v7, Le/c/a/a/b/b;

    const-string v9, "DEBUG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Le/c/a/a/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Le/c/a/a/b/b;->e:Le/c/a/a/b/b;

    const/4 v9, 0x5

    new-array v9, v9, [Le/c/a/a/b/b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Le/c/a/a/b/b;->f:[Le/c/a/a/b/b;

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

.method public static valueOf(Ljava/lang/String;)Le/c/a/a/b/b;
    .locals 1

    .line 1
    const-class v0, Le/c/a/a/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/c/a/a/b/b;

    return-object p0
.end method

.method public static values()[Le/c/a/a/b/b;
    .locals 1

    .line 1
    sget-object v0, Le/c/a/a/b/b;->f:[Le/c/a/a/b/b;

    invoke-virtual {v0}, [Le/c/a/a/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/c/a/a/b/b;

    return-object v0
.end method
