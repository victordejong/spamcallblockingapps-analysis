.class public final enum Le/k/a/c/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/c0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/k/a/c/h;",
        ">;",
        "Le/k/a/c/c0/e;"
    }
.end annotation


# static fields
.field public static final enum A:Le/k/a/c/h;

.field public static final enum B:Le/k/a/c/h;

.field public static final enum C:Le/k/a/c/h;

.field public static final enum D:Le/k/a/c/h;

.field public static final synthetic E:[Le/k/a/c/h;

.field public static final enum c:Le/k/a/c/h;

.field public static final enum d:Le/k/a/c/h;

.field public static final enum e:Le/k/a/c/h;

.field public static final enum f:Le/k/a/c/h;

.field public static final enum g:Le/k/a/c/h;

.field public static final enum h:Le/k/a/c/h;

.field public static final enum i:Le/k/a/c/h;

.field public static final enum j:Le/k/a/c/h;

.field public static final enum k:Le/k/a/c/h;

.field public static final enum l:Le/k/a/c/h;

.field public static final enum m:Le/k/a/c/h;

.field public static final enum n:Le/k/a/c/h;

.field public static final enum o:Le/k/a/c/h;

.field public static final enum p:Le/k/a/c/h;

.field public static final enum q:Le/k/a/c/h;

.field public static final enum r:Le/k/a/c/h;

.field public static final enum s:Le/k/a/c/h;

.field public static final enum t:Le/k/a/c/h;

.field public static final enum u:Le/k/a/c/h;

.field public static final enum v:Le/k/a/c/h;

.field public static final enum w:Le/k/a/c/h;

.field public static final enum x:Le/k/a/c/h;

.field public static final enum y:Le/k/a/c/h;

.field public static final enum z:Le/k/a/c/h;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Le/k/a/c/h;

    const-string v1, "USE_BIG_DECIMAL_FOR_FLOATS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/k/a/c/h;->c:Le/k/a/c/h;

    .line 2
    new-instance v1, Le/k/a/c/h;

    const-string v3, "USE_BIG_INTEGER_FOR_INTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Le/k/a/c/h;->d:Le/k/a/c/h;

    .line 3
    new-instance v3, Le/k/a/c/h;

    const-string v5, "USE_LONG_FOR_INTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Le/k/a/c/h;->e:Le/k/a/c/h;

    .line 4
    new-instance v5, Le/k/a/c/h;

    const-string v7, "USE_JAVA_ARRAY_FOR_JSON_ARRAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Le/k/a/c/h;->f:Le/k/a/c/h;

    .line 5
    new-instance v7, Le/k/a/c/h;

    const-string v9, "FAIL_ON_UNKNOWN_PROPERTIES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Le/k/a/c/h;->g:Le/k/a/c/h;

    .line 6
    new-instance v9, Le/k/a/c/h;

    const-string v11, "FAIL_ON_NULL_FOR_PRIMITIVES"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Le/k/a/c/h;->h:Le/k/a/c/h;

    .line 7
    new-instance v11, Le/k/a/c/h;

    const-string v13, "FAIL_ON_NUMBERS_FOR_ENUMS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Le/k/a/c/h;->i:Le/k/a/c/h;

    .line 8
    new-instance v13, Le/k/a/c/h;

    const-string v15, "FAIL_ON_INVALID_SUBTYPE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v4}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Le/k/a/c/h;->j:Le/k/a/c/h;

    .line 9
    new-instance v15, Le/k/a/c/h;

    const-string v14, "FAIL_ON_READING_DUP_TREE_KEY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Le/k/a/c/h;->k:Le/k/a/c/h;

    .line 10
    new-instance v14, Le/k/a/c/h;

    const-string v12, "FAIL_ON_IGNORED_PROPERTIES"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Le/k/a/c/h;->l:Le/k/a/c/h;

    .line 11
    new-instance v12, Le/k/a/c/h;

    const-string v10, "FAIL_ON_UNRESOLVED_OBJECT_IDS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v4}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Le/k/a/c/h;->m:Le/k/a/c/h;

    .line 12
    new-instance v10, Le/k/a/c/h;

    const-string v8, "FAIL_ON_MISSING_CREATOR_PROPERTIES"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Le/k/a/c/h;->n:Le/k/a/c/h;

    .line 13
    new-instance v8, Le/k/a/c/h;

    const-string v6, "FAIL_ON_NULL_CREATOR_PROPERTIES"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Le/k/a/c/h;->o:Le/k/a/c/h;

    .line 14
    new-instance v6, Le/k/a/c/h;

    const-string v4, "FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY"

    const/16 v2, 0xd

    move-object/from16 v17, v8

    const/4 v8, 0x1

    invoke-direct {v6, v4, v2, v8}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Le/k/a/c/h;->p:Le/k/a/c/h;

    .line 15
    new-instance v4, Le/k/a/c/h;

    const-string v2, "FAIL_ON_TRAILING_TOKENS"

    const/16 v8, 0xe

    move-object/from16 v18, v6

    const/4 v6, 0x0

    invoke-direct {v4, v2, v8, v6}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Le/k/a/c/h;->q:Le/k/a/c/h;

    .line 16
    new-instance v2, Le/k/a/c/h;

    const-string v8, "WRAP_EXCEPTIONS"

    const/16 v6, 0xf

    move-object/from16 v19, v4

    const/4 v4, 0x1

    invoke-direct {v2, v8, v6, v4}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/h;->r:Le/k/a/c/h;

    .line 17
    new-instance v4, Le/k/a/c/h;

    const-string v8, "ACCEPT_SINGLE_VALUE_AS_ARRAY"

    const/16 v6, 0x10

    move-object/from16 v20, v2

    const/4 v2, 0x0

    invoke-direct {v4, v8, v6, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Le/k/a/c/h;->s:Le/k/a/c/h;

    .line 18
    new-instance v8, Le/k/a/c/h;

    const-string v6, "UNWRAP_SINGLE_VALUE_ARRAYS"

    move-object/from16 v21, v4

    const/16 v4, 0x11

    invoke-direct {v8, v6, v4, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Le/k/a/c/h;->t:Le/k/a/c/h;

    .line 19
    new-instance v6, Le/k/a/c/h;

    const-string v4, "UNWRAP_ROOT_VALUE"

    move-object/from16 v22, v8

    const/16 v8, 0x12

    invoke-direct {v6, v4, v8, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Le/k/a/c/h;->u:Le/k/a/c/h;

    .line 20
    new-instance v4, Le/k/a/c/h;

    const-string v8, "ACCEPT_EMPTY_STRING_AS_NULL_OBJECT"

    move-object/from16 v23, v6

    const/16 v6, 0x13

    invoke-direct {v4, v8, v6, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Le/k/a/c/h;->v:Le/k/a/c/h;

    .line 21
    new-instance v8, Le/k/a/c/h;

    const-string v6, "ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT"

    move-object/from16 v24, v4

    const/16 v4, 0x14

    invoke-direct {v8, v6, v4, v2}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Le/k/a/c/h;->w:Le/k/a/c/h;

    .line 22
    new-instance v6, Le/k/a/c/h;

    const-string v4, "ACCEPT_FLOAT_AS_INT"

    const/16 v2, 0x15

    move-object/from16 v25, v8

    const/4 v8, 0x1

    invoke-direct {v6, v4, v2, v8}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Le/k/a/c/h;->x:Le/k/a/c/h;

    .line 23
    new-instance v4, Le/k/a/c/h;

    const-string v8, "READ_ENUMS_USING_TO_STRING"

    const/16 v2, 0x16

    move-object/from16 v26, v6

    const/4 v6, 0x0

    invoke-direct {v4, v8, v2, v6}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Le/k/a/c/h;->y:Le/k/a/c/h;

    .line 24
    new-instance v2, Le/k/a/c/h;

    const-string v8, "READ_UNKNOWN_ENUM_VALUES_AS_NULL"

    move-object/from16 v27, v4

    const/16 v4, 0x17

    invoke-direct {v2, v8, v4, v6}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/h;->z:Le/k/a/c/h;

    .line 25
    new-instance v4, Le/k/a/c/h;

    const-string v8, "READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE"

    move-object/from16 v28, v2

    const/16 v2, 0x18

    invoke-direct {v4, v8, v2, v6}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Le/k/a/c/h;->A:Le/k/a/c/h;

    .line 26
    new-instance v2, Le/k/a/c/h;

    const-string v6, "READ_DATE_TIMESTAMPS_AS_NANOSECONDS"

    const/16 v8, 0x19

    move-object/from16 v29, v4

    const/4 v4, 0x1

    invoke-direct {v2, v6, v8, v4}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/h;->B:Le/k/a/c/h;

    .line 27
    new-instance v6, Le/k/a/c/h;

    const-string v8, "ADJUST_DATES_TO_CONTEXT_TIME_ZONE"

    move-object/from16 v16, v2

    const/16 v2, 0x1a

    invoke-direct {v6, v8, v2, v4}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Le/k/a/c/h;->C:Le/k/a/c/h;

    .line 28
    new-instance v2, Le/k/a/c/h;

    const-string v8, "EAGER_DESERIALIZER_FETCH"

    move-object/from16 v30, v6

    const/16 v6, 0x1b

    invoke-direct {v2, v8, v6, v4}, Le/k/a/c/h;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/h;->D:Le/k/a/c/h;

    const/16 v6, 0x1c

    new-array v6, v6, [Le/k/a/c/h;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v17, v6, v0

    const/16 v0, 0xd

    aput-object v18, v6, v0

    const/16 v0, 0xe

    aput-object v19, v6, v0

    const/16 v0, 0xf

    aput-object v20, v6, v0

    const/16 v0, 0x10

    aput-object v21, v6, v0

    const/16 v0, 0x11

    aput-object v22, v6, v0

    const/16 v0, 0x12

    aput-object v23, v6, v0

    const/16 v0, 0x13

    aput-object v24, v6, v0

    const/16 v0, 0x14

    aput-object v25, v6, v0

    const/16 v0, 0x15

    aput-object v26, v6, v0

    const/16 v0, 0x16

    aput-object v27, v6, v0

    const/16 v0, 0x17

    aput-object v28, v6, v0

    const/16 v0, 0x18

    aput-object v29, v6, v0

    const/16 v0, 0x19

    aput-object v16, v6, v0

    const/16 v0, 0x1a

    aput-object v30, v6, v0

    const/16 v0, 0x1b

    aput-object v2, v6, v0

    .line 29
    sput-object v6, Le/k/a/c/h;->E:[Le/k/a/c/h;

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
    iput-boolean p3, p0, Le/k/a/c/h;->a:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Le/k/a/c/h;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/k/a/c/h;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/k/a/c/h;

    return-object p0
.end method

.method public static values()[Le/k/a/c/h;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/h;->E:[Le/k/a/c/h;

    invoke-virtual {v0}, [Le/k/a/c/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/k/a/c/h;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/h;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/h;->a:Z

    return v0
.end method

.method public d(I)Z
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/h;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
