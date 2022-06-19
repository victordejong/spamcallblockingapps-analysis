.class public final Le/a/n/f2;
.super Le/a/n/h0;
.source "SourceFile"


# instance fields
.field public final b:Le/a/a/i0;

.field public final c:Le/a/u3/g;

.field public final d:Le/a/b0/o/a;

.field public final e:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Le/a/a/k/w$c;Le/a/a/i0;Le/a/u3/g;Le/a/b0/o/a;Landroid/content/ContentResolver;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "transactionExecutor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/n/h0;-><init>(Le/a/a/k/w$c;)V

    iput-object p2, p0, Le/a/n/f2;->b:Le/a/a/i0;

    iput-object p3, p0, Le/a/n/f2;->c:Le/a/u3/g;

    iput-object p4, p0, Le/a/n/f2;->d:Le/a/b0/o/a;

    iput-object p5, p0, Le/a/n/f2;->e:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final D(Ljava/util/List;JLcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p4}, Le/a/c/p/a;->e1(Ljava/util/List;Lcom/truecaller/data/entity/messaging/Participant;)I

    move-result v0

    .line 2
    invoke-static {p4}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p4

    const/4 v1, 0x0

    invoke-static {p1, p4, v1}, Le/a/c/p/a;->d1(Ljava/util/List;Ljava/util/Set;Z)I

    move-result p4

    .line 3
    invoke-static {p2, p3}, Le/a/b0/q/g0;->A(J)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    const-string p3, "ContentProviderOperation\u2026getContentUri(messageId))"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v0, :cond_0

    const-string p3, "participant_id"

    .line 4
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    :cond_0
    if-lez p4, :cond_1

    const-string p3, "conversation_id"

    .line 5
    invoke-virtual {p2, p3, p4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    :cond_1
    const-string p3, "info10"

    .line 6
    invoke-virtual {p2, p3, p5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 7
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    const-string p3, "builder.build()"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public h(Lw3/b/a/b;)V
    .locals 3

    const-string v0, "time"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/n/f2;->b:Le/a/a/i0;

    .line 2
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    const/4 p1, 0x4

    .line 3
    invoke-interface {v0, p1, v1, v2}, Le/a/a/i0;->S0(IJ)V

    return-void
.end method

.method public j()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/n/f2;->b:Le/a/a/i0;

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Le/a/a/i0;->i2(IJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    return-object v0
.end method

.method public m(Le/a/a/k/j;Le/a/a/k/m;Le/a/a/g/j0/g0;Lw3/b/a/b;Lw3/b/a/b;ILjava/util/List;Le/a/p5/l0;ZLe/a/c/r/h/d;)J
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Le/a/a/g/j0/g0;",
            "Lw3/b/a/b;",
            "Lw3/b/a/b;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Le/a/p5/l0;",
            "Z",
            "Le/a/c/r/h/d;",
            ")J"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p10

    const-string v0, "threadInfoCache"

    move-object v1, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "participantCache"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localCursor"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeTo"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeFrom"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operations"

    move-object/from16 v10, p7

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trace"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesToClassify"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v11, p6

    .line 1
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, v6, Le/a/n/f2;->d:Le/a/b0/o/a;

    const/4 v12, 0x0

    const-string v1, "deleteBackupDuplicates"

    invoke-interface {v0, v1, v12}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_8

    .line 3
    iget-object v0, v6, Le/a/n/f2;->e:Landroid/content/ContentResolver;

    .line 4
    invoke-static {}, Le/a/m0/a1$f;->a()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "ConversationsTable.getContentUri()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v13, [Ljava/lang/String;

    .line 5
    move-object v3, v8

    check-cast v3, Le/a/a/g/d0;

    .line 6
    iget v4, v3, Le/a/a/g/d0;->n:I

    invoke-virtual {v3, v4}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v4

    .line 7
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v12

    const-string v4, "type"

    const-string v5, "_id=?"

    .line 8
    invoke-static {v0, v1, v4, v5, v2}, Le/a/p5/s0/f;->D(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 9
    invoke-virtual {v3}, Le/a/a/g/d0;->u1()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 10
    :goto_1
    iget v4, v3, Le/a/a/g/d0;->m:I

    invoke-virtual {v3, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v2, v4

    :cond_2
    const/4 v4, 0x2

    if-nez v0, :cond_3

    goto :goto_4

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_7

    invoke-static {v2, v12}, Le/a/b0/q/g0;->M(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    if-eqz p9, :cond_5

    .line 12
    invoke-static {v2}, Le/a/b0/q/c0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "PhoneNumberUtils.stripAl\u2026umericAddress(rawAddress)"

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v13

    if-eqz v0, :cond_7

    .line 14
    invoke-interface {v7, v5}, Le/a/a/k/m;->a(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant;->e()Lcom/truecaller/data/entity/messaging/Participant$b;

    move-result-object v0

    .line 15
    iput-object v2, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v4

    const-string v0, "participantCache.getPart\u2026dress(rawAddress).build()"

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Le/a/a/g/d0;->u()J

    move-result-wide v2

    move-object v0, p0

    move-object/from16 v1, p7

    invoke-virtual/range {v0 .. v5}, Le/a/n/f2;->D(Ljava/util/List;JLcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;)V

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v13

    goto :goto_2

    :cond_6
    move v0, v12

    :goto_2
    if-eqz v0, :cond_7

    .line 19
    invoke-interface {v7, v2}, Le/a/a/k/m;->a(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v4

    .line 20
    invoke-virtual {v3}, Le/a/a/g/d0;->u()J

    move-result-wide v2

    const-string v5, ""

    move-object v0, p0

    move-object/from16 v1, p7

    invoke-virtual/range {v0 .. v5}, Le/a/n/f2;->D(Ljava/util/List;JLcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;)V

    :goto_3
    move v0, v13

    goto :goto_5

    :cond_7
    :goto_4
    move v0, v12

    :goto_5
    if-eqz v0, :cond_8

    add-int/lit8 v11, v11, -0x1

    .line 21
    :cond_8
    iget-object v0, v6, Le/a/n/f2;->c:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22
    move-object v0, v8

    check-cast v0, Le/a/a/g/d0;

    invoke-virtual {v0}, Le/a/a/g/d0;->b()I

    move-result v1

    if-nez v1, :cond_9

    .line 23
    invoke-virtual {v0}, Le/a/a/g/d0;->u()J

    move-result-wide v0

    sget-object v2, Le/a/c/r/h/e$a;->a:Le/a/c/r/h/e$a;

    invoke-virtual {v9, v0, v1, v2}, Le/a/c/r/h/d;->a(JLe/a/c/r/h/e;)Z

    add-int/lit8 v11, v11, -0x1

    :cond_9
    if-gtz v11, :cond_0

    .line 24
    move-object v0, v8

    check-cast v0, Le/a/a/g/d0;

    invoke-virtual {v0}, Le/a/a/g/d0;->g2()J

    move-result-wide v1

    .line 25
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    const-wide/16 v3, 0x0

    .line 26
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 27
    invoke-virtual {v0}, Le/a/a/g/d0;->g2()J

    move-result-wide v3

    .line 28
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    :cond_b
    cmp-long v0, v1, v3

    if-eqz v0, :cond_c

    move v12, v13

    :cond_c
    move v13, v12

    :goto_6
    if-eqz v13, :cond_d

    .line 29
    invoke-static {v1, v2}, Le/a/c/p/a;->G1(J)J

    move-result-wide v0

    return-wide v0

    :cond_d
    add-int/lit16 v11, v11, 0xc8

    goto/16 :goto_0

    :cond_e
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method
