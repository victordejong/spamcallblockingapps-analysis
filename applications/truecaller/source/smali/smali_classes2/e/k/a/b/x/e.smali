.class public final enum Le/k/a/b/x/e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le/k/a/b/a0/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/k/a/b/x/e;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum d:Le/k/a/b/x/e;

.field public static final enum e:Le/k/a/b/x/e;

.field public static final enum f:Le/k/a/b/x/e;

.field public static final enum g:Le/k/a/b/x/e;

.field public static final enum h:Le/k/a/b/x/e;

.field public static final enum i:Le/k/a/b/x/e;

.field public static final enum j:Le/k/a/b/x/e;

.field public static final enum k:Le/k/a/b/x/e;

.field public static final enum l:Le/k/a/b/x/e;

.field public static final enum m:Le/k/a/b/x/e;

.field public static final enum n:Le/k/a/b/x/e;

.field public static final synthetic o:[Le/k/a/b/x/e;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Le/k/a/b/j$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Le/k/a/b/x/e;

    sget-object v1, Le/k/a/b/j$a;->d:Le/k/a/b/j$a;

    const-string v2, "ALLOW_JAVA_COMMENTS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Le/k/a/b/x/e;-><init>(Ljava/lang/String;IZLe/k/a/b/j$a;)V

    sput-object v0, Le/k/a/b/x/e;->d:Le/k/a/b/x/e;

    .line 2
    new-instance v1, Le/k/a/b/x/e;

    sget-object v2, Le/k/a/b/j$a;->e:Le/k/a/b/j$a;

    const-string v4, "ALLOW_YAML_COMMENTS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3, v2}, Le/k/a/b/x/e;-><init>(Ljava/lang/String;IZLe/k/a/b/j$a;)V

    sput-object v1, Le/k/a/b/x/e;->e:Le/k/a/b/x/e;

    .line 3
    new-instance v2, Le/k/a/b/x/e;

    sget-object v4, Le/k/a/b/j$a;->g:Le/k/a/b/j$a;

    const-string v6, "ALLOW_SINGLE_QUOTES"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v3, v4}, Le/k/a/b/x/e;-><init>(Ljava/lang/String;IZLe/k/a/b/j$a;)V

    sput-object v2, Le/k/a/b/x/e;->f:Le/k/a/b/x/e;

    .line 4
    new-instance v4, Le/k/a/b/x/e;

    sget-object v6, Le/k/a/b/j$a;->f:Le/k/a/b/j$a;

    const-string v8, "ALLOW_UNQUOTED_FIELD_NAMES"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v3, v6}, Le/k/a/b/x/e;-><init>(Ljava/lang/String;IZLe/k/a/b/j$a;)V

    sput-object v4, Le/k/a/b/x/e;->g:Le/k/a/b/x/e;

    .line 5
    new-instance v6, Le/k/a/b/x/e;

    sget-object v8, Le/k/a/b/j$a;->h:Le/k/a/b/j$a;

    const-string v10, "ALLOW_UNESCAPED_CONTROL_CHARS"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v3, v8}, Le/k/a/b/x/e;-><init>(Ljava/lang/String;IZLe/k/a/b/j$a;)V

    sput-object v6, Le/k/a/b/x/e;->h:Le/k/a/b/x/e;

    .line 6
    new-instance v8, Le/k/a/b/x/e;

    sget-object v10, Le/k/a/b/j$a;->i:Le/k/a/b/j$a;

    const-string v12, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v3, v10}, Le/k/a/b/x/e;-><init>(Ljava/lang/String;IZLe/k/a/b/j$a;)V

    sput-object v8, Le/k/a/b/x/e;->i:Le/k/a/b/x/e;

    .line 7
    new-instance v10, Le/k/a/b/x/e;

    sget-object v12, Le/k/a/b/j$a;->j:Le/k/a/b/j$a;

    const-string v14, "ALLOW_LEADING_ZEROS_FOR_NUMBERS"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v3, v12}, Le/k/a/b/x/e;-><init>(Ljava/lang/String;IZLe/k/a/b/j$a;)V

    sput-object v10, Le/k/a/b/x/e;->j:Le/k/a/b/x/e;

    .line 8
    new-instance v12, Le/k/a/b/x/e;

    sget-object v14, Le/k/a/b/j$a;->k:Le/k/a/b/j$a;

    const-string v15, "ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v3, v14}, Le/k/a/b/x/e;-><init>(Ljava/lang/String;IZLe/k/a/b/j$a;)V

    sput-object v12, Le/k/a/b/x/e;->k:Le/k/a/b/x/e;

    .line 9
    new-instance v14, Le/k/a/b/x/e;

    sget-object v15, Le/k/a/b/j$a;->l:Le/k/a/b/j$a;

    const-string v13, "ALLOW_NON_NUMERIC_NUMBERS"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v3, v15}, Le/k/a/b/x/e;-><init>(Ljava/lang/String;IZLe/k/a/b/j$a;)V

    sput-object v14, Le/k/a/b/x/e;->l:Le/k/a/b/x/e;

    .line 10
    new-instance v13, Le/k/a/b/x/e;

    sget-object v15, Le/k/a/b/j$a;->m:Le/k/a/b/j$a;

    const-string v11, "ALLOW_MISSING_VALUES"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v3, v15}, Le/k/a/b/x/e;-><init>(Ljava/lang/String;IZLe/k/a/b/j$a;)V

    sput-object v13, Le/k/a/b/x/e;->m:Le/k/a/b/x/e;

    .line 11
    new-instance v11, Le/k/a/b/x/e;

    sget-object v15, Le/k/a/b/j$a;->n:Le/k/a/b/j$a;

    const-string v9, "ALLOW_TRAILING_COMMA"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v3, v15}, Le/k/a/b/x/e;-><init>(Ljava/lang/String;IZLe/k/a/b/j$a;)V

    sput-object v11, Le/k/a/b/x/e;->n:Le/k/a/b/x/e;

    const/16 v9, 0xb

    new-array v9, v9, [Le/k/a/b/x/e;

    aput-object v0, v9, v3

    aput-object v1, v9, v5

    const/4 v0, 0x2

    aput-object v2, v9, v0

    const/4 v0, 0x3

    aput-object v4, v9, v0

    const/4 v0, 0x4

    aput-object v6, v9, v0

    const/4 v0, 0x5

    aput-object v8, v9, v0

    const/4 v0, 0x6

    aput-object v10, v9, v0

    const/4 v0, 0x7

    aput-object v12, v9, v0

    const/16 v0, 0x8

    aput-object v14, v9, v0

    const/16 v0, 0x9

    aput-object v13, v9, v0

    aput-object v11, v9, v7

    .line 12
    sput-object v9, Le/k/a/b/x/e;->o:[Le/k/a/b/x/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLe/k/a/b/j$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le/k/a/b/j$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Le/k/a/b/x/e;->a:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Le/k/a/b/x/e;->b:I

    .line 4
    iput-object p4, p0, Le/k/a/b/x/e;->c:Le/k/a/b/j$a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/k/a/b/x/e;
    .locals 1

    .line 1
    const-class v0, Le/k/a/b/x/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/k/a/b/x/e;

    return-object p0
.end method

.method public static values()[Le/k/a/b/x/e;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/x/e;->o:[Le/k/a/b/x/e;

    invoke-virtual {v0}, [Le/k/a/b/x/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/k/a/b/x/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/b/x/e;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/b/x/e;->a:Z

    return v0
.end method
