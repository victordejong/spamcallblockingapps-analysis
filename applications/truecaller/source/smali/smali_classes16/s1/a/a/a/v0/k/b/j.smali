.class public final Ls1/a/a/a/v0/k/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/k/b/h;

.field public final b:Ls1/a/a/a/v0/l/m;

.field public final c:Ls1/a/a/a/v0/b/a0;

.field public final d:Ls1/a/a/a/v0/k/b/k;

.field public final e:Ls1/a/a/a/v0/k/b/g;

.field public final f:Ls1/a/a/a/v0/k/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/k/b/c<",
            "Ls1/a/a/a/v0/b/f1/c;",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final g:Ls1/a/a/a/v0/b/d0;

.field public final h:Ls1/a/a/a/v0/k/b/t;

.field public final i:Ls1/a/a/a/v0/k/b/p;

.field public final j:Ls1/a/a/a/v0/c/a/c;

.field public final k:Ls1/a/a/a/v0/k/b/q;

.field public final l:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ls1/a/a/a/v0/b/g1/b;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ls1/a/a/a/v0/b/b0;

.field public final n:Ls1/a/a/a/v0/k/b/i;

.field public final o:Ls1/a/a/a/v0/b/g1/a;

.field public final p:Ls1/a/a/a/v0/b/g1/c;

.field public final q:Ls1/a/a/a/v0/h/f;

.field public final r:Ls1/a/a/a/v0/m/l1/k;

.field public final s:Ls1/a/a/a/v0/j/x/a;

