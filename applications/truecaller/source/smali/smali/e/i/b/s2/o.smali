.class public final enum Le/i/b/s2/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/i/b/s2/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/i/b/s2/o;

.field public static final enum b:Le/i/b/s2/o;

.field public static final enum c:Le/i/b/s2/o;

.field public static final enum d:Le/i/b/s2/o;

.field public static final synthetic e:[Le/i/b/s2/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Le/i/b/s2/o;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/i/b/s2/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/i/b/s2/o;->a:Le/i/b/s2/o;

    .line 2
    new-instance v1, Le/i/b/s2/o;

    const-string v3, "LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/i/b/s2/o;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/i/b/s2/o;->b:Le/i/b/s2/o;

    .line 3
    new-instance v3, Le/i/b/s2/o;

    const-string v5, "FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/i/b/s2/o;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/i/b/s2/o;->c:Le/i/b/s2/o;

    .line 4
    new-instance v5, Le/i/b/s2/o;

    const-string v7, "LOADING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/i/b/s2/o;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/i/b/s2/o;->d:Le/i/b/s2/o;

    const/4 v7, 0x4

    new-array v7, v7, [Le/i/b/s2/o;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Le/i/b/s2/o;->e:[Le/i/b/s2/o;

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

.method public static valueOf(Ljava/lang/String;)Le/i/b/s2/o;
    .locals 1

    .line 1
    const-class v0, Le/i/b/s2/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/i/b/s2/o;

    return-object p0
.end method

.method public static values()[Le/i/b/s2/o;
    .locals 1

    .line 1
    sget-object v0, Le/i/b/s2/o;->e:[Le/i/b/s2/o;

    invoke-virtual {v0}, [Le/i/b/s2/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/i/b/s2/o;

    return-object v0
.end method
