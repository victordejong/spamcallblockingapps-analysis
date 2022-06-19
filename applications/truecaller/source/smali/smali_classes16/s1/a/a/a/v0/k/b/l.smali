.class public final Ls1/a/a/a/v0/k/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/k/b/c0;

.field public final b:Ls1/a/a/a/v0/k/b/v;

.field public final c:Ls1/a/a/a/v0/k/b/j;

.field public final d:Ls1/a/a/a/v0/e/z/c;

.field public final e:Ls1/a/a/a/v0/b/k;

.field public final f:Ls1/a/a/a/v0/e/z/e;

.field public final g:Ls1/a/a/a/v0/e/z/g;

.field public final h:Ls1/a/a/a/v0/e/z/a;

.field public final i:Ls1/a/a/a/v0/k/b/g0/f;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/j;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/k/b/g0/f;Ls1/a/a/a/v0/k/b/c0;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/k/b/j;",
            "Ls1/a/a/a/v0/e/z/c;",
            "Ls1/a/a/a/v0/b/k;",
            "Ls1/a/a/a/v0/e/z/e;",
            "Ls1/a/a/a/v0/e/z/g;",
            "Ls1/a/a/a/v0/e/z/a;",
            "Ls1/a/a/a/v0/k/b/g0/f;",
            "Ls1/a/a/a/v0/k/b/c0;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/s;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    const-string v7, "components"

    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "nameResolver"

    invoke-static {p2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "containingDeclaration"

    invoke-static {p3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "typeTable"

    invoke-static {p4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "versionRequirementTable"

    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "metadataVersion"

    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "typeParameters"

    move-object/from16 v9, p9

    invoke-static {v9, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    iput-object v1, v8, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    iput-object v2, v8, Ls1/a/a/a/v0/k/b/l;->e:Ls1/a/a/a/v0/b/k;

    iput-object v3, v8, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    iput-object v4, v8, Ls1/a/a/a/v0/k/b/l;->g:Ls1/a/a/a/v0/e/z/g;

    iput-object v5, v8, Ls1/a/a/a/v0/k/b/l;->h:Ls1/a/a/a/v0/e/z/a;

    iput-object v6, v8, Ls1/a/a/a/v0/k/b/l;->i:Ls1/a/a/a/v0/k/b/g0/f;

    .line 2
    new-instance v10, Ls1/a/a/a/v0/k/b/c0;

    const-string v0, "Deserializer for \""

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p3}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_0

    .line 4
    invoke-interface/range {p7 .. p7}, Ls1/a/a/a/v0/k/b/g0/f;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[container not found]"

    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    .line 5
    invoke-direct/range {v0 .. v7}, Ls1/a/a/a/v0/k/b/c0;-><init>(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/k/b/c0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v10, v8, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    .line 6
    new-instance v0, Ls1/a/a/a/v0/k/b/v;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/k/b/v;-><init>(Ls1/a/a/a/v0/k/b/l;)V

    iput-object v0, v8, Ls1/a/a/a/v0/k/b/l;->b:Ls1/a/a/a/v0/k/b/v;

    return-void
.end method

.method public static synthetic b(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/b/k;Ljava/util/List;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;I)Ls1/a/a/a/v0/k/b/l;
    .locals 7

    and-int/lit8 p3, p7, 0x4

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object p3, p0, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    move-object v3, p3

    goto :goto_0

    :cond_0
    move-object v3, p4

    :goto_0
    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    .line 2
    iget-object p3, p0, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    move-object v4, p3

    goto :goto_1

    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    .line 3
    iget-object p3, p0, Ls1/a/a/a/v0/k/b/l;->g:Ls1/a/a/a/v0/e/z/g;

    move-object v5, p3

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    .line 4
    iget-object p4, p0, Ls1/a/a/a/v0/k/b/l;->h:Ls1/a/a/a/v0/e/z/a;

    :cond_3
    move-object v6, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Ls1/a/a/a/v0/k/b/l;->a(Ls1/a/a/a/v0/b/k;Ljava/util/List;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;)Ls1/a/a/a/v0/k/b/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/b/k;Ljava/util/List;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;)Ls1/a/a/a/v0/k/b/l;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/k;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/s;",
            ">;",
            "Ls1/a/a/a/v0/e/z/c;",
            "Ls1/a/a/a/v0/e/z/e;",
            "Ls1/a/a/a/v0/e/z/g;",
            "Ls1/a/a/a/v0/e/z/a;",
            ")",
            "Ls1/a/a/a/v0/k/b/l;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v7, p6

    const-string v1, "descriptor"

    move-object v4, p1

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeParameterProtos"

    move-object v10, p2

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeTable"

    move-object/from16 v5, p4

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "versionRequirementTable"

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v11, Ls1/a/a/a/v0/k/b/l;

    .line 2
    iget-object v6, v0, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    const-string v1, "version"

    .line 3
    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v1, v7, Ls1/a/a/a/v0/e/z/a;->a:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_0

    .line 6
    iget v1, v7, Ls1/a/a/a/v0/e/z/a;->b:I

    const/4 v9, 0x4

    if-lt v1, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_1

    move-object v8, v2

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/l;->g:Ls1/a/a/a/v0/e/z/g;

    move-object v8, v1

    .line 8
    :goto_1
    iget-object v9, v0, Ls1/a/a/a/v0/k/b/l;->i:Ls1/a/a/a/v0/k/b/g0/f;

    .line 9
    iget-object v12, v0, Ls1/a/a/a/v0/k/b/l;->a:Ls1/a/a/a/v0/k/b/c0;

    move-object v1, v11

    move-object v2, v6

    move-object/from16 v3, p3

    move-object v4, p1

    move-object/from16 v5, p4

    move-object v6, v8

    move-object/from16 v7, p6

    move-object v8, v9

    move-object v9, v12

    move-object v10, p2

    .line 10
    invoke-direct/range {v1 .. v10}, Ls1/a/a/a/v0/k/b/l;-><init>(Ls1/a/a/a/v0/k/b/j;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/g;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/k/b/g0/f;Ls1/a/a/a/v0/k/b/c0;Ljava/util/List;)V

    return-object v11
.end method
