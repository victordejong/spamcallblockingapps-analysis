.class public final Le/a/o5/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/q0;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/o5/m;

.field public final d:Le/a/o5/s0;

.field public final e:Le/a/o5/u1;

.field public final f:Le/a/o5/u0;

.field public final g:Le/a/a/k/a/g2/a;

.field public final h:Le/a/a/k/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/o5/m;Le/a/o5/s0;Le/a/o5/u1;Le/a/o5/u0;Le/a/a/k/a/g2/a;Le/a/a/k/a/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapConverter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaInfoFetcher"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityCleaner"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaUtils"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o5/r0;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/o5/r0;->c:Le/a/o5/m;

    iput-object p3, p0, Le/a/o5/r0;->d:Le/a/o5/s0;

    iput-object p4, p0, Le/a/o5/r0;->e:Le/a/o5/u1;

    iput-object p5, p0, Le/a/o5/r0;->f:Le/a/o5/u0;

    iput-object p6, p0, Le/a/o5/r0;->g:Le/a/a/k/a/g2/a;

    iput-object p7, p0, Le/a/o5/r0;->h:Le/a/a/k/a/h;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "context.contentResolver"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/o5/r0;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)Le/a/r2/x;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/messaging/ForwardContentItem;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "Promise.wrap(null)"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-static {v3}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 2
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static/range {p1 .. p1}, Le/a/c/p/a;->b1(Ljava/util/Collection;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 4
    iget-object v1, v0, Le/a/o5/r0;->f:Le/a/o5/u0;

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Le/a/o5/u0;->d(I)J

    move-result-wide v4

    .line 5
    invoke-static/range {p1 .. p1}, Le/a/c/p/a;->C0(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v6, "entities"

    .line 6
    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 9
    check-cast v7, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 10
    instance-of v8, v7, Lcom/truecaller/messaging/data/types/GifEntity;

    if-eqz v8, :cond_3

    new-instance v8, Le/a/a/a0;

    iget-object v10, v7, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    iget-object v11, v7, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    move-object v9, v7

    check-cast v9, Lcom/truecaller/messaging/data/types/GifEntity;

    .line 11
    iget-object v12, v9, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

    .line 12
    iget v7, v7, Lcom/truecaller/messaging/data/types/BinaryEntity;->l:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xff0

    move-object v9, v8

    invoke-direct/range {v9 .. v22}, Le/a/a/a0;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;I)V

    :goto_3
    move-wide/from16 v23, v4

    goto/16 :goto_4

    .line 13
    :cond_3
    instance-of v8, v7, Lcom/truecaller/messaging/data/types/DocumentEntity;

    if-eqz v8, :cond_4

    new-instance v8, Le/a/a/a0;

    iget-object v10, v7, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    iget-object v11, v7, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const/4 v12, 0x0

    iget v9, v7, Lcom/truecaller/messaging/data/types/BinaryEntity;->l:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    check-cast v7, Lcom/truecaller/messaging/data/types/DocumentEntity;

    .line 14
    iget-object v14, v7, Lcom/truecaller/messaging/data/types/DocumentEntity;->v:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfe4

    move-object v9, v8

    .line 15
    invoke-direct/range {v9 .. v22}, Le/a/a/a0;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;I)V

    goto :goto_3

    .line 16
    :cond_4
    instance-of v8, v7, Lcom/truecaller/messaging/data/types/VCardEntity;

    if-eqz v8, :cond_5

    new-instance v8, Le/a/a/a0;

    .line 17
    iget-object v10, v7, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    iget-object v11, v7, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const/4 v12, 0x0

    iget v9, v7, Lcom/truecaller/messaging/data/types/BinaryEntity;->l:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    check-cast v7, Lcom/truecaller/messaging/data/types/VCardEntity;

    .line 18
    iget-object v15, v7, Lcom/truecaller/messaging/data/types/VCardEntity;->v:Ljava/lang/String;

    .line 19
    iget v9, v7, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    .line 20
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 21
    iget-object v7, v7, Lcom/truecaller/messaging/data/types/VCardEntity;->x:Landroid/net/Uri;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xf14

    move-object v9, v8

    move-object/from16 v17, v7

    .line 22
    invoke-direct/range {v9 .. v22}, Le/a/a/a0;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;I)V

    goto :goto_3

    .line 23
    :cond_5
    instance-of v8, v7, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    if-eqz v8, :cond_6

    .line 24
    new-instance v8, Le/a/a/a0;

    .line 25
    iget-object v10, v7, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    iget-object v11, v7, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    move-object v9, v7

    check-cast v9, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    iget-object v14, v9, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->y:Ljava/lang/String;

    iget-object v15, v9, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->z:Ljava/lang/String;

    iget-object v13, v9, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->x:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 26
    iget-object v12, v9, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->A:Ljava/lang/String;

    iget v7, v7, Lcom/truecaller/messaging/data/types/BinaryEntity;->l:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xe60

    move-object v9, v8

    move-object/from16 v18, v13

    move-object v13, v7

    move-object v7, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v7

    .line 27
    invoke-direct/range {v9 .. v22}, Le/a/a/a0;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;I)V

    goto/16 :goto_3

    .line 28
    :cond_6
    instance-of v8, v7, Lcom/truecaller/messaging/data/types/LocationEntity;

    if-eqz v8, :cond_7

    .line 29
    new-instance v8, Le/a/a/a0;

    iget-object v10, v7, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    iget-object v11, v7, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    check-cast v7, Lcom/truecaller/messaging/data/types/LocationEntity;

    .line 30
    iget-object v9, v7, Lcom/truecaller/messaging/data/types/LocationEntity;->v:Ljava/lang/String;

    move-wide/from16 v23, v4

    .line 31
    iget-wide v3, v7, Lcom/truecaller/messaging/data/types/LocationEntity;->w:D

    .line 32
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    .line 33
    iget-wide v3, v7, Lcom/truecaller/messaging/data/types/LocationEntity;->x:D

    .line 34
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    const/16 v22, 0x1fc

    const/16 v18, 0x0

    move-object v3, v9

    move-object v9, v8

    move-object/from16 v19, v3

    invoke-direct/range {v9 .. v22}, Le/a/a/a0;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;I)V

    goto :goto_4

    :cond_7
    move-wide/from16 v23, v4

    .line 35
    new-instance v8, Le/a/a/a0;

    iget-object v3, v7, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    iget-object v4, v7, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const/16 v28, 0x0

    iget v5, v7, Lcom/truecaller/messaging/data/types/BinaryEntity;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xff4

    move-object/from16 v25, v8

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    invoke-direct/range {v25 .. v38}, Le/a/a/a0;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;I)V

    .line 36
    :goto_4
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v23

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_8
    move-wide/from16 v23, v4

    move-wide/from16 v3, v23

    .line 37
    invoke-virtual {v0, v6, v3, v4}, Le/a/o5/r0;->g(Ljava/util/Collection;J)Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-static {v1}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    .line 38
    :goto_5
    invoke-static/range {p1 .. p1}, Le/a/c/p/a;->C0(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-eqz v1, :cond_13

    .line 39
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_a

    goto/16 :goto_9

    .line 40
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/k;

    .line 41
    iget-object v5, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 42
    check-cast v5, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 43
    iget-object v4, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 44
    check-cast v4, Le/a/o5/o0;

    if-nez v4, :cond_c

    if-nez v5, :cond_b

    .line 45
    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 47
    check-cast v4, Ls1/k;

    .line 48
    iget-object v4, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 49
    check-cast v4, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v4, :cond_d

    .line 50
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 51
    :cond_e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 52
    iget-object v4, v0, Le/a/o5/r0;->e:Le/a/o5/u1;

    iget-object v3, v3, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-interface {v4, v3}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    goto :goto_7

    :cond_f
    const/4 v3, 0x0

    .line 53
    invoke-static {v3}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 54
    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 56
    check-cast v3, Ls1/k;

    .line 57
    iget-object v3, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 58
    check-cast v3, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v3, :cond_11

    .line 59
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 60
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_c

    :cond_13
    :goto_9
    if-eqz v1, :cond_16

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 63
    check-cast v4, Ls1/k;

    .line 64
    iget-object v4, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 65
    check-cast v4, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v4, :cond_14

    .line 66
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 67
    :cond_15
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/BinaryEntity;

    .line 68
    iget-object v4, v0, Le/a/o5/r0;->e:Le/a/o5/u1;

    iget-object v3, v3, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-interface {v4, v3}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    goto :goto_b

    :cond_16
    const/4 v1, 0x0

    .line 69
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 70
    :cond_17
    :goto_c
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v1

    const-string v2, "Promise.wrap(copiedMedia)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public b(DDLjava/lang/String;)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "Le/a/o5/o0;",
            ">;>;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/o5/r0$a;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Le/a/o5/r0$a;-><init>(Le/a/o5/r0;DDLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ls1/k;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    :goto_0
    iget-object v0, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 4
    check-cast v0, Landroid/net/Uri;

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, v0, p5, p1, p2}, Le/a/o5/r0;->l(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Ls1/k;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(innerLocati\u2026ss, latitude, longitude))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(Landroid/net/Uri;Z)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z)",
            "Le/a/r2/x<",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "Le/a/o5/o0;",
            ">;>;"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/o5/r0;->k(Landroid/net/Uri;Z)Ls1/k;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(innerImageE\u2026romUri(uri, isTemporary))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public d(Landroid/net/Uri;Z)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z)",
            "Le/a/r2/x<",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "Le/a/o5/o0;",
            ">;>;"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/o5/r0;->j(Landroid/net/Uri;Z)Ls1/k;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(innerAudioE\u2026omFile(uri, isTemporary))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e(Ljava/util/List;)Le/a/r2/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "uris"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Le/a/o5/r0;->a:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 3
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    throw p1

    :catch_1
    :goto_0
    if-nez v1, :cond_0

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "Promise.wrap(false)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "Promise.wrap(true)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public f(Landroid/net/Uri;ZJ)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "ZJ)",
            "Le/a/r2/x<",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "Le/a/o5/o0;",
            ">;>;"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Le/a/o5/r0;->m(Landroid/net/Uri;ZJ)Ls1/k;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(innerVideoE\u2026Temporary, maxMediaSize))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public g(Ljava/util/Collection;J)Le/a/r2/x;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Le/a/a/a0;",
            ">;J)",
            "Le/a/r2/x<",
            "Ljava/util/List<",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "Le/a/o5/o0;",
            ">;>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    sget-object v3, Le/a/o5/o0$b;->a:Le/a/o5/o0$b;

    const-string v4, "requests"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Ls1/k;

    const/4 v6, 0x0

    invoke-direct {v4, v6, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/a/a0;

    if-nez v8, :cond_0

    .line 4
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v42, v4

    move-object v2, v6

    goto/16 :goto_29

    .line 5
    :cond_0
    iget-object v9, v8, Le/a/a/a0;->a:Landroid/net/Uri;

    .line 6
    iget-object v10, v8, Le/a/a/a0;->d:Ljava/lang/Integer;

    if-eqz v10, :cond_1

    .line 7
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_1

    :cond_1
    const/4 v10, -0x1

    .line 8
    :goto_1
    iget-object v11, v8, Le/a/a/a0;->b:Ljava/lang/String;

    const/4 v13, 0x1

    if-eqz v11, :cond_4

    .line 9
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    move v14, v13

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    if-eqz v14, :cond_3

    goto :goto_3

    :cond_3
    move-object v11, v6

    :goto_3
    if-eqz v11, :cond_4

    goto :goto_4

    .line 10
    :cond_4
    iget-object v11, v8, Le/a/a/a0;->a:Landroid/net/Uri;

    .line 11
    iget-object v14, v0, Le/a/o5/r0;->b:Landroid/content/Context;

    invoke-static {v11, v14}, Le/a/p5/s0/f;->i(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    :goto_4
    const-string v14, ""

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    move-object v11, v14

    :goto_5
    const-string v15, "contentType"

    .line 12
    invoke-static {v11, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "text/plain"

    .line 13
    invoke-static {v12, v11, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v16

    const-string v17, "text/vnd.plain-file"

    if-eqz v16, :cond_6

    move-object/from16 v11, v17

    .line 14
    :cond_6
    sget-object v13, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    invoke-virtual {v13, v11}, Lcom/truecaller/messaging/data/types/Entity$a;->e(Ljava/lang/String;)Z

    move-result v18

    const-string v6, "image/gif"

    if-eqz v18, :cond_12

    .line 15
    iget-object v8, v8, Le/a/a/a0;->c:Ljava/lang/String;

    .line 16
    iget-object v11, v0, Le/a/o5/r0;->d:Le/a/o5/s0;

    invoke-interface {v11, v9}, Le/a/o5/s0;->c(Landroid/net/Uri;)Le/a/o5/k0;

    move-result-object v11

    if-eqz v11, :cond_11

    .line 17
    iget-object v12, v11, Le/a/o5/k0;->c:Ljava/lang/String;

    invoke-static {v6, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_c

    .line 18
    :cond_7
    invoke-virtual {v0, v9}, Le/a/o5/r0;->i(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 19
    iget-object v9, v0, Le/a/o5/r0;->b:Landroid/content/Context;

    invoke-static {v6, v9}, Le/a/p5/s0/f;->G(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    if-eqz v8, :cond_9

    .line 20
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_8

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v9, 0x1

    :goto_7
    if-eqz v9, :cond_a

    .line 21
    iget-object v9, v11, Le/a/o5/k0;->c:Ljava/lang/String;

    goto :goto_8

    :cond_a
    const-string v9, "tenor/gif"

    :goto_8
    move-object/from16 v21, v9

    const-wide/16 v19, -0x1

    .line 22
    invoke-static/range {v21 .. v21}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const/16 v22, 0x0

    .line 23
    iget v9, v11, Le/a/o5/k0;->a:I

    .line 24
    iget v11, v11, Le/a/o5/k0;->b:I

    const/16 v26, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    if-eqz v8, :cond_d

    .line 25
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_b

    const/4 v12, 0x1

    goto :goto_9

    :cond_b
    const/4 v12, 0x0

    :goto_9
    if-eqz v12, :cond_c

    goto :goto_a

    :cond_c
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_d

    move-object/from16 v31, v8

    goto :goto_b

    :cond_d
    move-object/from16 v31, v14

    :goto_b
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const v41, 0x3fa40

    move-object/from16 v18, v13

    move-object/from16 v23, v6

    move/from16 v24, v9

    move/from16 v25, v11

    .line 26
    invoke-static/range {v18 .. v41}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v6

    .line 27
    instance-of v8, v6, Lcom/truecaller/messaging/data/types/ImageEntity;

    if-eqz v8, :cond_e

    .line 28
    new-instance v8, Ls1/k;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :cond_e
    const/4 v9, 0x0

    .line 29
    iget-object v8, v0, Le/a/o5/r0;->e:Le/a/o5/u1;

    invoke-interface {v8, v6}, Le/a/o5/u1;->a(Lcom/truecaller/messaging/data/types/BinaryEntity;)V

    .line 30
    new-instance v8, Ls1/k;

    invoke-direct {v8, v9, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :cond_f
    const/4 v9, 0x0

    .line 31
    new-instance v8, Ls1/k;

    invoke-direct {v8, v9, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :cond_10
    const/4 v9, 0x0

    .line 32
    new-instance v8, Ls1/k;

    invoke-direct {v8, v9, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v9, 0x0

    .line 33
    new-instance v8, Ls1/k;

    invoke-direct {v8, v9, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d
    move-object/from16 v42, v4

    goto/16 :goto_27

    .line 34
    :cond_12
    invoke-virtual {v13, v11}, Lcom/truecaller/messaging/data/types/Entity$a;->f(Ljava/lang/String;)Z

    move-result v18

    move-object/from16 v42, v4

    if-eqz v18, :cond_13

    const/4 v4, 0x1

    invoke-static {v6, v11, v4}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    const/4 v4, 0x0

    if-nez v6, :cond_14

    invoke-virtual {v0, v9, v4}, Le/a/o5/r0;->k(Landroid/net/Uri;Z)Ls1/k;

    move-result-object v8

    goto/16 :goto_27

    :cond_13
    const/4 v4, 0x0

    .line 35
    :cond_14
    invoke-virtual {v13, v11}, Lcom/truecaller/messaging/data/types/Entity$a;->l(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v0, v9, v4, v1, v2}, Le/a/o5/r0;->m(Landroid/net/Uri;ZJ)Ls1/k;

    move-result-object v8

    goto/16 :goto_27

    .line 36
    :cond_15
    invoke-virtual {v13, v11}, Lcom/truecaller/messaging/data/types/Entity$a;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v0, v9, v4}, Le/a/o5/r0;->j(Landroid/net/Uri;Z)Ls1/k;

    move-result-object v8

    goto/16 :goto_27

    .line 37
    :cond_16
    invoke-virtual {v13, v11}, Lcom/truecaller/messaging/data/types/Entity$a;->k(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 38
    iget-object v6, v8, Le/a/a/a0;->f:Ljava/lang/String;

    .line 39
    iget-object v11, v8, Le/a/a/a0;->h:Landroid/net/Uri;

    .line 40
    iget-object v8, v8, Le/a/a/a0;->g:Ljava/lang/Integer;

    .line 41
    invoke-virtual {v0, v9}, Le/a/o5/r0;->i(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_21

    .line 42
    iget-object v12, v0, Le/a/o5/r0;->b:Landroid/content/Context;

    invoke-static {v9, v12}, Le/a/p5/s0/f;->G(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_20

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    if-eqz v8, :cond_17

    .line 43
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_e

    :cond_17
    move v12, v4

    :goto_e
    if-gtz v12, :cond_18

    .line 44
    iget-object v6, v0, Le/a/o5/r0;->d:Le/a/o5/s0;

    invoke-interface {v6, v9}, Le/a/o5/s0;->b(Landroid/net/Uri;)Le/a/o5/u;

    move-result-object v6

    goto :goto_12

    .line 45
    :cond_18
    new-instance v12, Le/a/o5/u;

    invoke-direct {v12}, Le/a/o5/u;-><init>()V

    if-eqz v6, :cond_19

    goto :goto_f

    :cond_19
    move-object v6, v14

    .line 46
    :goto_f
    iput-object v6, v12, Le/a/o5/u;->c:Ljava/lang/String;

    if-eqz v8, :cond_1a

    .line 47
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_10

    :cond_1a
    move v6, v4

    :goto_10
    invoke-virtual {v12, v6}, Le/a/o5/u;->a(I)V

    if-eqz v11, :cond_1b

    goto :goto_11

    .line 48
    :cond_1b
    sget-object v11, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 49
    :goto_11
    iput-object v11, v12, Le/a/o5/u;->b:Landroid/net/Uri;

    move-object v6, v12

    :goto_12
    if-eqz v6, :cond_1c

    .line 50
    iget-object v8, v6, Le/a/o5/u;->b:Landroid/net/Uri;

    if-eqz v8, :cond_1c

    goto :goto_13

    .line 51
    :cond_1c
    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_13
    if-eqz v6, :cond_1d

    .line 52
    iget-object v11, v6, Le/a/o5/u;->c:Ljava/lang/String;

    if-eqz v11, :cond_1d

    move-object/from16 v33, v11

    goto :goto_14

    :cond_1d
    move-object/from16 v33, v14

    :goto_14
    if-eqz v6, :cond_1e

    .line 53
    iget v12, v6, Le/a/o5/u;->e:I

    move/from16 v34, v12

    goto :goto_15

    :cond_1e
    move/from16 v34, v4

    :goto_15
    const-wide/16 v19, -0x1

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v4, "mThumbnailUri"

    .line 54
    invoke-static {v8, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const v41, 0x3cc70

    const/16 v29, 0x0

    const-string v21, "text/x-vcard"

    move-object/from16 v18, v13

    move-object/from16 v23, v9

    move-object/from16 v30, v8

    .line 55
    invoke-static/range {v18 .. v41}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v4

    .line 56
    instance-of v6, v4, Lcom/truecaller/messaging/data/types/VCardEntity;

    if-eqz v6, :cond_1f

    .line 57
    new-instance v8, Ls1/k;

    const/4 v6, 0x0

    invoke-direct {v8, v4, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_27

    :cond_1f
    const/4 v6, 0x0

    .line 58
    iget-object v8, v0, Le/a/o5/r0;->e:Le/a/o5/u1;

    invoke-interface {v8, v4}, Le/a/o5/u1;->a(Lcom/truecaller/messaging/data/types/BinaryEntity;)V

    .line 59
    new-instance v4, Ls1/k;

    invoke-direct {v4, v6, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_16

    :cond_20
    const/4 v6, 0x0

    .line 60
    new-instance v4, Ls1/k;

    invoke-direct {v4, v6, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_16

    :cond_21
    const/4 v6, 0x0

    .line 61
    new-instance v4, Ls1/k;

    invoke-direct {v4, v6, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_16
    move-object v8, v4

    move-object v1, v6

    goto/16 :goto_27

    .line 62
    :cond_22
    invoke-virtual {v13, v11}, Lcom/truecaller/messaging/data/types/Entity$a;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 63
    iget-object v4, v8, Le/a/a/a0;->e:Ljava/lang/String;

    .line 64
    iget-object v6, v8, Le/a/a/a0;->b:Ljava/lang/String;

    .line 65
    iget-object v8, v0, Le/a/o5/r0;->b:Landroid/content/Context;

    invoke-static {v9, v8}, Le/a/p5/s0/f;->G(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_2b

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    cmp-long v8, v27, v1

    if-lez v8, :cond_23

    .line 66
    new-instance v4, Ls1/k;

    new-instance v6, Le/a/o5/o0$a;

    invoke-direct {v6, v1, v2}, Le/a/o5/o0$a;-><init>(J)V

    const/4 v8, 0x0

    invoke-direct {v4, v8, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v8

    :goto_17
    move-object v8, v4

    goto/16 :goto_27

    .line 67
    :cond_23
    iget-object v8, v0, Le/a/o5/r0;->b:Landroid/content/Context;

    invoke-static {v9, v8}, Le/a/p5/s0/f;->i(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_24

    .line 68
    invoke-static {v6, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const/4 v1, 0x1

    xor-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_25

    goto :goto_18

    :cond_24
    const/4 v1, 0x1

    :cond_25
    move-object v6, v8

    :goto_18
    if-eqz v6, :cond_26

    move-object v14, v6

    .line 69
    :cond_26
    invoke-static {v14, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {v12, v14, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_27

    move-object/from16 v21, v17

    goto :goto_19

    :cond_27
    move-object/from16 v21, v14

    :goto_19
    if-eqz v4, :cond_28

    move-object/from16 v32, v4

    goto :goto_1a

    .line 71
    :cond_28
    iget-object v1, v0, Le/a/o5/r0;->f:Le/a/o5/u0;

    invoke-interface {v1, v9}, Le/a/o5/u0;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    .line 72
    :goto_1a
    invoke-virtual {v0, v9}, Le/a/o5/r0;->i(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v23

    if-eqz v23, :cond_2a

    const-wide/16 v19, -0x1

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const v41, 0x3f670

    move-object/from16 v18, v13

    .line 73
    invoke-static/range {v18 .. v41}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v1

    .line 74
    instance-of v2, v1, Lcom/truecaller/messaging/data/types/DocumentEntity;

    if-eqz v2, :cond_29

    .line 75
    new-instance v2, Ls1/k;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_25

    :cond_29
    const/4 v4, 0x0

    .line 76
    iget-object v2, v0, Le/a/o5/r0;->e:Le/a/o5/u1;

    invoke-interface {v2, v1}, Le/a/o5/u1;->a(Lcom/truecaller/messaging/data/types/BinaryEntity;)V

    .line 77
    new-instance v1, Ls1/k;

    invoke-direct {v1, v4, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b

    :cond_2a
    const/4 v4, 0x0

    .line 78
    new-instance v1, Ls1/k;

    invoke-direct {v1, v4, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1b

    :cond_2b
    const/4 v4, 0x0

    .line 79
    new-instance v1, Ls1/k;

    invoke-direct {v1, v4, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1b
    move-object v8, v1

    goto/16 :goto_27

    .line 80
    :cond_2c
    invoke-virtual {v13, v11}, Lcom/truecaller/messaging/data/types/Entity$a;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 81
    iget-object v1, v8, Le/a/a/a0;->b:Ljava/lang/String;

    .line 82
    iget-object v2, v8, Le/a/a/a0;->c:Ljava/lang/String;

    .line 83
    iget-object v6, v8, Le/a/a/a0;->e:Ljava/lang/String;

    .line 84
    iget-object v9, v8, Le/a/a/a0;->i:Ljava/lang/String;

    .line 85
    iget-object v8, v8, Le/a/a/a0;->h:Landroid/net/Uri;

    if-eqz v1, :cond_38

    .line 86
    invoke-static {v1, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v11, Lcom/truecaller/messaging/data/types/Entity;->g:[Ljava/lang/String;

    array-length v12, v11

    move v13, v4

    :goto_1c
    if-ge v13, v12, :cond_2e

    aget-object v14, v11, v13

    const/4 v15, 0x1

    .line 88
    invoke-static {v1, v14, v15}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_2d

    move v11, v15

    goto :goto_1d

    :cond_2d
    add-int/lit8 v13, v13, 0x1

    goto :goto_1c

    :cond_2e
    const/4 v15, 0x1

    move v11, v4

    :goto_1d
    if-nez v11, :cond_2f

    goto/16 :goto_26

    :cond_2f
    if-eqz v2, :cond_31

    .line 89
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_30

    goto :goto_1e

    :cond_30
    move v11, v4

    goto :goto_1f

    :cond_31
    :goto_1e
    move v11, v15

    :goto_1f
    if-nez v11, :cond_37

    if-eqz v6, :cond_33

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_32

    goto :goto_20

    :cond_32
    move v11, v4

    goto :goto_21

    :cond_33
    :goto_20
    move v11, v15

    :goto_21
    if-nez v11, :cond_37

    if-eqz v9, :cond_35

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_34

    goto :goto_22

    :cond_34
    move v12, v4

    goto :goto_23

    :cond_35
    :goto_22
    move v12, v15

    :goto_23
    if-eqz v12, :cond_36

    goto :goto_24

    .line 90
    :cond_36
    new-instance v4, Ls1/k;

    .line 91
    new-instance v11, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    const-wide/16 v18, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v30, 0x38

    move-object/from16 v17, v11

    move-object/from16 v20, v1

    move-object/from16 v26, v8

    move-object/from16 v27, v6

    move-object/from16 v28, v9

    move-object/from16 v29, v2

    invoke-direct/range {v17 .. v30}, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;-><init>(JLjava/lang/String;IIIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 92
    invoke-direct {v4, v11, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    :cond_37
    :goto_24
    const/4 v1, 0x0

    .line 93
    new-instance v2, Ls1/k;

    invoke-direct {v2, v1, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_25
    move-object v8, v2

    goto :goto_27

    :cond_38
    :goto_26
    const/4 v1, 0x0

    .line 94
    new-instance v2, Ls1/k;

    invoke-direct {v2, v1, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_25

    .line 95
    :cond_39
    invoke-virtual {v13, v11}, Lcom/truecaller/messaging/data/types/Entity$a;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 96
    iget-object v1, v8, Le/a/a/a0;->j:Ljava/lang/String;

    .line 97
    iget-object v2, v8, Le/a/a/a0;->k:Ljava/lang/Double;

    .line 98
    iget-object v4, v8, Le/a/a/a0;->l:Ljava/lang/Double;

    .line 99
    invoke-virtual {v0, v9, v1, v2, v4}, Le/a/o5/r0;->l(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Ls1/k;

    move-result-object v8

    :goto_27
    const/4 v2, 0x0

    goto :goto_28

    .line 100
    :cond_3a
    new-instance v8, Ls1/k;

    sget-object v1, Le/a/o5/o0$c;->a:Le/a/o5/o0$c;

    const/4 v2, 0x0

    invoke-direct {v8, v2, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    :goto_28
    iget-object v1, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 102
    check-cast v1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v1, :cond_3b

    iput v10, v1, Lcom/truecaller/messaging/data/types/BinaryEntity;->l:I

    .line 103
    :cond_3b
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_29
    move-object v6, v2

    move-object/from16 v4, v42

    move-wide/from16 v1, p2

    goto/16 :goto_0

    .line 104
    :cond_3c
    invoke-static {v7}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v1

    const-string v2, "Promise.wrap(result)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public h([Lcom/truecaller/messaging/data/types/Entity;)Le/a/r2/x;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/messaging/data/types/Entity;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "entities"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_10

    aget-object v4, p1, v2

    .line 2
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Entity;->l()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Entity;->t()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3
    :cond_0
    check-cast v4, Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-object v4, v4, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    .line 4
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    iget-object v7, p0, Le/a/o5/r0;->a:Landroid/content/ContentResolver;

    invoke-virtual {v7, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 6
    new-instance v8, Lw3/b/a/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lw3/b/a/b;-><init>(J)V

    const-string v9, "yyyy-MM-dd_HH:mm:ss"

    invoke-static {v9}, Lw3/b/a/i0/a;->a(Ljava/lang/String;)Lw3/b/a/i0/b;

    move-result-object v9

    invoke-virtual {v8, v9}, Lw3/b/a/e0/c;->p(Lw3/b/a/i0/b;)Ljava/lang/String;

    move-result-object v8

    move v9, v1

    .line 7
    :cond_1
    new-instance v10, Ljava/io/File;

    const-string v11, "date"

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Mms"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "_"

    .line 9
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v9, :cond_2

    const-string v12, "("

    .line 11
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    .line 13
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_2
    invoke-static {v5}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "."

    .line 15
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "nameStringBuilder.toString()"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {v10, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    .line 19
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 20
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 21
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v8, "is_pending"

    const/16 v9, 0x1d

    if-lt v7, v9, :cond_4

    .line 22
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_display_name"

    invoke-virtual {v5, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_4
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_data"

    invoke-virtual {v5, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-lt v7, v9, :cond_5

    const-string v10, "external_primary"

    goto :goto_2

    :cond_5
    const-string v10, "external"

    .line 25
    :goto_2
    iget-object v11, p0, Le/a/o5/r0;->a:Landroid/content/ContentResolver;

    invoke-static {v10}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v11, v10, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_e

    const/4 v10, 0x0

    .line 26
    :try_start_0
    iget-object v11, p0, Le/a/o5/r0;->a:Landroid/content/ContentResolver;

    invoke-virtual {v11, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 27
    :try_start_1
    iget-object v11, p0, Le/a/o5/r0;->a:Landroid/content/ContentResolver;

    invoke-virtual {v11, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_8

    if-nez v11, :cond_6

    goto :goto_3

    .line 28
    :cond_6
    :try_start_2
    invoke-static {v4, v11}, Le/a/p5/s0/g;->X1(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    if-lt v7, v9, :cond_7

    .line 29
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    iget-object v8, p0, Le/a/o5/r0;->a:Landroid/content/ContentResolver;

    invoke-virtual {v8, v5, v7, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    :cond_7
    :try_start_3
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 33
    :catch_0
    :try_start_4
    invoke-interface {v11}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move v4, v6

    goto/16 :goto_e

    :catchall_0
    move-exception p1

    move-object v10, v11

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v10, v11

    goto :goto_5

    :catch_3
    move-exception v7

    move-object v10, v11

    goto :goto_6

    :catch_4
    move-exception v7

    move-object v10, v11

    goto :goto_7

    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    .line 34
    :try_start_5
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_9
    if-eqz v11, :cond_e

    .line 35
    :try_start_6
    invoke-interface {v11}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10

    goto/16 :goto_d

    :catchall_1
    move-exception p1

    :goto_4
    move-object v13, v10

    move-object v10, v4

    move-object v4, v13

    goto :goto_c

    :catch_6
    move-exception p1

    :goto_5
    move-object v0, v10

    move-object v10, v4

    goto :goto_8

    :catch_7
    move-exception v7

    :goto_6
    move-object v13, v10

    move-object v10, v4

    move-object v4, v13

    goto :goto_9

    :catch_8
    move-exception v7

    :goto_7
    move-object v13, v10

    move-object v10, v4

    move-object v4, v13

    goto :goto_a

    :catchall_2
    move-exception p1

    move-object v4, v10

    goto :goto_c

    :catch_9
    move-exception p1

    move-object v0, v10

    .line 36
    :goto_8
    :try_start_7
    iget-object v1, p0, Le/a/o5/r0;->a:Landroid/content/ContentResolver;

    invoke-static {v1, v5}, Le/a/p5/s0/f;->K(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 37
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    move-object v4, v0

    goto :goto_c

    :catch_a
    move-exception v4

    move-object v7, v4

    move-object v4, v10

    .line 38
    :goto_9
    :try_start_8
    iget-object v8, p0, Le/a/o5/r0;->a:Landroid/content/ContentResolver;

    invoke-static {v8, v5}, Le/a/p5/s0/f;->K(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 39
    invoke-static {v7}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v10, :cond_a

    .line 40
    :try_start_9
    invoke-interface {v10}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    :catch_b
    :cond_a
    if-eqz v4, :cond_e

    goto :goto_b

    :catch_c
    move-exception v4

    move-object v7, v4

    move-object v4, v10

    .line 41
    :goto_a
    :try_start_a
    iget-object v8, p0, Le/a/o5/r0;->a:Landroid/content/ContentResolver;

    invoke-static {v8, v5}, Le/a/p5/s0/f;->K(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 42
    invoke-static {v7}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v10, :cond_b

    .line 43
    :try_start_b
    invoke-interface {v10}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    :catch_d
    :cond_b
    if-eqz v4, :cond_e

    .line 44
    :goto_b
    :try_start_c
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10

    goto :goto_d

    :catchall_4
    move-exception p1

    :goto_c
    if-eqz v10, :cond_c

    .line 45
    :try_start_d
    invoke-interface {v10}, Ljava/io/Closeable;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    :catch_e
    :cond_c
    if-eqz v4, :cond_d

    .line 46
    :try_start_e
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    .line 47
    :catch_f
    :cond_d
    throw p1

    :catch_10
    :cond_e
    :goto_d
    move v4, v1

    :goto_e
    if-eqz v4, :cond_f

    move v3, v6

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 48
    :cond_10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "Promise.wrap(atLeastOnSuccessful)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final i(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/o5/r0;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/truecaller/util/TempContentProvider;->a(Landroid/content/Context;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v2, "TempContentProvider.crea\u2026ull, null) ?: return null"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v2, p0, Le/a/o5/r0;->a:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Le/a/o5/r0;->a:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_2
    invoke-static {p1, v2}, Le/a/p5/s0/g;->X1(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5
    :try_start_3
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 6
    :catch_0
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_4

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 7
    :try_start_5
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_2
    if-eqz v2, :cond_3

    .line 8
    :try_start_6
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_3
    return-object v1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    move-object v1, p1

    goto :goto_6

    :catch_6
    move-exception v3

    move-object v2, v1

    goto :goto_2

    :catch_7
    move-exception v3

    move-object v2, v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_8
    move-exception v3

    move-object p1, v1

    move-object v2, p1

    .line 9
    :goto_2
    :try_start_7
    invoke-static {v3}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 10
    iget-object v3, p0, Le/a/o5/r0;->e:Le/a/o5/u1;

    invoke-interface {v3, v0}, Le/a/o5/u1;->b(Landroid/net/Uri;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p1, :cond_4

    .line 11
    :try_start_8
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    :catch_9
    :cond_4
    if-eqz v2, :cond_6

    .line 12
    :goto_3
    :try_start_9
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_5

    :catch_a
    move-exception v3

    move-object p1, v1

    move-object v2, p1

    .line 13
    :goto_4
    :try_start_a
    invoke-static {v3}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 14
    iget-object v3, p0, Le/a/o5/r0;->e:Le/a/o5/u1;

    invoke-interface {v3, v0}, Le/a/o5/u1;->b(Landroid/net/Uri;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz p1, :cond_5

    .line 15
    :try_start_b
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :cond_5
    if-eqz v2, :cond_6

    goto :goto_3

    :catch_c
    :cond_6
    :goto_5
    return-object v1

    :catchall_2
    move-exception v0

    goto :goto_1

    :goto_6
    if-eqz v1, :cond_7

    :try_start_c
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    :catch_d
    :cond_7
    if-eqz v2, :cond_8

    .line 16
    :try_start_d
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    .line 17
    :catch_e
    :cond_8
    throw v0

    :cond_9
    return-object v1
.end method

.method public final j(Landroid/net/Uri;Z)Ls1/k;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z)",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "Le/a/o5/o0;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Le/a/o5/o0$b;->a:Le/a/o5/o0$b;

    iget-object v3, v0, Le/a/o5/r0;->b:Landroid/content/Context;

    invoke-static {v1, v3}, Le/a/p5/s0/f;->G(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 2
    iget-object v3, v0, Le/a/o5/r0;->d:Le/a/o5/s0;

    invoke-interface {v3, v1}, Le/a/o5/s0;->a(Landroid/net/Uri;)Le/a/o5/l;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3
    iget-object v5, v3, Le/a/o5/l;->b:Ljava/lang/String;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual/range {p0 .. p1}, Le/a/o5/r0;->i(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_4

    if-eqz p2, :cond_2

    .line 5
    iget-object v5, v0, Le/a/o5/r0;->e:Le/a/o5/u1;

    invoke-interface {v5, v1}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    .line 6
    :cond_2
    sget-object v5, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const-wide/16 v6, -0x1

    .line 7
    iget-object v1, v3, Le/a/o5/l;->b:Ljava/lang/String;

    move-object v8, v1

    .line 8
    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 9
    iget v13, v3, Le/a/o5/l;->a:I

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const v28, 0x3fe30

    .line 10
    invoke-static/range {v5 .. v28}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v1

    .line 11
    instance-of v3, v1, Lcom/truecaller/messaging/data/types/AudioEntity;

    if-eqz v3, :cond_3

    .line 12
    new-instance v2, Ls1/k;

    invoke-direct {v2, v1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 13
    :cond_3
    iget-object v3, v0, Le/a/o5/r0;->e:Le/a/o5/u1;

    invoke-interface {v3, v1}, Le/a/o5/u1;->a(Lcom/truecaller/messaging/data/types/BinaryEntity;)V

    .line 14
    new-instance v1, Ls1/k;

    invoke-direct {v1, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 15
    :cond_4
    new-instance v1, Ls1/k;

    invoke-direct {v1, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 16
    :cond_5
    :goto_1
    new-instance v1, Ls1/k;

    invoke-direct {v1, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 17
    :cond_6
    new-instance v1, Ls1/k;

    invoke-direct {v1, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final k(Landroid/net/Uri;Z)Ls1/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z)",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "Le/a/o5/o0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/o5/r0;->c:Le/a/o5/m;

    invoke-interface {v1, p1}, Le/a/o5/m;->f(Landroid/net/Uri;)Lcom/truecaller/messaging/data/types/ImageEntity;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_0

    .line 2
    :try_start_1
    iget-object p2, p0, Le/a/o5/r0;->e:Le/a/o5/u1;

    invoke-interface {p2, p1}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    .line 3
    :cond_0
    new-instance p1, Ls1/k;

    invoke-direct {p1, v1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Le/a/o5/r0;->e:Le/a/o5/u1;

    invoke-interface {p1, v1}, Le/a/o5/u1;->a(Lcom/truecaller/messaging/data/types/BinaryEntity;)V

    .line 6
    new-instance p1, Ls1/k;

    sget-object p2, Le/a/o5/o0$b;->a:Le/a/o5/o0$b;

    invoke-direct {p1, v0, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final l(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)Ls1/k;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ")",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "Le/a/o5/o0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    new-instance v1, Ls1/k;

    .line 2
    new-instance v15, Lcom/truecaller/messaging/data/types/LocationEntity;

    const-wide/16 v3, -0x1

    .line 3
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move-object/from16 v7, p1

    invoke-static {v7, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v6, v2

    const-wide/16 v8, -0x1

    .line 4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 5
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const-string v5, "application/vnd.truecaller.location"

    move-object v2, v15

    move-object/from16 v7, p1

    move-object/from16 v10, p2

    .line 6
    invoke-direct/range {v2 .. v14}, Lcom/truecaller/messaging/data/types/LocationEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;JLjava/lang/String;DD)V

    .line 7
    invoke-direct {v1, v15, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    new-instance v1, Ls1/k;

    sget-object v2, Le/a/o5/o0$b;->a:Le/a/o5/o0$b;

    invoke-direct {v1, v0, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-object v1
.end method

.method public final m(Landroid/net/Uri;ZJ)Ls1/k;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "ZJ)",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "Le/a/o5/o0;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    .line 1
    sget-object v4, Le/a/o5/o0$b;->a:Le/a/o5/o0$b;

    iget-object v5, v0, Le/a/o5/r0;->d:Le/a/o5/s0;

    invoke-interface {v5, v1}, Le/a/o5/s0;->d(Landroid/net/Uri;)Le/a/o5/z1;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    .line 2
    iget-object v7, v5, Le/a/o5/z1;->d:Ljava/lang/String;

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-object v7, v0, Le/a/o5/r0;->f:Le/a/o5/u0;

    .line 4
    iget v8, v5, Le/a/o5/z1;->c:I

    .line 5
    invoke-interface {v7, v8}, Le/a/o5/u0;->b(I)J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_2

    .line 6
    new-instance v1, Ls1/k;

    new-instance v4, Le/a/o5/o0$a;

    invoke-direct {v4, v2, v3}, Le/a/o5/o0$a;-><init>(J)V

    invoke-direct {v1, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 7
    :cond_2
    invoke-virtual/range {p0 .. p1}, Le/a/o5/r0;->i(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 8
    iget-object v2, v0, Le/a/o5/r0;->b:Landroid/content/Context;

    invoke-static {v12, v2}, Le/a/p5/s0/f;->G(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    if-eqz p2, :cond_3

    .line 9
    iget-object v2, v0, Le/a/o5/r0;->e:Le/a/o5/u1;

    invoke-interface {v2, v1}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    .line 10
    :cond_3
    sget-object v7, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const-wide/16 v8, -0x1

    .line 11
    iget-object v1, v5, Le/a/o5/z1;->d:Ljava/lang/String;

    move-object v10, v1

    .line 12
    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const/4 v11, 0x0

    .line 13
    iget v13, v5, Le/a/o5/z1;->a:I

    .line 14
    iget v14, v5, Le/a/o5/z1;->b:I

    .line 15
    iget v15, v5, Le/a/o5/z1;->c:I

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const v30, 0x3fe00

    .line 16
    invoke-static/range {v7 .. v30}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v1

    .line 17
    instance-of v2, v1, Lcom/truecaller/messaging/data/types/VideoEntity;

    if-eqz v2, :cond_4

    .line 18
    new-instance v2, Ls1/k;

    invoke-direct {v2, v1, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 19
    :cond_4
    iget-object v2, v0, Le/a/o5/r0;->e:Le/a/o5/u1;

    invoke-interface {v2, v1}, Le/a/o5/u1;->a(Lcom/truecaller/messaging/data/types/BinaryEntity;)V

    .line 20
    new-instance v1, Ls1/k;

    invoke-direct {v1, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 21
    :cond_5
    new-instance v1, Ls1/k;

    invoke-direct {v1, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 22
    :cond_6
    new-instance v1, Ls1/k;

    invoke-direct {v1, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 23
    :cond_7
    :goto_1
    new-instance v1, Ls1/k;

    invoke-direct {v1, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
