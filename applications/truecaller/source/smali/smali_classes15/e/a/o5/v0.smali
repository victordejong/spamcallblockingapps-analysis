.class public final Le/a/o5/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/u0;


# instance fields
.field public final a:Le/a/e4/p;

.field public final b:Le/a/a/i0;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/e4/p;Le/a/a/i0;Landroid/content/Context;)V
    .locals 1

    const-string v0, "multiSimManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o5/v0;->a:Le/a/e4/p;

    iput-object p2, p0, Le/a/o5/v0;->b:Le/a/a/i0;

    iput-object p3, p0, Le/a/o5/v0;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/o5/v0;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "_display_name"

    .line 2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "cursor.getString(nameIndex)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 5
    :cond_0
    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public b(I)J
    .locals 4

    const v0, 0x1e8480

    mul-int/2addr p1, v0

    int-to-long v0, p1

    const-wide/16 v2, 0x8

    .line 1
    div-long/2addr v0, v2

    return-wide v0
.end method

.method public c(J)J
    .locals 2

    const-wide/32 v0, 0x3d090

    .line 1
    div-long/2addr p1, v0

    return-wide p1
.end method

.method public d(I)J
    .locals 5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    .line 1
    iget-object p1, p0, Le/a/o5/v0;->a:Le/a/e4/p;

    invoke-interface {p1}, Le/a/e4/p;->h()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/o5/v0;->a:Le/a/e4/p;

    invoke-interface {p1}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "multiSimManager.defaultSimToken"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/o5/v0;->e(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Le/a/o5/v0;->f(I)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Le/a/o5/v0;->f(I)Ljava/lang/Long;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_3
    iget-object p1, p0, Le/a/o5/v0;->b:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->x1()I

    move-result p1

    int-to-long v0, p1

    goto :goto_1

    .line 7
    :cond_4
    iget-object p1, p0, Le/a/o5/v0;->b:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->l()J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method public final e(Ljava/lang/String;)J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/o5/v0;->a:Le/a/e4/p;

    invoke-interface {v0, p1}, Le/a/e4/p;->i(Ljava/lang/String;)Le/a/e4/i;

    move-result-object p1

    const-string v0, "multiSimManager.getCarrierConfiguration(simToken)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Le/a/e4/i;->g()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/o5/v0;->b:Le/a/a/i0;

    invoke-interface {p1}, Le/a/a/i0;->x1()I

    move-result p1

    int-to-long v0, p1

    :cond_0
    return-wide v0
.end method

.method public final f(I)Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o5/v0;->a:Le/a/e4/p;

    invoke-interface {v0, p1}, Le/a/e4/p;->e(I)Lcom/truecaller/multisim/SimInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "multiSimManager.getSimIn\u2026SlotIndex) ?: return null"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    const-string v0, "simInfo.simToken"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/o5/v0;->e(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
