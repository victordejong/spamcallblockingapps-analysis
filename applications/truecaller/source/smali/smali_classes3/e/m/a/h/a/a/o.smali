.class public final Le/m/a/h/a/a/o;
.super Le/m/a/h/a/a/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/h/a/a/l<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Le/m/a/h/a/a/t;


# direct methods
.method public constructor <init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/h/n<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Le/m/a/h/a/a/o;->c:Le/m/a/h/a/a/t;

    .line 1
    invoke-direct {p0, p1, p2}, Le/m/a/h/a/a/l;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;)V

    return-void
.end method


# virtual methods
.method public final zzg(Ljava/util/List;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/m/a/h/a/a/l;->b:Le/m/a/h/a/a/t;

    .line 2
    iget-object v1, v1, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    .line 3
    invoke-virtual {v1}, Le/m/a/h/a/d/r;->c()V

    .line 4
    sget-object v1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "onGetSessionStates"

    .line 5
    invoke-virtual {v1, v4, v3}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6
    iget-object v1, v0, Le/m/a/h/a/a/o;->c:Le/m/a/h/a/a/t;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    iget-object v6, v1, Le/m/a/h/a/a/t;->b:Le/m/a/h/a/a/b1;

    iget-object v7, v1, Le/m/a/h/a/a/t;->c:Le/m/a/h/a/a/j2;

    .line 10
    new-instance v8, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Le/m/a/h/a/a/d0;->a:Le/m/a/h/a/a/d0;

    const-string v10, "pack_names"

    .line 12
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v11, Ljava/util/HashMap;

    .line 13
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    move v13, v2

    :goto_1
    if-ge v13, v12, :cond_1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 14
    check-cast v14, Ljava/lang/String;

    .line 15
    invoke-static {v5, v14, v6, v7, v9}, Le/m/a/h/a/a/c;->i(Landroid/os/Bundle;Ljava/lang/String;Le/m/a/h/a/a/b1;Le/m/a/h/a/a/j2;Le/m/a/h/a/a/c0;)Le/m/a/h/a/a/c;

    move-result-object v15

    .line 16
    invoke-virtual {v11, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x1

    const-string v22, ""

    const-string v23, ""

    move-object v12, v7

    .line 18
    invoke-static/range {v12 .. v23}, Le/m/a/h/a/a/c;->h(Ljava/lang/String;IIJJDILjava/lang/String;Ljava/lang/String;)Le/m/a/h/a/a/c;

    move-result-object v8

    .line 19
    invoke-virtual {v11, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v6, "total_bytes_to_download"

    .line 20
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 21
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 22
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 23
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/h/a/a/c;

    if-nez v5, :cond_3

    sget-object v6, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "onGetSessionStates: Bundle contained no pack."

    .line 24
    invoke-virtual {v6, v8, v7}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 25
    :cond_3
    invoke-virtual {v5}, Le/m/a/h/a/a/c;->d()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v8, 0x7

    if-eq v6, v8, :cond_5

    const/4 v8, 0x2

    if-ne v6, v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v8, 0x3

    if-eq v6, v8, :cond_5

    move v7, v2

    :cond_5
    :goto_3
    if-eqz v7, :cond_0

    .line 26
    invoke-virtual {v5}, Le/m/a/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 27
    :cond_6
    iget-object v1, v0, Le/m/a/h/a/a/l;->a:Le/m/a/h/a/h/n;

    .line 28
    invoke-virtual {v1, v3}, Le/m/a/h/a/h/n;->b(Ljava/lang/Object;)Z

    return-void
.end method
