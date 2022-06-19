.class public final Le/a/n/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/v0;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Landroid/net/Uri;

.field public final c:Landroid/net/Uri;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ls1/f0/h;

.field public final i:Landroid/content/Context;

.field public final j:Le/a/k3/j/j;

.field public final k:Le/a/n/a1;

.field public final l:Le/m/e/k;

.field public final m:Le/a/n/i0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/k3/j/j;Le/a/n/a1;Le/m/e/k;Le/a/n/i0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawContactDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "driveManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n/w0;->i:Landroid/content/Context;

    iput-object p2, p0, Le/a/n/w0;->j:Le/a/k3/j/j;

    iput-object p3, p0, Le/a/n/w0;->k:Le/a/n/a1;

    iput-object p4, p0, Le/a/n/w0;->l:Le/m/e/k;

    iput-object p5, p0, Le/a/n/w0;->m:Le/a/n/i0;

    .line 2
    invoke-static {}, Le/a/m0/a1$a;->b()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Le/a/n/w0;->a:Landroid/net/Uri;

    .line 3
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Le/a/n/w0;->b:Landroid/net/Uri;

    .line 4
    invoke-static {}, Le/a/m0/a1$m;->b()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Le/a/n/w0;->c:Landroid/net/Uri;

    const-string p1, "contact_name NOT NULL AND contact_name NOT IN (\'\', \'Truecaller Verification\') AND contact_default_number NOT NULL"

    .line 5
    iput-object p1, p0, Le/a/n/w0;->d:Ljava/lang/String;

    const-string p1, "tc_id DESC, contact_source DESC"

    .line 6
    iput-object p1, p0, Le/a/n/w0;->e:Ljava/lang/String;

    const-string p1, "contact_name = ? AND tc_flag = ?"

    .line 7
    iput-object p1, p0, Le/a/n/w0;->f:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Integer;

    const/16 p2, 0x10

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p1, p4

    const/16 p3, 0x20

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-static {p1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/n/w0;->g:Ljava/util/List;

    .line 9
    sget-object p1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const-string p2, "Patterns.PHONE"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ls1/f0/h;

    invoke-direct {p2, p1}, Ls1/f0/h;-><init>(Ljava/util/regex/Pattern;)V

    iput-object p2, p0, Le/a/n/w0;->h:Ls1/f0/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/backup/BackupResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Le/a/n/w0$c;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Le/a/n/w0$c;

    iget v3, v2, Le/a/n/w0$c;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/n/w0$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/n/w0$c;

    invoke-direct {v2, v1, v0}, Le/a/n/w0$c;-><init>(Le/a/n/w0;Ls1/w/d;)V

    :goto_0
    iget-object v0, v2, Le/a/n/w0$c;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/n/w0$c;->e:I

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v7, :cond_1

    iget-object v3, v2, Le/a/n/w0$c;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    iget-object v2, v2, Le/a/n/w0$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/w0;

    :try_start_0
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Le/m/e/u; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_14

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v1, Le/a/n/w0;->m:Le/a/n/i0;

    sget-object v4, Lcom/truecaller/backup/BackupFile;->CONTACTS:Lcom/truecaller/backup/BackupFile;

    move-object/from16 v9, p1

    invoke-interface {v0, v4, v9}, Le/a/n/i0;->a(Lcom/truecaller/backup/BackupFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 5
    iget-object v4, v1, Le/a/n/w0;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 6
    iget-object v10, v1, Le/a/n/w0;->c:Landroid/net/Uri;

    iget-object v12, v1, Le/a/n/w0;->d:Ljava/lang/String;

    iget-object v14, v1, Le/a/n/w0;->e:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 7
    sget-object v9, Le/a/o5/v;->b:Le/a/o5/v;

    invoke-static {v4, v8, v9}, Le/a/e/a2;->M(Landroid/database/Cursor;Ls1/z/b/l;Ls1/z/b/p;)Ljava/util/List;

    move-result-object v4

    .line 8
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v8

    :goto_1
    if-nez v4, :cond_4

    goto/16 :goto_12

    .line 9
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/truecaller/data/entity/Contact;

    .line 11
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v12

    if-eq v12, v6, :cond_8

    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    iget-object v12, v1, Le/a/n/w0;->h:Ls1/f0/h;

    invoke-virtual {v12, v11}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_3

    :cond_6
    move-object v11, v8

    :goto_3
    invoke-static {v11}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    move v11, v7

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_4
    if-nez v11, :cond_5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 14
    check-cast v8, Lcom/truecaller/data/entity/Contact;

    .line 15
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_18

    const-string v9, "contact.name ?: return@mapNotNull null"

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v9

    const-string v11, "contact.numbers"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v9, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v12, "it"

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 19
    check-cast v9, Lcom/truecaller/data/entity/Number;

    .line 20
    invoke-static {v9, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 21
    :cond_a
    invoke-static {v11}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    .line 22
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->F()Ljava/util/List;

    move-result-object v9

    const-string v11, "contact.links"

    invoke-static {v9, v11}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 23
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/truecaller/data/entity/Link;

    .line 24
    invoke-static {v14, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/data/entity/Link;->getInfo()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_c

    goto :goto_8

    :cond_c
    const/4 v14, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    move v14, v7

    :goto_9
    xor-int/2addr v14, v7

    if-eqz v14, :cond_b

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 25
    :cond_e
    invoke-static {v11}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    .line 26
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->k()Ljava/util/List;

    move-result-object v9

    const-string v11, "contact.addresses"

    invoke-static {v9, v11}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 27
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_f
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/truecaller/data/entity/Address;

    .line 28
    invoke-static {v14, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/data/entity/Address;->getDisplayableAddress()Ljava/lang/String;

    move-result-object v14

    const-string v15, "it.displayableAddress"

    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_10

    const/4 v14, 0x1

    goto :goto_b

    :cond_10
    const/4 v14, 0x0

    :goto_b
    if-eqz v14, :cond_f

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 29
    :cond_11
    invoke-static {v11}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v9

    .line 30
    new-instance v16, Lcom/truecaller/backup/ContactBackupItem;

    .line 31
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v11

    .line 32
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_12

    const/4 v5, 0x0

    :cond_12
    move-object v12, v5

    .line 33
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x0

    move-object v13, v5

    goto :goto_c

    :cond_13
    move-object v13, v7

    .line 34
    :goto_c
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x0

    move-object v14, v5

    goto :goto_d

    :cond_14
    move-object v14, v9

    .line 35
    :goto_d
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_15

    goto :goto_e

    :cond_15
    const/4 v5, 0x0

    goto :goto_f

    :cond_16
    :goto_e
    const/4 v5, 0x1

    :goto_f
    if-eqz v5, :cond_17

    const/4 v5, 0x0

    goto :goto_10

    :cond_17
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v5

    :goto_10
    move-object v15, v5

    move-object/from16 v9, v16

    .line 36
    invoke-direct/range {v9 .. v15}, Lcom/truecaller/backup/ContactBackupItem;-><init>(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_11

    :cond_18
    const/16 v16, 0x0

    :goto_11
    move-object/from16 v5, v16

    if-eqz v5, :cond_19

    .line 37
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    const/16 v5, 0xa

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_1a
    const-string v5, "$this$toSortedSet"

    .line 38
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v4, v8}, Ls1/u/i;->P0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    :goto_12
    if-eqz v8, :cond_1b

    move-object v4, v8

    goto :goto_13

    .line 40
    :cond_1b
    sget-object v4, Ls1/u/u;->a:Ls1/u/u;

    .line 41
    :goto_13
    :try_start_1
    iput-object v1, v2, Le/a/n/w0$c;->g:Ljava/lang/Object;

    iput-object v4, v2, Le/a/n/w0$c;->h:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v2, Le/a/n/w0$c;->e:I

    invoke-virtual {v1, v0, v2}, Le/a/n/w0;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1c

    return-object v3

    :cond_1c
    move-object v2, v1

    move-object v3, v4

    :goto_14
    check-cast v0, Ljava/util/Set;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Le/m/e/u; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_2c

    .line 42
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1d
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/truecaller/backup/ContactBackupItem;

    .line 45
    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 46
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 47
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1e
    const/4 v3, 0x1

    .line 48
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/backup/ContactBackupItem;

    .line 49
    new-instance v7, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v7}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 50
    invoke-virtual {v6}, Lcom/truecaller/backup/ContactBackupItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/truecaller/data/entity/Contact;->S0(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v6}, Lcom/truecaller/backup/ContactBackupItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/truecaller/data/entity/Contact;->P0(Ljava/lang/String;)V

    const/4 v8, 0x2

    .line 52
    iput v8, v7, Lcom/truecaller/data/entity/Contact;->z:I

    .line 53
    iget-object v8, v2, Le/a/n/w0;->g:Ljava/util/List;

    invoke-virtual {v6}, Lcom/truecaller/backup/ContactBackupItem;->getSource()I

    move-result v9

    .line 54
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 55
    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/16 v8, 0x20

    goto :goto_17

    :cond_1f
    move v8, v3

    :goto_17
    invoke-virtual {v7, v8}, Lcom/truecaller/data/entity/Contact;->setSource(I)V

    .line 56
    invoke-virtual {v6}, Lcom/truecaller/backup/ContactBackupItem;->getNumbers()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_20

    .line 57
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 58
    new-instance v10, Lcom/truecaller/data/entity/Number;

    const/4 v11, 0x0

    .line 59
    invoke-direct {v10, v9, v11}, Lcom/truecaller/data/entity/Number;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v7, v10}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    goto :goto_18

    .line 61
    :cond_20
    invoke-virtual {v6}, Lcom/truecaller/backup/ContactBackupItem;->getEmails()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_21

    .line 62
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/data/entity/Link;

    .line 63
    invoke-virtual {v7, v9}, Lcom/truecaller/data/entity/Contact;->c(Lcom/truecaller/data/entity/Link;)V

    goto :goto_19

    .line 64
    :cond_21
    invoke-virtual {v6}, Lcom/truecaller/backup/ContactBackupItem;->getAddresses()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_22

    .line 65
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/data/entity/Address;

    .line 66
    invoke-virtual {v7, v8}, Lcom/truecaller/data/entity/Contact;->b(Lcom/truecaller/data/entity/Address;)V

    goto :goto_1a

    .line 67
    :cond_22
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 68
    :cond_23
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 69
    invoke-static {v4}, Ls1/u/i;->h1(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v4

    .line 70
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    check-cast v4, Ls1/u/x;

    invoke-virtual {v4}, Ls1/u/x;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    move-object v6, v4

    check-cast v6, Ls1/u/y;

    invoke-virtual {v6}, Ls1/u/y;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-virtual {v6}, Ls1/u/y;->next()Ljava/lang/Object;

    move-result-object v6

    .line 72
    move-object v7, v6

    check-cast v7, Ls1/u/w;

    .line 73
    iget v7, v7, Ls1/u/w;->a:I

    .line 74
    div-int/lit8 v7, v7, 0x64

    .line 75
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 76
    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_24

    .line 77
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_24
    check-cast v7, Ljava/util/List;

    .line 80
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 81
    :cond_25
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 83
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 85
    check-cast v8, Ls1/u/w;

    .line 86
    iget-object v8, v8, Ls1/u/w;->b:Ljava/lang/Object;

    .line 87
    check-cast v8, Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_26
    if-eqz v5, :cond_27

    .line 88
    iget-object v5, v2, Le/a/n/w0;->j:Le/a/k3/j/j;

    invoke-virtual {v5, v7}, Le/a/k3/j/j;->d(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_27

    move v5, v3

    goto :goto_1e

    :cond_27
    const/4 v5, 0x0

    .line 89
    :goto_1e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    goto :goto_1c

    :cond_28
    if-eqz v5, :cond_2a

    .line 90
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/backup/ContactBackupItem;

    .line 93
    iget-object v6, v2, Le/a/n/w0;->a:Landroid/net/Uri;

    const-string v7, "aggregatedUri"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/backup/ContactBackupItem;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v2, v6, v7, v8}, Le/a/n/w0;->b(Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v6, v2, Le/a/n/w0;->b:Landroid/net/Uri;

    const-string v7, "rawUri"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/backup/ContactBackupItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4, v8}, Le/a/n/w0;->b(Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 95
    :cond_29
    :try_start_2
    iget-object v0, v2, Le/a/n/w0;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Le/a/m0/a1;->a:Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "com.truecaller"

    :try_start_3
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    const-string v2, "context.contentResolver.\u2026tAuthority(), operations)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_20

    :catch_0
    move-exception v0

    .line 96
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_2a
    :goto_20
    if-eqz v5, :cond_2b

    .line 97
    sget-object v0, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    goto :goto_21

    :cond_2b
    sget-object v0, Lcom/truecaller/backup/BackupResult;->ErrorDatabase:Lcom/truecaller/backup/BackupResult;

    :goto_21
    return-object v0

    .line 98
    :cond_2c
    :try_start_4
    sget-object v0, Lcom/truecaller/backup/BackupResult;->ErrorRead:Lcom/truecaller/backup/BackupResult;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Le/m/e/u; {:try_start_4 .. :try_end_4} :catch_1

    return-object v0

    :catch_1
    const-string v0, "Cannot parse contacts json file"

    .line 99
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/truecaller/backup/BackupResult;->ErrorJsonParsing:Lcom/truecaller/backup/BackupResult;

    return-object v0

    :catch_2
    const-string v0, "IllegalStateException during parsing contacts json file"

    .line 101
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/truecaller/backup/BackupResult;->ErrorJsonParsing:Lcom/truecaller/backup/BackupResult;

    return-object v0

    .line 103
    :cond_2d
    sget-object v0, Lcom/truecaller/backup/BackupResult;->ErrorFileName:Lcom/truecaller/backup/BackupResult;

    return-object v0
.end method

.method public final b(Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/ContentProviderOperation;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string v0, "ContentProviderOperation.newUpdate(uri)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "tc_flag"

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3
    iget-object p3, p0, Le/a/n/w0;->f:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p1, p3, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 4
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    const-string p2, "rawUpdate.build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Set<",
            "Lcom/truecaller/backup/ContactBackupItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/n/w0$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/n/w0$b;

    iget v1, v0, Le/a/n/w0$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/w0$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/w0$b;

    invoke-direct {v0, p0, p2}, Le/a/n/w0$b;-><init>(Le/a/n/w0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/n/w0$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/w0$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/n/w0$b;->g:Ljava/lang/Object;

    check-cast p1, Le/a/n/w0;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/n/w0;->k:Le/a/n/a1;

    iput-object p0, v0, Le/a/n/w0$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/n/w0$b;->e:I

    invoke-interface {p2, p1, v0}, Le/a/n/a1;->h(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Ljava/io/InputStream;

    if-eqz p2, :cond_4

    .line 5
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 6
    iget-object p1, p1, Le/a/n/w0;->l:Le/m/e/k;

    .line 7
    new-instance p2, Le/a/n/w0$a;

    invoke-direct {p2}, Le/a/n/w0$a;-><init>()V

    invoke-virtual {p2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    const-string v1, "object : TypeToken<T>() {}.type"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v0}, Le/m/e/k;->k(Ljava/io/Reader;)Le/m/e/g0/a;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0, p2}, Le/m/e/k;->c(Le/m/e/g0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-static {p1, v0}, Le/m/e/k;->a(Ljava/lang/Object;Le/m/e/g0/a;)V

    const-string p2, "this.fromJson(json, typeToken<T>())"

    .line 11
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method
