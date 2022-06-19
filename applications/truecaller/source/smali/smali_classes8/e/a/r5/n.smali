.class public final Le/a/r5/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r5/j;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Landroid/net/Uri;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Le/a/p5/c;

.field public final e:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/p5/c;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r5/n;->c:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/r5/n;->d:Le/a/p5/c;

    iput-object p3, p0, Le/a/r5/n;->e:Ls1/w/f;

    .line 2
    invoke-static {}, Le/a/m0/a1$k;->J()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Le/a/r5/n;->a:Landroid/net/Uri;

    .line 3
    invoke-static {}, Le/a/m0/a1$k;->W()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Le/a/r5/n;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a(JLcom/truecaller/whoviewedme/ProfileViewSource;)I
    .locals 9

    .line 1
    sget-object v0, Lcom/truecaller/whoviewedme/ProfileViewType;->INCOMING:Lcom/truecaller/whoviewedme/ProfileViewType;

    if-eqz p3, :cond_0

    const-string v1, "type = ? AND source = ? AND timestamp >= ?"

    goto :goto_0

    :cond_0
    const-string v1, "type = ? AND timestamp >= ?"

    :goto_0
    move-object v5, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v8, 0x0

    if-eqz p3, :cond_1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    move-object v6, v3

    goto :goto_1

    :cond_1
    new-array p3, v2, [Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v8

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    move-object v6, p3

    .line 4
    :goto_1
    iget-object v2, p0, Le/a/r5/n;->c:Landroid/content/ContentResolver;

    .line 5
    iget-object v3, p0, Le/a/r5/n;->a:Landroid/net/Uri;

    const-string p1, "count(0) as count"

    .line 6
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    .line 7
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_2

    goto :goto_3

    .line 9
    :cond_2
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "count"

    .line 10
    invoke-static {p1, v0}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 11
    :cond_3
    :goto_3
    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 12
    invoke-static {p3}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_4
    return v8

    :catchall_0
    move-exception p2

    .line 13
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final b(Ljava/lang/String;Lcom/truecaller/whoviewedme/ProfileViewSource;Lcom/truecaller/whoviewedme/ProfileViewType;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "tc_id"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/r5/n;->d:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p3, "type"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "source"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/r5/n;->c:Landroid/content/ContentResolver;

    invoke-static {}, Le/a/m0/a1$k;->J()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method
