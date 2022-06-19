.class public final enum Le/p/a/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/p/a/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/p/a/x;

.field public static final enum c:Le/p/a/x;

.field public static final enum d:Le/p/a/x;

.field public static final enum e:Le/p/a/x;

.field public static final synthetic f:[Le/p/a/x;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Le/p/a/x;

    const-string v1, "TLS_1_2"

    const/4 v2, 0x0

    const-string v3, "TLSv1.2"

    invoke-direct {v0, v1, v2, v3}, Le/p/a/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/p/a/x;->b:Le/p/a/x;

    .line 2
    new-instance v1, Le/p/a/x;

    const-string v3, "TLS_1_1"

    const/4 v4, 0x1

    const-string v5, "TLSv1.1"

    invoke-direct {v1, v3, v4, v5}, Le/p/a/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Le/p/a/x;->c:Le/p/a/x;

    .line 3
    new-instance v3, Le/p/a/x;

    const-string v5, "TLS_1_0"

    const/4 v6, 0x2

    const-string v7, "TLSv1"

    invoke-direct {v3, v5, v6, v7}, Le/p/a/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Le/p/a/x;->d:Le/p/a/x;

    .line 4
    new-instance v5, Le/p/a/x;

    const-string v7, "SSL_3_0"

    const/4 v8, 0x3

    const-string v9, "SSLv3"

    invoke-direct {v5, v7, v8, v9}, Le/p/a/x;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Le/p/a/x;->e:Le/p/a/x;

    const/4 v7, 0x4

    new-array v7, v7, [Le/p/a/x;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Le/p/a/x;->f:[Le/p/a/x;

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
    iput-object p3, p0, Le/p/a/x;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/p/a/x;
    .locals 1

    .line 1
    const-class v0, Le/p/a/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/p/a/x;

    return-object p0
.end method

.method public static values()[Le/p/a/x;
    .locals 1

    .line 1
    sget-object v0, Le/p/a/x;->f:[Le/p/a/x;

    invoke-virtual {v0}, [Le/p/a/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/p/a/x;

    return-object v0
.end method
