.class public final Le/a/a/k/a/v0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i4/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/v0;->c(Le/a/a/k/a/b2;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/k/a/v0;

.field public final synthetic b:Le/a/a/k/a/b2;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/a/k/a/v0;Le/a/a/k/a/b2;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/v0$a;->a:Le/a/a/k/a/v0;

    iput-object p2, p0, Le/a/a/k/a/v0$a;->b:Le/a/a/k/a/b2;

    iput-object p3, p0, Le/a/a/k/a/v0$a;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Landroid/graphics/Bitmap;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/k/a/v0$a;->a:Le/a/a/k/a/v0;

    iget-object v2, v0, Le/a/a/k/a/v0$a;->b:Le/a/a/k/a/b2;

    iget-object v3, v0, Le/a/a/k/a/v0$a;->c:Ljava/util/List;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v4, Le/a/a/k/a/b2;->d:Le/a/a/k/a/b2;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v4, :cond_1

    sget-object v4, Le/a/a/k/a/b2;->c:Le/a/a/k/a/b2;

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v13, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v13, v5

    :goto_1
    const/4 v2, 0x2

    .line 4
    invoke-static {v3, v2}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 7
    check-cast v8, Le/a/a/g/e0;

    if-eqz v13, :cond_3

    .line 8
    iget-object v8, v8, Le/a/a/g/e0;->l:Ljava/lang/String;

    goto :goto_3

    .line 9
    :cond_3
    iget-object v9, v1, Le/a/a/k/a/v0;->h:Le/a/o5/f0;

    .line 10
    iget-wide v10, v8, Le/a/a/g/e0;->e:J

    .line 11
    iget-object v8, v8, Le/a/a/g/e0;->f:Ljava/lang/String;

    .line 12
    invoke-interface {v9, v10, v11, v8, v5}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v8

    :goto_3
    if-eqz v8, :cond_2

    .line 13
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_4
    invoke-static {v7}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    const/4 v15, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v15

    :goto_4
    invoke-static {v4, v6, v2}, Le/a/f4/i/a;->a(Ljava/lang/String;II)Le/a/z3/i/a;

    move-result-object v4

    iget-object v7, v1, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    invoke-static {v4, v7}, Le/a/m0/a1$k;->N0(Le/a/z3/i/a;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_5

    .line 15
    :cond_6
    iget-object v4, v1, Le/a/a/k/a/v0;->k:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/a/b/a;

    .line 16
    new-instance v14, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v7, v14

    const/4 v8, 0x0

    .line 17
    invoke-static {v3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/g/e0;

    .line 18
    iget-object v9, v9, Le/a/a/g/e0;->d:Ljava/lang/String;

    const/4 v10, 0x0

    .line 19
    invoke-static {v3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/g/e0;

    .line 20
    iget-object v3, v3, Le/a/a/g/e0;->c:Ljava/lang/String;

    .line 21
    invoke-static {v3, v6, v5}, Le/m/d/y/n;->t1(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v3, 0x0

    move-object v5, v14

    move v14, v3

    const/16 v17, 0x0

    move-object v3, v15

    move/from16 v15, v17

    move/from16 v16, v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0xffd5

    .line 22
    invoke-direct/range {v7 .. v24}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 23
    invoke-static {v4, v5, v6, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 24
    new-instance v2, Le/a/a/k/a/s0;

    invoke-direct {v2, v1, v3}, Le/a/a/k/a/s0;-><init>(Le/a/a/k/a/v0;Ls1/w/d;)V

    const/4 v1, 0x1

    invoke-static {v3, v2, v1, v3}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/graphics/Bitmap;

    :goto_5
    return-object v4
.end method
