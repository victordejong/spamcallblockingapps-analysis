.class public final enum Le/p/b/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/p/b/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/p/b/s;

.field public static final enum c:Le/p/b/s;

.field public static final synthetic d:[Le/p/b/s;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Le/p/b/s;

    const-string v1, "NO_CACHE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Le/p/b/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/p/b/s;->b:Le/p/b/s;

    .line 2
    new-instance v1, Le/p/b/s;

    const-string v4, "NO_STORE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Le/p/b/s;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le/p/b/s;->c:Le/p/b/s;

    new-array v4, v5, [Le/p/b/s;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Le/p/b/s;->d:[Le/p/b/s;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Le/p/b/s;->a:I

    return-void
.end method

.method public static a(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Le/p/b/s;
    .locals 1

    .line 1
    const-class v0, Le/p/b/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/p/b/s;

    return-object p0
.end method

.method public static values()[Le/p/b/s;
    .locals 1

    .line 1
    sget-object v0, Le/p/b/s;->d:[Le/p/b/s;

    invoke-virtual {v0}, [Le/p/b/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/p/b/s;

    return-object v0
.end method
