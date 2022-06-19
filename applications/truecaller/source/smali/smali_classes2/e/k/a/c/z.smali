.class public final enum Le/k/a/c/z;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/c0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/k/a/c/z;",
        ">;",
        "Le/k/a/c/c0/e;"
    }
.end annotation


# static fields
.field public static final enum A:Le/k/a/c/z;

.field public static final synthetic B:[Le/k/a/c/z;

.field public static final enum c:Le/k/a/c/z;

.field public static final enum d:Le/k/a/c/z;

.field public static final enum e:Le/k/a/c/z;

.field public static final enum f:Le/k/a/c/z;

.field public static final enum g:Le/k/a/c/z;

.field public static final enum h:Le/k/a/c/z;

.field public static final enum i:Le/k/a/c/z;

.field public static final enum j:Le/k/a/c/z;

.field public static final enum k:Le/k/a/c/z;

.field public static final enum l:Le/k/a/c/z;

.field public static final enum m:Le/k/a/c/z;

.field public static final enum n:Le/k/a/c/z;

.field public static final enum o:Le/k/a/c/z;

.field public static final enum p:Le/k/a/c/z;

.field public static final enum q:Le/k/a/c/z;

.field public static final enum r:Le/k/a/c/z;

.field public static final enum s:Le/k/a/c/z;

.field public static final enum t:Le/k/a/c/z;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum u:Le/k/a/c/z;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum v:Le/k/a/c/z;

.field public static final enum w:Le/k/a/c/z;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum x:Le/k/a/c/z;

.field public static final enum y:Le/k/a/c/z;

.field public static final enum z:Le/k/a/c/z;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 28

    .line 1
    new-instance v0, Le/k/a/c/z;

    const-string v1, "WRAP_ROOT_VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/k/a/c/z;->c:Le/k/a/c/z;

    .line 2
    new-instance v1, Le/k/a/c/z;

    const-string v3, "INDENT_OUTPUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Le/k/a/c/z;->d:Le/k/a/c/z;

    .line 3
    new-instance v3, Le/k/a/c/z;

    const-string v5, "FAIL_ON_EMPTY_BEANS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Le/k/a/c/z;->e:Le/k/a/c/z;

    .line 4
    new-instance v5, Le/k/a/c/z;

    const-string v7, "FAIL_ON_SELF_REFERENCES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Le/k/a/c/z;->f:Le/k/a/c/z;

    .line 5
    new-instance v7, Le/k/a/c/z;

    const-string v9, "WRAP_EXCEPTIONS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Le/k/a/c/z;->g:Le/k/a/c/z;

    .line 6
    new-instance v9, Le/k/a/c/z;

    const-string v11, "FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v4}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Le/k/a/c/z;->h:Le/k/a/c/z;

    .line 7
    new-instance v11, Le/k/a/c/z;

    const-string v13, "WRITE_SELF_REFERENCES_AS_NULL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v2}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Le/k/a/c/z;->i:Le/k/a/c/z;

    .line 8
    new-instance v13, Le/k/a/c/z;

    const-string v15, "CLOSE_CLOSEABLE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v2}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Le/k/a/c/z;->j:Le/k/a/c/z;

    .line 9
    new-instance v15, Le/k/a/c/z;

    const-string v14, "FLUSH_AFTER_WRITE_VALUE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v4}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Le/k/a/c/z;->k:Le/k/a/c/z;

    .line 10
    new-instance v14, Le/k/a/c/z;

    const-string v12, "WRITE_DATES_AS_TIMESTAMPS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v4}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Le/k/a/c/z;->l:Le/k/a/c/z;

    .line 11
    new-instance v12, Le/k/a/c/z;

    const-string v10, "WRITE_DATE_KEYS_AS_TIMESTAMPS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v2}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Le/k/a/c/z;->m:Le/k/a/c/z;

    .line 12
    new-instance v10, Le/k/a/c/z;

    const-string v8, "WRITE_DATES_WITH_ZONE_ID"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v2}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Le/k/a/c/z;->n:Le/k/a/c/z;

    .line 13
    new-instance v8, Le/k/a/c/z;

    const-string v6, "WRITE_DURATIONS_AS_TIMESTAMPS"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Le/k/a/c/z;->o:Le/k/a/c/z;

    .line 14
    new-instance v6, Le/k/a/c/z;

    const-string v2, "WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS"

    const/16 v4, 0xd

    move-object/from16 v16, v8

    const/4 v8, 0x0

    invoke-direct {v6, v2, v4, v8}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Le/k/a/c/z;->p:Le/k/a/c/z;

    .line 15
    new-instance v2, Le/k/a/c/z;

    const-string v4, "WRITE_ENUMS_USING_TO_STRING"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v2, v4, v6, v8}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/z;->q:Le/k/a/c/z;

    .line 16
    new-instance v4, Le/k/a/c/z;

    const-string v6, "WRITE_ENUMS_USING_INDEX"

    move-object/from16 v18, v2

    const/16 v2, 0xf

    invoke-direct {v4, v6, v2, v8}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Le/k/a/c/z;->r:Le/k/a/c/z;

    .line 17
    new-instance v6, Le/k/a/c/z;

    const-string v2, "WRITE_ENUM_KEYS_USING_INDEX"

    move-object/from16 v19, v4

    const/16 v4, 0x10

    invoke-direct {v6, v2, v4, v8}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Le/k/a/c/z;->s:Le/k/a/c/z;

    .line 18
    new-instance v2, Le/k/a/c/z;

    const-string v8, "WRITE_NULL_MAP_VALUES"

    const/16 v4, 0x11

    move-object/from16 v20, v6

    const/4 v6, 0x1

    invoke-direct {v2, v8, v4, v6}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/z;->t:Le/k/a/c/z;

    .line 19
    new-instance v8, Le/k/a/c/z;

    const-string v4, "WRITE_EMPTY_JSON_ARRAYS"

    move-object/from16 v21, v2

    const/16 v2, 0x12

    invoke-direct {v8, v4, v2, v6}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Le/k/a/c/z;->u:Le/k/a/c/z;

    .line 20
    new-instance v4, Le/k/a/c/z;

    const-string v6, "WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED"

    const/16 v2, 0x13

    move-object/from16 v22, v8

    const/4 v8, 0x0

    invoke-direct {v4, v6, v2, v8}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Le/k/a/c/z;->v:Le/k/a/c/z;

    .line 21
    new-instance v6, Le/k/a/c/z;

    const-string v2, "WRITE_BIGDECIMAL_AS_PLAIN"

    move-object/from16 v23, v4

    const/16 v4, 0x14

    invoke-direct {v6, v2, v4, v8}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Le/k/a/c/z;->w:Le/k/a/c/z;

    .line 22
    new-instance v2, Le/k/a/c/z;

    const-string v4, "WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS"

    const/16 v8, 0x15

    move-object/from16 v24, v6

    const/4 v6, 0x1

    invoke-direct {v2, v4, v8, v6}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/z;->x:Le/k/a/c/z;

    .line 23
    new-instance v4, Le/k/a/c/z;

    const-string v8, "ORDER_MAP_ENTRIES_BY_KEYS"

    const/16 v6, 0x16

    move-object/from16 v25, v2

    const/4 v2, 0x0

    invoke-direct {v4, v8, v6, v2}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Le/k/a/c/z;->y:Le/k/a/c/z;

    .line 24
    new-instance v6, Le/k/a/c/z;

    const-string v8, "EAGER_SERIALIZER_FETCH"

    const/16 v2, 0x17

    move-object/from16 v26, v4

    const/4 v4, 0x1

    invoke-direct {v6, v8, v2, v4}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Le/k/a/c/z;->z:Le/k/a/c/z;

    .line 25
    new-instance v2, Le/k/a/c/z;

    const-string v8, "USE_EQUALITY_FOR_OBJECT_ID"

    const/16 v4, 0x18

    move-object/from16 v27, v6

    const/4 v6, 0x0

    invoke-direct {v2, v8, v4, v6}, Le/k/a/c/z;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/z;->A:Le/k/a/c/z;

    const/16 v4, 0x19

    new-array v4, v4, [Le/k/a/c/z;

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v2, v4, v0

    .line 26
    sput-object v4, Le/k/a/c/z;->B:[Le/k/a/c/z;

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
    iput-boolean p3, p0, Le/k/a/c/z;->a:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Le/k/a/c/z;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/k/a/c/z;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/k/a/c/z;

    return-object p0
.end method

.method public static values()[Le/k/a/c/z;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/z;->B:[Le/k/a/c/z;

    invoke-virtual {v0}, [Le/k/a/c/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/k/a/c/z;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/z;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/z;->a:Z

    return v0
.end method
