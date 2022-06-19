.class public final enum Le/b/a/z/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/b/a/z/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/b/a/z/a;

.field public static final enum c:Le/b/a/z/a;

.field public static final synthetic d:[Le/b/a/z/a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Le/b/a/z/a;

    const-string v1, "JSON"

    const/4 v2, 0x0

    const-string v3, ".json"

    invoke-direct {v0, v1, v2, v3}, Le/b/a/z/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/b/a/z/a;->b:Le/b/a/z/a;

    .line 2
    new-instance v1, Le/b/a/z/a;

    const-string v3, "ZIP"

    const/4 v4, 0x1

    const-string v5, ".zip"

    invoke-direct {v1, v3, v4, v5}, Le/b/a/z/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Le/b/a/z/a;->c:Le/b/a/z/a;

    const/4 v3, 0x2

    new-array v3, v3, [Le/b/a/z/a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Le/b/a/z/a;->d:[Le/b/a/z/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Le/b/a/z/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/b/a/z/a;
    .locals 1

    .line 1
    const-class v0, Le/b/a/z/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/b/a/z/a;

    return-object p0
.end method

.method public static values()[Le/b/a/z/a;
    .locals 1

    .line 1
    sget-object v0, Le/b/a/z/a;->d:[Le/b/a/z/a;

    invoke-virtual {v0}, [Le/b/a/z/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/b/a/z/a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/z/a;->a:Ljava/lang/String;

    return-object v0
.end method
