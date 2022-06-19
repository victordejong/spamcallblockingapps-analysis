.class public final synthetic Le/m/a/h/a/a/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/a/o1;


# instance fields
.field public final synthetic a:Le/m/a/h/a/a/p1;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/a/p1;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/h1;->a:Le/m/a/h/a/a/p1;

    iput-object p2, p0, Le/m/a/h/a/a/h1;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Le/m/a/h/a/a/h1;->a:Le/m/a/h/a/a/p1;

    iget-object v2, v0, Le/m/a/h/a/a/h1;->b:Landroid/os/Bundle;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "session_id"

    .line 2
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_5

    :cond_0
    iget-object v4, v1, Le/m/a/h/a/a/p1;->e:Ljava/util/Map;

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "chunk_intents"

    const-string v7, "status"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_7

    .line 5
    invoke-virtual {v1, v3}, Le/m/a/h/a/a/p1;->a(I)Le/m/a/h/a/a/m1;

    move-result-object v4

    iget-object v10, v4, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v10, v10, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    .line 6
    invoke-static {v7, v10}, Ln3/g0/y;->s2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iget-object v10, v4, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget v10, v10, Le/m/a/h/a/a/l1;->d:I

    invoke-static {v10, v7}, Ln3/g0/y;->P2(II)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v2, Le/m/a/h/a/a/p1;->g:Le/m/a/h/a/d/g;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v9

    iget-object v5, v4, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget v5, v5, Le/m/a/h/a/a/l1;->d:I

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v8

    const-string v5, "Found stale update for session %s with status %d."

    .line 9
    invoke-virtual {v2, v5, v6}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, v4, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v4, v2, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    iget v2, v2, Le/m/a/h/a/a/l1;->d:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    iget-object v1, v1, Le/m/a/h/a/a/p1;->b:Le/m/a/h/a/d/f1;

    .line 10
    invoke-interface {v1}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/h/a/a/s3;

    invoke-interface {v1, v3, v4}, Le/m/a/h/a/a/s3;->a(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const/4 v5, 0x5

    if-ne v2, v5, :cond_2

    .line 11
    iget-object v1, v1, Le/m/a/h/a/a/p1;->b:Le/m/a/h/a/d/f1;

    .line 12
    invoke-interface {v1}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/h/a/a/s3;

    invoke-interface {v1, v3}, Le/m/a/h/a/a/s3;->zzi(I)V

    goto/16 :goto_4

    :cond_2
    const/4 v3, 0x6

    if-ne v2, v3, :cond_e

    iget-object v1, v1, Le/m/a/h/a/a/p1;->b:Le/m/a/h/a/d/f1;

    .line 13
    invoke-interface {v1}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/h/a/a/s3;

    new-array v2, v8, [Ljava/lang/String;

    aput-object v4, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Le/m/a/h/a/a/s3;->zze(Ljava/util/List;)V

    goto/16 :goto_4

    :cond_3
    iget-object v5, v4, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iput v7, v5, Le/m/a/h/a/a/l1;->d:I

    invoke-static {v7}, Ln3/g0/y;->S2(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 14
    new-instance v2, Le/m/a/h/a/a/e1;

    .line 15
    invoke-direct {v2, v1, v3}, Le/m/a/h/a/a/e1;-><init>(Le/m/a/h/a/a/p1;I)V

    invoke-virtual {v1, v2}, Le/m/a/h/a/a/p1;->b(Le/m/a/h/a/a/o1;)Ljava/lang/Object;

    .line 16
    iget-object v1, v1, Le/m/a/h/a/a/p1;->c:Le/m/a/h/a/a/b1;

    iget-object v2, v4, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v2, v2, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v2}, Le/m/a/h/a/a/b1;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    iget-object v1, v4, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v1, v1, Le/m/a/h/a/a/l1;->f:Ljava/util/List;

    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/h/a/a/n1;

    iget-object v5, v4, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    iget-object v5, v5, Le/m/a/h/a/a/l1;->a:Ljava/lang/String;

    .line 19
    iget-object v7, v3, Le/m/a/h/a/a/n1;->a:Ljava/lang/String;

    .line 20
    invoke-static {v6, v5, v7}, Ln3/g0/y;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_5

    move v7, v9

    .line 22
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_5

    .line 23
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 24
    iget-object v10, v3, Le/m/a/h/a/a/n1;->d:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/m/a/h/a/a/k1;

    iput-boolean v8, v10, Le/m/a/h/a/a/k1;->a:Z

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 25
    :cond_7
    invoke-static {v2}, Le/m/a/h/a/a/p1;->c(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "pack_version"

    .line 26
    invoke-static {v4, v11}, Ln3/g0/y;->s2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v4, "pack_version_tag"

    .line 28
    invoke-static {v4, v11}, Ln3/g0/y;->s2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 29
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 30
    invoke-static {v7, v11}, Ln3/g0/y;->s2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v4, "total_bytes_to_download"

    .line 32
    invoke-static {v4, v11}, Ln3/g0/y;->s2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    const-string v4, "slice_ids"

    .line 34
    invoke-static {v4, v11}, Ln3/g0/y;->s2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez v4, :cond_8

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 38
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 39
    invoke-static {v6, v11, v7}, Ln3/g0/y;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 40
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v8, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez v10, :cond_9

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 43
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Intent;

    if-eqz v19, :cond_a

    const/4 v9, 0x1

    :cond_a
    new-instance v0, Le/m/a/h/a/a/k1;

    .line 44
    invoke-direct {v0, v9}, Le/m/a/h/a/a/k1;-><init>(Z)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    const/4 v9, 0x0

    goto :goto_2

    :cond_b
    const-string v0, "uncompressed_hash_sha256"

    .line 45
    invoke-static {v0, v11, v7}, Ln3/g0/y;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v0, "uncompressed_size"

    .line 47
    invoke-static {v0, v11, v7}, Ln3/g0/y;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    const-string v0, "patch_format"

    .line 49
    invoke-static {v0, v11, v7}, Ln3/g0/y;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    .line 50
    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_c

    new-instance v0, Le/m/a/h/a/a/n1;

    const/16 v25, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    move-object/from16 v24, v8

    .line 51
    invoke-direct/range {v19 .. v26}, Le/m/a/h/a/a/n1;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    const/4 v9, 0x0

    goto :goto_3

    :cond_c
    const-string v0, "compression_format"

    .line 52
    invoke-static {v0, v11, v7}, Ln3/g0/y;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    .line 53
    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    new-instance v0, Le/m/a/h/a/a/n1;

    const/16 v26, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    move-object/from16 v24, v8

    .line 54
    invoke-direct/range {v19 .. v26}, Le/m/a/h/a/a/n1;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    .line 55
    :goto_3
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 56
    :cond_d
    new-instance v0, Le/m/a/h/a/a/l1;

    move-object v10, v0

    move-object/from16 v17, v5

    .line 57
    invoke-direct/range {v10 .. v18}, Le/m/a/h/a/a/l1;-><init>(Ljava/lang/String;JIJLjava/util/List;Ljava/lang/String;)V

    new-instance v4, Le/m/a/h/a/a/m1;

    const-string v5, "app_version_code"

    .line 58
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v4, v3, v2, v0}, Le/m/a/h/a/a/m1;-><init>(IILe/m/a/h/a/a/l1;)V

    iget-object v0, v1, Le/m/a/h/a/a/p1;->e:Ljava/util/Map;

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_e
    :goto_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    return-object v1
.end method
