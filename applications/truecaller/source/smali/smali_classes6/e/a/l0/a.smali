.class public final Le/a/l0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l0/g;


# instance fields
.field public a:Z

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;

.field public final e:Le/a/h/t0/b;

.field public final f:Le/a/b0/o/a;

.field public final g:Le/a/l0/f;

.field public final h:Lcom/truecaller/settings/CallingSettings;

.field public final i:Le/a/d/f;

.field public final j:Le/a/k3/d;

.field public final k:Le/a/l0/k;

.field public final l:Le/a/k3/l/f;

.field public final m:Le/a/h/b/w;

.field public final n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/h/t0/b;Le/a/b0/o/a;Le/a/l0/f;Lcom/truecaller/settings/CallingSettings;Le/a/d/f;Le/a/k3/d;Le/a/l0/k;Le/a/k3/l/f;Le/a/h/b/w;Z)V
    .locals 1
    .param p11    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "FEATURE_CALL_LOG_PERFORMANCE"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatsAppInCallLog"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voip"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraInfoReaderProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialerCacheManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialerPerformanceAnalytics"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l0/a;->d:Landroid/content/Context;

    iput-object p2, p0, Le/a/l0/a;->e:Le/a/h/t0/b;

    iput-object p3, p0, Le/a/l0/a;->f:Le/a/b0/o/a;

    iput-object p4, p0, Le/a/l0/a;->g:Le/a/l0/f;

    iput-object p5, p0, Le/a/l0/a;->h:Lcom/truecaller/settings/CallingSettings;

    iput-object p6, p0, Le/a/l0/a;->i:Le/a/d/f;

    iput-object p7, p0, Le/a/l0/a;->j:Le/a/k3/d;

    iput-object p8, p0, Le/a/l0/a;->k:Le/a/l0/k;

    iput-object p9, p0, Le/a/l0/a;->l:Le/a/k3/l/f;

    iput-object p10, p0, Le/a/l0/a;->m:Le/a/h/b/w;

    iput-boolean p11, p0, Le/a/l0/a;->n:Z

    .line 2
    new-instance p1, Ljava/util/HashMap;

    const/16 p2, 0x64

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Le/a/l0/a;->b:Ljava/util/HashMap;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Le/a/l0/a;->c:Ljava/util/HashMap;

    if-nez p11, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Le/a/l0/h;

    invoke-direct {p1, p0}, Le/a/l0/h;-><init>(Le/a/l0/a;)V

    invoke-interface {p8, p1}, Le/a/l0/k;->c(Le/a/l0/k$a;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final A(Lcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/callhistory/data/FilterType;",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    invoke-virtual {p0, p2, p1, p3, p4}, Le/a/l0/a;->z(Ljava/lang/Integer;Lcom/truecaller/callhistory/data/FilterType;Landroid/os/CancellationSignal;Z)Landroid/database/Cursor;

    move-result-object p1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    if-eqz p3, :cond_2

    .line 5
    :try_start_1
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p2

    goto/16 :goto_3

    :cond_2
    move-object p2, v0

    :goto_0
    invoke-static {p2}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 8
    :cond_3
    :try_start_2
    iget-object p2, p0, Le/a/l0/a;->j:Le/a/k3/d;

    invoke-interface {p2}, Le/a/k3/d;->a()Le/a/k3/c;

    move-result-object v4

    if-eqz p4, :cond_6

    .line 9
    iget-boolean p2, p0, Le/a/l0/a;->n:Z

    if-eqz p2, :cond_6

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    monitor-enter p0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12
    :try_start_3
    new-instance p3, Le/a/l0/u/d/a;

    .line 13
    new-instance v3, Le/a/k3/j/d;

    invoke-direct {v3, p1}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;)V

    .line 14
    iget-object v5, p0, Le/a/l0/a;->b:Ljava/util/HashMap;

    .line 15
    iget-object v6, p0, Le/a/l0/a;->c:Ljava/util/HashMap;

    .line 16
    iget-boolean v7, p0, Le/a/l0/a;->a:Z

    .line 17
    iget-object v8, p0, Le/a/l0/a;->l:Le/a/k3/l/f;

    .line 18
    iget-object v9, p0, Le/a/l0/a;->m:Le/a/h/b/w;

    move-object v1, p3

    move-object v2, p1

    .line 19
    invoke-direct/range {v1 .. v9}, Le/a/l0/u/d/a;-><init>(Landroid/database/Cursor;Le/a/k3/j/d;Le/a/k3/c;Ljava/util/HashMap;Ljava/util/HashMap;ZLe/a/k3/l/f;Le/a/h/b/w;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    :cond_4
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 22
    invoke-virtual {p3}, Le/a/l0/u/d/a;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 25
    iget-object p3, p0, Le/a/l0/a;->m:Le/a/h/b/w;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p4

    iget-object v1, p0, Le/a/l0/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Le/a/l0/a;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget-boolean v3, p0, Le/a/l0/a;->a:Z

    invoke-interface {p3, p4, v1, v2, v3}, Le/a/h/b/w;->e(IIIZ)V

    const/4 p3, 0x0

    .line 26
    iput-boolean p3, p0, Le/a/l0/a;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 28
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    .line 29
    :try_start_5
    monitor-exit p0

    throw p2

    .line 30
    :cond_6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    :cond_7
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 33
    invoke-virtual {p0, p1, v4}, Le/a/l0/a;->q(Landroid/database/Cursor;Le/a/k3/c;)Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 34
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/OperationCanceledException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 37
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-object p1, v0

    :catch_2
    if-eqz p1, :cond_9

    goto :goto_4

    :catch_3
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    .line 38
    :goto_3
    :try_start_6
    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p1, :cond_9

    .line 39
    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v0

    :catchall_2
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    :goto_5
    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    throw p1
.end method

.method public final B(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Le/a/l0/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Le/a/l0/a$a;-><init>(ILjava/lang/Object;)V

    const-string v1, "tc_flag!=3"

    invoke-static {p1, v1, v0}, Le/a/l0/j;->a(Ljava/lang/String;Ljava/lang/String;Ls1/z/b/a;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Le/a/l0/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Le/a/l0/a$a;-><init>(ILjava/lang/Object;)V

    const-string v1, "(subscription_component_name!=\'com.whatsapp\' OR subscription_component_name IS NULL)"

    invoke-static {p1, v1, v0}, Le/a/l0/j;->a(Ljava/lang/String;Ljava/lang/String;Ls1/z/b/a;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Le/a/l0/a$a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Le/a/l0/a$a;-><init>(ILjava/lang/Object;)V

    const-string v1, "(subscription_component_name NOT IN(\'com.truecaller.voip.manager.VOIP\',\'com.truecaller.voip.manager.GROUP_VOIP\') OR subscription_component_name IS NULL)"

    invoke-static {p1, v1, v0}, Le/a/l0/j;->a(Ljava/lang/String;Ljava/lang/String;Ls1/z/b/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    const-string v0, "normalizedNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isFalse(Z[Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string v2, "type IN (1,2,3)  AND normalized_number=?"

    .line 4
    invoke-virtual {p0, v2}, Le/a/l0/a;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    aput-object p1, v7, v1

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp DESC LIMIT "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "timestamp DESC"

    :goto_0
    move-object v8, p1

    .line 6
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    const/4 p2, 0x3

    .line 7
    :try_start_1
    invoke-static {p1, v0, v1, p2}, Le/a/n/g0;->I0(Landroid/database/Cursor;Le/a/k3/c;ZI)Le/a/l0/u/d/c;

    move-result-object p2

    sget-object v1, Le/a/l0/a$c;->a:Le/a/l0/a$c;

    .line 8
    new-instance v2, Le/a/r2/y;

    invoke-direct {v2, p2, v1}, Le/a/r2/y;-><init>(Ljava/lang/Object;Le/a/r2/c0;)V

    const-string p2, "wrap(cursor.toHistoryEventCursor()) { it.close() }"

    .line 9
    invoke-static {v2, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    .line 10
    :goto_1
    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    :cond_1
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "wrap(null)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/lang/Integer;",
            ")",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v1, "type IN (1,2,3)  AND (history_aggregated_contact_id=? OR history_aggregated_contact_tc_id=?)"

    .line 4
    invoke-virtual {p0, v1}, Le/a/l0/a;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    const/4 v7, 0x1

    aput-object p1, v6, v7

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timestamp DESC LIMIT "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "timestamp DESC"

    :goto_0
    move-object v7, p1

    .line 6
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    const/4 p2, 0x3

    .line 7
    :try_start_1
    invoke-static {p1, v0, v1, p2}, Le/a/n/g0;->I0(Landroid/database/Cursor;Le/a/k3/c;ZI)Le/a/l0/u/d/c;

    move-result-object p2

    sget-object v1, Le/a/l0/a$d;->a:Le/a/l0/a$d;

    .line 8
    new-instance v2, Le/a/r2/y;

    invoke-direct {v2, p2, v1}, Le/a/r2/y;-><init>(Ljava/lang/Object;Le/a/r2/c0;)V

    const-string p2, "wrap(cursor.toHistoryEventCursor()) { it.close() }"

    .line 9
    invoke-static {v2, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    .line 10
    :goto_1
    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    :cond_1
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "wrap(null)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(Ljava/util/List;)Le/a/r2/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;)",
            "Le/a/r2/x<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "eventsToRestore"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "wrap(0)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_1

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/data/entity/HistoryEvent;

    .line 7
    invoke-static {v4}, Le/a/n/g0;->G0(Lcom/truecaller/data/entity/HistoryEvent;)Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "wrap(insertedRows)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public d(Lcom/truecaller/data/entity/Contact;)Le/a/r2/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "type=? AND history_aggregated_contact_id=?"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v6, v8

    const/4 v1, 0x1

    aput-object p1, v6, v1

    const-string v7, "timestamp DESC LIMIT 1"

    .line 5
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 6
    :try_start_1
    invoke-static {p1, v0, v8, v1}, Le/a/n/g0;->I0(Landroid/database/Cursor;Le/a/k3/c;ZI)Le/a/l0/u/d/c;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/database/CursorWrapper;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v1}, Le/a/l0/u/d/c;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v0

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "wrap(eventCursor.historyEvent)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_1
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "wrap(null)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 12
    :cond_2
    throw p1
.end method

.method public e(J)V
    .locals 9

    const-string v0, "is_read"

    const-string v1, "new"

    .line 1
    :try_start_0
    iget-object v2, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x1

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    iget-object v6, p0, Le/a/l0/a;->g:Le/a/l0/f;

    invoke-virtual {v6}, Le/a/l0/f;->b()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "_id=?"

    new-array v8, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v4

    invoke-virtual {v2, v6, v3, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v2, p1, v3, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public f(Lcom/truecaller/data/entity/HistoryEvent;)Z
    .locals 14

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-wide v1, p1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    const/16 v3, 0x2710

    int-to-long v3, v3

    sub-long v5, v1, v3

    add-long/2addr v1, v3

    .line 2
    iget-object v3, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 3
    invoke-static {v3}, Le/a/l0/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v4, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 5
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "normalized_number=? AND action=4 AND timestamp>=? AND timestamp<=? AND (call_log_id NOT NULL OR tc_flag=2 OR tc_flag=3) AND tc_flag=0"

    const/4 v4, 0x3

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v11, v4

    .line 6
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v11, v5

    const/4 v3, 0x2

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v3

    const-string v12, "timestamp"

    .line 7
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_5

    .line 8
    :try_start_1
    new-instance v2, Le/a/l0/u/d/c;

    .line 9
    invoke-direct {v2, v1, v0, v0, v4}, Le/a/l0/u/d/c;-><init>(Landroid/database/Cursor;Le/a/k3/j/d;Le/a/k3/j/c;Z)V

    .line 10
    :cond_0
    invoke-virtual {v2}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v2}, Le/a/l0/u/d/c;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget v6, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    iget v7, v0, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 13
    iget-object v8, p1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    iget-object v9, v0, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 14
    iget-wide v10, p1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    iget-wide v12, v0, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 15
    invoke-static/range {v6 .. v13}, Le/a/n/g0;->o(IILjava/lang/String;Ljava/lang/String;JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    iget v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    .line 17
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "action"

    .line 18
    iget v7, p1, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 19
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "filter_source"

    .line 20
    iget-object v7, p1, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    .line 21
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ringing_duration"

    .line 22
    iget-wide v7, p1, Lcom/truecaller/data/entity/HistoryEvent;->j:J

    .line 23
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "event_id"

    .line 24
    iget-object v7, p1, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    const-string v6, "call_log_id"

    .line 26
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 27
    :cond_2
    iget-object v6, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 28
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v7

    const-string v8, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v4

    invoke-virtual {v6, v7, v3, v8, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4

    .line 29
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/truecaller/data/entity/Entity;->setId(Ljava/lang/Long;)V

    if-nez v2, :cond_3

    .line 30
    iget-object v3, v0, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    .line 31
    iput-object v3, p1, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    .line 32
    :cond_3
    iget-wide v3, v0, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 33
    iput-wide v3, p1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 34
    iget-wide v3, v0, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    .line 35
    iput-wide v3, p1, Lcom/truecaller/data/entity/HistoryEvent;->i:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v4

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 37
    :cond_6
    iget-object v0, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Le/a/n/g0;->G0(Lcom/truecaller/data/entity/HistoryEvent;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "context.contentResolver.\u2026Values()) ?: return false"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_7

    return v4

    .line 39
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/truecaller/data/entity/Entity;->setId(Ljava/lang/Long;)V

    return v5

    :cond_8
    return v4

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_9

    .line 40
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_9
    throw p1
.end method

.method public g(J)V
    .locals 7

    const-string v0, "new"

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timestamp<="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    iget-object v0, p0, Le/a/l0/a;->g:Le/a/l0/f;

    invoke-virtual {v0}, Le/a/l0/f;->b()Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, v2, p1, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public h(Ljava/lang/String;)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "normalizedNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "(call_log_id NOT NULL OR tc_flag=2 OR tc_flag=3) AND type IN (1,2,3) AND normalized_number=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const-string v6, "timestamp DESC LIMIT 1"

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 4
    :try_start_1
    invoke-static {p1, v0, v7, v1}, Le/a/n/g0;->I0(Landroid/database/Cursor;Le/a/k3/c;ZI)Le/a/l0/u/d/c;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/database/CursorWrapper;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Le/a/l0/u/d/c;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v0

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "wrap(eventCursor.historyEvent)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 8
    :cond_1
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "wrap(null)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_2
    throw p1
.end method

.method public i()V
    .locals 9

    const-string v0, "is_read"

    const-string v1, "new"

    .line 1
    :try_start_0
    iget-object v2, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x1

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "new=1 OR is_read=0"

    const/4 v8, 0x0

    .line 6
    invoke-virtual {v2, v6, v3, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    iget-object v0, p0, Le/a/l0/a;->g:Le/a/l0/f;

    invoke-virtual {v0}, Le/a/l0/f;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public j(Lcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/callhistory/data/FilterType;",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Le/a/r2/x<",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;>;"
        }
    .end annotation

    const-string v0, "callTypeFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Le/a/l0/a;->A(Lcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "wrap(getCallHistoryListI\u2026ncellationSignal, false))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public k(Ljava/lang/String;JJLcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;",
            ")",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    const-string v0, "normalizedNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p6

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    if-ne p6, v0, :cond_0

    const-string p6, "tc_flag=3"

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const-string p6, "tc_flag!=3"

    :goto_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type IN (1,2,3)  AND normalized_number=?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " AND timestamp >=?"

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " AND timestamp <=?"

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 p6, 0x3

    new-array v7, p6, [Ljava/lang/String;

    .line 7
    invoke-static {p1}, Le/a/l0/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v7, v2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v0

    const/4 p1, 0x2

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v7, p1

    const-string v8, "timestamp DESC"

    .line 8
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_2

    .line 9
    :try_start_1
    invoke-static {p1, v1, v2, p6}, Le/a/n/g0;->I0(Landroid/database/Cursor;Le/a/k3/c;ZI)Le/a/l0/u/d/c;

    move-result-object p2

    sget-object p3, Le/a/l0/a$e;->a:Le/a/l0/a$e;

    .line 10
    new-instance p4, Le/a/r2/y;

    invoke-direct {p4, p2, p3}, Le/a/r2/y;-><init>(Ljava/lang/Object;Le/a/r2/c0;)V

    const-string p2, "wrap(cursor.toHistoryEventCursor()) { it.close() }"

    .line 11
    invoke-static {p4, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p4

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    .line 12
    :goto_1
    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 14
    :cond_2
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "wrap(null)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public l()Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v3

    const-string v1, "count(_id)"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "(call_log_id NOT NULL OR tc_flag=2 OR tc_flag=3) AND is_read=0 AND type=3 AND action NOT IN (5,1,3,4)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 5
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v2

    const-string v3, "wrap(cursor.getInt(0))"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 7
    :goto_1
    :try_start_2
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    :goto_2
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "wrap(null)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_2
    throw v0
.end method

.method public m(Ljava/util/List;Ljava/util/List;Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "type IN (1,2,3) "

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const-string v0, "tc_flag=3"

    goto :goto_0

    :cond_2
    const-string v0, "type IN (1,2,3)  AND tc_flag != 3"

    .line 3
    :goto_0
    :try_start_0
    sget-object v1, Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;->ONLY_FLASH_EVENTS:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "_id"

    if-eq p3, v1, :cond_3

    :try_start_1
    sget-object p3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "CallLog.Calls.CONTENT_URI"

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p3, v2, p2, v1}, Le/a/l0/a;->y(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 5
    :cond_3
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object p2

    const-string p3, "HistoryTable.getContentUri()"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v2, p1, v0}, Le/a/l0/a;->y(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "wrap(true)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "wrap(false)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public n()I
    .locals 8

    const/4 v0, -0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2
    invoke-static {}, Le/a/m0/a1$j;->c()Landroid/net/Uri;

    move-result-object v3

    const-string v1, "COUNT(*)"

    .line 3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "type in (1,2,3) and tc_flag=0 and duration=0 and call_log_id is null and subscription_component_name is null"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .line 5
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 7
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 9
    invoke-static {v3}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return v0

    :catchall_0
    move-exception v2

    .line 10
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 11
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return v0
.end method

.method public o(Ljava/lang/String;)Le/a/r2/x;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "wrap(null)"

    const-string v1, "normalizedNumber"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isFalse(Z[Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v5

    const-string v3, "duration"

    .line 4
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v3, "type IN (1,2,3)  AND normalized_number=?"

    .line 5
    invoke-virtual {p0, v3}, Le/a/l0/a;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    aput-object p1, v8, v2

    const-string v9, "timestamp DESC"

    .line 6
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {p1, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 11
    invoke-static {v3}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/x;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-object p1

    :catchall_0
    move-exception v2

    .line 12
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {p1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 14
    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public p(Lcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/callhistory/data/FilterType;",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "callTypeFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Le/a/l0/a;->A(Lcom/truecaller/callhistory/data/FilterType;Ljava/lang/Integer;Landroid/os/CancellationSignal;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final q(Landroid/database/Cursor;Le/a/k3/c;)Lcom/truecaller/data/entity/HistoryEvent;
    .locals 3

    .line 1
    new-instance v0, Le/a/l0/u/d/c;

    .line 2
    new-instance v1, Le/a/k3/j/d;

    .line 3
    sget-object v2, Le/a/k3/l/j;->b:Le/a/k3/l/j;

    invoke-direct {v1, p1, p2, v2}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;Le/a/k3/c;Le/a/k3/l/j;)V

    .line 4
    new-instance p2, Le/a/k3/j/c;

    invoke-direct {p2, p1}, Le/a/k3/j/c;-><init>(Landroid/database/Cursor;)V

    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, p1, v1, p2, v2}, Le/a/l0/u/d/c;-><init>(Landroid/database/Cursor;Le/a/k3/j/d;Le/a/k3/j/c;Z)V

    .line 6
    invoke-virtual {v0}, Le/a/l0/u/d/c;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "tcId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "(call_log_id NOT NULL OR tc_flag=2 OR tc_flag=3) AND type IN (1,2,3)  AND action!=1 AND tc_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const-string v6, "timestamp DESC LIMIT 1"

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 4
    :try_start_1
    invoke-static {p1, v0, v7, v1}, Le/a/n/g0;->I0(Landroid/database/Cursor;Le/a/k3/c;ZI)Le/a/l0/u/d/c;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/database/CursorWrapper;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Le/a/l0/u/d/c;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v0

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "wrap(eventCursor.historyEvent)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 8
    :cond_1
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "wrap(null)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_2
    throw p1
.end method

.method public s()Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v1, "type IN (1,2,3) "

    .line 3
    invoke-virtual {p0, v1}, Le/a/l0/a;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "timestamp DESC"

    .line 4
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 5
    :try_start_1
    invoke-static {v1, v0, v2, v3}, Le/a/n/g0;->I0(Landroid/database/Cursor;Le/a/k3/c;ZI)Le/a/l0/u/d/c;

    move-result-object v2

    sget-object v3, Le/a/l0/a$b;->a:Le/a/l0/a$b;

    .line 6
    new-instance v4, Le/a/r2/y;

    invoke-direct {v4, v2, v3}, Le/a/r2/y;-><init>(Ljava/lang/Object;Le/a/r2/c0;)V

    const-string v2, "wrap(cursor.toHistoryEventCursor()) { it.close() }"

    .line 7
    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 8
    :goto_0
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_0
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "wrap(null)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public t()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "type IN (1,2,3)  AND tc_flag!=3"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Le/a/l0/a;->h:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "initialCallLogSyncComplete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/truecaller/service/WidgetListProvider;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public u(J)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "(call_log_id NOT NULL OR tc_flag=2 OR tc_flag=3) AND new=1 AND type=3 AND action NOT IN (5,1,3,4) AND timestamp<=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v6, p2

    const-string v7, "timestamp DESC"

    .line 4
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 5
    :try_start_1
    invoke-static {p1, v0, p2, v1}, Le/a/n/g0;->I0(Landroid/database/Cursor;Le/a/k3/c;ZI)Le/a/l0/u/d/c;

    move-result-object p2

    sget-object v1, Le/a/l0/a$g;->j:Le/a/l0/a$g;

    new-instance v2, Le/a/l0/i;

    invoke-direct {v2, v1}, Le/a/l0/i;-><init>(Ls1/z/b/l;)V

    .line 6
    new-instance v1, Le/a/r2/y;

    invoke-direct {v1, p2, v2}, Le/a/r2/y;-><init>(Ljava/lang/Object;Le/a/r2/c0;)V

    const-string p2, "wrap(cursor.toHistoryEve\u2026istoryEventCursor::close)"

    .line 7
    invoke-static {v1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 8
    :goto_0
    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_0
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "wrap(null)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public v(I)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/a/r2/x<",
            "Le/a/l0/u/d/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2
    invoke-static {p1}, Le/a/m0/a1$j;->a(I)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 3
    :try_start_1
    invoke-static {p1, v0, v1, v2}, Le/a/n/g0;->I0(Landroid/database/Cursor;Le/a/k3/c;ZI)Le/a/l0/u/d/c;

    move-result-object v1

    sget-object v2, Le/a/l0/a$f;->a:Le/a/l0/a$f;

    .line 4
    new-instance v3, Le/a/r2/y;

    invoke-direct {v3, v1, v2}, Le/a/r2/y;-><init>(Ljava/lang/Object;Le/a/r2/c0;)V

    const-string v1, "wrap(cursor.toHistoryEventCursor()) { it.close() }"

    .line 5
    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object p1, v0

    .line 6
    :goto_0
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 8
    :cond_0
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "wrap(null)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public w(Ljava/lang/String;)Le/a/r2/x;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "eventId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "event_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v6, 0x0

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 4
    :try_start_1
    invoke-static {p1, v0, v7, v1}, Le/a/n/g0;->I0(Landroid/database/Cursor;Le/a/k3/c;ZI)Le/a/l0/u/d/c;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/database/CursorWrapper;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Le/a/l0/u/d/c;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v0

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    const-string v1, "wrap(eventCursor.historyEvent)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 8
    :cond_1
    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string v0, "wrap(null)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_2
    throw p1
.end method

.method public x(Ljava/util/Set;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "callLogIds"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    long-to-int v0, v0

    .line 1
    invoke-static {p1, v0}, Ls1/u/i;->k(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v5, "is_read"

    const-string v6, "new"

    .line 6
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "?"

    const-string v9, ","

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v8, v9, v10}, Lw3/c/a/a/a/h;->u(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v0, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 9
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 10
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-array v0, v1, [Ljava/lang/String;

    .line 11
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    check-cast v0, [Ljava/lang/String;

    .line 13
    iget-object v8, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 14
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 15
    invoke-virtual {v9, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    invoke-virtual {v9, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    iget-object v10, p0, Le/a/l0/a;->g:Le/a/l0/f;

    invoke-virtual {v10}, Le/a/l0/f;->b()Landroid/net/Uri;

    move-result-object v10

    .line 18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 19
    invoke-virtual {v8, v10, v9, v11, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3

    .line 20
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 21
    invoke-virtual {v9, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 22
    invoke-virtual {v9, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v5

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "call_log_id "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-virtual {v8, v5, v9, v6, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    move v0, v3

    goto :goto_2

    .line 26
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 27
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 28
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 29
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_1
    move v0, v1

    :goto_2
    if-nez v0, :cond_1

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v3

    :goto_4
    return v1
.end method

.method public final y(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/16 v1, 0x3e8

    .line 1
    invoke-static {p3, v1}, Ls1/u/i;->k(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 2
    :goto_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x39

    const-string v4, "("

    const-string v5, ")"

    .line 3
    invoke-static/range {v2 .. v9}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " IN "

    invoke-static {p2, v2, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    move-object v1, v0

    :goto_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 4
    invoke-static {v2}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    move-object v3, v1

    goto :goto_3

    :cond_2
    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const-string v4, " AND "

    .line 5
    invoke-static/range {v3 .. v10}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_3
    move-object v1, v0

    .line 6
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7
    iget-object v4, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8
    sget-object v4, Ls1/s;->a:Ls1/s;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " items, took: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms\ndeleteWhere = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method public final z(Ljava/lang/Integer;Lcom/truecaller/callhistory/data/FilterType;Landroid/os/CancellationSignal;Z)Landroid/database/Cursor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;,
            Landroid/os/OperationCanceledException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/a/l0/a;->n:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "history_with_aggregated_contact_no_cr"

    .line 3
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Le/a/m0/a1$j;->c()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 5
    iget-object v0, p0, Le/a/l0/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timestamp DESC LIMIT "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "timestamp DESC"

    :goto_1
    move-object v6, p1

    .line 7
    iget-boolean p1, p0, Le/a/l0/a;->n:Z

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    sget-object p1, Le/a/l0/j;->a:[Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    move-object v3, p1

    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_9

    const/4 p4, 0x4

    if-eq p1, p4, :cond_8

    const/4 p4, 0x5

    if-eq p1, p4, :cond_7

    const/4 p4, 0x6

    if-eq p1, p4, :cond_6

    .line 9
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x0

    const/4 p4, 0x3

    const/4 v0, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    if-eq p1, v0, :cond_3

    if-eq p1, p4, :cond_5

    move p4, p2

    goto :goto_3

    :cond_3
    move p4, v0

    goto :goto_3

    :cond_4
    move p4, v4

    :cond_5
    :goto_3
    new-array v5, v4, [Ljava/lang/String;

    .line 10
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, p2

    const-string v4, "type IN (1,2,3)  AND action!=1 AND action!=3 AND tc_flag!=3 AND type=?"

    move-object v7, p3

    .line 11
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    const-string v4, "type in (1,2,3) and tc_flag=0 and duration=0 and call_log_id is null and subscription_component_name is null"

    move-object v7, p3

    .line 12
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_4

    :cond_7
    const-string p1, "tc_flag=3"

    .line 13
    invoke-virtual {p0, p1}, Le/a/l0/a;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v7, p3

    .line 14
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_4

    :cond_8
    const-string p1, "type IN (1,2,3)  AND action IN (1, 3)"

    .line 15
    invoke-virtual {p0, p1}, Le/a/l0/a;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v7, p3

    .line 16
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_4

    :cond_9
    const-string p1, "type IN (1,2,3) "

    .line 17
    invoke-virtual {p0, p1}, Le/a/l0/a;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v7, p3

    .line 18
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :goto_4
    return-object p1
.end method
