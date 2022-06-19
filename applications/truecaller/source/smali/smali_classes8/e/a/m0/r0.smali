.class public Le/a/m0/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$e;
.implements Le/a/b0/i/e/a$f;
.implements Le/a/b0/i/e/a$b;


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field public b:Le/a/m0/u;

.field public c:Le/a/l0/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "INSERT OR REPLACE INTO aggregated_contact (tc_id, tc_flag, aggregated_update_timestamp, cache_control, "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Le/a/m0/a1$d;->b:[Ljava/lang/String;

    const-string v2, ","

    .line 2
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ") SELECT "

    const-string v5, "tc_id"

    const-string v6, ", "

    invoke-static {v0, v3, v4, v5, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "tc_flag"

    const-string v4, "insert_timestamp"

    invoke-static {v0, v3, v6, v4, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cache_control"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " FROM "

    const-string v3, "raw_contact"

    const-string v4, " WHERE "

    invoke-static {v0, v1, v2, v3, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "=?"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/m0/r0;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/m0/r0$a;

    invoke-direct {v0, p0}, Le/a/m0/r0$a;-><init>(Le/a/m0/r0;)V

    iput-object v0, p0, Le/a/m0/r0;->a:Ljava/util/Comparator;

    return-void
.end method

.method public static e(Ljava/lang/Integer;I)I
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public static f(Ljava/lang/Long;J)J
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public static g(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 6

    .line 1
    sget-object v0, Le/a/m0/r0;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const-string v4, "UPDATE raw_contact SET aggregated_contact_id=? WHERE _id=?"

    .line 4
    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 11
    throw p1

    .line 12
    :cond_0
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create one-to-one aggregate for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 14
    throw p0
.end method

.method public static h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    move-object p2, p3

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 9
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_3
    instance-of p3, p2, Ljava/lang/Integer;

    if-eqz p3, :cond_4

    .line 11
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 12
    :cond_4
    instance-of p3, p2, Ljava/lang/Long;

    if-eqz p3, :cond_5

    .line 13
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 14
    :cond_5
    instance-of p3, p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_6

    .line 15
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 16
    :cond_6
    instance-of p3, p2, Ljava/lang/Float;

    if-eqz p3, :cond_7

    .line 17
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 18
    :cond_7
    instance-of p3, p2, Ljava/lang/Double;

    if-eqz p3, :cond_8

    .line 19
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 20
    :cond_8
    instance-of p3, p2, [B

    if-eqz p3, :cond_9

    .line 21
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 22
    :cond_9
    instance-of p3, p2, Ljava/lang/Short;

    if-eqz p3, :cond_a

    .line 23
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    :goto_1
    return-void

    .line 24
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown value type, "

    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;J)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "aggregated_contact"

    const-string v4, "_id=?"

    .line 2
    invoke-virtual {p0, v2, p3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    if-ne p3, v0, :cond_1

    .line 3
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "aggregated_contact_id"

    invoke-virtual {p3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-array v1, v0, [Ljava/lang/String;

    .line 5
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "raw_contact"

    invoke-virtual {p0, v2, p3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-ne p0, v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const-string p3, "Could not update raw contact (_id="

    const-string v0, ") with id of aggregated contact, _id="

    invoke-static {p3, p4, p5, v0}, Le/d/c/a/a;->G(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    const-string p3, "Could not update aggregated contact with new values, _id="

    invoke-static {p3, p1, p2}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    const-string p2, "aggregated_contact_id"

    .line 1
    invoke-virtual {p4, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_0

    .line 2
    check-cast p1, Lcom/truecaller/content/TruecallerContentProvider;

    sget-object p2, Lcom/truecaller/content/TruecallerContentProvider$AggregationState;->IMMEDIATE:Lcom/truecaller/content/TruecallerContentProvider$AggregationState;

    invoke-virtual {p1, p2}, Lcom/truecaller/content/TruecallerContentProvider;->w(Lcom/truecaller/content/TruecallerContentProvider$AggregationState;)V

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/m0/r0;->c:Le/a/l0/k;

    if-eqz p1, :cond_1

    const-string p1, "tc_id"

    .line 4
    invoke-virtual {p4, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p2, p0, Le/a/m0/r0;->c:Le/a/l0/k;

    invoke-interface {p2, p1}, Le/a/l0/k;->a(Ljava/lang/String;)V

    :cond_1
    return-object p5
.end method

.method public b(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    .line 1
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "_id=?"

    const-string v5, ")"

    if-nez p4, :cond_0

    .line 2
    iget-boolean v6, p2, Le/a/b0/i/e/a;->f:Z

    if-nez v6, :cond_0

    .line 3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "tc_id"

    .line 4
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v7, "history"

    .line 5
    invoke-virtual {v0, v7, v6, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 6
    :cond_0
    iget-boolean v6, p2, Le/a/b0/i/e/a;->f:Z

    if-eqz v6, :cond_1

    .line 7
    invoke-static {p4, v4}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/String;

    .line 8
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p5, v7}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v6, p4

    move-object v7, p5

    .line 9
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE history SET tc_id = NULL WHERE tc_id IN (SELECT tc_id FROM raw_contact WHERE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 10
    :try_start_0
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 13
    :goto_1
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez p4, :cond_2

    .line 14
    iget-boolean v6, p2, Le/a/b0/i/e/a;->f:Z

    if-nez v6, :cond_2

    const-string p2, "aggregated_contact"

    const-string p3, "1"

    .line 15
    invoke-virtual {v0, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_2

    .line 16
    :cond_2
    iget-boolean p2, p2, Le/a/b0/i/e/a;->f:Z

    if-eqz p2, :cond_3

    .line 17
    invoke-static {p4, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-array p2, v3, [Ljava/lang/String;

    .line 18
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    .line 19
    invoke-static {p5, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->c([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    .line 20
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DELETE FROM aggregated_contact WHERE _id IN (SELECT raw_contact.aggregated_contact_id FROM raw_contact WHERE "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    .line 21
    :try_start_1
    invoke-virtual {p2, p5}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    move p2, p3

    :goto_2
    if-lez p2, :cond_4

    .line 24
    check-cast p1, Lcom/truecaller/content/TruecallerContentProvider;

    sget-object p2, Lcom/truecaller/content/TruecallerContentProvider$AggregationState;->IMMEDIATE:Lcom/truecaller/content/TruecallerContentProvider$AggregationState;

    invoke-virtual {p1, p2}, Lcom/truecaller/content/TruecallerContentProvider;->w(Lcom/truecaller/content/TruecallerContentProvider$AggregationState;)V

    .line 25
    :cond_4
    iget-object p1, p0, Le/a/m0/r0;->c:Le/a/l0/k;

    if-eqz p1, :cond_5

    .line 26
    invoke-interface {p1}, Le/a/l0/k;->b()V

    :cond_5
    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    .line 27
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 28
    throw p1

    :catchall_1
    move-exception p1

    .line 29
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 30
    throw p1
.end method

.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    const-string p2, "aggregation"

    .line 1
    invoke-virtual {p3, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "false"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "aggregated_contact_id"

    .line 2
    invoke-virtual {p4, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3, p4}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4
    invoke-virtual {p3, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "aggregated_contact"

    const-string v1, "_id"

    invoke-virtual {p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Landroid/content/ContentValues;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 10

    const-string v0, "contact_source"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Le/a/m0/r0;->e(Ljava/lang/Integer;I)I

    move-result v1

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v2}, Le/a/m0/r0;->e(Ljava/lang/Integer;I)I

    move-result v3

    .line 3
    iget-object v4, p0, Le/a/m0/r0;->a:Ljava/util/Comparator;

    invoke-interface {v4, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_0

    move-object v4, p1

    move-object v5, p2

    goto :goto_0

    :cond_0
    move-object v5, p1

    move-object v4, p2

    :goto_0
    const-string v6, "contact_access"

    .line 4
    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "public"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    move-object v7, v8

    .line 7
    :cond_2
    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    or-int/2addr v3, v1

    and-int/lit8 v6, v3, 0x1

    if-nez v6, :cond_3

    and-int/lit8 v6, v3, 0x40

    if-eqz v6, :cond_4

    :cond_3
    and-int/lit8 v3, v3, -0x5

    and-int/lit8 v3, v3, -0x9

    :cond_4
    and-int/lit8 v6, v3, 0x8

    if-eqz v6, :cond_5

    and-int/lit8 v3, v3, -0x5

    .line 8
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "contact_common_connections"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v2}, Le/a/m0/r0;->e(Ljava/lang/Integer;I)I

    move-result v3

    .line 10
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v2}, Le/a/m0/r0;->e(Ljava/lang/Integer;I)I

    move-result v6

    .line 11
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    and-int/lit8 v0, v1, 0x1

    const-string v1, "contact_search_time"

    if-eqz v0, :cond_6

    .line 12
    invoke-static {p3, v1, p1, p2}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 13
    :cond_6
    invoke-static {p3, v1, p2, p1}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    :goto_1
    const-string v0, "contact_is_favorite"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v2}, Le/a/m0/r0;->e(Ljava/lang/Integer;I)I

    move-result v1

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v2}, Le/a/m0/r0;->e(Ljava/lang/Integer;I)I

    move-result v3

    .line 16
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "contact_spam_score"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v2}, Le/a/m0/r0;->e(Ljava/lang/Integer;I)I

    move-result v1

    .line 18
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v2}, Le/a/m0/r0;->e(Ljava/lang/Integer;I)I

    move-result v3

    .line 19
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "contact_spam_type"

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object v1, v3

    .line 22
    :cond_7
    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contact_badges"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v2}, Le/a/m0/r0;->e(Ljava/lang/Integer;I)I

    move-result v1

    .line 24
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v2}, Le/a/m0/r0;->e(Ljava/lang/Integer;I)I

    move-result v2

    or-int/2addr v1, v2

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "insert_timestamp"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2}, Le/a/m0/r0;->f(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 27
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1, v1, v2}, Le/a/m0/r0;->f(Ljava/lang/Long;J)J

    move-result-wide p1

    .line 28
    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "aggregated_update_timestamp"

    .line 29
    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "contact_name"

    .line 30
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "contact_transliterated_name"

    .line 31
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "contact_handle"

    .line 32
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "contact_alt_name"

    .line 33
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "contact_gender"

    .line 34
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "contact_about"

    .line 35
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "contact_image_url"

    .line 36
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "contact_job_title"

    .line 37
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "contact_company"

    .line 38
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "contact_default_number"

    .line 39
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "contact_phonebook_id"

    .line 40
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "contact_phonebook_hash"

    .line 41
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "contact_phonebook_lookup"

    .line 42
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "contact_favorite_position"

    .line 43
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "contact_im_id"

    .line 44
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    const-string p1, "cache_control"

    .line 45
    invoke-static {p3, p1, v4, v5}, Le/a/m0/r0;->h(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    return-void
.end method

.method public j(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :cond_0
    :goto_0
    const/4 v9, 0x1

    if-nez v6, :cond_2

    const-string v10, "100"

    aput-object v10, v4, v5

    .line 2
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const-string v10, "SELECT * FROM raw_contact WHERE aggregated_contact_id IS NULL ORDER BY _id LIMIT ? OFFSET ?"

    .line 3
    invoke-virtual {v2, v10, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    move v6, v9

    .line 4
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 5
    invoke-virtual {v1, v2, v10}, Le/a/m0/r0;->k(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    const-string v6, "_id"

    .line 6
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 7
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v5

    move v7, v9

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x64

    .line 8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 9
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 11
    throw v0

    :cond_2
    if-eqz v7, :cond_1d

    const-string v4, "DELETE FROM aggregated_contact WHERE _id IN (SELECT aggregated_contact._id FROM aggregated_contact LEFT JOIN raw_contact ON aggregated_contact._id=raw_contact.aggregated_contact_id WHERE raw_contact._id IS NULL)"

    .line 12
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 13
    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 14
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    const-string v4, "db"

    .line 15
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "rawContactIds"

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "\n    UPDATE msg_participants\n    SET aggregated_contact_id = COALESCE(\n        (SELECT r.aggregated_contact_id\n        FROM data d\n        LEFT JOIN raw_contact r ON r._id = d.data_raw_contact_id\n        WHERE d.data1 = msg_participants.normalized_destination \n            AND d.data_type = 4\n        LIMIT 1),\n        (SELECT aggregated_contact_id\n        FROM raw_contact\n        WHERE contact_im_id IN (msg_participants.tc_im_peer_id,\n            msg_participants.normalized_destination)\n        LIMIT 1),\n        -1)\n"

    .line 16
    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    const-wide/16 v10, -0x1

    const-string v12, "\n    SELECT COALESCE(\n        (SELECT r.aggregated_contact_id\n            FROM data d\n            LEFT JOIN raw_contact r ON r._id = d.data_raw_contact_id\n            WHERE r._id=? AND d.data_type = 4\n            LIMIT 1\n        ),\n        (SELECT aggregated_contact_id\n            FROM raw_contact\n            WHERE _id=?\n            LIMIT 1\n        ),\n        -1\n   )\n"

    if-eqz v8, :cond_3

    goto/16 :goto_6

    .line 18
    :cond_3
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    new-array v13, v3, [Ljava/lang/String;

    .line 21
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v13, v5

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v9

    invoke-virtual {v2, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 22
    :cond_5
    :goto_4
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 23
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    cmp-long v17, v15, v10

    if-eqz v17, :cond_5

    .line 24
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    .line 25
    invoke-static {v13, v15}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    invoke-static {v13, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 26
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    new-array v14, v3, [Ljava/lang/String;

    aput-object v13, v14, v5

    aput-object v13, v14, v9

    const-string v15, "\n    UPDATE msg_participants\n    SET pb_numbers_count=(SELECT COUNT(DISTINCT d.data1)\n        FROM data d \n        LEFT JOIN raw_contact r ON r._id = d.data_raw_contact_id\n             WHERE r.aggregated_contact_id=? AND d.data_type=4 AND d.data_phonebook_id NOT NULL) \n        WHERE aggregated_contact_id=?\n"

    .line 27
    invoke-virtual {v2, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v14, v3, [Ljava/lang/String;

    aput-object v13, v14, v5

    aput-object v13, v14, v9

    const-string v13, "\n    UPDATE msg_participants\n    SET is_spam = (SELECT COUNT(data11) > 0\n        FROM data\n        WHERE data_type = 4 AND data1 = \n    (SELECT normalized_destination FROM msg_participants WHERE aggregated_contact_id=?)\n)\n    WHERE aggregated_contact_id=?\n"

    .line 28
    invoke-virtual {v2, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 29
    :cond_8
    :goto_6
    iget-object v8, v1, Le/a/m0/r0;->b:Le/a/m0/u;

    if-eqz v8, :cond_1d

    .line 30
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v13, v8, Le/a/m0/u;->a:Le/a/a/i0;

    invoke-interface {v13}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1d

    .line 32
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9

    goto/16 :goto_14

    .line 33
    :cond_9
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    new-array v6, v3, [Ljava/lang/String;

    .line 36
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v5

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v9

    invoke-virtual {v2, v12, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 37
    :cond_b
    :goto_8
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 38
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-eqz v16, :cond_b

    .line 39
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_8

    :cond_c
    const/4 v14, 0x0

    .line 40
    invoke-static {v6, v14}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    invoke-static {v6, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 41
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_14

    :cond_e
    new-array v0, v3, [Ljava/lang/String;

    aput-object v13, v0, v5

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x3e

    const-string v18, ","

    move-object/from16 v17, v4

    .line 42
    invoke-static/range {v17 .. v24}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    const-string v4, "\n    SELECT\n        im.message_id as mention_message_id,\n        im._id as mention_id,\n        im.im_id as mention_im_id,\n        im.m_offset as mention_offset,\n        im.m_length as mention_length,\n        im.private_name as mention_private_name,\n        im.public_name as mention_public_name,\n        IFNULL(ac.contact_name, iu.fallback_name) as contact_private_name\n    FROM msg_im_mentions im\n        INNER JOIN msg_im_users iu ON im.im_id = iu.im_peer_id\n        LEFT JOIN raw_contact rc on iu.tc_id = rc.tc_id\n        LEFT JOIN aggregated_contact ac on rc.aggregated_contact_id = ac._id\n    WHERE mention_private_name != contact_private_name AND mention_im_id != ? AND ac._id IN (?)\n"

    invoke-virtual {v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 43
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    :goto_9
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 45
    new-instance v6, Le/a/m0/d;

    .line 46
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 47
    new-instance v11, Lcom/truecaller/messaging/data/types/Mention;

    .line 48
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 49
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "getString(2)"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x3

    .line 50
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/4 v13, 0x4

    .line 51
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/4 v13, 0x5

    .line 52
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "getString(5)"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x6

    .line 53
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "getString(6)"

    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    .line 54
    invoke-direct/range {v17 .. v24}, Lcom/truecaller/messaging/data/types/Mention;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x7

    .line 55
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "getString(7)"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {v6, v10, v11, v12}, Le/a/m0/d;-><init>(ILcom/truecaller/messaging/data/types/Mention;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_9

    :cond_f
    const/4 v15, 0x0

    .line 57
    invoke-static {v4, v15}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 58
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 60
    move-object v6, v4

    check-cast v6, Le/a/m0/d;

    .line 61
    iget v6, v6, Le/a/m0/d;->a:I

    .line 62
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 63
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_10

    .line 64
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-interface {v3, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_10
    check-cast v10, Ljava/util/List;

    .line 67
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 68
    :cond_11
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-array v6, v9, [Ljava/lang/String;

    .line 69
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v5

    const-string v10, "msg_entities"

    const-string v11, "entity_info1"

    const-string v12, "message_id = ?"

    .line 70
    invoke-static {v2, v10, v11, v12, v6}, Le/a/p5/s0/g;->X0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1c

    .line 71
    invoke-virtual {v8, v2, v4}, Le/a/m0/u;->a(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_1c

    .line 72
    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v3, v15}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 74
    check-cast v15, Le/a/m0/d;

    .line 75
    new-instance v9, Lcom/truecaller/messaging/data/types/Mention;

    .line 76
    iget-object v5, v15, Le/a/m0/d;->b:Lcom/truecaller/messaging/data/types/Mention;

    .line 77
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Mention;->getId()J

    move-result-wide v18

    .line 78
    iget-object v5, v15, Le/a/m0/d;->b:Lcom/truecaller/messaging/data/types/Mention;

    .line 79
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Mention;->getImId()Ljava/lang/String;

    move-result-object v20

    .line 80
    iget-object v5, v15, Le/a/m0/d;->b:Lcom/truecaller/messaging/data/types/Mention;

    .line 81
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v21

    .line 82
    iget-object v5, v15, Le/a/m0/d;->b:Lcom/truecaller/messaging/data/types/Mention;

    .line 83
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result v22

    .line 84
    iget-object v5, v15, Le/a/m0/d;->c:Ljava/lang/String;

    .line 85
    iget-object v15, v15, Le/a/m0/d;->b:Lcom/truecaller/messaging/data/types/Mention;

    .line 86
    invoke-virtual {v15}, Lcom/truecaller/messaging/data/types/Mention;->getPublicName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v17, v9

    move-object/from16 v23, v5

    .line 87
    invoke-direct/range {v17 .. v24}, Lcom/truecaller/messaging/data/types/Mention;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto :goto_c

    :cond_12
    new-array v3, v5, [Lcom/truecaller/messaging/data/types/Mention;

    .line 88
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v9, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v3, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    check-cast v3, [Lcom/truecaller/messaging/data/types/Mention;

    .line 90
    invoke-static {v3, v6, v5}, Le/a/c/p/a;->s3([Lcom/truecaller/messaging/data/types/Mention;Ljava/lang/String;Z)Ls1/k;

    move-result-object v3

    .line 91
    iget-object v5, v3, Ls1/k;->a:Ljava/lang/Object;

    .line 92
    iget-object v3, v3, Ls1/k;->b:Ljava/lang/Object;

    .line 93
    check-cast v3, Ljava/util/List;

    .line 94
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x0

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_18

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Lcom/truecaller/messaging/data/types/Mention;

    .line 97
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_13
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_15

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v19

    check-cast v20, Lcom/truecaller/messaging/data/types/Mention;

    invoke-virtual/range {v20 .. v20}, Lcom/truecaller/messaging/data/types/Mention;->getId()J

    move-result-wide v20

    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Mention;->getId()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-nez v20, :cond_14

    const/16 v20, 0x1

    goto :goto_e

    :cond_14
    const/16 v20, 0x0

    :goto_e
    if-eqz v20, :cond_13

    goto :goto_f

    :cond_15
    const/16 v19, 0x0

    :goto_f
    move-object/from16 v1, v19

    check-cast v1, Lcom/truecaller/messaging/data/types/Mention;

    if-eqz v1, :cond_16

    .line 98
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v15

    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v17

    sub-int v15, v15, v17

    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result v0

    add-int/2addr v0, v15

    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result v15

    sub-int/2addr v0, v15

    .line 99
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v15, v0

    goto :goto_10

    :cond_16
    if-eqz v15, :cond_17

    .line 100
    new-instance v1, Lcom/truecaller/messaging/data/types/Mention;

    .line 101
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Mention;->getId()J

    move-result-wide v26

    .line 102
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Mention;->getImId()Ljava/lang/String;

    move-result-object v28

    .line 103
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v17

    sub-int v29, v17, v15

    .line 104
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result v30

    .line 105
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Mention;->getPrivateName()Ljava/lang/String;

    move-result-object v31

    .line 106
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Mention;->getPublicName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v25, v1

    .line 107
    invoke-direct/range {v25 .. v32}, Lcom/truecaller/messaging/data/types/Mention;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 110
    :cond_17
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_10
    move-object/from16 v1, p0

    move-object/from16 v0, v18

    goto/16 :goto_d

    :cond_18
    move-object/from16 v18, v0

    .line 111
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    check-cast v5, Ljava/lang/String;

    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 114
    :try_start_8
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v4, v3

    .line 115
    invoke-virtual {v2, v10, v1, v12, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const-string v4, "m_offset"

    const-string v5, "msg_im_mentions"

    const-string v10, "_id = ?"

    if-eqz v3, :cond_19

    :try_start_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/Mention;

    .line 117
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "private_name"

    .line 118
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Mention;->getPrivateName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "m_length"

    .line 120
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/String;

    .line 121
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Mention;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v12, v4

    .line 122
    invoke-virtual {v2, v5, v11, v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_11

    .line 123
    :cond_19
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/Mention;

    .line 124
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/String;

    .line 125
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Mention;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    aput-object v3, v13, v12

    .line 126
    invoke-virtual {v2, v5, v11, v10, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_12

    :cond_1a
    const-string v1, "msg_messages"

    .line 127
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "info11"

    const/4 v5, 0x0

    new-array v11, v5, [Lcom/truecaller/messaging/data/types/Mention;

    .line 128
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1b

    check-cast v5, [Lcom/truecaller/messaging/data/types/Mention;

    const-string v6, "$this$mentionsToJson"

    .line 129
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    new-instance v6, Le/m/e/k;

    invoke-direct {v6}, Le/m/e/k;-><init>()V

    const-class v9, [Lcom/truecaller/messaging/data/types/Mention;

    invoke-virtual {v6, v5, v9}, Le/m/e/k;->n(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Gson().toJson(this, Array<Mention>::class.java)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 132
    invoke-virtual {v2, v1, v3, v10, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_13

    .line 135
    :cond_1b
    :try_start_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_1c
    move-object/from16 v18, v0

    move v6, v5

    move v4, v9

    :goto_13
    move-object/from16 v1, p0

    move v9, v4

    move v5, v6

    move-object/from16 v0, v18

    const/4 v15, 0x0

    goto/16 :goto_b

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 137
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-static {v4, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :catchall_8
    move-exception v0

    move-object v1, v0

    .line 138
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 139
    throw v1

    :cond_1d
    :goto_14
    return v7
.end method

.method public final k(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "aggregated_contact_id"

    const-string v4, "_id"

    .line 1
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v5, v8

    const/4 v9, 0x1

    aput-object v4, v5, v9

    const-string v4, "SELECT DISTINCT aggregated_contact_id FROM raw_contact_data WHERE _id!=? AND aggregated_contact_id IS NOT NULL AND data_type=4 AND data1 IN (SELECT data1 FROM data WHERE data_type=4 AND data_raw_contact_id=?)"

    .line 3
    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4
    :try_start_0
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 5
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_2

    .line 7
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 8
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Queue;

    if-nez v11, :cond_0

    .line 9
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 10
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v5, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT * FROM raw_contact WHERE aggregated_contact_id="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 13
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 14
    invoke-static {v8, v12}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 15
    invoke-interface {v11, v12}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 16
    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 17
    throw v0

    .line 18
    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 19
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 20
    invoke-static {v2, v4}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    const-wide/16 v13, -0x1

    .line 21
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v12

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-virtual {v1, v11, v4}, Le/a/m0/r0;->m(Ljava/util/Collection;Landroid/content/ContentValues;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    .line 23
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-virtual {v1, v11, v5}, Le/a/m0/r0;->m(Ljava/util/Collection;Landroid/content/ContentValues;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_2

    .line 24
    :cond_4
    new-instance v11, Ljava/util/TreeSet;

    iget-object v12, v1, Le/a/m0/r0;->a:Ljava/util/Comparator;

    invoke-direct {v11, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 25
    invoke-virtual {v11, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-virtual {v11, v12}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-virtual {v11}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    .line 28
    invoke-virtual {v11}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 29
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 30
    invoke-virtual {v1, v12, v5, v15}, Le/a/m0/r0;->d(Landroid/content/ContentValues;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    move-object v5, v15

    move-object v12, v5

    goto :goto_3

    :cond_5
    const-wide/16 v11, 0x0

    cmp-long v11, v13, v11

    if-gez v11, :cond_6

    .line 31
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/4 v12, 0x0

    goto :goto_4

    :cond_6
    new-array v11, v9, [Ljava/lang/String;

    .line 32
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v11, v12

    .line 33
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 34
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v15, "raw_contact"

    const-string v9, "aggregated_contact_id=?"

    .line 35
    invoke-virtual {v0, v15, v8, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v8, "aggregated_contact"

    const-string v9, "_id=?"

    .line 36
    invoke-virtual {v0, v8, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_4
    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_7
    if-eqz v5, :cond_8

    move-object/from16 v2, p1

    move-wide v3, v13

    .line 37
    invoke-static/range {v2 .. v7}, Le/a/m0/r0;->i(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-void

    .line 39
    :cond_8
    :try_start_3
    invoke-static {v0, v6, v7}, Le/a/m0/r0;->g(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_1
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 41
    throw v0
.end method

.method public l(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v0, "UPDATE history SET tc_id=NULL WHERE _id IN (SELECT history._id FROM history LEFT JOIN raw_contact ON history.tc_id=raw_contact.tc_id WHERE raw_contact._id IS NULL)"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    const-string v0, "UPDATE history SET tc_id=(SELECT tc_id FROM data WHERE data.data1=history.normalized_number AND data.data_type=4) WHERE EXISTS (SELECT * FROM data WHERE data.data1=history.normalized_number AND data.data_type=4)"

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    .line 6
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v1, v0

    .line 7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 10
    throw v0

    :catchall_1
    move-exception p1

    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 12
    throw p1
.end method

.method public final m(Ljava/util/Collection;Landroid/content/ContentValues;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/ContentValues;",
            ">;",
            "Landroid/content/ContentValues;",
            ")Z"
        }
    .end annotation

    const-string v0, "contact_phonebook_id"

    .line 1
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ContentValues;

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
