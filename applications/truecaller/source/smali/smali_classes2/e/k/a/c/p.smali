.class public final enum Le/k/a/c/p;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/c0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/k/a/c/p;",
        ">;",
        "Le/k/a/c/c0/e;"
    }
.end annotation


# static fields
.field public static final enum A:Le/k/a/c/p;

.field public static final enum B:Le/k/a/c/p;

.field public static final enum C:Le/k/a/c/p;

.field public static final enum D:Le/k/a/c/p;

.field public static final enum E:Le/k/a/c/p;

.field public static final enum J:Le/k/a/c/p;

.field public static final enum K:Le/k/a/c/p;

.field public static final synthetic L:[Le/k/a/c/p;

.field public static final enum c:Le/k/a/c/p;

.field public static final enum d:Le/k/a/c/p;

.field public static final enum e:Le/k/a/c/p;

.field public static final enum f:Le/k/a/c/p;

.field public static final enum g:Le/k/a/c/p;

.field public static final enum h:Le/k/a/c/p;

.field public static final enum i:Le/k/a/c/p;

.field public static final enum j:Le/k/a/c/p;

.field public static final enum k:Le/k/a/c/p;

.field public static final enum l:Le/k/a/c/p;

.field public static final enum m:Le/k/a/c/p;

.field public static final enum n:Le/k/a/c/p;

.field public static final enum o:Le/k/a/c/p;

.field public static final enum p:Le/k/a/c/p;

.field public static final enum q:Le/k/a/c/p;

.field public static final enum r:Le/k/a/c/p;

.field public static final enum s:Le/k/a/c/p;

.field public static final enum t:Le/k/a/c/p;

.field public static final enum u:Le/k/a/c/p;

.field public static final enum v:Le/k/a/c/p;

.field public static final enum w:Le/k/a/c/p;

.field public static final enum x:Le/k/a/c/p;

.field public static final enum y:Le/k/a/c/p;

.field public static final enum z:Le/k/a/c/p;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 34

    .line 1
    new-instance v0, Le/k/a/c/p;

    const-string v1, "USE_ANNOTATIONS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Le/k/a/c/p;->c:Le/k/a/c/p;

    .line 2
    new-instance v1, Le/k/a/c/p;

    const-string v4, "USE_GETTERS_AS_SETTERS"

    invoke-direct {v1, v4, v3, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Le/k/a/c/p;->d:Le/k/a/c/p;

    .line 3
    new-instance v4, Le/k/a/c/p;

    const-string v5, "PROPAGATE_TRANSIENT_MARKER"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Le/k/a/c/p;->e:Le/k/a/c/p;

    .line 4
    new-instance v5, Le/k/a/c/p;

    const-string v7, "AUTO_DETECT_CREATORS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Le/k/a/c/p;->f:Le/k/a/c/p;

    .line 5
    new-instance v7, Le/k/a/c/p;

    const-string v9, "AUTO_DETECT_FIELDS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Le/k/a/c/p;->g:Le/k/a/c/p;

    .line 6
    new-instance v9, Le/k/a/c/p;

    const-string v11, "AUTO_DETECT_GETTERS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Le/k/a/c/p;->h:Le/k/a/c/p;

    .line 7
    new-instance v11, Le/k/a/c/p;

    const-string v13, "AUTO_DETECT_IS_GETTERS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Le/k/a/c/p;->i:Le/k/a/c/p;

    .line 8
    new-instance v13, Le/k/a/c/p;

    const-string v15, "AUTO_DETECT_SETTERS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Le/k/a/c/p;->j:Le/k/a/c/p;

    .line 9
    new-instance v15, Le/k/a/c/p;

    const-string v14, "REQUIRE_SETTERS_FOR_GETTERS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v2}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Le/k/a/c/p;->k:Le/k/a/c/p;

    .line 10
    new-instance v14, Le/k/a/c/p;

    const-string v12, "ALLOW_FINAL_FIELDS_AS_MUTATORS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Le/k/a/c/p;->l:Le/k/a/c/p;

    .line 11
    new-instance v12, Le/k/a/c/p;

    const-string v10, "INFER_PROPERTY_MUTATORS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Le/k/a/c/p;->m:Le/k/a/c/p;

    .line 12
    new-instance v10, Le/k/a/c/p;

    const-string v8, "INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Le/k/a/c/p;->n:Le/k/a/c/p;

    .line 13
    new-instance v8, Le/k/a/c/p;

    const-string v6, "ALLOW_VOID_VALUED_PROPERTIES"

    const/16 v3, 0xc

    invoke-direct {v8, v6, v3, v2}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Le/k/a/c/p;->o:Le/k/a/c/p;

    .line 14
    new-instance v6, Le/k/a/c/p;

    const-string v3, "CAN_OVERRIDE_ACCESS_MODIFIERS"

    const/16 v2, 0xd

    move-object/from16 v17, v8

    const/4 v8, 0x1

    invoke-direct {v6, v3, v2, v8}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Le/k/a/c/p;->p:Le/k/a/c/p;

    .line 15
    new-instance v3, Le/k/a/c/p;

    const-string v2, "OVERRIDE_PUBLIC_ACCESS_MODIFIERS"

    move-object/from16 v18, v6

    const/16 v6, 0xe

    invoke-direct {v3, v2, v6, v8}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Le/k/a/c/p;->q:Le/k/a/c/p;

    .line 16
    new-instance v2, Le/k/a/c/p;

    const-string v8, "USE_STATIC_TYPING"

    const/16 v6, 0xf

    move-object/from16 v19, v3

    const/4 v3, 0x0

    invoke-direct {v2, v8, v6, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/p;->r:Le/k/a/c/p;

    .line 17
    new-instance v8, Le/k/a/c/p;

    const-string v6, "USE_BASE_TYPE_AS_DEFAULT_IMPL"

    move-object/from16 v20, v2

    const/16 v2, 0x10

    invoke-direct {v8, v6, v2, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Le/k/a/c/p;->s:Le/k/a/c/p;

    .line 18
    new-instance v3, Le/k/a/c/p;

    const-string v6, "INFER_BUILDER_TYPE_BINDINGS"

    const/16 v2, 0x11

    move-object/from16 v21, v8

    const/4 v8, 0x1

    invoke-direct {v3, v6, v2, v8}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Le/k/a/c/p;->t:Le/k/a/c/p;

    .line 19
    new-instance v6, Le/k/a/c/p;

    const-string v2, "DEFAULT_VIEW_INCLUSION"

    move-object/from16 v22, v3

    const/16 v3, 0x12

    invoke-direct {v6, v2, v3, v8}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Le/k/a/c/p;->u:Le/k/a/c/p;

    .line 20
    new-instance v2, Le/k/a/c/p;

    const-string v3, "SORT_PROPERTIES_ALPHABETICALLY"

    const/16 v8, 0x13

    move-object/from16 v23, v6

    const/4 v6, 0x0

    invoke-direct {v2, v3, v8, v6}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/p;->v:Le/k/a/c/p;

    .line 21
    new-instance v3, Le/k/a/c/p;

    const-string v8, "SORT_CREATOR_PROPERTIES_FIRST"

    const/16 v6, 0x14

    move-object/from16 v24, v2

    const/4 v2, 0x1

    invoke-direct {v3, v8, v6, v2}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Le/k/a/c/p;->w:Le/k/a/c/p;

    .line 22
    new-instance v2, Le/k/a/c/p;

    const-string v8, "ACCEPT_CASE_INSENSITIVE_PROPERTIES"

    const/16 v6, 0x15

    move-object/from16 v25, v3

    const/4 v3, 0x0

    invoke-direct {v2, v8, v6, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/p;->x:Le/k/a/c/p;

    .line 23
    new-instance v8, Le/k/a/c/p;

    const-string v6, "ACCEPT_CASE_INSENSITIVE_ENUMS"

    move-object/from16 v26, v2

    const/16 v2, 0x16

    invoke-direct {v8, v6, v2, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Le/k/a/c/p;->y:Le/k/a/c/p;

    .line 24
    new-instance v2, Le/k/a/c/p;

    const-string v6, "ACCEPT_CASE_INSENSITIVE_VALUES"

    move-object/from16 v27, v8

    const/16 v8, 0x17

    invoke-direct {v2, v6, v8, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/p;->z:Le/k/a/c/p;

    .line 25
    new-instance v6, Le/k/a/c/p;

    const-string v8, "USE_WRAPPER_NAME_AS_PROPERTY_NAME"

    move-object/from16 v28, v2

    const/16 v2, 0x18

    invoke-direct {v6, v8, v2, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Le/k/a/c/p;->A:Le/k/a/c/p;

    .line 26
    new-instance v2, Le/k/a/c/p;

    const-string v8, "USE_STD_BEAN_NAMING"

    move-object/from16 v29, v6

    const/16 v6, 0x19

    invoke-direct {v2, v8, v6, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/p;->B:Le/k/a/c/p;

    .line 27
    new-instance v6, Le/k/a/c/p;

    const-string v8, "ALLOW_EXPLICIT_PROPERTY_RENAMING"

    move-object/from16 v30, v2

    const/16 v2, 0x1a

    invoke-direct {v6, v8, v2, v3}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Le/k/a/c/p;->C:Le/k/a/c/p;

    .line 28
    new-instance v2, Le/k/a/c/p;

    const-string v3, "ALLOW_COERCION_OF_SCALARS"

    const/16 v8, 0x1b

    move-object/from16 v31, v6

    const/4 v6, 0x1

    invoke-direct {v2, v3, v8, v6}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/p;->D:Le/k/a/c/p;

    .line 29
    new-instance v3, Le/k/a/c/p;

    const-string v8, "IGNORE_DUPLICATE_MODULE_REGISTRATIONS"

    move-object/from16 v16, v2

    const/16 v2, 0x1c

    invoke-direct {v3, v8, v2, v6}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Le/k/a/c/p;->E:Le/k/a/c/p;

    .line 30
    new-instance v2, Le/k/a/c/p;

    const-string v8, "IGNORE_MERGE_FOR_UNMERGEABLE"

    move-object/from16 v32, v3

    const/16 v3, 0x1d

    invoke-direct {v2, v8, v3, v6}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Le/k/a/c/p;->J:Le/k/a/c/p;

    .line 31
    new-instance v3, Le/k/a/c/p;

    const-string v8, "BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES"

    const/16 v6, 0x1e

    move-object/from16 v33, v2

    const/4 v2, 0x0

    invoke-direct {v3, v8, v6, v2}, Le/k/a/c/p;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Le/k/a/c/p;->K:Le/k/a/c/p;

    const/16 v6, 0x1f

    new-array v6, v6, [Le/k/a/c/p;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

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

    aput-object v30, v6, v0

    const/16 v0, 0x1a

    aput-object v31, v6, v0

    const/16 v0, 0x1b

    aput-object v16, v6, v0

    const/16 v0, 0x1c

    aput-object v32, v6, v0

    const/16 v0, 0x1d

    aput-object v33, v6, v0

    const/16 v0, 0x1e

    aput-object v3, v6, v0

    .line 32
    sput-object v6, Le/k/a/c/p;->L:[Le/k/a/c/p;

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
    iput-boolean p3, p0, Le/k/a/c/p;->a:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Le/k/a/c/p;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/k/a/c/p;
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/k/a/c/p;

    return-object p0
.end method

.method public static values()[Le/k/a/c/p;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/p;->L:[Le/k/a/c/p;

    invoke-virtual {v0}, [Le/k/a/c/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/k/a/c/p;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/p;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/p;->a:Z

    return v0
.end method
