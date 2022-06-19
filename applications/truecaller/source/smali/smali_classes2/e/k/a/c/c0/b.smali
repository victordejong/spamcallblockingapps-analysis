.class public final enum Le/k/a/c/c0/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/k/a/c/c0/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/k/a/c/c0/b;

.field public static final enum b:Le/k/a/c/c0/b;

.field public static final enum c:Le/k/a/c/c0/b;

.field public static final enum d:Le/k/a/c/c0/b;

.field public static final synthetic e:[Le/k/a/c/c0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Le/k/a/c/c0/b;

    const-string v1, "Fail"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/k/a/c/c0/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/k/a/c/c0/b;->a:Le/k/a/c/c0/b;

    .line 2
    new-instance v1, Le/k/a/c/c0/b;

    const-string v3, "TryConvert"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/k/a/c/c0/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/k/a/c/c0/b;->b:Le/k/a/c/c0/b;

    .line 3
    new-instance v3, Le/k/a/c/c0/b;

    const-string v5, "AsNull"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/k/a/c/c0/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    .line 4
    new-instance v5, Le/k/a/c/c0/b;

    const-string v7, "AsEmpty"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/k/a/c/c0/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    const/4 v7, 0x4

    new-array v7, v7, [Le/k/a/c/c0/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Le/k/a/c/c0/b;->e:[Le/k/a/c/c0/b;

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

.method public static valueOf(Ljava/lang/String;)Le/k/a/c/c0/b;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/c0/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/k/a/c/c0/b;

    return-object p0
.end method

.method public static values()[Le/k/a/c/c0/b;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/c0/b;->e:[Le/k/a/c/c0/b;

    invoke-virtual {v0}, [Le/k/a/c/c0/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/k/a/c/c0/b;

    return-object v0
.end method
