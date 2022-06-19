.class public final enum Le/k/a/c/n0/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/k/a/c/n0/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/k/a/c/n0/a;

.field public static final enum b:Le/k/a/c/n0/a;

.field public static final enum c:Le/k/a/c/n0/a;

.field public static final synthetic d:[Le/k/a/c/n0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Le/k/a/c/n0/a;

    const-string v1, "ALWAYS_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/k/a/c/n0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/k/a/c/n0/a;->a:Le/k/a/c/n0/a;

    .line 2
    new-instance v1, Le/k/a/c/n0/a;

    const-string v3, "CONSTANT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/k/a/c/n0/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/k/a/c/n0/a;->b:Le/k/a/c/n0/a;

    .line 3
    new-instance v3, Le/k/a/c/n0/a;

    const-string v5, "DYNAMIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/k/a/c/n0/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/k/a/c/n0/a;->c:Le/k/a/c/n0/a;

    const/4 v5, 0x3

    new-array v5, v5, [Le/k/a/c/n0/a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le/k/a/c/n0/a;->d:[Le/k/a/c/n0/a;

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

.method public static valueOf(Ljava/lang/String;)Le/k/a/c/n0/a;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/n0/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/k/a/c/n0/a;

    return-object p0
.end method

.method public static values()[Le/k/a/c/n0/a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/n0/a;->d:[Le/k/a/c/n0/a;

    invoke-virtual {v0}, [Le/k/a/c/n0/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/k/a/c/n0/a;

    return-object v0
.end method
