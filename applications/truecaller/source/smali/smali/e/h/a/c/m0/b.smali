.class public final enum Le/h/a/c/m0/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/h/a/c/m0/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/h/a/c/m0/b;

.field public static final enum c:Le/h/a/c/m0/b;

.field public static final enum d:Le/h/a/c/m0/b;

.field public static final enum e:Le/h/a/c/m0/b;

.field public static final enum f:Le/h/a/c/m0/b;

.field public static final enum g:Le/h/a/c/m0/b;

.field public static final synthetic h:[Le/h/a/c/m0/b;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Le/h/a/c/m0/b;

    const-string v1, "SIMPLE"

    const/4 v2, 0x0

    const-string v3, "simple"

    invoke-direct {v0, v1, v2, v3}, Le/h/a/c/m0/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/h/a/c/m0/b;->b:Le/h/a/c/m0/b;

    .line 2
    new-instance v1, Le/h/a/c/m0/b;

    const-string v3, "SIMPLE_WITH_IMAGE"

    const/4 v4, 0x1

    const-string v5, "simple-image"

    invoke-direct {v1, v3, v4, v5}, Le/h/a/c/m0/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Le/h/a/c/m0/b;->c:Le/h/a/c/m0/b;

    .line 3
    new-instance v3, Le/h/a/c/m0/b;

    const-string v5, "CAROUSEL"

    const/4 v6, 0x2

    const-string v7, "carousel"

    invoke-direct {v3, v5, v6, v7}, Le/h/a/c/m0/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Le/h/a/c/m0/b;->d:Le/h/a/c/m0/b;

    .line 4
    new-instance v5, Le/h/a/c/m0/b;

    const-string v7, "CAROUSEL_WITH_IMAGE"

    const/4 v8, 0x3

    const-string v9, "carousel-image"

    invoke-direct {v5, v7, v8, v9}, Le/h/a/c/m0/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Le/h/a/c/m0/b;->e:Le/h/a/c/m0/b;

    .line 5
    new-instance v7, Le/h/a/c/m0/b;

    const-string v9, "MESSAGE_WITH_ICON"

    const/4 v10, 0x4

    const-string v11, "message-icon"

    invoke-direct {v7, v9, v10, v11}, Le/h/a/c/m0/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Le/h/a/c/m0/b;->f:Le/h/a/c/m0/b;

    .line 6
    new-instance v9, Le/h/a/c/m0/b;

    const-string v11, "CUSTOM_KEY_VALUE"

    const/4 v12, 0x5

    const-string v13, "custom-key-value"

    invoke-direct {v9, v11, v12, v13}, Le/h/a/c/m0/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Le/h/a/c/m0/b;->g:Le/h/a/c/m0/b;

    const/4 v11, 0x6

    new-array v11, v11, [Le/h/a/c/m0/b;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Le/h/a/c/m0/b;->h:[Le/h/a/c/m0/b;

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
    iput-object p3, p0, Le/h/a/c/m0/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/h/a/c/m0/b;
    .locals 1

    .line 1
    const-class v0, Le/h/a/c/m0/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/h/a/c/m0/b;

    return-object p0
.end method

.method public static values()[Le/h/a/c/m0/b;
    .locals 1

    .line 1
    sget-object v0, Le/h/a/c/m0/b;->h:[Le/h/a/c/m0/b;

    invoke-virtual {v0}, [Le/h/a/c/m0/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/h/a/c/m0/b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/m0/b;->a:Ljava/lang/String;

    return-object v0
.end method
