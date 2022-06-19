.class public final Le/a/a/k/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/a/d;


# instance fields
.field public final a:Le/a/a/k/a/s1;

.field public final b:Landroid/content/ContentResolver;

.field public final c:Le/a/a/g/g;

.field public final d:Le/a/a/i0;

.field public final e:Le/a/p5/c;

.field public final f:Le/a/a/k/a/a/w;

.field public final g:Le/a/a/y0/q;

.field public final h:Le/a/u3/g;

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/k/a/e1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Le/a/q2/a;

.field public final m:Le/a/a/k/a/a/i;

.field public final n:Le/a/a/k/a/b1;

.field public final o:Le/a/a/k/a/a/b;

.field public final p:Le/a/a3/a;


# direct methods
.method public constructor <init>(Le/a/a/k/a/s1;Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/a/i0;Le/a/p5/c;Le/a/a/k/a/a/w;Le/a/a/y0/q;Le/a/u3/g;Lo3/a;Lo3/a;Le/a/r2/f;Le/a/q2/a;Le/a/a/k/a/a/i;Le/a/a/k/a/b1;Le/a/a/k/a/a/b;Le/a/a3/a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/a/s1;",
            "Landroid/content/ContentResolver;",
            "Le/a/a/g/g;",
            "Le/a/a/i0;",
            "Le/a/p5/c;",
            "Le/a/a/k/a/a/w;",
            "Le/a/a/y0/q;",
            "Le/a/u3/g;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/k/a/e1;",
            ">;>;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/q2/a;",
            "Le/a/a/k/a/a/i;",
            "Le/a/a/k/a/b1;",
            "Le/a/a/k/a/a/b;",
            "Le/a/a3/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

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

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "messengerStubManager"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorsFactory"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imStatusMessageManager"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingNotificationsManager"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesStorage"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imUserManager"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupHistoryHelper"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imUserInfoHelper"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acceptGroupInviteTrigger"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockManager"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Le/a/a/k/a/a/f;->a:Le/a/a/k/a/s1;

    iput-object v2, v0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    iput-object v3, v0, Le/a/a/k/a/a/f;->c:Le/a/a/g/g;

    iput-object v4, v0, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    iput-object v5, v0, Le/a/a/k/a/a/f;->e:Le/a/p5/c;

    iput-object v6, v0, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    iput-object v7, v0, Le/a/a/k/a/a/f;->g:Le/a/a/y0/q;

    iput-object v8, v0, Le/a/a/k/a/a/f;->h:Le/a/u3/g;

    iput-object v9, v0, Le/a/a/k/a/a/f;->i:Lo3/a;

    iput-object v10, v0, Le/a/a/k/a/a/f;->j:Lo3/a;

    iput-object v11, v0, Le/a/a/k/a/a/f;->k:Le/a/r2/f;

    iput-object v12, v0, Le/a/a/k/a/a/f;->l:Le/a/q2/a;

    iput-object v13, v0, Le/a/a/k/a/a/f;->m:Le/a/a/k/a/a/i;

    iput-object v14, v0, Le/a/a/k/a/a/f;->n:Le/a/a/k/a/b1;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/a/k/a/a/f;->o:Le/a/a/k/a/a/b;

    iput-object v15, v0, Le/a/a/k/a/a/f;->p:Le/a/a3/a;

    return-void
.end method

.method public static synthetic z(Le/a/a/k/a/a/f;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;Ljava/lang/String;I)V
    .locals 7

    and-int/lit8 p6, p7, 0x20

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Le/a/a/k/a/a/f;->y(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;ZZ)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/k/a/a/f;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 2
    iget-object p1, p0, Le/a/a/k/a/a/f;->i:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/a/g/m;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, p2

    move v6, p3

    .line 3
    invoke-interface/range {v0 .. v6}, Le/a/a/g/m;->t(JIIZZ)Le/a/r2/x;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseBooleanArray;

    :cond_0
    return-void
.end method

.method public final B(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/ImGroupInfo;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v2, 0x0

    const-string v3, "im_group_id = ?"

    const/4 v5, 0x0

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    iget-object v1, p0, Le/a/a/k/a/a/f;->c:Le/a/a/g/g;

    invoke-interface {v1, p1}, Le/a/a/g/g;->d(Landroid/database/Cursor;)Le/a/a/g/j0/f;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Le/a/a/g/j0/f;->h()Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 6
    :goto_0
    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public final C(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "ImGroupInfoTable.getContentUri()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const-string v2, "invite_key"

    const-string v3, "im_group_id = ?"

    const/4 v5, 0x0

    const/16 v6, 0x10

    .line 3
    invoke-static/range {v0 .. v6}, Le/a/p5/s0/f;->H(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final D(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lcom/truecaller/data/entity/messaging/Participant;

    .line 5
    iget-object v3, v3, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, v1, Le/a/a/k/a/a/f;->j:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/a/e1;

    const/4 v10, 0x1

    invoke-interface {v2, v0, v10}, Le/a/a/k/a/e1;->a(Ljava/util/Collection;Z)Le/a/r2/x;

    move-result-object v2

    invoke-virtual {v2}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_3

    .line 7
    iget-object v12, v1, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 8
    invoke-static {}, Le/a/b0/q/g0;->w()Landroid/net/Uri;

    move-result-object v13

    const-string v2, "normalized_number"

    const-string v3, "im_peer_id"

    .line 9
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v14

    const-string v2, "normalized_number IN ("

    .line 10
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    sget-object v8, Le/a/a/k/a/a/f$b;->b:Le/a/a/k/a/a/f$b;

    const/16 v9, 0x1f

    move-object v2, v0

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v9}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ") AND im_peer_id NOT NULL"

    invoke-static {v15, v2, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Ljava/lang/String;

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v8, v16

    .line 12
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 13
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 17
    new-instance v6, Lcom/truecaller/data/entity/messaging/Participant$b;

    invoke-direct {v6, v2}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 18
    iput-object v4, v6, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 19
    iput-object v5, v6, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 20
    invoke-virtual {v6}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 21
    :cond_2
    invoke-static {v3, v11}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v11, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 22
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v3, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_3
    :goto_2
    return-object v11
.end method

.method public final E(Ljava/util/Map;Lcom/truecaller/messaging/data/types/ImGroupInfo;)Lcom/truecaller/data/entity/messaging/Participant;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/truecaller/messaging/data/types/ImGroupInfo;",
            ")",
            "Lcom/truecaller/data/entity/messaging/Participant;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Le/a/a/k/a/a/f;->u(Ljava/util/ArrayList;Ljava/util/Map;Lcom/truecaller/messaging/data/types/ImGroupInfo;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p1

    .line 3
    iget-object v1, p0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    sget-object v2, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v2, "com.truecaller"

    const-string v3, "TruecallerContract.getAuthority()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Le/a/e/a2;->a0(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 4
    invoke-static {p2}, Le/a/c/p/a;->t1(Lcom/truecaller/messaging/data/types/ImGroupInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p2, p2, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->b2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Le/a/a/k/a/a/f;->o:Le/a/a/k/a/a/b;

    invoke-interface {v0, p2}, Le/a/a/k/a/a/b;->a(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Le/a/a/k/a/a/f;->r(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {v0}, Le/a/a/k/a/a/h;->b(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/a/k/a/a/f;->G(Ljava/lang/String;Lcom/truecaller/data/entity/messaging/Participant;)Ls1/k;

    move-result-object v0

    .line 4
    iget-object v0, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Le/a/l5/a/s0;->a()Le/a/l5/a/s0$b;

    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Le/a/l5/a/s0$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 8
    invoke-virtual {v1, p2}, Le/a/l5/a/s0$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 9
    iget-object p1, p0, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Le/a/l5/a/s0$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    const-string p1, "Decline"

    .line 10
    invoke-virtual {v1, p1}, Le/a/l5/a/s0$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 11
    iget-object p1, p0, Le/a/a/k/a/a/f;->k:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    invoke-virtual {v1}, Le/a/l5/a/s0$b;->a()Le/a/l5/a/s0;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public final G(Ljava/lang/String;Lcom/truecaller/data/entity/messaging/Participant;)Ls1/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ")",
            "Ls1/k<",
            "Ljava/lang/Boolean;",
            "Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Le/a/a/k/a/a/f;->a:Le/a/a/k/a/s1;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v2

    check-cast v2, Le/a/t2/a/e/a/b$a;

    if-eqz v2, :cond_1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request$a;

    move-result-object v4

    .line 3
    invoke-static {p2}, Le/a/a/k/a/a/h;->d(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object p2

    .line 4
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5
    iget-object v5, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;

    invoke-static {v5, p2}, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;->access$700(Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    .line 6
    invoke-static {p1}, Le/a/a/k/a/a/h;->a(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object p1

    .line 7
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object p2, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p2, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;

    invoke-static {p2, p1}, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;->access$300(Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    .line 9
    sget-object p1, Ls1/c0/c;->b:Ls1/c0/c$a;

    invoke-virtual {p1}, Ls1/c0/c$a;->e()J

    move-result-wide p1

    .line 10
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11
    iget-object v5, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;

    invoke-static {v5, p1, p2}, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;J)V

    .line 12
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    .line 13
    check-cast p1, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;

    invoke-virtual {v2, p1}, Le/a/t2/a/e/a/b$a;->q(Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Request;)Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;

    move-result-object p1

    const-string p2, "RemoveParticipants.Reque\u2026.removeParticipants(it) }"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance p2, Ls1/k;

    invoke-direct {p2, v0, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 15
    instance-of p2, p1, Lp3/a/i1;

    if-eqz p2, :cond_0

    check-cast p1, Lp3/a/i1;

    .line 16
    iget-object p2, p1, Lp3/a/i1;->a:Lp3/a/g1;

    const-string v2, "e.status"

    .line 17
    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p2, p2, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 19
    sget-object v4, Lp3/a/g1$b;->h:Lp3/a/g1$b;

    if-ne p2, v4, :cond_0

    .line 20
    iget-object p1, p1, Lp3/a/i1;->a:Lp3/a/g1;

    .line 21
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object p1, p1, Lp3/a/g1;->b:Ljava/lang/String;

    const-string p2, "GROUP"

    .line 23
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    new-instance p1, Ls1/k;

    invoke-direct {p1, v0, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ls1/k;

    invoke-direct {p1, v1, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 26
    :cond_1
    new-instance p1, Ls1/k;

    invoke-direct {p1, v1, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final H(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/f;->a:Le/a/a/k/a/s1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v0

    check-cast v0, Le/a/t2/a/e/a/b$a;

    if-eqz v0, :cond_3

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Le/a/b0/q/g0;->D()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v6, "im_group_id = ?"

    .line 4
    invoke-virtual {v3, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    invoke-static {p1}, Le/a/a/k/a/a/h;->a(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v4

    .line 9
    iget-object v7, p0, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    iget-object v8, p0, Le/a/a/k/a/a/f;->e:Le/a/p5/c;

    invoke-interface {v8}, Le/a/p5/c;->c()J

    move-result-wide v8

    invoke-interface {v7, v8, v9}, Le/a/a/i0;->f0(J)V

    const-string v7, ""

    .line 10
    :goto_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request$a;

    move-result-object v8

    .line 11
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12
    iget-object v9, v8, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v9, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;

    invoke-static {v9, v4}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    .line 13
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14
    iget-object v9, v8, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v9, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;

    const/16 v10, 0x32

    invoke-static {v9, v10}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;->access$700(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;I)V

    .line 15
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16
    iget-object v9, v8, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v9, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;

    invoke-static {v9, v7}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;->access$400(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v8}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v7

    .line 18
    check-cast v7, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;

    .line 19
    :try_start_0
    invoke-virtual {v0, v7}, Le/a/t2/a/e/a/b$a;->k(Lcom/truecaller/api/services/messenger/v1/GetParticipants$Request;)Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "response"

    .line 20
    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->getParticipantsInfoList()Ljava/util/List;

    move-result-object v8

    const-string v9, "response.participantsInfoList"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0xa

    .line 21
    invoke-static {v8, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-static {v9}, Le/q/f/a/d/a;->Y1(I)I

    move-result v9

    const/16 v11, 0x10

    if-ge v9, v11, :cond_0

    move v9, v11

    .line 22
    :cond_0
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 23
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 24
    check-cast v9, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    const-string v12, "it"

    .line 25
    invoke-static {v9, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v12

    const-string v13, "it.peer"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Le/a/c/p/a;->i3(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v12

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getRoles()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v11, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p0, v1, v11, p1}, Le/a/a/k/a/a/f;->v(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->getUserInfoMap()Ljava/util/Map;

    move-result-object v8

    const-string v9, "response.userInfoMap"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 28
    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->getParticipantsInfoCount()I

    move-result v8

    if-ge v8, v10, :cond_2

    .line 29
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 30
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v7, "are_participants_stale"

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v5

    .line 31
    invoke-virtual {v0, v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 33
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v0, "com.truecaller"

    const-string v2, "TruecallerContract.getAuthority()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Le/a/e/a2;->a0(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 35
    iget-object p1, p0, Le/a/a/k/a/a/f;->n:Le/a/a/k/a/b1;

    invoke-interface {p1, v3}, Le/a/a/k/a/b1;->d(Ljava/util/Map;)V

    return-void

    .line 36
    :cond_2
    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/GetParticipants$Response;->getNextPageToken()Ljava/lang/String;

    move-result-object v7

    const-string v8, "response.nextPageToken"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    :cond_3
    return-void
.end method

.method public final I(Ljava/lang/String;Lcom/truecaller/data/entity/messaging/Participant;)Ls1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ")",
            "Ls1/k<",
            "Ljava/lang/Boolean;",
            "Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/a/k/a/a/f;->G(Ljava/lang/String;Lcom/truecaller/data/entity/messaging/Participant;)Ls1/k;

    move-result-object v0

    .line 2
    iget-object v1, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {p2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, v1, p2, p1}, Le/a/a/k/a/a/f;->x(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    sget-object p2, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string p2, "com.truecaller"

    const-string v2, "TruecallerContract.getAuthority()"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, v1}, Le/a/e/a2;->a0(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    :cond_0
    return-object v0
.end method

.method public final J(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "ImGroupInfoTable.getContentUri()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "roles"

    const-string v5, "im_group_id = ?"

    .line 3
    invoke-static {v0, v1, p1, v5, v3}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :cond_1
    :goto_0
    return v2
.end method

.method public final K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Le/a/l5/a/s0;->a()Le/a/l5/a/s0$b;

    move-result-object v0

    const-string v1, "n/a"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Le/a/l5/a/s0$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 3
    invoke-virtual {v0, v1}, Le/a/l5/a/s0$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 4
    iget-object p1, p0, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/s0$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 5
    invoke-virtual {v0, p2}, Le/a/l5/a/s0$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    const-string p1, "link"

    .line 6
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/4 v1, 0x6

    aget-object p2, p2, v1

    invoke-virtual {v0, p2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 7
    iput-object p1, v0, Le/a/l5/a/s0$b;->e:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 p2, 0x1

    aput-boolean p2, p1, v1

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    const/4 v1, 0x7

    aget-object p1, p1, v1

    invoke-virtual {v0, p1, p3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 10
    iput-object p3, v0, Le/a/l5/a/s0$b;->f:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {v0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean p2, p1, v1

    .line 12
    :cond_1
    iget-object p1, p0, Le/a/a/k/a/a/f;->k:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    invoke-virtual {v0}, Le/a/l5/a/s0$b;->a()Le/a/l5/a/s0;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public final L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Le/a/l5/a/s0;->a()Le/a/l5/a/s0$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Le/a/l5/a/s0$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 3
    invoke-virtual {v0, p2}, Le/a/l5/a/s0$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 4
    invoke-virtual {v0, p3}, Le/a/l5/a/s0$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    const-string p1, "Receive"

    .line 5
    invoke-virtual {v0, p1}, Le/a/l5/a/s0$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/s0$b;

    .line 6
    iget-object p1, p0, Le/a/a/k/a/a/f;->k:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a0;

    invoke-virtual {v0}, Le/a/l5/a/s0$b;->a()Le/a/l5/a/s0;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public final M(Ljava/lang/String;Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->getTitleInfoCase()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    move-result-object v1

    sget-object v2, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->TITLEUNCHANGED:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->getAvatarInfoCase()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$AvatarInfoCase;

    move-result-object v1

    sget-object v2, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$AvatarInfoCase;->AVATARUNCHANGED:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$AvatarInfoCase;

    if-eq v1, v2, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->getAvatar()Ljava/lang/String;

    move-result-object p2

    const-string v1, "avatar"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_2

    return v1

    .line 7
    :cond_2
    iget-object p2, p0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 8
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    const-string p1, "im_group_id=?"

    .line 9
    invoke-virtual {p2, v2, v0, p1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public final N(Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;
    .locals 17

    move-object/from16 v9, p0

    const-string v10, "TruecallerContract.getAuthority()"

    const-string v11, "com.truecaller"

    const-string v12, "response.permissions"

    .line 1
    iget-object v0, v9, Le/a/a/k/a/a/f;->a:Le/a/a/k/a/s1;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v0, v13, v14, v13}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v0

    check-cast v0, Le/a/t2/a/e/a/b$a;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request$a;

    move-result-object v1

    .line 3
    invoke-static/range {p1 .. p1}, Le/a/a/k/a/a/h;->a(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5
    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;

    invoke-static {v3, v2}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;->access$300(Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    .line 6
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    move-result-object v2

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User$a;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;

    move-object/from16 v5, p2

    invoke-static {v4, v5}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;->access$100(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10
    iget-object v4, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;

    invoke-static {v4, v3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->access$1800(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;)V

    .line 11
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12
    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    invoke-static {v3, v2}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;->access$600(Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    .line 13
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14
    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;

    move/from16 v6, p3

    invoke-static {v2, v6}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;->access$900(Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;I)V

    .line 15
    sget-object v2, Ls1/c0/c;->b:Ls1/c0/c$a;

    invoke-virtual {v2}, Ls1/c0/c$a;->e()J

    move-result-wide v2

    .line 16
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 17
    iget-object v4, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;

    invoke-static {v4, v2, v3}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;J)V

    .line 18
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    .line 19
    check-cast v1, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;

    invoke-virtual {v0, v1}, Le/a/t2/a/e/a/b$a;->x(Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Request;)Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;

    move-result-object v0

    const-string v1, "UpdateRoles.Request.newB\u2026 { stub.updateRoles(it) }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;->getPermissions()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    move-result-object v1

    invoke-static {v1, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/a/k/a/a/h;->c(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v16, 0x20

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v7

    move-object v7, v8

    move/from16 v8, v16

    invoke-static/range {v1 .. v8}, Le/a/a/k/a/a/f;->z(Le/a/a/k/a/a/f;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;Ljava/lang/String;I)V

    .line 22
    iget-object v1, v9, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    sget-object v2, Le/a/m0/a1;->a:Landroid/net/Uri;

    invoke-static {v11, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v11, v15}, Le/a/e/a2;->a0(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 23
    instance-of v1, v0, Lp3/a/i1;

    if-eqz v1, :cond_0

    check-cast v0, Lp3/a/i1;

    .line 24
    iget-object v1, v0, Lp3/a/i1;->a:Lp3/a/g1;

    const-string v2, "e.status"

    .line 25
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v1, v1, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 27
    sget-object v3, Lp3/a/g1$b;->f:Lp3/a/g1$b;

    if-ne v1, v3, :cond_0

    .line 28
    iget-object v0, v0, Lp3/a/i1;->a:Lp3/a/g1;

    .line 29
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, v0, Lp3/a/g1;->b:Ljava/lang/String;

    const-string v1, "UNSUPPORTED_ROLES"

    .line 31
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, v9, Le/a/a/k/a/a/f;->a:Le/a/a/k/a/s1;

    invoke-static {v0, v13, v14, v13}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v0

    check-cast v0, Le/a/t2/a/e/a/b$a;

    if-eqz v0, :cond_0

    .line 33
    iget-object v1, v9, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 34
    :try_start_1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetPermissions$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/GetPermissions$Request$a;

    move-result-object v1

    .line 35
    invoke-static/range {p1 .. p1}, Le/a/a/k/a/a/h;->a(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v2

    .line 36
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 37
    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/GetPermissions$Request;

    invoke-static {v3, v2}, Lcom/truecaller/api/services/messenger/v1/GetPermissions$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/GetPermissions$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    .line 38
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    .line 39
    check-cast v1, Lcom/truecaller/api/services/messenger/v1/GetPermissions$Request;

    invoke-virtual {v0, v1}, Le/a/t2/a/e/a/b$a;->l(Lcom/truecaller/api/services/messenger/v1/GetPermissions$Request;)Lcom/truecaller/api/services/messenger/v1/GetPermissions$Response;

    move-result-object v0

    const-string v1, "GetPermissions.Request.n\u2026stub.getPermissions(it) }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/GetPermissions$Response;->getRoles()I

    move-result v5

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/GetPermissions$Response;->getPermissions()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    move-result-object v0

    invoke-static {v0, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/a/k/a/a/h;->c(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x20

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v8}, Le/a/a/k/a/a/f;->z(Le/a/a/k/a/a/f;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;Ljava/lang/String;I)V

    .line 42
    iget-object v0, v9, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    invoke-static {v11, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v11, v14}, Le/a/e/a2;->a0(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-object v13
.end method

.method public a(Ln3/b/a/h;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {}, Le/m/d/p/a;->b()Le/m/d/p/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/p/a;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 2
    new-instance v1, Le/a/a/k/a/a/f$c;

    invoke-direct {v1, p1}, Le/a/a/k/a/a/f$c;-><init>(Ln3/b/a/h;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/tasks/Task;->g(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string v0, "FirebaseDynamicLinks.get\u2026      }\n                }"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;JZ)V
    .locals 15

    move-object v0, p0

    const-string v1, "event"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    .line 2
    new-instance v11, Le/a/a/k/a/a/b0;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v3

    const-string v12, "event.context"

    invoke-static {v3, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v3

    const-string v13, "event.context.group"

    invoke-static {v3, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v14, "event.context.group.id"

    invoke-static {v4, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;->getDate()I

    move-result v3

    invoke-static {v3}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;->getMessageId()Ljava/lang/String;

    move-result-object v9

    const-string v3, "event.messageId"

    invoke-static {v9, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v11

    move-wide/from16 v7, p2

    move/from16 v10, p4

    invoke-direct/range {v3 .. v10}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;Z)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v3

    const-string v4, "it"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getTypeCase()Lcom/truecaller/api/services/messenger/v1/models/Peer$TypeCase;

    move-result-object v5

    sget-object v6, Lcom/truecaller/api/services/messenger/v1/models/Peer$TypeCase;->USER:Lcom/truecaller/api/services/messenger/v1/models/Peer$TypeCase;

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v6

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v6

    .line 4
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;->getParticipantsList()Ljava/util/List;

    move-result-object v3

    const-string v5, "event.participantsList"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v3, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 7
    check-cast v9, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    .line 8
    invoke-static {v9, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v9

    const-string v10, "it.user"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 9
    :cond_3
    invoke-interface {v1, v11, v6, v7}, Le/a/a/k/a/a/w;->e(Le/a/a/k/a/a/b0;Ljava/lang/String;Ljava/util/List;)V

    if-nez p4, :cond_5

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;->getParticipantsList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 14
    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    .line 15
    invoke-static {v6, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Le/a/c/p/a;->i3(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v2

    invoke-static {v2, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v2

    invoke-static {v2, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5, v2}, Le/a/a/k/a/a/f;->x(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V

    .line 16
    iget-object v2, v0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    sget-object v3, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v3, "com.truecaller"

    const-string v4, "TruecallerContract.getAuthority()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Le/a/e/a2;->a0(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    :cond_5
    return-void
.end method

.method public c(Ljava/lang/String;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v1, p2

    const-string v2, "groupId"

    invoke-static {v10, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/16 v4, 0x8

    .line 2
    invoke-virtual {v0, v10, v2, v4}, Le/a/a/k/a/a/f;->N(Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;

    move-result-object v11

    if-eqz v11, :cond_2

    const/4 v12, 0x1

    if-ne v1, v12, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    move v13, v3

    .line 3
    :goto_0
    iget-object v14, v0, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    new-instance v15, Le/a/a/k/a/a/b0;

    invoke-virtual {v11}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;->getDate()I

    move-result v1

    invoke-static {v1}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v3

    invoke-virtual {v11}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;->getSeq()J

    move-result-wide v5

    invoke-virtual {v11}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;->getMessageId()Ljava/lang/String;

    move-result-object v7

    const-string v1, "response.messageId"

    invoke-static {v7, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0x10

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;ZI)V

    invoke-interface {v14, v15}, Le/a/a/k/a/a/w;->q(Le/a/a/k/a/a/b0;)V

    .line 4
    iget-object v1, v0, Le/a/a/k/a/a/f;->m:Le/a/a/k/a/a/i;

    invoke-virtual {v11}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;->getSeq()J

    move-result-wide v3

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Le/a/a/k/a/a/i;->c(Ljava/lang/String;JIJLjava/lang/Integer;)Z

    return v12

    .line 5
    :cond_1
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :cond_2
    return v3
.end method

.method public d(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;JZ)V
    .locals 14

    move-object v0, p0

    const-string v1, "event"

    move-object v2, p1

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    new-instance v11, Le/a/a/k/a/a/b0;

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v3

    const-string v12, "event.context"

    invoke-static {v3, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v3

    const-string v13, "event.context.group"

    invoke-static {v3, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v3, "event.context.group.id"

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;->getDate()I

    move-result v3

    invoke-static {v3}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;->getMessageId()Ljava/lang/String;

    move-result-object v9

    const-string v3, "event.messageId"

    invoke-static {v9, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v11

    move-wide/from16 v7, p2

    move/from16 v10, p4

    invoke-direct/range {v3 .. v10}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;Z)V

    invoke-interface {v1, v11}, Le/a/a/k/a/a/w;->m(Le/a/a/k/a/a/b0;)V

    if-nez p4, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupDeleted;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v2

    invoke-static {v2, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v2

    invoke-static {v2, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Le/a/b0/q/g0;->D()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const-string v7, "im_group_id=?"

    .line 5
    invoke-virtual {v3, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 7
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "roles"

    invoke-virtual {v3, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 10
    sget-object v5, Le/a/a/k/a/a/h;->a:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    sget-object v5, Le/a/a/k/a/a/h;->a:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 11
    invoke-static {v5}, Le/a/a/k/a/a/h;->f(Lcom/truecaller/messaging/data/types/ImGroupPermissions;)Landroid/content/ContentValues;

    move-result-object v5

    .line 12
    invoke-virtual {v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v6

    const-string v2, "im_group_id = ?"

    .line 13
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v2, v0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    sget-object v3, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v3, "com.truecaller"

    const-string v4, "TruecallerContract.getAuthority()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Le/a/e/a2;->a0(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Ls1/k;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    const-string v0, "inviteKey"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2
    sget-wide v6, Le/a/a/k/a/a/h;->c:J

    sub-long/2addr v4, v6

    .line 3
    iget-object v6, v1, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 4
    invoke-static {}, Le/a/b0/q/g0;->r()Landroid/net/Uri;

    move-result-object v7

    const-string v12, "invite_key"

    const-string v13, "title"

    const-string v14, "avatar"

    const-string v15, "user_count"

    const-string v2, "user_list"

    .line 5
    filled-new-array {v12, v13, v14, v15, v2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x2

    new-array v10, v11, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v10, v9

    .line 6
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v10, v4

    const/4 v0, 0x0

    const-string v5, "invite_key = ? AND timestamp > ?"

    move v4, v9

    move-object v9, v5

    move v5, v11

    move-object v11, v0

    .line 7
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    .line 8
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "getString(0)"

    invoke-static {v9, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 11
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v0, "getString(1)"

    invoke-static {v11, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v0, 0x3

    .line 13
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/4 v0, 0x4

    .line 14
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v10, Le/m/e/k;

    invoke-direct {v10}, Le/m/e/k;-><init>()V

    .line 15
    new-instance v16, Le/a/a/k/a/a/e;

    invoke-direct/range {v16 .. v16}, Le/a/a/k/a/a/e;-><init>()V

    invoke-virtual/range {v16 .. v16}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    const-string v4, "object : TypeToken<T>() {}.type"

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v10, v0, v5}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "this.fromJson(json, typeToken<T>())"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 17
    :try_start_2
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    :goto_1
    instance-of v4, v0, Ls1/l$a;

    if-eqz v4, :cond_0

    move-object v0, v8

    .line 19
    :cond_0
    check-cast v0, Ljava/util/List;

    move-object/from16 v21, v0

    goto :goto_2

    :cond_1
    move-object/from16 v21, v8

    .line 20
    :goto_2
    new-instance v0, Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;

    move-object/from16 v16, v0

    move-object/from16 v17, v9

    move-object/from16 v18, v11

    invoke-direct/range {v16 .. v21}, Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x0

    const/4 v5, 0x2

    goto :goto_0

    .line 21
    :cond_2
    invoke-static {v6, v8}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 22
    invoke-static {v7}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 23
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-static {v6, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_3
    move-object v0, v8

    :goto_3
    if-eqz v0, :cond_4

    .line 24
    new-instance v2, Ls1/k;

    invoke-direct {v2, v0, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 25
    :cond_4
    iget-object v0, v1, Le/a/a/k/a/a/f;->a:Le/a/a/k/a/s1;

    const/4 v4, 0x1

    invoke-static {v0, v8, v4, v8}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v0

    check-cast v0, Le/a/t2/a/e/a/b$a;

    const-string v4, "unknown"

    if-eqz v0, :cond_a

    .line 26
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request$a;

    move-result-object v5

    .line 27
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 28
    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request;

    invoke-static {v6, v3}, Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request;->access$300(Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request;Ljava/lang/String;)V

    .line 29
    sget-object v6, Ls1/c0/c;->b:Ls1/c0/c$a;

    invoke-virtual {v6}, Ls1/c0/c$a;->e()J

    move-result-wide v6

    .line 30
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 31
    iget-object v9, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v9, Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request;

    invoke-static {v9, v6, v7}, Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request;J)V

    .line 32
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    .line 33
    check-cast v5, Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request;

    .line 34
    :try_start_4
    invoke-virtual {v0, v5}, Le/a/t2/a/e/a/b$a;->i(Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request;)Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Response;

    move-result-object v0
    :try_end_4
    .catch Lp3/a/i1; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v4, "response"

    .line 35
    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Response;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "response.title"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Response;->getAvatar()Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Response;->getSize()I

    move-result v6

    .line 38
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Response;->getUserInfoList()Ljava/util/List;

    move-result-object v0

    const-string v7, "response.userInfoList"

    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v0, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 41
    check-cast v9, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;

    .line 42
    new-instance v10, Lcom/truecaller/messaging/data/types/ImInviteUserInfo;

    const-string v11, "it"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v8, "it.name"

    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v11, v8}, Lcom/truecaller/messaging/data/types/ImInviteUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    goto :goto_4

    .line 43
    :cond_5
    new-instance v0, Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;

    move-object v8, v2

    move-object v2, v0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 44
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 45
    iget-object v3, v0, Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;->a:Ljava/lang/String;

    .line 46
    invoke-virtual {v2, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v3, v0, Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;->b:Ljava/lang/String;

    .line 48
    invoke-virtual {v2, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v3, v0, Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;->c:Ljava/lang/String;

    .line 50
    invoke-virtual {v2, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget v3, v0, Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;->d:I

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    new-instance v3, Le/m/e/k;

    invoke-direct {v3}, Le/m/e/k;-><init>()V

    .line 54
    iget-object v4, v0, Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;->e:Ljava/util/List;

    .line 55
    invoke-virtual {v3, v4}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    iget-object v3, v1, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/b0/q/g0;->r()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 58
    new-instance v2, Ls1/k;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :catch_0
    move-object v3, v8

    .line 59
    new-instance v0, Ls1/k;

    invoke-direct {v0, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 60
    iget-object v0, v2, Lp3/a/i1;->a:Lp3/a/g1;

    const-string v5, "e.status"

    .line 61
    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, v0, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 63
    sget-object v6, Lp3/a/g1$b;->h:Lp3/a/g1$b;

    if-ne v0, v6, :cond_6

    .line 64
    iget-object v0, v2, Lp3/a/i1;->a:Lp3/a/g1;

    .line 65
    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, v0, Lp3/a/g1;->b:Ljava/lang/String;

    const-string v6, "GROUP"

    .line 67
    invoke-static {v0, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "groupNotFound"

    goto :goto_5

    .line 68
    :cond_6
    iget-object v0, v2, Lp3/a/i1;->a:Lp3/a/g1;

    .line 69
    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, v0, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 71
    sget-object v6, Lp3/a/g1$b;->f:Lp3/a/g1$b;

    if-ne v0, v6, :cond_7

    .line 72
    iget-object v0, v2, Lp3/a/i1;->a:Lp3/a/g1;

    .line 73
    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, v0, Lp3/a/g1;->b:Ljava/lang/String;

    const-string v6, "WRONG_DC"

    .line 75
    invoke-static {v0, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "crossDc"

    goto :goto_5

    .line 76
    :cond_7
    iget-object v0, v2, Lp3/a/i1;->a:Lp3/a/g1;

    .line 77
    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, v0, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 79
    sget-object v6, Lp3/a/g1$b;->h:Lp3/a/g1$b;

    if-ne v0, v6, :cond_8

    .line 80
    iget-object v0, v2, Lp3/a/i1;->a:Lp3/a/g1;

    .line 81
    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, v0, Lp3/a/g1;->b:Ljava/lang/String;

    const-string v2, "INVITE_KEY"

    .line 83
    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "expiredLink"

    goto :goto_5

    :cond_8
    move-object v0, v4

    .line 84
    :goto_5
    invoke-static {v0, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_9

    .line 85
    iget-object v2, v1, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/b0/q/g0;->r()Landroid/net/Uri;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const-string v3, "invite_key = ?"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    :cond_9
    new-instance v2, Ls1/k;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    move-object v3, v8

    .line 87
    new-instance v0, Ls1/k;

    invoke-direct {v0, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    move-object v2, v0

    :goto_7
    return-object v2
.end method

.method public f(Ljava/lang/String;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/api/services/messenger/v1/events/Event;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/k/a/a/f;->B(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/k/a/a/f;->m:Le/a/a/k/a/a/i;

    invoke-interface {v0, p1, p2}, Le/a/a/k/a/a/i;->b(Lcom/truecaller/messaging/data/types/ImGroupInfo;Ls1/z/b/l;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;Lcom/truecaller/api/services/messenger/v1/events/Event;)Z
    .locals 9

    const-string v0, "groupId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v2

    const-string v0, "ImGroupInfoTable.getContentUri()"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    const-string v3, "current_sequence_number"

    const-string v4, "im_group_id = ?"

    const/4 v6, 0x0

    const/16 v7, 0x10

    .line 3
    invoke-static/range {v1 .. v7}, Le/a/p5/s0/f;->F(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_7

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getPayloadCase()Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    move-result-object p1

    sget-object v1, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->GROUP_CREATED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getPayloadCase()Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    move-result-object p1

    sget-object v1, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->PARTICIPANT_ADDED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getParticipantAdded()Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;

    move-result-object p2

    const-string v1, "participantAdded"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getParticipantsList()Ljava/util/List;

    move-result-object p2

    const-string v1, "participantAdded.participantsList"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    const-string v2, "it"

    .line 10
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    const-string v2, "it.peer"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v1

    const-string v2, "it.peer.user"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    move p1, v0

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v8

    :goto_2
    if-eqz p1, :cond_5

    return v8

    .line 11
    :cond_5
    iget-object p1, p0, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->G3()I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    iget-object p1, p0, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {p1, v0}, Le/a/a/i0;->s2(I)V

    :goto_3
    return v0

    .line 13
    :cond_7
    invoke-virtual {p2}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getContextSeq()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, v1, p1

    if-gtz p1, :cond_8

    goto :goto_4

    :cond_8
    move v0, v8

    :goto_4
    return v0
.end method

.method public h(Ljava/lang/String;)I
    .locals 6

    const-string v0, "groupId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->D()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "ImGroupParticipantsTable.getContentUri()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "COUNT(*)"

    const-string v4, "im_group_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v0

    .line 3
    invoke-static {v1, v2, v3, v4, v5}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public i(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;JZ)V
    .locals 15

    move-object v0, p0

    const-string v1, "event"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;->getInviteKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;->getGroupId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "event.groupId"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Le/a/a/k/a/a/f;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    if-nez p4, :cond_3

    .line 3
    iget-object v7, v0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 4
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v8

    .line 5
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "invite_key"

    invoke-virtual {v9, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v4, [Ljava/lang/String;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;->getGroupId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const-string v5, "im_group_id = ?"

    .line 7
    invoke-virtual {v7, v8, v9, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_4

    .line 8
    iget-object v3, v0, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    .line 9
    new-instance v4, Le/a/a/k/a/a/b0;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;->getGroupId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;->getDate()I

    move-result v5

    invoke-static {v5}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;->getMessageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v7, v4

    move-wide/from16 v11, p2

    move/from16 v14, p4

    invoke-direct/range {v7 .. v14}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;Z)V

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    const-string v2, "event.sender"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v1

    const-string v2, "event.sender.user"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event.sender.user.id"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v3, v4, v1}, Le/a/a/k/a/a/w;->h(Le/a/a/k/a/a/b0;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public j(Ljava/lang/String;)Ljava/lang/Long;
    .locals 8

    const-string v0, "imGroupId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/m0/a1$f;->a()Landroid/net/Uri;

    move-result-object v2

    const-string v0, "ConversationsTable.getContentUri()"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const-string v3, "_id"

    const-string v4, "tc_group_id = ?"

    const/4 v6, 0x0

    const/16 v7, 0x10

    .line 3
    invoke-static/range {v1 .. v7}, Le/a/p5/s0/f;->F(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;JZ)V
    .locals 33

    move-object/from16 v0, p0

    const-string v1, "event"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getMessageId()Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Le/a/a/k/a/a/f;->n:Le/a/a/k/a/b1;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getUserInfoMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "event.userInfoMap"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Le/a/a/k/a/b1;->d(Ljava/util/Map;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getParticipantsList()Ljava/util/List;

    move-result-object v1

    const-string v3, "event.participantsList"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0xa

    .line 4
    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Le/q/f/a/d/a;->Y1(I)I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_1

    move v4, v5

    .line 5
    :cond_1
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v6, "it.peer"

    const-string v7, "it"

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    .line 8
    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v7

    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Le/a/c/p/a;->i3(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v6

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getRoles()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    const-string v4, "event.sender"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/c/p/a;->i3(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getSenderRoles()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 10
    new-instance v9, Ls1/k;

    invoke-direct {v9, v1, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-static {v5, v9}, Ls1/u/i;->p0(Ljava/util/Map;Ls1/k;)Ljava/util/Map;

    move-result-object v1

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getGroupId()Ljava/lang/String;

    move-result-object v5

    const-string v8, "event.groupId"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Le/a/a/k/a/a/f;->J(Ljava/lang/String;)Z

    move-result v5

    .line 13
    iget-object v9, v0, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {v9}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getParticipantsList()Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    invoke-static {v11, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v11

    invoke-static {v11, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v11

    const-string v12, "it.peer.user"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v15}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_4
    move-object v9, v10

    :goto_1
    check-cast v9, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    if-eqz v9, :cond_6

    .line 15
    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getRoles()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 16
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    :cond_6
    invoke-static {v10}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v3

    const-string v6, "event.sender.user.id"

    const-string v7, "event.sender.user"

    if-eqz v3, :cond_7

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v10

    invoke-static {v10, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v10

    invoke-static {v10, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v10}, Le/a/a/k/a/a/f;->F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    .line 18
    :cond_7
    new-instance v3, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getGroupId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v11

    const-string v13, "event.groupInfo"

    invoke-static {v11, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v12

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getAvatar()Ljava/lang/String;

    move-result-object v12

    .line 22
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getDate()I

    move-result v2

    move-object/from16 p4, v1

    int-to-long v1, v2

    invoke-virtual {v14, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v14

    invoke-static {v14, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v14

    invoke-static {v14, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v16

    if-eqz v9, :cond_8

    .line 24
    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getRoles()I

    move-result v9

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    :goto_3
    move/from16 v17, v9

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getPermissions()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    move-result-object v9

    const-string v14, "event.permissions"

    invoke-static {v9, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Le/a/a/k/a/a/h;->c(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, -0x1

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    if-eqz v5, :cond_9

    .line 26
    iget-object v9, v0, Le/a/a/k/a/a/f;->e:Le/a/p5/c;

    invoke-interface {v9}, Le/a/p5/c;->c()J

    move-result-wide v28

    goto :goto_4

    :cond_9
    const-wide/16 v28, 0x0

    :goto_4
    const/16 v30, 0x0

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getGroupInfoExt()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    move-result-object v9

    const-string v14, "event.groupInfoExt"

    invoke-static {v9, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;->getInviteKey()Ljava/lang/String;

    move-result-object v31

    move-object v9, v3

    move-object/from16 v32, v13

    move-wide v13, v1

    move-object v1, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move-wide/from16 v20, v21

    move-wide/from16 v22, v23

    move/from16 v24, v25

    move-wide/from16 v25, v26

    move-wide/from16 v27, v28

    move/from16 v29, v5

    .line 28
    invoke-direct/range {v9 .. v31}, Lcom/truecaller/messaging/data/types/ImGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;IIJJZJJIILjava/lang/String;)V

    move-object/from16 v2, p4

    .line 29
    invoke-virtual {v0, v2, v3}, Le/a/a/k/a/a/f;->E(Ljava/util/Map;Lcom/truecaller/messaging/data/types/ImGroupInfo;)Lcom/truecaller/data/entity/messaging/Participant;

    .line 30
    iget-object v2, v0, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    .line 31
    new-instance v3, Le/a/a/k/a/a/b0;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getGroupId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getDate()I

    move-result v9

    invoke-static {v9}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getMessageId()Ljava/lang/String;

    move-result-object v15

    const-string v9, "event.messageId"

    invoke-static {v15, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v17, 0x10

    move-object v9, v3

    move-wide/from16 v13, p2

    invoke-direct/range {v9 .. v17}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;ZI)V

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v9

    invoke-static {v9, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v9

    invoke-static {v9, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v10

    move-object/from16 v11, v32

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v10

    const-string v11, "event.groupInfo.title"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {v2, v3, v9, v10}, Le/a/a/k/a/a/w;->j(Le/a/a/k/a/a/b0;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_c

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v2}, Le/a/a/k/a/a/f;->B(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v3, v0, Le/a/a/k/a/a/f;->g:Le/a/a/y0/q;

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Le/a/a/y0/q;->g(Lcom/truecaller/messaging/data/types/ImGroupInfo;Z)V

    .line 37
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupCreated;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v3

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v3

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_b

    move-object v15, v1

    goto :goto_5

    :cond_b
    const-string v15, ""

    :goto_5
    invoke-virtual {v0, v2, v3, v15}, Le/a/a/k/a/a/f;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public l(Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;JZ)V
    .locals 46

    move-object/from16 v0, p0

    const-string v1, "event"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Le/a/a/k/a/a/f;->n:Le/a/a/k/a/b1;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getUserInfoMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, "event.userInfoMap"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Le/a/a/k/a/b1;->d(Ljava/util/Map;)V

    const-string v1, "event.messageId"

    const-string v3, "it.peer.user"

    const-string v4, "event.sender.user.id"

    const-string v5, "event.participantsList"

    const-string v6, "event.sender.user"

    const-string v7, "event.sender"

    const-string v8, "it.peer"

    const-string v9, "it"

    const-string v10, "event.context.group.id"

    const-string v11, "event.context.group"

    const-string v12, "event.context"

    if-eqz p4, :cond_1

    .line 2
    iget-object v13, v0, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    .line 3
    new-instance v15, Le/a/a/k/a/a/b0;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v14

    invoke-static {v14, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v12

    invoke-static {v12, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getDate()I

    move-result v10

    invoke-static {v10}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getMessageId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v21, 0x1

    move-object v14, v15

    move-object v1, v15

    move-object v15, v11

    move-wide/from16 v18, p2

    move-object/from16 v20, v10

    invoke-direct/range {v14 .. v21}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;Z)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v10

    invoke-static {v10, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v7

    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getParticipantsList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 8
    check-cast v7, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    .line 9
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v7

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v7

    invoke-static {v7, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v13, v1, v6, v5}, Le/a/a/k/a/a/w;->l(Le/a/a/k/a/a/b0;Ljava/lang/String;Ljava/util/List;)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getMessageId()Ljava/lang/String;

    return-void

    .line 12
    :cond_1
    iget-object v13, v0, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {v13}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v13

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getParticipantsList()Ljava/util/List;

    move-result-object v14

    invoke-static {v14, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v16, 0x0

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v2, v15

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v2

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v2, p1

    goto :goto_1

    :cond_3
    move-object/from16 v15, v16

    :goto_2
    check-cast v15, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    if-eqz v15, :cond_5

    .line 14
    invoke-virtual {v15}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getRoles()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 15
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    :cond_5
    invoke-static/range {v16 .. v16}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v2

    invoke-static {v2, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v2

    invoke-static {v2, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v14

    invoke-static {v14, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v14

    invoke-static {v14, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v14}, Le/a/a/k/a/a/f;->F(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    :cond_6
    if-eqz v15, :cond_1b

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getExistingParticipantsList()Ljava/util/List;

    move-result-object v2

    const-string v14, "event.existingParticipantsList"

    invoke-static {v2, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v14, 0xa

    .line 18
    invoke-static {v2, v14}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-static {v14}, Le/q/f/a/d/a;->Y1(I)I

    move-result v14

    move-object/from16 v16, v1

    const/16 v1, 0x10

    if-ge v14, v1, :cond_7

    const/16 v14, 0x10

    .line 19
    :cond_7
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v14}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 20
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 21
    check-cast v14, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    .line 22
    invoke-static {v14, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p4, v2

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v2

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/c/p/a;->i3(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v2

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getRoles()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p4

    goto :goto_4

    .line 23
    :cond_8
    sget-object v2, Le/a/a/k/a/a/h;->a:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getParticipantsList()Ljava/util/List;

    move-result-object v2

    const-string v14, "participantsList"

    invoke-static {v2, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_a

    :cond_9
    move-object/from16 v17, v3

    goto :goto_6

    .line 26
    :cond_a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    .line 27
    invoke-static {v14, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v14

    invoke-static {v14, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v14

    invoke-static {v14, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 p4, v2

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v2

    move-object/from16 v17, v3

    const-string v3, "sender"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v2

    const-string v3, "sender.user"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    move-object/from16 v2, p4

    move-object/from16 v3, v17

    goto :goto_5

    :goto_6
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_c

    .line 28
    iget-object v2, v0, Le/a/a/k/a/a/f;->h:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->L()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    .line 29
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v3

    invoke-static {v3, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v3

    invoke-static {v3, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Le/a/a/k/a/a/f;->J(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez v2, :cond_d

    const/4 v3, 0x1

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    .line 30
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v14

    invoke-static {v14, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v14

    invoke-static {v14, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Le/a/a/k/a/a/f;->B(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v14

    if-eqz v14, :cond_f

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    .line 31
    iget-wide v8, v14, Lcom/truecaller/messaging/data/types/ImGroupInfo;->d:J

    move-object/from16 v43, v5

    .line 32
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 p4, v13

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getDate()I

    move-result v13

    move-object/from16 v44, v1

    move/from16 v45, v2

    int-to-long v1, v13

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    cmp-long v1, v8, v1

    if-eqz v1, :cond_e

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    goto :goto_b

    :cond_f
    move-object/from16 v44, v1

    move/from16 v45, v2

    move-object/from16 v43, v5

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move-object/from16 p4, v13

    :goto_a
    const/4 v1, 0x1

    :goto_b
    if-nez v1, :cond_12

    if-eqz v14, :cond_10

    .line 33
    iget v2, v14, Lcom/truecaller/messaging/data/types/ImGroupInfo;->f:I

    goto :goto_c

    :cond_10
    const/4 v2, 0x0

    :goto_c
    if-nez v2, :cond_11

    goto :goto_d

    :cond_11
    move-object v13, v10

    goto/16 :goto_11

    .line 34
    :cond_12
    :goto_d
    new-instance v2, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v5

    invoke-static {v5, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v5

    invoke-static {v5, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v8

    const-string v9, "event.groupInfo"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v20

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v8

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getAvatar()Ljava/lang/String;

    move-result-object v21

    .line 38
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getDate()I

    move-result v9

    move-object v13, v10

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v22

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v8

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v8

    invoke-static {v8, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v24

    .line 40
    invoke-virtual {v15}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getRoles()I

    move-result v25

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getPermissions()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    move-result-object v8

    const-string v9, "event.permissions"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Le/a/a/k/a/a/h;->c(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    move-result-object v26

    const/16 v27, 0x0

    if-eqz v14, :cond_13

    .line 42
    iget v8, v14, Lcom/truecaller/messaging/data/types/ImGroupInfo;->i:I

    goto :goto_e

    :cond_13
    const/4 v8, 0x0

    :goto_e
    move/from16 v28, v8

    if-eqz v14, :cond_14

    .line 43
    iget-wide v8, v14, Lcom/truecaller/messaging/data/types/ImGroupInfo;->j:J

    goto :goto_f

    :cond_14
    const-wide/16 v8, -0x1

    :goto_f
    move-wide/from16 v29, v8

    const-wide/16 v8, 0x0

    if-eqz v14, :cond_15

    .line 44
    iget-wide v14, v14, Lcom/truecaller/messaging/data/types/ImGroupInfo;->k:J

    move-wide/from16 v31, v14

    goto :goto_10

    :cond_15
    move-wide/from16 v31, v8

    :goto_10
    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    if-eqz v3, :cond_16

    .line 45
    iget-object v8, v0, Le/a/a/k/a/a/f;->e:Le/a/p5/c;

    invoke-interface {v8}, Le/a/p5/c;->c()J

    move-result-wide v8

    :cond_16
    move-wide/from16 v36, v8

    const/16 v39, 0x0

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getGroupInfoExt()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    move-result-object v8

    const-string v9, "event.groupInfoExt"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;->getInviteKey()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move/from16 v38, v3

    .line 47
    invoke-direct/range {v18 .. v40}, Lcom/truecaller/messaging/data/types/ImGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;IIJJZJJIILjava/lang/String;)V

    move-object/from16 v5, v44

    .line 48
    invoke-virtual {v0, v5, v2}, Le/a/a/k/a/a/f;->E(Ljava/util/Map;Lcom/truecaller/messaging/data/types/ImGroupInfo;)Lcom/truecaller/data/entity/messaging/Participant;

    :goto_11
    if-nez v3, :cond_17

    if-eqz v1, :cond_1a

    :cond_17
    if-nez v45, :cond_1a

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    invoke-static {v1, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v1

    invoke-static {v1, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v2, v13

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v1}, Le/a/a/k/a/a/f;->B(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v3, v0, Le/a/a/k/a/a/f;->g:Le/a/a/y0/q;

    const/4 v5, 0x0

    invoke-interface {v3, v1, v5}, Le/a/a/y0/q;->g(Lcom/truecaller/messaging/data/types/ImGroupInfo;Z)V

    .line 51
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    invoke-static {v1, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v1

    invoke-static {v1, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v3

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v3

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_19

    move-object/from16 v13, p4

    goto :goto_12

    :cond_19
    const-string v13, ""

    :goto_12
    invoke-virtual {v0, v1, v3, v13}, Le/a/a/k/a/a/f;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_1a
    move-object v2, v13

    goto :goto_13

    :cond_1b
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v43, v5

    move-object/from16 v41, v8

    move-object/from16 v42, v9

    move-object v2, v10

    .line 52
    :goto_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/String;

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v9

    invoke-static {v9, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v9

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string v9, "im_group_id=?"

    invoke-virtual {v3, v9, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 55
    invoke-virtual {v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getParticipantsList()Ljava/util/List;

    move-result-object v3

    move-object/from16 v5, v43

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0xa

    .line 59
    invoke-static {v3, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-static {v8}, Le/q/f/a/d/a;->Y1(I)I

    move-result v8

    const/16 v9, 0x10

    if-ge v8, v9, :cond_1c

    move v8, v9

    .line 60
    :cond_1c
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 61
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 62
    check-cast v8, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    move-object/from16 v10, v42

    .line 63
    invoke-static {v8, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v13

    move-object/from16 v14, v41

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Le/a/c/p/a;->i3(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v13

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getRoles()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_1d
    move-object/from16 v14, v41

    move-object/from16 v10, v42

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v3

    invoke-static {v3, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v3

    invoke-static {v3, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v1, v9, v3}, Le/a/a/k/a/a/f;->v(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;)V

    .line 66
    iget-object v3, v0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    sget-object v8, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v8, "com.truecaller"

    const-string v9, "TruecallerContract.getAuthority()"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v8, v1}, Le/a/e/a2;->a0(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 67
    iget-object v1, v0, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    .line 68
    new-instance v3, Le/a/a/k/a/a/b0;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v8

    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v8

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getDate()I

    move-result v2

    invoke-static {v2}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getMessageId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v9, v16

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v25, 0x0

    const/16 v26, 0x10

    move-object/from16 v18, v3

    move-object/from16 v19, v8

    move-wide/from16 v22, p2

    move-object/from16 v24, v2

    invoke-direct/range {v18 .. v26}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;ZI)V

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v2

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v2

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded;->getParticipantsList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 73
    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;

    .line 74
    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/api/services/messenger/v1/models/ParticipantInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v6

    invoke-static {v6, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v6

    move-object/from16 v7, v17

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 75
    :cond_1e
    invoke-interface {v1, v3, v2, v5}, Le/a/a/k/a/a/w;->l(Le/a/a/k/a/a/b0;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "groupId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/k/a/a/f;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Le/a/a/k/a/a/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    const-string v0, "groupId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imPeerId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->D()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "ImGroupParticipantsTable.getContentUri()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p1, "roles"

    const-string p2, "im_group_id = ? AND im_peer_id = ?"

    .line 3
    invoke-static {v0, v1, p1, p2, v2}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public o(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 54

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ls1/u/u;->a:Ls1/u/u;

    const-string v4, "intent"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v6, "participant"

    const-string v7, "is_successful"

    const-string v8, "response.groupInfo"

    const-string v9, "it"

    const-string v10, "avatar"

    const-string v11, "title"

    const-string v12, "participants"

    const-string v13, "response.messageId"

    const-string v14, "Required value was null."

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v15

    const v5, 0x6f4d4d7c

    if-eq v15, v5, :cond_2

    :cond_1
    :goto_0
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v53, v9

    move-object/from16 v19, v10

    move-object/from16 v16, v11

    move-object/from16 v43, v12

    goto/16 :goto_9

    :cond_2
    const-string v5, "create_group"

    .line 2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 4
    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 5
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v2

    .line 6
    iget-object v2, v1, Le/a/a/k/a/a/f;->a:Le/a/a/k/a/s1;

    move-object/from16 v18, v3

    const/4 v3, 0x0

    move-object/from16 v19, v10

    const/4 v10, 0x1

    invoke-static {v2, v3, v10, v3}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v2

    check-cast v2, Le/a/t2/a/e/a/b$a;

    if-eqz v2, :cond_c

    .line 7
    iget-object v3, v1, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_c

    .line 8
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo$b;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10
    iget-object v10, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v10, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    invoke-static {v10, v5}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;->access$100(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;Ljava/lang/String;)V

    if-eqz v15, :cond_3

    .line 11
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12
    iget-object v10, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v10, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    invoke-static {v10, v15}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;->access$400(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;Ljava/lang/String;)V

    .line 13
    :cond_3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request$a;

    move-result-object v10

    .line 14
    sget-object v15, Ls1/c0/c;->b:Ls1/c0/c$a;

    move-object/from16 v16, v11

    move-object/from16 v43, v12

    invoke-virtual {v15}, Ls1/c0/c$a;->e()J

    move-result-wide v11

    .line 15
    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16
    iget-object v15, v10, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v15, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v15, v11, v12}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;J)V

    .line 17
    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18
    iget-object v11, v10, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v11, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    invoke-static {v11, v3}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->access$1500(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;)V

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v4, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 21
    check-cast v12, Lcom/truecaller/data/entity/messaging/Participant;

    .line 22
    invoke-static {v12}, Le/a/a/k/a/a/h;->d(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 24
    iget-object v11, v10, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v11, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    invoke-static {v11, v3}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;->access$1200(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;Ljava/lang/Iterable;)V

    .line 25
    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    const-string v10, "CreateGroup.Request.newB\u2026) })\n            .build()"

    invoke-static {v3, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    check-cast v3, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;

    .line 27
    :try_start_0
    invoke-virtual {v2, v3}, Le/a/t2/a/e/a/b$a;->d(Lcom/truecaller/api/services/messenger/v1/CreateGroup$Request;)Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;

    move-result-object v2

    const-string v3, "stub.createGroup(request)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;->getInvalidPeersList()Ljava/util/List;

    move-result-object v3

    const-string v10, "response.invalidPeersList"

    invoke-static {v3, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v3, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 31
    check-cast v11, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    .line 32
    invoke-static {v11, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v11

    const-string v12, "it.user"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v10}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 33
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Lcom/truecaller/data/entity/messaging/Participant;

    .line 35
    iget-object v15, v15, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    invoke-interface {v3, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_6

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 36
    :cond_7
    new-instance v11, Ljava/util/LinkedHashMap;

    const/16 v12, 0xa

    invoke-static {v10, v12}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-static {v12}, Le/q/f/a/d/a;->Y1(I)I

    move-result v12

    const/16 v15, 0x10

    if-ge v12, v15, :cond_8

    move v12, v15

    :cond_8
    invoke-direct {v11, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 37
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 38
    move-object v15, v12

    check-cast v15, Lcom/truecaller/data/entity/messaging/Participant;

    .line 39
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;->getParticipantRoles()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 40
    :cond_9
    invoke-static/range {v26 .. v26}, Le/a/a/k/a/a/h;->b(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v10

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;->getCreatorRoles()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 41
    new-instance v15, Ls1/k;

    invoke-direct {v15, v10, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    invoke-static {v11, v15}, Ls1/u/i;->p0(Ljava/util/Map;Ls1/k;)Ljava/util/Map;

    move-result-object v10

    .line 43
    iget-object v11, v1, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    new-instance v12, Le/a/a/k/a/a/b0;

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;->getGroupId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v53, v9

    const-string v9, "response.groupId"

    invoke-static {v15, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;->getDate()I

    move-result v20

    invoke-static/range {v20 .. v20}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v46

    const-wide/16 v33, 0x0

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v51, 0x0

    const/16 v52, 0x10

    const-wide/16 v48, 0x0

    move-object/from16 v44, v12

    move-object/from16 v45, v15

    move-object/from16 v50, v0

    invoke-direct/range {v44 .. v52}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;ZI)V

    invoke-interface {v11, v12, v5}, Le/a/a/k/a/a/w;->r(Le/a/a/k/a/a/b0;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-object/from16 v20, v0

    .line 45
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;->getGroupId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v21, v5

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v5

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v22

    .line 47
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v5

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getAvatar()Ljava/lang/String;

    move-result-object v23

    .line 48
    iget-object v5, v1, Le/a/a/k/a/a/f;->e:Le/a/p5/c;

    invoke-interface {v5}, Le/a/p5/c;->c()J

    move-result-wide v24

    .line 49
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;->getCreatorRoles()I

    move-result v27

    .line 50
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;->getPermissions()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    move-result-object v5

    const-string v11, "response.permissions"

    invoke-static {v5, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Le/a/a/k/a/a/h;->c(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, -0x1

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    .line 51
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;->getGroupInfoExt()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    move-result-object v5

    const-string v11, "response.groupInfoExt"

    invoke-static {v5, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;->getInviteKey()Ljava/lang/String;

    move-result-object v42

    .line 52
    invoke-direct/range {v20 .. v42}, Lcom/truecaller/messaging/data/types/ImGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;IIJJZJJIILjava/lang/String;)V

    .line 53
    invoke-virtual {v1, v10, v0}, Le/a/a/k/a/a/f;->E(Ljava/util/Map;Lcom/truecaller/messaging/data/types/ImGroupInfo;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    .line 54
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/truecaller/data/entity/messaging/Participant;

    .line 56
    iget-object v11, v11, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 57
    :cond_b
    invoke-virtual {v1, v5}, Le/a/a/k/a/a/f;->D(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 58
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/CreateGroup$Response;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Le/a/a/k/a/a/f;->w(Ljava/lang/String;Ljava/util/List;Z)Z

    goto :goto_7

    :catch_0
    move-object/from16 v53, v9

    goto :goto_6

    :cond_c
    move-object/from16 v53, v9

    move-object/from16 v16, v11

    move-object/from16 v43, v12

    :goto_6
    const/4 v0, 0x0

    .line 59
    :cond_d
    :goto_7
    sget-object v2, Le/a/a/k/a/a/h;->a:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 60
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    .line 61
    :goto_8
    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_a

    .line 63
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_9
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_11

    return-object v2

    .line 65
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "roles"

    const-string v4, "im_group_id"

    const-string v5, "group_id"

    const/4 v9, 0x2

    sparse-switch v2, :sswitch_data_0

    :cond_13
    :goto_b
    move-object/from16 v17, v7

    goto/16 :goto_31

    :sswitch_0
    const-string v2, "accept_pending_invites"

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 67
    iget-object v8, v1, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 68
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v9

    .line 69
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v11, "(roles & 2) != 0"

    .line 70
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 71
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    :goto_c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x0

    .line 73
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    .line 74
    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 75
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 76
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_15
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_16

    move-object v3, v0

    goto :goto_e

    :cond_16
    move-object/from16 v3, v18

    .line 77
    :goto_e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    iget-object v3, v1, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->b2()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 79
    iget-object v3, v1, Le/a/a/k/a/a/f;->o:Le/a/a/k/a/a/b;

    invoke-interface {v3, v2}, Le/a/a/k/a/a/b;->a(Ljava/lang/String;)V

    goto :goto_f

    :sswitch_1
    const-string v2, "set_notification_settings"

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object/from16 v2, p1

    .line 81
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v3, "settings"

    const/4 v4, 0x0

    .line 82
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 83
    iget-object v3, v1, Le/a/a/k/a/a/f;->a:Le/a/a/k/a/s1;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v4}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v3

    check-cast v3, Le/a/t2/a/e/a/b$a;

    if-eqz v3, :cond_1b

    .line 84
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$b;

    move-result-object v4

    if-eqz v2, :cond_1a

    if-eq v2, v5, :cond_19

    if-ne v2, v9, :cond_18

    .line 85
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$MentionOnly;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$MentionOnly;

    move-result-object v5

    .line 86
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 87
    iget-object v6, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

    invoke-static {v6, v5}, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;->access$1900(Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$MentionOnly;)V

    goto :goto_10

    .line 88
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown notification settings: "

    invoke-static {v3, v2}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_19
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$Muted;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$Muted;

    move-result-object v5

    .line 90
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 91
    iget-object v6, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

    invoke-static {v6, v5}, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;->access$1300(Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$Muted;)V

    goto :goto_10

    .line 92
    :cond_1a
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$Default;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$Default;

    move-result-object v5

    .line 93
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 94
    iget-object v6, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

    invoke-static {v6, v5}, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;->access$1000(Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$Default;)V

    .line 95
    :goto_10
    :try_start_3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Request$a;

    move-result-object v5

    .line 96
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationScope;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationScope$b;

    move-result-object v6

    .line 97
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 98
    iget-object v8, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v8, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationScope;

    invoke-static {v8, v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationScope;->access$500(Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationScope;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationScope;

    .line 100
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 101
    iget-object v8, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v8, Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Request;

    invoke-static {v8, v6}, Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationScope;)V

    .line 102
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 103
    iget-object v6, v5, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Request;

    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

    invoke-static {v6, v4}, Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Request;->access$400(Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;)V

    .line 104
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    .line 105
    check-cast v4, Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Request;

    invoke-virtual {v3, v4}, Le/a/t2/a/e/a/b$a;->w(Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Request;)Lcom/truecaller/api/services/messenger/v1/UpdateNotificationSettings$Response;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 106
    iget-object v3, v1, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 107
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v4

    .line 108
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "notification_settings"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const-string v0, "im_group_id = ?"

    .line 109
    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_11

    :catch_1
    :cond_1b
    const/4 v0, 0x0

    .line 110
    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_12

    .line 111
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    move-object/from16 v2, p1

    const-string v3, "delete_group_history"

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 113
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v3, "delete_public_entities"

    const/4 v4, 0x0

    .line 114
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    .line 115
    invoke-virtual {v1, v0, v2, v3}, Le/a/a/k/a/a/f;->A(Ljava/lang/String;ZZ)V

    .line 116
    iget-object v2, v1, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    new-instance v3, Le/a/a/k/a/a/b0;

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-string v4, "-cleared"

    invoke-static {v0, v4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x10

    move-object/from16 v18, v3

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v26}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;ZI)V

    invoke-interface {v2, v3}, Le/a/a/k/a/a/w;->i(Le/a/a/k/a/a/b0;)V

    :cond_1d
    move-object/from16 v2, v17

    goto :goto_13

    .line 117
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3
    move-object/from16 v2, p1

    const-string v3, "fail_history_loading_in_progress"

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 119
    iget-object v0, v1, Le/a/a/k/a/a/f;->m:Le/a/a/k/a/a/i;

    .line 120
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 121
    invoke-interface {v0, v2}, Le/a/a/k/a/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_12
    move-object v2, v0

    :goto_13
    move-object/from16 v17, v7

    goto/16 :goto_32

    .line 122
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    const-string v2, "recover_groups"

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 124
    iget-object v0, v1, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->Y0()J

    move-result-wide v5

    .line 125
    sget-wide v8, Le/a/a/k/a/a/h;->b:J

    add-long/2addr v8, v5

    .line 126
    iget-object v0, v1, Le/a/a/k/a/a/f;->e:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v10

    cmp-long v0, v5, v10

    if-lez v0, :cond_20

    goto :goto_14

    :cond_20
    cmp-long v0, v8, v10

    if-ltz v0, :cond_21

    move-object/from16 v17, v7

    goto/16 :goto_29

    .line 127
    :cond_21
    :goto_14
    iget-object v0, v1, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->G3()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    if-ne v0, v2, :cond_22

    goto :goto_15

    :cond_22
    move-object/from16 v17, v7

    goto/16 :goto_27

    :cond_23
    :goto_15
    if-nez v0, :cond_24

    move v0, v2

    goto :goto_16

    :cond_24
    const/4 v0, 0x0

    .line 128
    :goto_16
    iget-object v5, v1, Le/a/a/k/a/a/f;->a:Le/a/a/k/a/s1;

    const/4 v6, 0x0

    invoke-static {v5, v6, v2, v6}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v2

    check-cast v2, Le/a/t2/a/e/a/b$a;

    if-eqz v2, :cond_36

    .line 129
    iget-object v5, v1, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {v5}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 130
    iget-object v6, v1, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    iget-object v8, v1, Le/a/a/k/a/a/f;->e:Le/a/p5/c;

    invoke-interface {v8}, Le/a/p5/c;->c()J

    move-result-wide v8

    invoke-interface {v6, v8, v9}, Le/a/a/i0;->f0(J)V

    .line 131
    :try_start_4
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/GetContexts$Request;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/GetContexts$Request;

    move-result-object v6

    invoke-virtual {v2, v6}, Le/a/t2/a/e/a/b$a;->g(Lcom/truecaller/api/services/messenger/v1/GetContexts$Request;)Lcom/truecaller/api/services/messenger/v1/GetContexts$Response;

    move-result-object v2

    const-string v6, "stub.getContexts(GetCont\u2026est.getDefaultInstance())"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 132
    iget-object v6, v1, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/GetContexts$Response;->getGlobalContextInfo()Lcom/truecaller/api/services/messenger/v1/models/GlobalContextInfo;

    move-result-object v8

    const-string v9, "response.globalContextInfo"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/GlobalContextInfo;->getReadReportsEnabled()Z

    move-result v8

    invoke-interface {v6, v8}, Le/a/a/i0;->k2(Z)V

    if-eqz v0, :cond_25

    const-string v6, "full"

    goto :goto_17

    :cond_25
    const-string v6, "partial"

    :goto_17
    move-object v14, v6

    const-string v6, "ImGroupRecovery"

    const-string v13, "type"

    .line 133
    invoke-static {v6, v13}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v15

    const-string v9, "name"

    const-string v11, "value"

    move-object v8, v13

    move-object v10, v14

    move-object v12, v15

    .line 134
    invoke-static/range {v8 .. v14}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v8

    .line 135
    iget-object v9, v1, Le/a/a/k/a/a/f;->l:Le/a/q2/a;

    .line 136
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v10

    invoke-virtual {v10, v6}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v10, v8}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v10, v15}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v10}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v6

    const-string v8, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-interface {v9, v6}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 138
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v8, v1, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 140
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v9

    .line 141
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v11, "roles != 0"

    .line 142
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_27

    .line 143
    :try_start_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 144
    :goto_18
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_26

    const/4 v10, 0x0

    .line 145
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_18

    :cond_26
    const/4 v10, 0x0

    .line 146
    invoke-static {v8, v10}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 147
    invoke-static {v9}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    goto :goto_19

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 148
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v8, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_27
    const/4 v8, 0x0

    :goto_19
    if-eqz v8, :cond_28

    goto :goto_1a

    :cond_28
    move-object/from16 v8, v18

    .line 149
    :goto_1a
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/GetContexts$Response;->getGroupsContextInfoList()Ljava/util/List;

    move-result-object v9

    const-string v10, "response.groupsContextInfoList"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v9, v12}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "it.peer.group"

    const-string v14, "it.peer"

    if-eqz v12, :cond_29

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 152
    check-cast v12, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    move-object/from16 v15, v53

    .line 153
    invoke-static {v12, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v12

    invoke-static {v12, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v12

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_29
    move-object/from16 v15, v53

    invoke-static {v8, v11}, Ls1/u/i;->b0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v9

    .line 154
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2a

    .line 155
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    const/4 v12, 0x0

    .line 156
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v11, "im_group_id IN ("

    .line 157
    invoke-static {v11}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget-object v22, Le/a/a/k/a/a/g;->b:Le/a/a/k/a/a/g;

    const/16 v23, 0x1f

    move-object/from16 v16, v9

    invoke-static/range {v16 .. v23}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v7

    const/16 v7, 0x29

    invoke-static {v11, v12, v7}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    .line 158
    invoke-interface {v9, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    const-string v11, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v9, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, [Ljava/lang/String;

    .line 159
    invoke-virtual {v3, v7, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 161
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2a
    move-object/from16 v17, v7

    :goto_1c
    if-eqz v0, :cond_2b

    .line 162
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/GetContexts$Response;->getGroupsContextInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1e

    .line 163
    :cond_2b
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/GetContexts$Response;->getGroupsContextInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v10}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 164
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    .line 165
    invoke-static {v9, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v9

    invoke-static {v9, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v9

    invoke-static {v9, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2c

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2d
    move-object v0, v3

    .line 166
    :goto_1e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "context.inviter.user"

    const-string v9, "context.inviter"

    const-string v10, "context.peer.group.id"

    const-string v11, "context.groupInfo"

    const-string v12, "context.peer.group"

    const-string v13, "context.peer"

    if-eqz v7, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    .line 167
    invoke-static {v5}, Le/a/a/k/a/a/h;->b(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v14

    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getRoles()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 p1, v3

    .line 168
    new-instance v3, Ls1/k;

    invoke-direct {v3, v14, v15}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    invoke-static {v3}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v3

    .line 170
    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v14

    invoke-static {v14, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v13

    invoke-static {v13, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v10

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v20

    .line 172
    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v10

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getAvatar()Ljava/lang/String;

    move-result-object v21

    .line 173
    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getSinceDate()I

    move-result v10

    invoke-static {v10}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v22

    .line 174
    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getInviter()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v10

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v9

    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2e

    invoke-static {v8, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2e

    const/4 v9, 0x1

    goto :goto_20

    :cond_2e
    const/4 v9, 0x0

    :goto_20
    if-eqz v9, :cond_2f

    goto :goto_21

    :cond_2f
    const/4 v8, 0x0

    :goto_21
    move-object/from16 v24, v8

    .line 175
    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getRoles()I

    move-result v25

    .line 176
    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getPermissions()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    move-result-object v8

    const-string v9, "context.permissions"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Le/a/a/k/a/a/h;->c(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    move-result-object v26

    .line 177
    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getNotificationSettings()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    move-result-object v8

    const-string v9, "context.notificationSettings"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->getValueCase()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$ValueCase;

    move-result-object v8

    if-nez v8, :cond_30

    goto :goto_22

    :cond_30
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_32

    const/4 v9, 0x2

    if-eq v8, v9, :cond_31

    :goto_22
    const/4 v8, 0x0

    goto :goto_23

    :cond_31
    const/4 v8, 0x2

    goto :goto_23

    :cond_32
    const/4 v8, 0x1

    :goto_23
    move/from16 v27, v8

    const/16 v28, 0x0

    const-wide/16 v29, -0x1

    const-wide/16 v31, 0x0

    const/16 v33, 0x1

    .line 179
    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getCurrentSeq()J

    move-result-wide v34

    .line 180
    iget-object v8, v1, Le/a/a/k/a/a/f;->e:Le/a/p5/c;

    invoke-interface {v8}, Le/a/p5/c;->c()J

    move-result-wide v36

    const/16 v38, 0x1

    const/16 v39, 0x0

    .line 181
    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getGroupInfoExt()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;

    move-result-object v7

    const-string v8, "context.groupInfoExt"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoExt;->getInviteKey()Ljava/lang/String;

    move-result-object v40

    .line 182
    new-instance v7, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-object/from16 v18, v7

    move-object/from16 v19, v12

    invoke-direct/range {v18 .. v40}, Lcom/truecaller/messaging/data/types/ImGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;IIJJZJJIILjava/lang/String;)V

    .line 183
    invoke-virtual {v1, v6, v3, v7}, Le/a/a/k/a/a/f;->u(Ljava/util/ArrayList;Ljava/util/Map;Lcom/truecaller/messaging/data/types/ImGroupInfo;)Lcom/truecaller/data/entity/messaging/Participant;

    move-object/from16 v3, p1

    goto/16 :goto_1f

    .line 184
    :cond_33
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_34

    iget-object v3, v1, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    sget-object v5, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v5, "com.truecaller"

    const-string v7, "TruecallerContract.getAuthority()"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5, v6}, Le/a/e/a2;->a0(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_34

    goto/16 :goto_25

    .line 185
    :cond_34
    iget-object v3, v1, Le/a/a/k/a/a/f;->n:Le/a/a/k/a/b1;

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/GetContexts$Response;->getUserInfoMap()Ljava/util/Map;

    move-result-object v2

    const-string v5, "response.userInfoMap"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Le/a/a/k/a/b1;->d(Ljava/util/Map;)V

    .line 186
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;

    .line 187
    iget-object v3, v1, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    .line 188
    new-instance v5, Le/a/a/k/a/a/b0;

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v6

    invoke-static {v6, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v6

    invoke-static {v6, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getSinceDate()I

    move-result v7

    invoke-static {v7}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v20

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getSinceSeq()J

    move-result-wide v22

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v14

    invoke-static {v14, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v14

    invoke-static {v14, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "-recover"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-direct/range {v18 .. v25}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;Z)V

    .line 189
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;

    move-result-object v6

    invoke-static {v6, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.groupInfo.title"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getRoles()I

    move-result v7

    .line 191
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/GroupContextInfo;->getInviter()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v2

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v2

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v14, "context.inviter.user.id"

    invoke-static {v2, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-interface {v3, v5, v6, v7, v2}, Le/a/a/k/a/a/w;->b(Le/a/a/k/a/a/b0;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_24

    .line 193
    :cond_35
    iget-object v0, v1, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Le/a/a/i0;->s2(I)V

    const/4 v0, 0x1

    goto :goto_26

    :catch_2
    :cond_36
    move-object/from16 v17, v7

    :goto_25
    const/4 v0, 0x0

    :goto_26
    if-nez v0, :cond_37

    const/4 v0, 0x0

    goto :goto_2a

    .line 194
    :cond_37
    :goto_27
    iget-object v2, v1, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 195
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v3

    .line 196
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "are_participants_stale != 0"

    .line 197
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 198
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    :goto_28
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_38

    const/4 v3, 0x0

    .line 200
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(0)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Le/a/a/k/a/a/f;->H(Ljava/lang/String;)V

    sget-object v3, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_28

    :cond_38
    const/4 v0, 0x0

    .line 201
    invoke-static {v2, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_29

    :catchall_4
    move-exception v0

    move-object v3, v0

    .line 202
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_39
    :goto_29
    const/4 v0, 0x1

    .line 203
    :goto_2a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_32

    :sswitch_5
    move-object/from16 v2, p1

    move-object/from16 v17, v7

    const-string v4, "update_roles"

    .line 204
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 205
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    const-string v4, "im_peer_id"

    .line 206
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3b

    const/4 v5, 0x0

    .line 207
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 208
    invoke-virtual {v1, v0, v4, v2}, Le/a/a/k/a/a/f;->N(Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 209
    iget-object v5, v1, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    new-instance v6, Le/a/a/k/a/a/b0;

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;->getDate()I

    move-result v7

    invoke-static {v7}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v20

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;->getSeq()J

    move-result-wide v22

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/UpdateRoles$Response;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v25, 0x0

    const/16 v26, 0x10

    move-object/from16 v18, v6

    move-object/from16 v19, v0

    move-object/from16 v24, v3

    invoke-direct/range {v18 .. v26}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;ZI)V

    invoke-interface {v5, v6, v2, v4}, Le/a/a/k/a/a/w;->k(Le/a/a/k/a/a/b0;ILjava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_2b

    :cond_3a
    const/4 v0, 0x0

    .line 210
    :goto_2b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_32

    .line 211
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_6
    move-object/from16 v2, p1

    move-object/from16 v17, v7

    const-string v3, "add_participants"

    .line 213
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 214
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    move-object/from16 v3, v43

    .line 215
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3d

    const/4 v3, 0x1

    .line 216
    invoke-virtual {v1, v0, v2, v3}, Le/a/a/k/a/a/f;->w(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v0

    .line 217
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_32

    .line 218
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_7
    move-object/from16 v2, p1

    move-object/from16 v17, v7

    const-string v3, "leave_group"

    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 221
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    const-string v3, "delete_conversation"

    const/4 v4, 0x0

    .line 222
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 223
    iget-object v3, v1, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 224
    invoke-static {v3}, Le/a/a/k/a/a/h;->b(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v3

    .line 225
    invoke-virtual {v1, v0, v3}, Le/a/a/k/a/a/f;->I(Ljava/lang/String;Lcom/truecaller/data/entity/messaging/Participant;)Ls1/k;

    move-result-object v3

    .line 226
    iget-object v4, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 227
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3f

    goto :goto_2d

    :cond_3f
    if-eqz v2, :cond_40

    const/4 v2, 0x0

    .line 228
    invoke-virtual {v1, v0, v2, v2}, Le/a/a/k/a/a/f;->A(Ljava/lang/String;ZZ)V

    goto :goto_2c

    .line 229
    :cond_40
    iget-object v2, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 230
    check-cast v2, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;

    if-eqz v2, :cond_41

    .line 231
    iget-object v3, v1, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    new-instance v4, Le/a/a/k/a/a/b0;

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;->getDate()I

    move-result v5

    invoke-static {v5}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v20

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;->getSeq()J

    move-result-wide v22

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;->getMessageId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "it.messageId"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v25, 0x0

    const/16 v26, 0x10

    move-object/from16 v18, v4

    move-object/from16 v19, v0

    move-object/from16 v24, v2

    invoke-direct/range {v18 .. v26}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;ZI)V

    invoke-interface {v3, v4}, Le/a/a/k/a/a/w;->p(Le/a/a/k/a/a/b0;)V

    :goto_2c
    const/4 v0, 0x1

    goto :goto_2e

    :cond_41
    :goto_2d
    const/4 v0, 0x0

    .line 232
    :goto_2e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_32

    .line 233
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_8
    move-object/from16 v2, p1

    move-object/from16 v17, v7

    const-string v3, "remove_participant"

    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 235
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 236
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_45

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    .line 237
    invoke-virtual {v1, v0, v2}, Le/a/a/k/a/a/f;->I(Ljava/lang/String;Lcom/truecaller/data/entity/messaging/Participant;)Ls1/k;

    move-result-object v3

    .line 238
    iget-object v3, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 239
    check-cast v3, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;

    if-eqz v3, :cond_44

    .line 240
    iget-object v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-eqz v2, :cond_43

    .line 241
    iget-object v4, v1, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    new-instance v5, Le/a/a/k/a/a/b0;

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;->getDate()I

    move-result v6

    invoke-static {v6}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v20

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;->getSeq()J

    move-result-wide v22

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/RemoveParticipants$Response;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v25, 0x0

    const/16 v26, 0x10

    move-object/from16 v18, v5

    move-object/from16 v19, v0

    move-object/from16 v24, v3

    invoke-direct/range {v18 .. v26}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;ZI)V

    const-string v0, "imPeerId"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5, v2}, Le/a/a/k/a/a/w;->d(Le/a/a/k/a/a/b0;Ljava/lang/String;)V

    :cond_43
    const/4 v0, 0x1

    goto :goto_2f

    :cond_44
    const/4 v0, 0x0

    .line 242
    :goto_2f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_32

    .line 243
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_9
    move-object/from16 v2, p1

    move-object/from16 v17, v7

    const-string v3, "accept_invite"

    .line 245
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 246
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_47

    const/4 v2, 0x0

    .line 247
    invoke-virtual {v1, v0, v2}, Le/a/a/k/a/a/f;->c(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_32

    .line 248
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_a
    move-object/from16 v2, p1

    move-object/from16 v17, v7

    const/4 v3, 0x0

    const-string v4, "edit_group"

    .line 249
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 250
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    move-object/from16 v4, v16

    .line 251
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4d

    move-object/from16 v5, v19

    .line 252
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    iget-object v5, v1, Le/a/a/k/a/a/f;->a:Le/a/a/k/a/s1;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v6}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v5

    check-cast v5, Le/a/t2/a/e/a/b$a;

    if-eqz v5, :cond_4c

    .line 254
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request$a;

    move-result-object v6

    .line 255
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 256
    iget-object v9, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v9, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;

    invoke-static {v9, v0}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;->access$300(Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;->newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo$b;

    move-result-object v9

    .line 258
    invoke-virtual {v9}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 259
    iget-object v10, v9, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v10, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    invoke-static {v10, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;->access$100(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;Ljava/lang/String;)V

    if-eqz v2, :cond_48

    .line 260
    invoke-virtual {v9}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 261
    iget-object v10, v9, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v10, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    invoke-static {v10, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;->access$400(Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;Ljava/lang/String;)V

    .line 262
    :cond_48
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 263
    iget-object v2, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;

    invoke-virtual {v9}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v9

    check-cast v9, Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;

    invoke-static {v2, v9}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;->access$600(Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputGroupInfo;)V

    .line 264
    sget-object v2, Ls1/c0/c;->b:Ls1/c0/c$a;

    invoke-virtual {v2}, Ls1/c0/c$a;->e()J

    move-result-wide v9

    .line 265
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 266
    iget-object v2, v6, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;

    invoke-static {v2, v9, v10}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;J)V

    .line 267
    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    .line 268
    check-cast v2, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;

    .line 269
    :try_start_9
    invoke-virtual {v5, v2}, Le/a/t2/a/e/a/b$a;->v(Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request;)Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    const-string v5, "response"

    .line 270
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    move-result-object v5

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v5}, Le/a/a/k/a/a/f;->M(Ljava/lang/String;Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;)Z

    move-result v5

    if-nez v5, :cond_49

    goto/16 :goto_30

    .line 271
    :cond_49
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    move-result-object v3

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->getTitleInfoCase()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    move-result-object v3

    sget-object v5, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->TITLEUNCHANGED:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    if-eq v3, v5, :cond_4a

    .line 272
    iget-object v3, v1, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    new-instance v5, Le/a/a/k/a/a/b0;

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;->getDate()I

    move-result v6

    invoke-static {v6}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v22

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;->getSeq()J

    move-result-wide v24

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;->getMessageId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-title"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x10

    move-object/from16 v20, v5

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v28}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;ZI)V

    invoke-interface {v3, v5, v4}, Le/a/a/k/a/a/w;->a(Le/a/a/k/a/a/b0;Ljava/lang/String;)V

    .line 273
    :cond_4a
    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    move-result-object v3

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->getAvatarInfoCase()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$AvatarInfoCase;

    move-result-object v3

    sget-object v4, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$AvatarInfoCase;->AVATARUNCHANGED:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$AvatarInfoCase;

    if-eq v3, v4, :cond_4b

    .line 274
    iget-object v3, v1, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    new-instance v4, Le/a/a/k/a/a/b0;

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;->getDate()I

    move-result v5

    invoke-static {v5}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v22

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;->getSeq()J

    move-result-wide v24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-avatar"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x10

    move-object/from16 v20, v4

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v28}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;ZI)V

    invoke-interface {v3, v4}, Le/a/a/k/a/a/w;->s(Le/a/a/k/a/a/b0;)V

    :cond_4b
    move v3, v7

    .line 275
    :catch_3
    :cond_4c
    :goto_30
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_32

    .line 276
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    :goto_31
    const/4 v2, 0x0

    :goto_32
    if-eqz v2, :cond_50

    .line 278
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 279
    sget-object v2, Le/a/a/k/a/a/h;->a:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 280
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v3, v17

    .line 281
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v2

    :cond_50
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x789f67f6 -> :sswitch_a
        -0x6661c1e0 -> :sswitch_9
        -0x642f6008 -> :sswitch_8
        -0x37ff7d09 -> :sswitch_7
        -0x26c34982 -> :sswitch_6
        -0x23ae5039 -> :sswitch_5
        -0x15e06ef1 -> :sswitch_4
        0x14e75fb8 -> :sswitch_3
        0x15452340 -> :sswitch_2
        0x1c9ae4da -> :sswitch_1
        0x6e0656ab -> :sswitch_0
    .end sparse-switch
.end method

.method public p(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "groupId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/f;->a:Le/a/a/k/a/s1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v0

    check-cast v0, Le/a/t2/a/e/a/b$a;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Request$a;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Request;

    invoke-static {v4, p1}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Request;->access$300(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Request;Ljava/lang/String;)V

    .line 5
    sget-object v4, Ls1/c0/c;->b:Ls1/c0/c$a;

    invoke-virtual {v4}, Ls1/c0/c$a;->e()J

    move-result-wide v4

    .line 6
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7
    iget-object v6, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Request;

    invoke-static {v6, v4, v5}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Request;J)V

    .line 8
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    .line 9
    check-cast v3, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Request;

    .line 10
    :try_start_0
    invoke-virtual {v0, v3}, Le/a/t2/a/e/a/b$a;->p(Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Request;)Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-virtual {p0, p1}, Le/a/a/k/a/a/f;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 12
    :goto_0
    iget-object v4, p0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    .line 13
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v5

    .line 14
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "response"

    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->getInviteKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "invite_key"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    const-string v3, "im_group_id=?"

    .line 15
    invoke-virtual {v4, v5, v6, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 16
    iget-object v1, p0, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    .line 17
    new-instance v10, Le/a/a/k/a/a/b0;

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->getDate()I

    move-result v2

    invoke-static {v2}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->getSeq()J

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->getInviteKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;Z)V

    .line 18
    invoke-interface {v1, v10}, Le/a/a/k/a/a/w;->n(Le/a/a/k/a/a/b0;)V

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/ReissueGroupInviteKey$Response;->getInviteKey()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    :cond_2
    return-object v1
.end method

.method public q(Ljava/lang/String;)Ls1/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Fail"

    const-string v1, "inviteKey"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/k/a/a/f;->a:Le/a/a/k/a/s1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v1

    check-cast v1, Le/a/t2/a/e/a/b$a;

    const-string v3, "unknown"

    if-eqz v1, :cond_5

    .line 2
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Request$a;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v5, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Request;

    invoke-static {v5, p1}, Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Request;->access$300(Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Request;Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    .line 6
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7
    iget-object p1, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Request;

    invoke-static {p1, v5, v6}, Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Request;J)V

    .line 8
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    .line 9
    check-cast p1, Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Request;

    invoke-virtual {v1, p1}, Le/a/t2/a/e/a/b$a;->n(Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Request;)Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Response;

    move-result-object p1

    const-string v1, "response"

    .line 10
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Response;->getGroupId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Accept"

    .line 11
    invoke-virtual {p0, v1, v4, v2}, Le/a/a/k/a/a/f;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v1, Ls1/k;

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/JoinViaInviteKey$Response;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lp3/a/i1; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    .line 13
    :catch_1
    invoke-virtual {p0, v2, v0, v3}, Le/a/a/k/a/a/f;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v1, Ls1/k;

    invoke-direct {v1, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 15
    :goto_0
    iget-object v1, p1, Lp3/a/i1;->a:Lp3/a/g1;

    const-string v4, "e.status"

    .line 16
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v1, v1, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 18
    sget-object v5, Lp3/a/g1$b;->h:Lp3/a/g1$b;

    if-ne v1, v5, :cond_0

    .line 19
    iget-object v1, p1, Lp3/a/i1;->a:Lp3/a/g1;

    .line 20
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v1, v1, Lp3/a/g1;->b:Ljava/lang/String;

    const-string v6, "GROUP"

    .line 22
    invoke-static {v1, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v3, "groupNotFound"

    goto/16 :goto_1

    .line 23
    :cond_0
    iget-object v1, p1, Lp3/a/i1;->a:Lp3/a/g1;

    .line 24
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v1, v1, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 26
    sget-object v6, Lp3/a/g1$b;->f:Lp3/a/g1$b;

    if-ne v1, v6, :cond_1

    .line 27
    iget-object v1, p1, Lp3/a/i1;->a:Lp3/a/g1;

    .line 28
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v1, v1, Lp3/a/g1;->b:Ljava/lang/String;

    const-string v6, "WRONG_DC"

    .line 30
    invoke-static {v1, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v3, "crossDc"

    goto :goto_1

    .line 31
    :cond_1
    iget-object v1, p1, Lp3/a/i1;->a:Lp3/a/g1;

    .line 32
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v1, v1, Lp3/a/g1;->a:Lp3/a/g1$b;

    if-ne v1, v5, :cond_2

    .line 34
    iget-object v1, p1, Lp3/a/i1;->a:Lp3/a/g1;

    .line 35
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v1, v1, Lp3/a/g1;->b:Ljava/lang/String;

    const-string v5, "INVITE_KEY"

    .line 37
    invoke-static {v1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v3, "expiredLink"

    goto :goto_1

    .line 38
    :cond_2
    iget-object v1, p1, Lp3/a/i1;->a:Lp3/a/g1;

    .line 39
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v1, v1, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 41
    sget-object v5, Lp3/a/g1$b;->j:Lp3/a/g1$b;

    if-ne v1, v5, :cond_3

    .line 42
    iget-object v1, p1, Lp3/a/i1;->a:Lp3/a/g1;

    .line 43
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v1, v1, Lp3/a/g1;->b:Ljava/lang/String;

    const-string v5, "PARTICIPANT_WAS_KICKED_OUT"

    .line 45
    invoke-static {v1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v3, "noRole"

    goto :goto_1

    .line 46
    :cond_3
    iget-object v1, p1, Lp3/a/i1;->a:Lp3/a/g1;

    .line 47
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v1, v1, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 49
    sget-object v5, Lp3/a/g1$b;->l:Lp3/a/g1$b;

    if-ne v1, v5, :cond_4

    .line 50
    iget-object p1, p1, Lp3/a/i1;->a:Lp3/a/g1;

    .line 51
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p1, p1, Lp3/a/g1;->b:Ljava/lang/String;

    const-string v1, "GROUP_SIZE_LIMIT_REACHED"

    .line 53
    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string v3, "exceedSize"

    .line 54
    :cond_4
    :goto_1
    invoke-virtual {p0, v2, v0, v3}, Le/a/a/k/a/a/f;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v1, Ls1/k;

    invoke-direct {v1, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-object v1

    .line 56
    :cond_5
    new-instance p1, Ls1/k;

    invoke-direct {p1, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public r(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "peerId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    iget-object v1, p0, Le/a/a/k/a/a/f;->j:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/e1;

    invoke-interface {v1, p1}, Le/a/a/k/a/e1;->h(Ljava/lang/String;)Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object p1, v1

    :cond_0
    iput-object p1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 2
    new-instance p1, Le/a/a/k/a/a/f$d;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Le/a/a/k/a/a/f$d;-><init>(Le/a/a/k/a/a/f;Ls1/z/c/c0;Ls1/w/d;)V

    const/4 v0, 0x1

    invoke-static {v1, p1, v0, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/truecaller/blocking/FilterMatch;

    .line 4
    iget-object v1, p1, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 5
    sget-object v2, Lcom/truecaller/blocking/FilterAction;->FILTER_BLACKLISTED:Lcom/truecaller/blocking/FilterAction;

    if-ne v1, v2, :cond_1

    .line 6
    iget-object p1, p1, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    .line 7
    sget-object v1, Lcom/truecaller/blocking/ActionSource;->BLACKLISTED_NUMBER:Lcom/truecaller/blocking/ActionSource;

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s(Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;JZ)V
    .locals 16

    move-object/from16 v7, p0

    const-string v0, "event"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, v7, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    .line 2
    new-instance v2, Le/a/a/k/a/a/b0;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v3

    const-string v4, "event.context"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v3

    const-string v5, "event.context.group"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v9

    const-string v3, "event.context.group.id"

    invoke-static {v9, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getDate()I

    move-result v6

    invoke-static {v6}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getMessageId()Ljava/lang/String;

    move-result-object v14

    const-string v6, "event.messageId"

    invoke-static {v14, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v2

    move-wide/from16 v12, p2

    move/from16 v15, p4

    invoke-direct/range {v8 .. v15}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;Z)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getRoles()I

    move-result v6

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v8

    const-string v9, "it"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getTypeCase()Lcom/truecaller/api/services/messenger/v1/models/Peer$TypeCase;

    move-result-object v9

    sget-object v10, Lcom/truecaller/api/services/messenger/v1/models/Peer$TypeCase;->USER:Lcom/truecaller/api/services/messenger/v1/models/Peer$TypeCase;

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x0

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    move-object v8, v10

    :goto_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v10

    .line 5
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getParticipant()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v8

    const-string v9, "event.participant"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v8

    const-string v11, "event.participant.user"

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v12, "event.participant.user.id"

    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v2, v6, v10, v8}, Le/a/a/k/a/a/w;->f(Le/a/a/k/a/a/b0;ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getMessageId()Ljava/lang/String;

    return-void

    .line 8
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getContext()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v0

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v0

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getParticipant()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v0

    invoke-static {v0, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v0

    invoke-static {v0, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getRoles()I

    move-result v4

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getPermissions()Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;

    move-result-object v0

    const-string v5, "event.permissions"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/a/k/a/a/h;->c(Lcom/truecaller/api/services/messenger/v1/models/ContextPermissions;)Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    move-result-object v5

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$RolesUpdated;->getGroupInviteKey()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v8

    .line 14
    invoke-virtual/range {v0 .. v6}, Le/a/a/k/a/a/f;->y(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;Ljava/lang/String;)V

    .line 15
    iget-object v0, v7, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    sget-object v1, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "com.truecaller"

    const-string v2, "TruecallerContract.getAuthority()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v8}, Le/a/e/a2;->a0(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    return-void
.end method

.method public t(Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;JZ)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "event"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "event.groupId"

    const-string v3, "event.groupInfo"

    if-nez p4, :cond_0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    move-result-object v5

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Le/a/a/k/a/a/f;->M(Ljava/lang/String;Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;)Z

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    move-result-object v4

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->getTitleInfoCase()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    move-result-object v4

    sget-object v5, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->TITLEUNCHANGED:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    const-string v12, "event.sender.user.id"

    const-string v13, "event.sender.user"

    const-string v14, "event.sender"

    if-eq v4, v5, :cond_1

    .line 3
    iget-object v15, v0, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    .line 4
    new-instance v11, Le/a/a/k/a/a/b0;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getDate()I

    move-result v4

    invoke-static {v4}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getMessageId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-title"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v11

    move-wide/from16 v8, p2

    move-object v2, v11

    move/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;Z)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v4

    invoke-static {v4, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v4

    invoke-static {v4, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    move-result-object v5

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->getTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "event.groupInfo.title"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v15, v2, v4, v5}, Le/a/a/k/a/a/w;->c(Le/a/a/k/a/a/b0;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getGroupInfo()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->getAvatarInfoCase()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$AvatarInfoCase;

    move-result-object v2

    sget-object v3, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$AvatarInfoCase;->AVATARUNCHANGED:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$AvatarInfoCase;

    if-eq v2, v3, :cond_2

    .line 9
    iget-object v2, v0, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    .line 10
    new-instance v3, Le/a/a/k/a/a/b0;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getDate()I

    move-result v1

    invoke-static {v1}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-avatar"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v3

    move-wide/from16 v8, p2

    move/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;Z)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    invoke-static {v1, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v1

    invoke-static {v1, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v2, v3, v1}, Le/a/a/k/a/a/w;->g(Le/a/a/k/a/a/b0;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final u(Ljava/util/ArrayList;Ljava/util/Map;Lcom/truecaller/messaging/data/types/ImGroupInfo;)Lcom/truecaller/data/entity/messaging/Participant;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/truecaller/messaging/data/types/ImGroupInfo;",
            ")",
            "Lcom/truecaller/data/entity/messaging/Participant;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 2
    iget-object v1, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 3
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    const-string v1, "Participant.Builder(Part\u2026pId)\n            .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 6
    sget-object v2, Le/a/a/k/a/a/h;->a:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 7
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 8
    iget-object v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    const-string v4, "im_group_id"

    .line 9
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    const-string v4, "title"

    .line 11
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    const-string v4, "avatar"

    .line 13
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-wide v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->d:J

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "invited_date"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    iget-object v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->e:Ljava/lang/String;

    const-string v4, "invited_by"

    .line 17
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->f:I

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "roles"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    iget-object v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->g:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 21
    invoke-static {v3}, Le/a/a/k/a/a/h;->f(Lcom/truecaller/messaging/data/types/ImGroupPermissions;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 22
    iget v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->i:I

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "history_status"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    iget-wide v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->j:J

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "history_sequence_num"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    iget-wide v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->k:J

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "history_message_count"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    iget v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->h:I

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "notification_settings"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    iget-boolean v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->l:Z

    .line 31
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "are_participants_stale"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 32
    iget-wide v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->m:J

    .line 33
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "current_sequence_number"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    iget-wide v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->n:J

    .line 35
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "invite_notification_date"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    iget v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->o:I

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "invite_notification_count"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    iget-object v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->q:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    xor-int/2addr v6, v5

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    const-string v6, "invite_key"

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_3
    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 42
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {}, Le/a/b0/q/g0;->D()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    .line 44
    iget-object v3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "im_group_id = ?"

    .line 45
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p3, p3, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Le/a/a/k/a/a/f;->v(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public final v(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/messaging/Participant;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    invoke-static {}, Le/a/b0/q/g0;->D()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "im_group_id"

    .line 3
    invoke-virtual {v2, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 4
    iget-object v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    const-string v3, "im_peer_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "roles"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;Z)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v1, v0, Le/a/a/k/a/a/f;->a:Le/a/a/k/a/s1;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v1

    check-cast v1, Le/a/t2/a/e/a/b$a;

    const/4 v11, 0x0

    if-eqz v1, :cond_c

    .line 3
    :try_start_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;->newBuilder()Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request$a;

    move-result-object v3

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    move-object/from16 v12, p2

    invoke-static {v12, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 6
    check-cast v7, Lcom/truecaller/data/entity/messaging/Participant;

    .line 7
    invoke-static {v7}, Le/a/a/k/a/a/h;->d(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9
    iget-object v6, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;

    invoke-static {v6, v4}, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;->access$900(Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;Ljava/lang/Iterable;)V

    .line 10
    invoke-static/range {p1 .. p1}, Le/a/a/k/a/a/h;->a(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v4

    .line 11
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 12
    iget-object v6, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v6, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;

    invoke-static {v6, v4}, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;->access$300(Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    .line 13
    sget-object v4, Ls1/c0/c;->b:Ls1/c0/c$a;

    invoke-virtual {v4}, Ls1/c0/c$a;->e()J

    move-result-wide v6

    .line 14
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15
    iget-object v4, v3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;

    invoke-static {v4, v6, v7}, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;->access$100(Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;J)V

    .line 16
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    .line 17
    check-cast v3, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;

    invoke-virtual {v1, v3}, Le/a/t2/a/e/a/b$a;->c(Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;)Lcom/truecaller/api/services/messenger/v1/AddParticipants$Response;

    move-result-object v1

    const-string v3, "AddParticipants.Request.\u2026tub.addParticipants(it) }"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Response;->getInvalidPeersList()Ljava/util/List;

    move-result-object v3

    const-string v4, "response.invalidPeersList"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 21
    check-cast v6, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    const-string v7, "it"

    .line 22
    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v6

    const-string v7, "it.user"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v13

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/truecaller/data/entity/messaging/Participant;

    .line 25
    iget-object v7, v7, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    invoke-interface {v13, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v2

    if-eqz v7, :cond_3

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_4
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v3, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Le/q/f/a/d/a;->Y1(I)I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_5

    move v4, v5

    :cond_5
    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 27
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 28
    move-object v5, v4

    check-cast v5, Lcom/truecaller/data/entity/messaging/Participant;

    .line 29
    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Response;->getParticipantRoles()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 30
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual {v0, v3, v2, v10}, Le/a/a/k/a/a/f;->v(Ljava/util/ArrayList;Ljava/util/Map;Ljava/lang/String;)V

    .line 32
    iget-object v2, v0, Le/a/a/k/a/a/f;->b:Landroid/content/ContentResolver;

    sget-object v4, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v4, "com.truecaller"

    const-string v5, "TruecallerContract.getAuthority()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4, v3}, Le/a/e/a2;->a0(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 33
    iget-object v14, v0, Le/a/a/k/a/a/f;->f:Le/a/a/k/a/a/w;

    .line 34
    new-instance v15, Le/a/a/k/a/a/b0;

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Response;->getDate()I

    move-result v2

    invoke-static {v2}, Le/a/a/k/a/a/h;->e(I)J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Response;->getSeq()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Response;->getMessageId()Ljava/lang/String;

    move-result-object v7

    const-string v1, "response.messageId"

    invoke-static {v7, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0x10

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;ZI)V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 37
    check-cast v3, Lcom/truecaller/data/entity/messaging/Participant;

    .line 38
    iget-object v3, v3, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 39
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 40
    :cond_8
    invoke-interface {v14, v15, v1}, Le/a/a/k/a/a/w;->o(Le/a/a/k/a/a/b0;Ljava/util/List;)V

    if-eqz p3, :cond_b

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/truecaller/data/entity/messaging/Participant;

    .line 43
    iget-object v4, v4, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 44
    :cond_a
    invoke-virtual {v0, v1}, Le/a/a/k/a/a/f;->D(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 45
    invoke-virtual {v0, v10, v1, v11}, Le/a/a/k/a/a/f;->w(Ljava/lang/String;Ljava/util/List;Z)Z

    :cond_b
    const/4 v1, 0x1

    return v1

    :catch_0
    :cond_c
    return v11
.end method

.method public final x(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v2

    .line 2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Lcom/truecaller/data/entity/messaging/Participant;

    .line 5
    iget-object v4, v4, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Le/a/b0/q/g0;->D()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v12, 0x0

    .line 8
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v13, "roles"

    invoke-virtual {v3, v13, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v3, "im_group_id=? AND im_peer_id IN ("

    .line 9
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Le/a/a/k/a/a/f$a;->b:Le/a/a/k/a/a/f$a;

    const/16 v10, 0x1f

    move-object v3, v11

    invoke-static/range {v3 .. v10}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x29

    invoke-static {v15, v3, v4}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object p3, v5, v12

    new-array v6, v12, [Ljava/lang/String;

    .line 10
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static {v5, v6}, Ls1/u/i;->t0([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 12
    invoke-virtual {v14, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {v11, v2}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 17
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v13, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 18
    sget-object v3, Le/a/a/k/a/a/h;->a:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    sget-object v3, Le/a/a/k/a/a/h;->a:Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 19
    invoke-static {v3}, Le/a/a/k/a/a/h;->f(Lcom/truecaller/messaging/data/types/ImGroupPermissions;)Landroid/content/ContentValues;

    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    aput-object p3, v3, v12

    const-string v4, "im_group_id = ?"

    .line 21
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final y(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/truecaller/messaging/data/types/ImGroupPermissions;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/b0/q/g0;->D()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "roles"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    const/4 v4, 0x1

    aput-object p3, v1, v4

    const-string v5, "im_group_id=? AND im_peer_id=?"

    .line 3
    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Le/a/a/k/a/a/f;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "im_group_id = ?"

    if-eqz p3, :cond_0

    .line 7
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    .line 8
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, v2, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    .line 9
    invoke-static {p5}, Le/a/a/k/a/a/h;->f(Lcom/truecaller/messaging/data/types/ImGroupPermissions;)Landroid/content/ContentValues;

    move-result-object p4

    .line 10
    invoke-virtual {p3, p4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/String;

    aput-object p2, p4, v3

    .line 11
    invoke-virtual {p3, v0, p4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    .line 12
    invoke-virtual {p3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p3

    .line 13
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p6, :cond_2

    .line 14
    invoke-interface {p6}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    move p3, v3

    goto :goto_1

    :cond_2
    :goto_0
    move p3, v4

    :goto_1
    if-nez p3, :cond_3

    .line 15
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    const-string p4, "invite_key"

    .line 16
    invoke-virtual {p3, p4, p6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/String;

    aput-object p2, p4, v3

    .line 17
    invoke-virtual {p3, v0, p4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
