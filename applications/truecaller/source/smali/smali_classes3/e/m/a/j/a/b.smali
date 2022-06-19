.class public final enum Le/m/a/j/a/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/a/j/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/m/a/j/a/b;

.field public static final enum b:Le/m/a/j/a/b;

.field public static final enum c:Le/m/a/j/a/b;

.field public static final enum d:Le/m/a/j/a/b;

.field public static final enum e:Le/m/a/j/a/b;

.field public static final enum f:Le/m/a/j/a/b;

.field public static final enum g:Le/m/a/j/a/b;

.field public static final enum h:Le/m/a/j/a/b;

.field public static final enum i:Le/m/a/j/a/b;

.field public static final enum j:Le/m/a/j/a/b;

.field public static final enum k:Le/m/a/j/a/b;

.field public static final enum l:Le/m/a/j/a/b;

.field public static final synthetic m:[Le/m/a/j/a/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Le/m/a/j/a/b;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/m/a/j/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/m/a/j/a/b;->a:Le/m/a/j/a/b;

    new-instance v1, Le/m/a/j/a/b;

    const-string v3, "INTERNAL_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/m/a/j/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/m/a/j/a/b;->b:Le/m/a/j/a/b;

    new-instance v3, Le/m/a/j/a/b;

    const-string v5, "UNKNOWN_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/m/a/j/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/m/a/j/a/b;->c:Le/m/a/j/a/b;

    new-instance v5, Le/m/a/j/a/b;

    const-string v7, "SERVICE_MISSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/m/a/j/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/m/a/j/a/b;->d:Le/m/a/j/a/b;

    new-instance v7, Le/m/a/j/a/b;

    const-string v9, "SERVICE_VERSION_UPDATE_REQUIRED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Le/m/a/j/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Le/m/a/j/a/b;->e:Le/m/a/j/a/b;

    new-instance v9, Le/m/a/j/a/b;

    const-string v11, "SERVICE_DISABLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Le/m/a/j/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Le/m/a/j/a/b;->f:Le/m/a/j/a/b;

    new-instance v11, Le/m/a/j/a/b;

    const-string v13, "SERVICE_INVALID"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Le/m/a/j/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Le/m/a/j/a/b;->g:Le/m/a/j/a/b;

    new-instance v13, Le/m/a/j/a/b;

    const-string v15, "ERROR_CONNECTING_TO_SERVICE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Le/m/a/j/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Le/m/a/j/a/b;->h:Le/m/a/j/a/b;

    new-instance v15, Le/m/a/j/a/b;

    const-string v14, "CLIENT_LIBRARY_UPDATE_REQUIRED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Le/m/a/j/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Le/m/a/j/a/b;->i:Le/m/a/j/a/b;

    new-instance v14, Le/m/a/j/a/b;

    const-string v12, "NETWORK_ERROR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Le/m/a/j/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Le/m/a/j/a/b;->j:Le/m/a/j/a/b;

    new-instance v12, Le/m/a/j/a/b;

    const-string v10, "DEVELOPER_KEY_INVALID"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Le/m/a/j/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v12, Le/m/a/j/a/b;->k:Le/m/a/j/a/b;

    new-instance v10, Le/m/a/j/a/b;

    const-string v8, "INVALID_APPLICATION_SIGNATURE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Le/m/a/j/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v10, Le/m/a/j/a/b;->l:Le/m/a/j/a/b;

    const/16 v8, 0xc

    new-array v8, v8, [Le/m/a/j/a/b;

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

    sput-object v8, Le/m/a/j/a/b;->m:[Le/m/a/j/a/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/m/a/j/a/b;
    .locals 1

    const-class v0, Le/m/a/j/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/m/a/j/a/b;

    return-object p0
.end method

.method public static values()[Le/m/a/j/a/b;
    .locals 1

    sget-object v0, Le/m/a/j/a/b;->m:[Le/m/a/j/a/b;

    invoke-virtual {v0}, [Le/m/a/j/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/a/j/a/b;

    return-object v0
.end method