.field public final t:Ls1/a/a/a/v0/b/g1/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/k/b/k;Ls1/a/a/a/v0/k/b/g;Ls1/a/a/a/v0/k/b/c;Ls1/a/a/a/v0/b/d0;Ls1/a/a/a/v0/k/b/t;Ls1/a/a/a/v0/k/b/p;Ls1/a/a/a/v0/c/a/c;Ls1/a/a/a/v0/k/b/q;Ljava/lang/Iterable;Ls1/a/a/a/v0/b/b0;Ls1/a/a/a/v0/k/b/i;Ls1/a/a/a/v0/b/g1/a;Ls1/a/a/a/v0/b/g1/c;Ls1/a/a/a/v0/h/f;Ls1/a/a/a/v0/m/l1/k;Ls1/a/a/a/v0/j/x/a;Ls1/a/a/a/v0/b/g1/e;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p16

    move-object/from16 v15, p18

    move/from16 v0, p20

    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_0

    .line 1
    sget-object v15, Ls1/a/a/a/v0/b/g1/a$a;->a:Ls1/a/a/a/v0/b/g1/a$a;

    goto :goto_0

    :cond_0
    move-object/from16 v15, p14

    :goto_0
    and-int/lit16 v14, v0, 0x4000

    if-eqz v14, :cond_1

    .line 2
    sget-object v14, Ls1/a/a/a/v0/b/g1/c$a;->a:Ls1/a/a/a/v0/b/g1/c$a;

    goto :goto_1

    :cond_1
    move-object/from16 v14, p15

    :goto_1
    const/high16 v16, 0x10000

    and-int v16, v0, v16

    if-eqz v16, :cond_2

    .line 3
    sget-object v16, Ls1/a/a/a/v0/m/l1/k;->b:Ls1/a/a/a/v0/m/l1/k$a;

    .line 4
    invoke-static/range {v16 .. v16}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v16, Ls1/a/a/a/v0/m/l1/k$a;->a:Ls1/a/a/a/v0/m/l1/l;

    move-object/from16 v17, v16

    goto :goto_2

    :cond_2
    move-object/from16 v17, p17

    :goto_2
    const/high16 v16, 0x40000

    and-int v0, v0, v16

    if-eqz v0, :cond_3

    .line 6
    sget-object v0, Ls1/a/a/a/v0/b/g1/e$a;->a:Ls1/a/a/a/v0/b/g1/e$a;

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    move-object/from16 v16, v0

    const-string v0, "storageManager"

    .line 7
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleDescriptor"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDataFinder"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationAndConstantLoader"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragmentProvider"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localClassifierTypeSettings"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flexibleTypeDeserializer"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fictitiousClassDescriptorFactories"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contractDeserializer"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalClassPartsProvider"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensionRegistryLite"

    move-object/from16 p14, v14

    move-object/from16 v14, p16

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v14, v17

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    move-object/from16 v14, p18

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentTypeTransformer"

    move-object/from16 v14, v16

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Ls1/a/a/a/v0/k/b/j;->b:Ls1/a/a/a/v0/l/m;

    iput-object v2, v0, Ls1/a/a/a/v0/k/b/j;->c:Ls1/a/a/a/v0/b/a0;

    iput-object v3, v0, Ls1/a/a/a/v0/k/b/j;->d:Ls1/a/a/a/v0/k/b/k;

    iput-object v4, v0, Ls1/a/a/a/v0/k/b/j;->e:Ls1/a/a/a/v0/k/b/g;

    iput-object v5, v0, Ls1/a/a/a/v0/k/b/j;->f:Ls1/a/a/a/v0/k/b/c;

    iput-object v6, v0, Ls1/a/a/a/v0/k/b/j;->g:Ls1/a/a/a/v0/b/d0;

    iput-object v7, v0, Ls1/a/a/a/v0/k/b/j;->h:Ls1/a/a/a/v0/k/b/t;

    iput-object v8, v0, Ls1/a/a/a/v0/k/b/j;->i:Ls1/a/a/a/v0/k/b/p;

    iput-object v9, v0, Ls1/a/a/a/v0/k/b/j;->j:Ls1/a/a/a/v0/c/a/c;

    iput-object v10, v0, Ls1/a/a/a/v0/k/b/j;->k:Ls1/a/a/a/v0/k/b/q;

    iput-object v11, v0, Ls1/a/a/a/v0/k/b/j;->l:Ljava/lang/Iterable;

    iput-object v12, v0, Ls1/a/a/a/v0/k/b/j;->m:Ls1/a/a/a/v0/b/b0;

    iput-object v13, v0, Ls1/a/a/a/v0/k/b/j;->n:Ls1/a/a/a/v0/k/b/i;

    iput-object v15, v0, Ls1/a/a/a/v0/k/b/j;->o:Ls1/a/a/a/v0/b/g1/a;

    move-object/from16 v1, p14

    iput-object v1, v0, Ls1/a/a/a/v0/k/b/j;->p:Ls1/a/a/a/v0/b/g1/c;

    move-object/from16 v1, p16

    move-object/from16 v2, v17

    iput-object v1, v0, Ls1/a/a/a/v0/k/b/j;->q:Ls1/a/a/a/v0/h/f;

    iput-object v2, v0, Ls1/a/a/a/v0/k/b/j;->r:Ls1/a/a/a/v0/m/l1/k;

    move-object/from16 v1, p18

    move-object v2, v14

    iput-object v1, v0, Ls1/a/a/a/v0/k/b/j;->s:Ls1/a/a/a/v0/j/x/a;

    iput-object v2, v0, Ls1/a/a/a/v0/k/b/j;->t:Ls1/a/a/a/v0/b/g1/e;

    .line 9
    new-instance v1, Ls1/a/a/a/v0/k/b/h;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/k/b/h;-><init>(Ls1/a/a/a/v0/k/b/j;)V

    iput-object v1, v0, Ls1/a/a/a/v0/k/b/j;->a:Ls1/a/a/a/v0/k/b/h;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/b/c0;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/k/b/g0/f;)Ls1/a/a/a/v0/k/b/l;
    .locals 11

    const-string v0, "descriptor"

    move-object v4, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    move-object v3, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    move-object v5, p3

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    move-object v6, p4

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/k/b/l;

    .line 2
    sget-object v10, Ls1/u/s;->a:Ls1/u/s;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v8, p6

    .line 3
    invoke-direct/range {v1 .. v10}, Ls1/a/a/a/v0/k/b/l;-><init>(Ls1/a/a/a/v0/k/b/j;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/k/b/g0/f;Ls1/a/a/a/v0/k/b/c0;Ljava/util/List;)V

    return-object v0
.end method

.method public final b(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;
    .locals 3

    const-string v0, "classId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/j;->a:Ls1/a/a/a/v0/k/b/h;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Ls1/a/a/a/v0/k/b/h;->a(Ls1/a/a/a/v0/k/b/h;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/k/b/f;I)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    return-object p1
.end method
