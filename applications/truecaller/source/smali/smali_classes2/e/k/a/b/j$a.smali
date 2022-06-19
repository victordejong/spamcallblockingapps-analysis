.class public final enum Le/k/a/b/j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/k/a/b/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Le/k/a/b/j$a;

.field public static final enum d:Le/k/a/b/j$a;

.field public static final enum e:Le/k/a/b/j$a;

.field public static final enum f:Le/k/a/b/j$a;

.field public static final enum g:Le/k/a/b/j$a;

.field public static final enum h:Le/k/a/b/j$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum i:Le/k/a/b/j$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum j:Le/k/a/b/j$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum k:Le/k/a/b/j$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum l:Le/k/a/b/j$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum m:Le/k/a/b/j$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum n:Le/k/a/b/j$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum o:Le/k/a/b/j$a;

.field public static final enum p:Le/k/a/b/j$a;

.field public static final enum q:Le/k/a/b/j$a;

.field public static final synthetic r:[Le/k/a/b/j$a;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Le/k/a/b/j$a;

    const-string v1, "AUTO_CLOSE_SOURCE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/k/a/b/j$a;->c:Le/k/a/b/j$a;

    .line 2
    new-instance v1, Le/k/a/b/j$a;

    const-string v4, "ALLOW_COMMENTS"

    invoke-direct {v1, v4, v3, v2}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Le/k/a/b/j$a;->d:Le/k/a/b/j$a;

    .line 3
    new-instance v4, Le/k/a/b/j$a;

    const-string v5, "ALLOW_YAML_COMMENTS"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Le/k/a/b/j$a;->e:Le/k/a/b/j$a;

    .line 4
    new-instance v5, Le/k/a/b/j$a;

    const-string v7, "ALLOW_UNQUOTED_FIELD_NAMES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Le/k/a/b/j$a;->f:Le/k/a/b/j$a;

    .line 5
    new-instance v7, Le/k/a/b/j$a;

    const-string v9, "ALLOW_SINGLE_QUOTES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Le/k/a/b/j$a;->g:Le/k/a/b/j$a;

    .line 6
    new-instance v9, Le/k/a/b/j$a;

    const-string v11, "ALLOW_UNQUOTED_CONTROL_CHARS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Le/k/a/b/j$a;->h:Le/k/a/b/j$a;

    .line 7
    new-instance v11, Le/k/a/b/j$a;

    const-string v13, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v2}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Le/k/a/b/j$a;->i:Le/k/a/b/j$a;

    .line 8
    new-instance v13, Le/k/a/b/j$a;

    const-string v15, "ALLOW_NUMERIC_LEADING_ZEROS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v2}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Le/k/a/b/j$a;->j:Le/k/a/b/j$a;

    .line 9
    new-instance v15, Le/k/a/b/j$a;

    const-string v14, "ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v2}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Le/k/a/b/j$a;->k:Le/k/a/b/j$a;

    .line 10
    new-instance v14, Le/k/a/b/j$a;

    const-string v12, "ALLOW_NON_NUMERIC_NUMBERS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v2}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Le/k/a/b/j$a;->l:Le/k/a/b/j$a;

    .line 11
    new-instance v12, Le/k/a/b/j$a;

    const-string v10, "ALLOW_MISSING_VALUES"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v2}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Le/k/a/b/j$a;->m:Le/k/a/b/j$a;

    .line 12
    new-instance v10, Le/k/a/b/j$a;

    const-string v8, "ALLOW_TRAILING_COMMA"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v2}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Le/k/a/b/j$a;->n:Le/k/a/b/j$a;

    .line 13
    new-instance v8, Le/k/a/b/j$a;

    const-string v6, "STRICT_DUPLICATE_DETECTION"

    const/16 v3, 0xc

    invoke-direct {v8, v6, v3, v2}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Le/k/a/b/j$a;->o:Le/k/a/b/j$a;

    .line 14
    new-instance v6, Le/k/a/b/j$a;

    const-string v3, "IGNORE_UNDEFINED"

    move-object/from16 v17, v8

    const/16 v8, 0xd

    invoke-direct {v6, v3, v8, v2}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Le/k/a/b/j$a;->p:Le/k/a/b/j$a;

    .line 15
    new-instance v3, Le/k/a/b/j$a;

    const-string v8, "INCLUDE_SOURCE_IN_LOCATION"

    const/16 v2, 0xe

    move-object/from16 v18, v6

    const/4 v6, 0x1

    invoke-direct {v3, v8, v2, v6}, Le/k/a/b/j$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Le/k/a/b/j$a;->q:Le/k/a/b/j$a;

    const/16 v8, 0xf

    new-array v8, v8, [Le/k/a/b/j$a;

    const/16 v16, 0x0

    aput-object v0, v8, v16

    aput-object v1, v8, v6

    const/4 v0, 0x2

    aput-object v4, v8, v0

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

    const/16 v0, 0xb

    aput-object v10, v8, v0

    const/16 v0, 0xc

    aput-object v17, v8, v0

    const/16 v0, 0xd

    aput-object v18, v8, v0

    aput-object v3, v8, v2

    .line 16
    sput-object v8, Le/k/a/b/j$a;->r:[Le/k/a/b/j$a;

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

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Le/k/a/b/j$a;->b:I

    .line 3
    iput-boolean p3, p0, Le/k/a/b/j$a;->a:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/k/a/b/j$a;
    .locals 1

    .line 1
    const-class v0, Le/k/a/b/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/k/a/b/j$a;

    return-object p0
.end method

.method public static values()[Le/k/a/b/j$a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/j$a;->r:[Le/k/a/b/j$a;

    invoke-virtual {v0}, [Le/k/a/b/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/k/a/b/j$a;

    return-object v0
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/b/j$a;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
