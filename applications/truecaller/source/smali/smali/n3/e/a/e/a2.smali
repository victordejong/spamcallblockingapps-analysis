.class public final Ln3/e/a/e/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/a2$a;,
        Ln3/e/a/e/a2$b;
    }
.end annotation


# static fields
.field public static final n:Landroid/util/Size;

.field public static final o:Landroid/util/Size;

.field public static final p:Landroid/util/Size;

.field public static final q:Landroid/util/Size;

.field public static final r:Landroid/util/Size;

.field public static final s:Landroid/util/Size;

.field public static final t:Landroid/util/Size;

.field public static final u:Landroid/util/Rational;

.field public static final v:Landroid/util/Rational;

.field public static final w:Landroid/util/Rational;

.field public static final x:Landroid/util/Rational;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/e/b/j1/l1;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Ln3/e/a/e/x0;

.field public final e:Ln3/e/a/e/k2/e;

.field public final f:Ln3/e/a/e/k2/q/c;

.field public final g:I

.field public final h:Z

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public l:Ln3/e/b/j1/n1;

.field public m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Ln3/e/a/e/a2;->n:Landroid/util/Size;

    .line 2
    new-instance v0, Landroid/util/Size;

    const/16 v3, 0x280

    const/16 v4, 0x1e0

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Ln3/e/a/e/a2;->o:Landroid/util/Size;

    .line 3
    new-instance v0, Landroid/util/Size;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Ln3/e/a/e/a2;->p:Landroid/util/Size;

    .line 4
    new-instance v0, Landroid/util/Size;

    const/16 v3, 0xf00

    const/16 v5, 0x870

    invoke-direct {v0, v3, v5}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Ln3/e/a/e/a2;->q:Landroid/util/Size;

    .line 5
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Ln3/e/a/e/a2;->r:Landroid/util/Size;

    .line 6
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Ln3/e/a/e/a2;->s:Landroid/util/Size;

    .line 7
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v2, v4}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Ln3/e/a/e/a2;->t:Landroid/util/Size;

    .line 8
    new-instance v0, Landroid/util/Rational;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Ln3/e/a/e/a2;->u:Landroid/util/Rational;

    .line 9
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v2, v1}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Ln3/e/a/e/a2;->v:Landroid/util/Rational;

    .line 10
    new-instance v0, Landroid/util/Rational;

    const/16 v1, 0x10

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Ln3/e/a/e/a2;->w:Landroid/util/Rational;

    .line 11
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v2, v1}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Ln3/e/a/e/a2;->x:Landroid/util/Rational;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ln3/e/a/e/k2/k;Ln3/e/a/e/x0;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/e/b/n0;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ln3/e/a/e/a2;->a:Ljava/util/List;

    .line 3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Ln3/e/a/e/a2;->b:Ljava/util/Map;

    .line 4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Ln3/e/a/e/a2;->i:Ljava/util/Map;

    const/4 v3, 0x0

    .line 5
    iput-boolean v3, v1, Ln3/e/a/e/a2;->j:Z

    .line 6
    iput-boolean v3, v1, Ln3/e/a/e/a2;->k:Z

    .line 7
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Ln3/e/a/e/a2;->m:Ljava/util/Map;

    .line 8
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iput-object v0, v1, Ln3/e/a/e/a2;->c:Ljava/lang/String;

    .line 10
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, p4

    .line 11
    iput-object v4, v1, Ln3/e/a/e/a2;->d:Ln3/e/a/e/x0;

    const-string v4, "window"

    move-object/from16 v5, p1

    .line 12
    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 13
    new-instance v5, Ln3/e/a/e/k2/q/c;

    invoke-direct {v5, v0}, Ln3/e/a/e/k2/q/c;-><init>(Ljava/lang/String;)V

    iput-object v5, v1, Ln3/e/a/e/a2;->f:Ln3/e/a/e/k2/q/c;

    move-object/from16 v5, p3

    .line 14
    :try_start_0
    invoke-virtual {v5, v0}, Ln3/e/a/e/k2/k;->b(Ljava/lang/String;)Ln3/e/a/e/k2/e;

    move-result-object v0

    iput-object v0, v1, Ln3/e/a/e/a2;->e:Ln3/e/a/e/k2/e;

    .line 15
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v5}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 16
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    .line 17
    :goto_0
    iput v5, v1, Ln3/e/a/e/a2;->g:I

    .line 18
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 19
    invoke-virtual {v0, v6}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    if-eqz v6, :cond_1

    .line 20
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-lt v7, v6, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 21
    :cond_2
    iput-boolean v3, v1, Ln3/e/a/e/a2;->h:Z
    :try_end_0
    .catch Ln3/e/a/e/k2/a; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    sget-object v3, Ln3/e/b/j1/m1$b;->d:Ln3/e/b/j1/m1$b;

    sget-object v6, Ln3/e/b/j1/m1$a;->b:Ln3/e/b/j1/m1$a;

    sget-object v7, Ln3/e/b/j1/m1$b;->c:Ln3/e/b/j1/m1$b;

    sget-object v8, Ln3/e/b/j1/m1$a;->c:Ln3/e/b/j1/m1$a;

    sget-object v9, Ln3/e/b/j1/m1$b;->b:Ln3/e/b/j1/m1$b;

    sget-object v10, Ln3/e/b/j1/m1$a;->e:Ln3/e/b/j1/m1$a;

    sget-object v11, Ln3/e/b/j1/m1$b;->a:Ln3/e/b/j1/m1$b;

    .line 23
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v13, Ln3/e/b/j1/l1;

    invoke-direct {v13}, Ln3/e/b/j1/l1;-><init>()V

    .line 25
    new-instance v14, Ln3/e/b/j1/o;

    invoke-direct {v14, v11, v10}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 26
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v14, v12, v13}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v13

    .line 27
    new-instance v14, Ln3/e/b/j1/o;

    invoke-direct {v14, v7, v10}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 28
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v14, v12, v13}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v13

    .line 29
    new-instance v14, Ln3/e/b/j1/o;

    invoke-direct {v14, v9, v10}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 30
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v14, v12, v13}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v13

    .line 31
    new-instance v14, Ln3/e/b/j1/o;

    invoke-direct {v14, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 32
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v14, v7, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v14

    .line 33
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v14, v12, v13}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v13

    .line 34
    new-instance v14, Ln3/e/b/j1/o;

    invoke-direct {v14, v9, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 35
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v14, v7, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v14

    .line 36
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v14, v12, v13}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v13

    .line 37
    new-instance v14, Ln3/e/b/j1/o;

    invoke-direct {v14, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 38
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v14, v11, v8}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v14

    .line 39
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v14, v12, v13}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v13

    .line 40
    new-instance v14, Ln3/e/b/j1/o;

    invoke-direct {v14, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 41
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v14, v9, v8}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v14

    .line 42
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v14, v12, v13}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v13

    .line 43
    new-instance v14, Ln3/e/b/j1/o;

    invoke-direct {v14, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 44
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v14, v9, v8}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v14

    .line 45
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v14, v7, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v14

    .line 46
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v12, 0x3

    if-eqz v5, :cond_4

    const/4 v13, 0x1

    if-eq v5, v13, :cond_4

    if-ne v5, v12, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 p1, v4

    goto/16 :goto_2

    .line 49
    :cond_4
    :goto_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v13, Ln3/e/b/j1/l1;

    invoke-direct {v13}, Ln3/e/b/j1/l1;-><init>()V

    .line 51
    new-instance v14, Ln3/e/b/j1/o;

    invoke-direct {v14, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 52
    iget-object v15, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v14, Ln3/e/b/j1/m1$a;->d:Ln3/e/b/j1/m1$a;

    .line 54
    new-instance v15, Ln3/e/b/j1/o;

    invoke-direct {v15, v11, v14}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    move-object/from16 p1, v4

    .line 55
    iget-object v4, v13, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v4, v15, v12, v13}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v4

    .line 56
    new-instance v13, Ln3/e/b/j1/o;

    invoke-direct {v13, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 57
    iget-object v15, v4, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v13, v9, v14}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v13

    .line 58
    iget-object v15, v4, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v13, v12, v4}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v4

    .line 59
    new-instance v13, Ln3/e/b/j1/o;

    invoke-direct {v13, v9, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 60
    iget-object v15, v4, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v13, v9, v14}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v13

    .line 61
    iget-object v15, v4, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v13, v12, v4}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v4

    .line 62
    new-instance v13, Ln3/e/b/j1/o;

    invoke-direct {v13, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 63
    iget-object v15, v4, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v13, v11, v14}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v13

    .line 64
    iget-object v15, v4, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v13, v7, v14}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v13

    .line 65
    iget-object v15, v4, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v13, v12, v4}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v4

    .line 66
    new-instance v13, Ln3/e/b/j1/o;

    invoke-direct {v13, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 67
    iget-object v15, v4, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v13, v9, v14}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v13

    .line 68
    iget-object v15, v4, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v15, v13, v7, v14}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v13

    .line 69
    iget-object v14, v4, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v14, v13, v12, v4}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v4

    .line 70
    new-instance v13, Ln3/e/b/j1/o;

    invoke-direct {v13, v9, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 71
    iget-object v14, v4, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v14, v13, v9, v8}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v13

    .line 72
    iget-object v14, v4, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v14, v13, v7, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v13

    .line 73
    iget-object v14, v4, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_2
    const/4 v4, 0x1

    if-eq v5, v4, :cond_5

    const/4 v4, 0x3

    if-ne v5, v4, :cond_6

    .line 76
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v5, Ln3/e/b/j1/l1;

    invoke-direct {v5}, Ln3/e/b/j1/l1;-><init>()V

    .line 78
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 79
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v11, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 80
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 81
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 82
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v9, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 83
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 84
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v9, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 85
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v9, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 86
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 87
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 88
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v11, v8}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 89
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v7, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 90
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 91
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v9, v6}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 92
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v11, v8}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 93
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v9, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 94
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 95
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v9, v6}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 96
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v9, v8}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 97
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v9, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 98
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    :cond_6
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 102
    invoke-virtual {v0, v2}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v2, 0x6

    if-eqz v0, :cond_9

    .line 103
    array-length v4, v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_9

    aget v12, v0, v5

    const/4 v13, 0x3

    if-ne v12, v13, :cond_7

    const/4 v12, 0x1

    .line 104
    iput-boolean v12, v1, Ln3/e/a/e/a2;->j:Z

    goto :goto_4

    :cond_7
    const/4 v13, 0x1

    if-ne v12, v2, :cond_8

    .line 105
    iput-boolean v13, v1, Ln3/e/a/e/a2;->k:Z

    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 106
    :cond_9
    iget-boolean v0, v1, Ln3/e/a/e/a2;->j:Z

    if-eqz v0, :cond_a

    .line 107
    iget-object v0, v1, Ln3/e/a/e/a2;->a:Ljava/util/List;

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v5, Ln3/e/b/j1/l1;

    invoke-direct {v5}, Ln3/e/b/j1/l1;-><init>()V

    .line 110
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v3, v10}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 111
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 112
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 113
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v3, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 114
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 115
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v9, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 116
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v3, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 117
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 118
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 119
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v11, v8}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 120
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v3, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 121
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 122
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 123
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v9, v8}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 124
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v3, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 125
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 126
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v9, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 127
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v9, v8}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 128
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v3, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 129
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 130
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 131
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v7, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 132
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v3, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 133
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 134
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v9, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 135
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v7, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 136
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v3, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 137
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    :cond_a
    iget-boolean v0, v1, Ln3/e/a/e/a2;->k:Z

    if-eqz v0, :cond_b

    iget v0, v1, Ln3/e/a/e/a2;->g:I

    if-nez v0, :cond_b

    .line 141
    iget-object v0, v1, Ln3/e/a/e/a2;->a:Ljava/util/List;

    .line 142
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance v5, Ln3/e/b/j1/l1;

    invoke-direct {v5}, Ln3/e/b/j1/l1;-><init>()V

    .line 144
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 145
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v11, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 146
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 147
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 148
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v9, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 149
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 150
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v9, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 151
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v9, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 152
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    :cond_b
    iget v0, v1, Ln3/e/a/e/a2;->g:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_c

    .line 156
    iget-object v0, v1, Ln3/e/a/e/a2;->a:Ljava/util/List;

    .line 157
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 158
    new-instance v5, Ln3/e/b/j1/l1;

    invoke-direct {v5}, Ln3/e/b/j1/l1;-><init>()V

    .line 159
    new-instance v12, Ln3/e/b/j1/o;

    invoke-direct {v12, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 160
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v11, v6}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v12

    .line 161
    iget-object v13, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v13, v12, v9, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v9

    .line 162
    iget-object v12, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v12, v9, v3, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v9

    .line 163
    iget-object v12, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v12, v9, v4, v5}, Le/d/c/a/a;->h1(Ljava/util/List;Ln3/e/b/j1/o;Ljava/util/ArrayList;Ln3/e/b/j1/l1;)Ln3/e/b/j1/l1;

    move-result-object v5

    .line 164
    new-instance v9, Ln3/e/b/j1/o;

    invoke-direct {v9, v11, v8}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    .line 165
    iget-object v8, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v8, v9, v11, v6}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v6

    .line 166
    iget-object v8, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v8, v6, v7, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v6

    .line 167
    iget-object v7, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-static {v7, v6, v3, v10}, Le/d/c/a/a;->g1(Ljava/util/List;Ln3/e/b/j1/o;Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)Ln3/e/b/j1/o;

    move-result-object v3

    .line 168
    iget-object v6, v5, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    :cond_c
    new-instance v0, Landroid/util/Size;

    const/16 v3, 0x280

    const/16 v4, 0x1e0

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 172
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 173
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 174
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_d

    .line 175
    new-instance v4, Landroid/util/Size;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v5, v3}, Landroid/util/Size;-><init>(II)V

    goto :goto_5

    .line 176
    :cond_d
    new-instance v4, Landroid/util/Size;

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-direct {v4, v5, v3}, Landroid/util/Size;-><init>(II)V

    :goto_5
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/util/Size;

    .line 177
    new-instance v5, Landroid/util/Size;

    .line 178
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v5, v6, v4}, Landroid/util/Size;-><init>(II)V

    const/4 v4, 0x0

    aput-object v5, v3, v4

    sget-object v5, Ln3/e/a/e/a2;->n:Landroid/util/Size;

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 179
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v5, Ln3/e/a/e/a2$b;

    invoke-direct {v5}, Ln3/e/a/e/a2$b;-><init>()V

    .line 180
    invoke-static {v3, v5}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 181
    sget-object v5, Ln3/e/a/e/a2;->t:Landroid/util/Size;

    .line 182
    :try_start_1
    iget-object v6, v1, Ln3/e/a/e/a2;->c:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 183
    iget-object v7, v1, Ln3/e/a/e/a2;->d:Ln3/e/a/e/x0;

    const/16 v8, 0x8

    invoke-interface {v7, v6, v8}, Ln3/e/a/e/x0;->a(II)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 184
    sget-object v5, Ln3/e/a/e/a2;->q:Landroid/util/Size;

    goto :goto_7

    .line 185
    :cond_e
    iget-object v7, v1, Ln3/e/a/e/a2;->d:Ln3/e/a/e/x0;

    invoke-interface {v7, v6, v2}, Ln3/e/a/e/x0;->a(II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 186
    sget-object v5, Ln3/e/a/e/a2;->r:Landroid/util/Size;

    goto :goto_7

    .line 187
    :cond_f
    iget-object v2, v1, Ln3/e/a/e/a2;->d:Ln3/e/a/e/x0;

    const/4 v7, 0x5

    invoke-interface {v2, v6, v7}, Ln3/e/a/e/x0;->a(II)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 188
    sget-object v5, Ln3/e/a/e/a2;->s:Landroid/util/Size;

    goto :goto_7

    .line 189
    :cond_10
    iget-object v2, v1, Ln3/e/a/e/a2;->d:Ln3/e/a/e/x0;

    const/4 v7, 0x4

    invoke-interface {v2, v6, v7}, Ln3/e/a/e/x0;->a(II)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 190
    :catch_0
    iget-object v2, v1, Ln3/e/a/e/a2;->e:Ln3/e/a/e/k2/e;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 191
    invoke-virtual {v2, v5}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v2, :cond_14

    .line 192
    const-class v5, Landroid/media/MediaRecorder;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v2

    if-nez v2, :cond_11

    .line 193
    sget-object v5, Ln3/e/a/e/a2;->t:Landroid/util/Size;

    goto :goto_7

    .line 194
    :cond_11
    new-instance v5, Ln3/e/a/e/a2$b;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ln3/e/a/e/a2$b;-><init>(Z)V

    invoke-static {v2, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 195
    array-length v5, v2

    :goto_6
    if-ge v4, v5, :cond_13

    aget-object v6, v2, v4

    .line 196
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    sget-object v8, Ln3/e/a/e/a2;->r:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    if-gt v7, v9, :cond_12

    .line 197
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-gt v7, v8, :cond_12

    move-object v5, v6

    goto :goto_7

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 198
    :cond_13
    sget-object v5, Ln3/e/a/e/a2;->t:Landroid/util/Size;

    .line 199
    :goto_7
    new-instance v2, Ln3/e/b/j1/p;

    invoke-direct {v2, v0, v3, v5}, Ln3/e/b/j1/p;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    .line 200
    iput-object v2, v1, Ln3/e/a/e/a2;->l:Ln3/e/b/j1/n1;

    return-void

    .line 201
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can not retrieve SCALER_STREAM_CONFIGURATION_MAP"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 202
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->L(Ln3/e/a/e/k2/a;)Ln3/e/b/n0;

    move-result-object v0

    throw v0
.end method

.method public static e(Landroid/util/Size;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    mul-int/2addr p0, v0

    return p0
.end method

.method public static g(IILandroid/util/Rational;)Z
    .locals 7

    .line 1
    rem-int/lit8 v0, p1, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->n(Z)V

    .line 2
    invoke-virtual {p2}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    mul-int/2addr v0, p0

    int-to-double v3, v0

    invoke-virtual {p2}, Landroid/util/Rational;->getDenominator()I

    move-result p0

    int-to-double v5, p0

    div-double/2addr v3, v5

    add-int/lit8 p0, p1, -0x10

    .line 3
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-double v5, p0

    cmpl-double p0, v3, v5

    if-lez p0, :cond_1

    add-int/lit8 p1, p1, 0x10

    int-to-double p0, p1

    cmpg-double p0, v3, p0

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/e/b/j1/m1;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/a2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/b/j1/l1;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, v2, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v3, v5, :cond_2

    move v2, v1

    goto/16 :goto_4

    .line 5
    :cond_2
    iget-object v3, v2, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-array v6, v3, [I

    invoke-static {v5, v3, v6, v1}, Ln3/e/b/j1/l1;->a(Ljava/util/List;I[II)V

    .line 8
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move v6, v1

    move v7, v4

    .line 9
    :goto_0
    iget-object v8, v2, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_6

    .line 10
    aget v8, v5, v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 11
    iget-object v8, v2, Ln3/e/b/j1/l1;->a:Ljava/util/List;

    .line 12
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln3/e/b/j1/m1;

    aget v9, v5, v6

    .line 13
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln3/e/b/j1/m1;

    .line 14
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v9}, Ln3/e/b/j1/m1;->b()Ln3/e/b/j1/m1$b;

    move-result-object v10

    .line 16
    invoke-virtual {v9}, Ln3/e/b/j1/m1;->a()Ln3/e/b/j1/m1$a;

    move-result-object v9

    .line 17
    iget v9, v9, Ln3/e/b/j1/m1$a;->a:I

    .line 18
    invoke-virtual {v8}, Ln3/e/b/j1/m1;->a()Ln3/e/b/j1/m1$a;

    move-result-object v11

    .line 19
    iget v11, v11, Ln3/e/b/j1/m1$a;->a:I

    if-gt v9, v11, :cond_4

    .line 20
    invoke-virtual {v8}, Ln3/e/b/j1/m1;->b()Ln3/e/b/j1/m1$b;

    move-result-object v8

    if-ne v10, v8, :cond_4

    move v8, v4

    goto :goto_1

    :cond_4
    move v8, v1

    :goto_1
    and-int/2addr v7, v8

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    if-eqz v7, :cond_3

    goto :goto_3

    :cond_7
    move v4, v1

    :goto_3
    move v2, v4

    :goto_4
    if-eqz v2, :cond_0

    :cond_8
    return v2
.end method

.method public final b([Landroid/util/Size;I)[Landroid/util/Size;
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/e/a/e/a2;->i:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Ln3/e/a/e/a2;->f:Ln3/e/a/e/k2/q/c;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Ln3/e/a/e/k2/p/f;

    invoke-static {v1}, Ln3/e/a/e/k2/p/e;->a(Ljava/lang/Class;)Ln3/e/b/j1/f1;

    move-result-object v1

    check-cast v1, Ln3/e/a/e/k2/p/f;

    if-nez v1, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, v0, Ln3/e/a/e/k2/q/c;->a:Ljava/lang/String;

    .line 7
    invoke-static {}, Ln3/e/a/e/k2/p/f;->a()Z

    move-result v1

    const/16 v2, 0xbb8

    const/16 v3, 0xfa0

    const/16 v4, 0xc30

    const/16 v5, 0x1040

    const/16 v6, 0x100

    const-string v7, "0"

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, v6, :cond_3

    .line 10
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v5, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v3, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Ln3/e/a/e/k2/p/f;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, v6, :cond_3

    .line 15
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v5, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v3, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const-string v1, "ExcludedSupportedSizesQuirk"

    const-string v2, "Cannot retrieve list of supported sizes to exclude on this device."

    .line 17
    invoke-static {v1, v2, v0}, Ln3/e/b/y0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_3
    :goto_0
    move-object v0, v1

    .line 19
    :goto_1
    iget-object v1, p0, Ln3/e/a/e/a2;->i:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/util/Size;

    .line 22
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Size;

    return-object p1
.end method

.method public final c(I)Landroid/util/Size;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/a2;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Ln3/e/a/e/a2;->d(I)[Landroid/util/Size;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ln3/e/a/e/a2$b;

    invoke-direct {v1}, Ln3/e/a/e/a2$b;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 4
    iget-object v1, p0, Ln3/e/a/e/a2;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final d(I)[Landroid/util/Size;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/a2;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Ln3/e/a/e/a2;->e:Ln3/e/a/e/k2/e;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3
    invoke-virtual {v0, v1}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0, p1}, Ln3/e/a/e/a2;->b([Landroid/util/Size;I)[Landroid/util/Size;

    move-result-object v0

    .line 6
    new-instance v1, Ln3/e/a/e/a2$b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ln3/e/a/e/a2$b;-><init>(Z)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 7
    iget-object v1, p0, Ln3/e/a/e/a2;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not get supported output size for the format: "

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not retrieve SCALER_STREAM_CONFIGURATION_MAP"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final f(Ln3/e/b/j1/q0;)Landroid/util/Size;
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ln3/e/b/j1/q0;->n(I)I

    move-result v1

    const/4 v2, 0x0

    .line 2
    invoke-interface {p1, v2}, Ln3/e/b/j1/q0;->o(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    iget-object v2, p0, Ln3/e/a/e/a2;->e:Ln3/e/a/e/k2/e;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4
    invoke-virtual {v2, v3}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "Camera HAL in bad state, unable to retrieve the SENSOR_ORIENTATION"

    .line 5
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->C1(I)I

    move-result v1

    .line 7
    iget-object v3, p0, Ln3/e/a/e/a2;->e:Ln3/e/a/e/k2/e;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Ln3/e/a/e/k2/e;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-string v4, "Camera HAL in bad state, unable to retrieve the LENS_FACING"

    .line 8
    invoke-static {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    .line 10
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 11
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->v0(IIZ)I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    :cond_1
    move v0, v4

    :cond_2
    if-eqz v0, :cond_3

    .line 12
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    move-object p1, v0

    :cond_3
    return-object p1
.end method

.method public final h(Ljava/util/List;Landroid/util/Size;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/util/Size;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    move v6, v2

    move v2, v0

    move v0, v6

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 5
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 6
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_2

    if-ltz v2, :cond_1

    .line 7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public i(ILandroid/util/Size;)Ln3/e/b/j1/m1;
    .locals 5

    .line 1
    sget-object v0, Ln3/e/b/j1/m1$a;->f:Ln3/e/b/j1/m1$a;

    const/16 v1, 0x23

    if-ne p1, v1, :cond_0

    .line 2
    sget-object v1, Ln3/e/b/j1/m1$b;->b:Ln3/e/b/j1/m1$b;

    goto :goto_0

    :cond_0
    const/16 v1, 0x100

    if-ne p1, v1, :cond_1

    .line 3
    sget-object v1, Ln3/e/b/j1/m1$b;->c:Ln3/e/b/j1/m1$b;

    goto :goto_0

    :cond_1
    const/16 v1, 0x20

    if-ne p1, v1, :cond_2

    .line 4
    sget-object v1, Ln3/e/b/j1/m1$b;->d:Ln3/e/b/j1/m1$b;

    goto :goto_0

    .line 5
    :cond_2
    sget-object v1, Ln3/e/b/j1/m1$b;->a:Ln3/e/b/j1/m1$b;

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Ln3/e/a/e/a2;->c(I)Landroid/util/Size;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v3, v2

    iget-object v2, p0, Ln3/e/a/e/a2;->l:Ln3/e/b/j1/n1;

    .line 8
    invoke-virtual {v2}, Ln3/e/b/j1/n1;->a()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v4, p0, Ln3/e/a/e/a2;->l:Ln3/e/b/j1/n1;

    .line 9
    invoke-virtual {v4}, Ln3/e/b/j1/n1;->a()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v4, v2

    if-gt v3, v4, :cond_3

    .line 10
    sget-object v0, Ln3/e/b/j1/m1$a;->b:Ln3/e/b/j1/m1$a;

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v3, v2

    iget-object v2, p0, Ln3/e/a/e/a2;->l:Ln3/e/b/j1/n1;

    .line 12
    invoke-virtual {v2}, Ln3/e/b/j1/n1;->b()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v4, p0, Ln3/e/a/e/a2;->l:Ln3/e/b/j1/n1;

    .line 13
    invoke-virtual {v4}, Ln3/e/b/j1/n1;->b()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v4, v2

    if-gt v3, v4, :cond_4

    .line 14
    sget-object v0, Ln3/e/b/j1/m1$a;->c:Ln3/e/b/j1/m1$a;

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v3, v2

    iget-object v2, p0, Ln3/e/a/e/a2;->l:Ln3/e/b/j1/n1;

    .line 16
    invoke-virtual {v2}, Ln3/e/b/j1/n1;->c()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v4, p0, Ln3/e/a/e/a2;->l:Ln3/e/b/j1/n1;

    .line 17
    invoke-virtual {v4}, Ln3/e/b/j1/n1;->c()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v4, v2

    if-gt v3, v4, :cond_5

    .line 18
    sget-object v0, Ln3/e/b/j1/m1$a;->d:Ln3/e/b/j1/m1$a;

    goto :goto_1

    .line 19
    :cond_5
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr p2, v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    mul-int/2addr p1, v2

    if-gt p2, p1, :cond_6

    .line 20
    sget-object v0, Ln3/e/b/j1/m1$a;->e:Ln3/e/b/j1/m1$a;

    .line 21
    :cond_6
    :goto_1
    new-instance p1, Ln3/e/b/j1/o;

    invoke-direct {p1, v1, v0}, Ln3/e/b/j1/o;-><init>(Ln3/e/b/j1/m1$b;Ln3/e/b/j1/m1$a;)V

    return-object p1
.end method
