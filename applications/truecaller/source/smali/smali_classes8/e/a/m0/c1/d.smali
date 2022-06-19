.class public Le/a/m0/c1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/h0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Le/a/m0/c1/g0;->a(Le/a/m0/c1/h0;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/16 v3, 0xc

    if-ge v2, v3, :cond_0

    const-string v3, "UPDATE raw_contact SET contact_spam_score=(SELECT MAX(data3) FROM data WHERE data_raw_contact_id=raw_contact._id AND  data_type=4)"

    .line 1
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "UPDATE aggregated_contact SET contact_spam_score=(SELECT MAX(contact_spam_score) FROM raw_contact WHERE aggregated_contact_id=aggregated_contact._id)"

    .line 2
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/16 v3, 0xf

    if-ge v2, v3, :cond_7

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const-string v5, "SELECT data_raw_contact_id AS raw_id, r.aggregated_contact_id,  data1 FROM data LEFT JOIN raw_contact r ON data_raw_contact_id = r._id WHERE data_type = 2 ORDER BY raw_id"

    .line 4
    invoke-virtual {v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move v6, v5

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    :goto_0
    if-lez v6, :cond_7

    .line 6
    new-instance v7, Le/g/a/o;

    invoke-direct {v7, v6}, Le/g/a/o;-><init>(I)V

    .line 7
    new-instance v8, Le/g/a/o;

    invoke-direct {v8, v6}, Le/g/a/o;-><init>(I)V

    .line 8
    :cond_2
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v6, :cond_4

    .line 9
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 10
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-wide/16 v13, -0x1

    goto :goto_2

    :cond_3
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-wide v13, v15

    .line 11
    :goto_2
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Le/a/m0/a1$k;->u(Ljava/lang/String;)I

    move-result v6

    .line 12
    invoke-virtual {v7, v11, v12, v5}, Le/g/a/o;->b(JI)I

    move-result v9

    or-int/2addr v9, v6

    invoke-virtual {v7, v11, v12, v9}, Le/g/a/o;->e(JI)I

    const-wide/16 v9, -0x1

    cmp-long v9, v13, v9

    if-eqz v9, :cond_2

    .line 13
    invoke-virtual {v8, v13, v14, v5}, Le/g/a/o;->b(JI)I

    move-result v9

    or-int/2addr v6, v9

    invoke-virtual {v8, v13, v14, v6}, Le/g/a/o;->e(JI)I

    goto :goto_1

    .line 14
    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 15
    invoke-virtual {v7}, Le/g/a/o;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "raw_contact"

    .line 16
    invoke-virtual {v0, v4, v7}, Le/a/m0/c1/d;->d(Ljava/lang/String;Le/g/a/p;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    :cond_5
    invoke-virtual {v8}, Le/g/a/o;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "aggregated_contact"

    .line 18
    invoke-virtual {v0, v4, v8}, Le/a/m0/c1/d;->d(Ljava/lang/String;Le/g/a/p;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    const-string v4, "DELETE FROM data WHERE data_type = 2"

    .line 19
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    new-array v1, v9, [Ljava/lang/Object;

    .line 21
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    long-to-float v2, v6

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, "Migrating badges took %d millis (%.2f seconds)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_7
    return-void
.end method

.method public synthetic c()[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Le/a/m0/c1/g0;->b(Le/a/m0/c1/h0;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;Le/g/a/p;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SET "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "contact_badges"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = CASE _id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    check-cast p2, Le/g/a/o;

    .line 4
    new-instance v1, Le/g/a/o$a;

    invoke-direct {v1, p2}, Le/g/a/o$a;-><init>(Le/g/a/o;)V

    .line 5
    :goto_0
    invoke-virtual {v1}, Le/g/a/a;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Le/g/a/a;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/g/a/r/d;

    .line 6
    iget-wide v2, p2, Le/g/a/r/d;->b:J

    .line 7
    iget p2, p2, Le/g/a/r/d;->c:I

    const-string v4, " WHEN "

    const-string v5, " THEN "

    .line 8
    invoke-static {v0, v4, v2, v3, v5}, Le/d/c/a/a;->Q0(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    const-string p2, " END WHERE _id IN ("

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
