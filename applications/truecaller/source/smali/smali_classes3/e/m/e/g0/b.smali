.class public final enum Le/m/e/g0/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/m/e/g0/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/m/e/g0/b;

.field public static final enum b:Le/m/e/g0/b;

.field public static final enum c:Le/m/e/g0/b;

.field public static final enum d:Le/m/e/g0/b;

.field public static final enum e:Le/m/e/g0/b;

.field public static final enum f:Le/m/e/g0/b;

.field public static final enum g:Le/m/e/g0/b;

.field public static final enum h:Le/m/e/g0/b;

.field public static final enum i:Le/m/e/g0/b;

.field public static final enum j:Le/m/e/g0/b;

.field public static final synthetic k:[Le/m/e/g0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Le/m/e/g0/b;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/m/e/g0/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/m/e/g0/b;->a:Le/m/e/g0/b;

    .line 2
    new-instance v1, Le/m/e/g0/b;

    const-string v3, "END_ARRAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/m/e/g0/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/m/e/g0/b;->b:Le/m/e/g0/b;

    .line 3
    new-instance v3, Le/m/e/g0/b;

    const-string v5, "BEGIN_OBJECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/m/e/g0/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/m/e/g0/b;->c:Le/m/e/g0/b;

    .line 4
    new-instance v5, Le/m/e/g0/b;

    const-string v7, "END_OBJECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/m/e/g0/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/m/e/g0/b;->d:Le/m/e/g0/b;

    .line 5
    new-instance v7, Le/m/e/g0/b;

    const-string v9, "NAME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Le/m/e/g0/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Le/m/e/g0/b;->e:Le/m/e/g0/b;

    .line 6
    new-instance v9, Le/m/e/g0/b;

    const-string v11, "STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Le/m/e/g0/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Le/m/e/g0/b;->f:Le/m/e/g0/b;

    .line 7
    new-instance v11, Le/m/e/g0/b;

    const-string v13, "NUMBER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Le/m/e/g0/b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Le/m/e/g0/b;->g:Le/m/e/g0/b;

    .line 8
    new-instance v13, Le/m/e/g0/b;

    const-string v15, "BOOLEAN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Le/m/e/g0/b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Le/m/e/g0/b;->h:Le/m/e/g0/b;

    .line 9
    new-instance v15, Le/m/e/g0/b;

    const-string v14, "NULL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Le/m/e/g0/b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    .line 10
    new-instance v14, Le/m/e/g0/b;

    const-string v12, "END_DOCUMENT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Le/m/e/g0/b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Le/m/e/g0/b;->j:Le/m/e/g0/b;

    const/16 v12, 0xa

    new-array v12, v12, [Le/m/e/g0/b;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Le/m/e/g0/b;->k:[Le/m/e/g0/b;

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

.method public static valueOf(Ljava/lang/String;)Le/m/e/g0/b;
    .locals 1

    .line 1
    const-class v0, Le/m/e/g0/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/m/e/g0/b;

    return-object p0
.end method

.method public static values()[Le/m/e/g0/b;
    .locals 1

    .line 1
    sget-object v0, Le/m/e/g0/b;->k:[Le/m/e/g0/b;

    invoke-virtual {v0}, [Le/m/e/g0/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/e/g0/b;

    return-object v0
.end method
