.class public final Le/a/m0/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$f;


# instance fields
.field public final a:Le/a/m0/f;


# direct methods
.method public constructor <init>(Le/a/m0/f;)V
    .locals 1

    const-string v0, "messageLinksHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m0/c0;->a:Le/a/m0/f;

    return-void
.end method


# virtual methods
.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    const-string v0, "provider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "values"

    invoke-static {p4, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string p1, "provider.database"

    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msg_entities"

    const/4 p3, 0x0

    .line 2
    invoke-virtual {v1, p1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    const/4 p1, -0x1

    int-to-long v2, p1

    cmp-long p1, v7, v2

    if-lez p1, :cond_3

    const-string p1, "message_id"

    .line 3
    invoke-virtual {p4, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string p1, "type"

    .line 4
    invoke-virtual {p4, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "entity_info1"

    .line 5
    invoke-virtual {p4, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p3, "text/plain"

    .line 6
    invoke-static {p1, p3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    if-nez p1, :cond_3

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Le/a/m0/c0;->a:Le/a/m0/f;

    move-wide v4, v7

    invoke-interface/range {v0 .. v6}, Le/a/m0/f;->a(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V

    .line 8
    :cond_3
    :goto_1
    invoke-virtual {p2, v7, v8}, Le/a/b0/i/e/a;->a(J)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "helper.getContentUri(id)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
