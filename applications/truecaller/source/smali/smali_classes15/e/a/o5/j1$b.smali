.class public final enum Le/a/o5/j1$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/o5/j1$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/a/o5/j1$b;

.field public static final enum b:Le/a/o5/j1$b;

.field public static final enum c:Le/a/o5/j1$b;

.field public static final enum d:Le/a/o5/j1$b;

.field public static final enum e:Le/a/o5/j1$b;

.field public static final synthetic f:[Le/a/o5/j1$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Le/a/o5/j1$b;

    const-string v1, "SUCCESS_NETWORK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/o5/j1$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/o5/j1$b;->a:Le/a/o5/j1$b;

    new-instance v1, Le/a/o5/j1$b;

    const-string v3, "SUCCESS_CACHE_HIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/a/o5/j1$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a/o5/j1$b;->b:Le/a/o5/j1$b;

    new-instance v3, Le/a/o5/j1$b;

    const-string v5, "FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/a/o5/j1$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/a/o5/j1$b;->c:Le/a/o5/j1$b;

    new-instance v5, Le/a/o5/j1$b;

    const-string v7, "TIMEOUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/a/o5/j1$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/a/o5/j1$b;->d:Le/a/o5/j1$b;

    new-instance v7, Le/a/o5/j1$b;

    const-string v9, "CANCELLED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Le/a/o5/j1$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Le/a/o5/j1$b;->e:Le/a/o5/j1$b;

    const/4 v9, 0x5

    new-array v9, v9, [Le/a/o5/j1$b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Le/a/o5/j1$b;->f:[Le/a/o5/j1$b;

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

.method public static valueOf(Ljava/lang/String;)Le/a/o5/j1$b;
    .locals 1

    .line 1
    const-class v0, Le/a/o5/j1$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/o5/j1$b;

    return-object p0
.end method

.method public static values()[Le/a/o5/j1$b;
    .locals 1

    .line 1
    sget-object v0, Le/a/o5/j1$b;->f:[Le/a/o5/j1$b;

    invoke-virtual {v0}, [Le/a/o5/j1$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/o5/j1$b;

    return-object v0
.end method
