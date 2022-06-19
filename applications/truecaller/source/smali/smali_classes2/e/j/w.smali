.class public final enum Le/j/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/j/w;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0002\u001a\u00020\u0003J\u0006\u0010\u0005\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/AccessTokenSource;",
        "",
        "canExtendToken",
        "",
        "(Ljava/lang/String;IZ)V",
        "fromInstagram",
        "NONE",
        "FACEBOOK_APPLICATION_WEB",
        "FACEBOOK_APPLICATION_NATIVE",
        "FACEBOOK_APPLICATION_SERVICE",
        "WEB_VIEW",
        "CHROME_CUSTOM_TAB",
        "TEST_USER",
        "CLIENT_TOKEN",
        "DEVICE_AUTH",
        "INSTAGRAM_APPLICATION_WEB",
        "INSTAGRAM_CUSTOM_CHROME_TAB",
        "INSTAGRAM_WEB_VIEW",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum b:Le/j/w;

.field public static final enum c:Le/j/w;

.field public static final enum d:Le/j/w;

.field public static final enum e:Le/j/w;

.field public static final enum f:Le/j/w;

.field public static final enum g:Le/j/w;

.field public static final enum h:Le/j/w;

.field public static final enum i:Le/j/w;

.field public static final enum j:Le/j/w;

.field public static final enum k:Le/j/w;

.field public static final enum l:Le/j/w;

.field public static final enum m:Le/j/w;

.field public static final synthetic n:[Le/j/w;


# instance fields
.field public final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Le/j/w;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Le/j/w;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/j/w;->b:Le/j/w;

    .line 2
    new-instance v1, Le/j/w;

    const-string v3, "FACEBOOK_APPLICATION_WEB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Le/j/w;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Le/j/w;->c:Le/j/w;

    .line 3
    new-instance v3, Le/j/w;

    const-string v5, "FACEBOOK_APPLICATION_NATIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Le/j/w;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Le/j/w;->d:Le/j/w;

    .line 4
    new-instance v5, Le/j/w;

    const-string v7, "FACEBOOK_APPLICATION_SERVICE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Le/j/w;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Le/j/w;->e:Le/j/w;

    .line 5
    new-instance v7, Le/j/w;

    const-string v9, "WEB_VIEW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Le/j/w;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Le/j/w;->f:Le/j/w;

    .line 6
    new-instance v9, Le/j/w;

    const-string v11, "CHROME_CUSTOM_TAB"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v4}, Le/j/w;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Le/j/w;->g:Le/j/w;

    .line 7
    new-instance v11, Le/j/w;

    const-string v13, "TEST_USER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v4}, Le/j/w;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Le/j/w;->h:Le/j/w;

    .line 8
    new-instance v13, Le/j/w;

    const-string v15, "CLIENT_TOKEN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v4}, Le/j/w;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Le/j/w;->i:Le/j/w;

    .line 9
    new-instance v15, Le/j/w;

    const-string v14, "DEVICE_AUTH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v4}, Le/j/w;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Le/j/w;->j:Le/j/w;

    .line 10
    new-instance v14, Le/j/w;

    const-string v12, "INSTAGRAM_APPLICATION_WEB"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v4}, Le/j/w;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Le/j/w;->k:Le/j/w;

    .line 11
    new-instance v12, Le/j/w;

    const-string v10, "INSTAGRAM_CUSTOM_CHROME_TAB"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v4}, Le/j/w;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Le/j/w;->l:Le/j/w;

    .line 12
    new-instance v10, Le/j/w;

    const-string v8, "INSTAGRAM_WEB_VIEW"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v4}, Le/j/w;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Le/j/w;->m:Le/j/w;

    const/16 v8, 0xc

    new-array v8, v8, [Le/j/w;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Le/j/w;->n:[Le/j/w;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Le/j/w;->a:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/j/w;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Le/j/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Le/j/w;

    return-object p0
.end method

.method public static values()[Le/j/w;
    .locals 2

    sget-object v0, Le/j/w;->n:[Le/j/w;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Le/j/w;

    return-object v0
.end method
