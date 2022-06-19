.class public final Le/a/m0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11

    const-string v0, "filters"

    const-string v1, "provider"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "helper"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "uri"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "values"

    invoke-static {p4, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "value"

    .line 1
    invoke-virtual {p4, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "values.getAsString(Filters.VALUE)"

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "rule"

    .line 2
    invoke-virtual {p4, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "values.getAsInteger(Filters.RULE)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "tracking_type"

    .line 3
    invoke-virtual {p4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    new-array v6, v5, [Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-wide/16 v6, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v3, v0, v9, p4, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-array v9, v4, [Ljava/lang/String;

    aput-object p3, v9, v5

    const-string v10, "value=?"

    .line 7
    invoke-virtual {v3, v0, p4, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8
    :goto_1
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4, v4}, Landroid/content/ContentValues;-><init>(I)V

    if-nez v1, :cond_1

    move v0, v4

    goto :goto_2

    :cond_1
    if-ne v1, v4, :cond_2

    move v0, v8

    goto :goto_2

    :cond_2
    move v0, v5

    .line 9
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "filter_action"

    invoke-virtual {p4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v2, :cond_3

    goto :goto_4

    .line 10
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x266935a

    const-string v9, "msg_participants"

    if-eq v0, v1, :cond_6

    const v1, 0x4292216

    if-eq v0, v1, :cond_5

    const v1, 0x48086f0

    if-eq v0, v1, :cond_4

    goto :goto_4

    :cond_4
    const-string v0, "OTHER"

    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_5
    const-string v0, "IM_ID"

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-array v0, v8, [Ljava/lang/String;

    aput-object p3, v0, v5

    const/4 p3, 0x3

    .line 13
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v4

    const-string p3, "normalized_destination = ? AND type = ?"

    .line 14
    invoke-virtual {v3, v9, p4, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_7

    goto :goto_5

    :cond_6
    const-string v0, "PHONE_NUMBER"

    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    new-array v0, v4, [Ljava/lang/String;

    aput-object p3, v0, v5

    const-string p3, "normalized_destination=?"

    .line 16
    invoke-virtual {v3, v9, p4, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    if-lez p3, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v5

    :goto_5
    if-eqz v4, :cond_8

    .line 17
    invoke-static {}, Le/a/m0/a1$k;->H()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    .line 18
    invoke-static {}, Le/a/b0/q/g0;->n()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    .line 19
    :cond_8
    invoke-virtual {p2, v6, v7}, Le/a/b0/i/e/a;->a(J)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "helper.getContentUri(resultId)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
