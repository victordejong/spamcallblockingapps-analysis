.class public Lcom/truecaller/content/TruecallerContentProvider;
.super Le/a/b0/i/a;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/content/TruecallerContentProvider$b;,
        Lcom/truecaller/content/TruecallerContentProvider$AggregationState;
    }
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public final h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/truecaller/content/TruecallerContentProvider$AggregationState;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/m0/r0;

.field public j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/b0/i/a;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/truecaller/content/TruecallerContentProvider;->h:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Le/a/m0/r0;

    invoke-direct {v0}, Le/a/m0/r0;-><init>()V

    iput-object v0, p0, Lcom/truecaller/content/TruecallerContentProvider;->i:Le/a/m0/r0;

    return-void
.end method

.method public static t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Le/a/b0/i/e/b;->g:Z

    .line 3
    iput-object p2, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    .line 6
    iput-boolean v1, v0, Le/a/b0/i/e/b;->g:Z

    .line 7
    iput-object p2, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    .line 8
    iput-boolean v1, v0, Le/a/b0/i/e/b;->f:Z

    .line 9
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    .line 11
    iput-boolean v1, v0, Le/a/b0/i/e/b;->g:Z

    .line 12
    iput-object p2, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    .line 13
    iput-boolean v1, v0, Le/a/b0/i/e/b;->h:Z

    .line 14
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 15
    invoke-virtual {p0, p1}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object p0

    invoke-virtual {p0}, Le/a/b0/i/e/b;->d()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/m0/c1/l0;->d()[Le/a/m0/c1/h0;

    move-result-object v0

    .line 2
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v1

    invoke-virtual {v1}, Le/a/b0/g/a;->K()Le/a/q2/e;

    move-result-object v1

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 3
    invoke-static {p1, v0, v1}, Le/a/m0/c1/l0;->j(Landroid/content/Context;[Le/a/m0/c1/h0;Le/a/q2/a;)Le/a/m0/c1/l0;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Le/a/m0/c1/l0$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "tc.db"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 6
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Le/a/b0/g/a;->a0(Z)V

    .line 7
    iget-object p1, v0, Le/a/m0/c1/l0$a;->a:Ljava/lang/RuntimeException;

    throw p1
.end method

.method public o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/content/TruecallerContentProvider;->u()Lcom/truecaller/content/TruecallerContentProvider$AggregationState;

    move-result-object v0

    sget-object v1, Lcom/truecaller/content/TruecallerContentProvider$AggregationState;->IMMEDIATE:Lcom/truecaller/content/TruecallerContentProvider$AggregationState;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/content/TruecallerContentProvider;->i:Le/a/m0/r0;

    invoke-virtual {p0}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/m0/r0;->j(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 3
    iget-object v0, p0, Lcom/truecaller/content/TruecallerContentProvider;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 4
    invoke-static {}, Le/a/m0/a1$a;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/b0/i/c;->i(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onBegin()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/content/TruecallerContentProvider;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/content/TruecallerContentProvider;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/truecaller/content/TruecallerContentProvider;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    sget-object v0, Lcom/truecaller/content/TruecallerContentProvider$AggregationState;->DELAYED:Lcom/truecaller/content/TruecallerContentProvider$AggregationState;

    invoke-virtual {p0, v0}, Lcom/truecaller/content/TruecallerContentProvider;->w(Lcom/truecaller/content/TruecallerContentProvider$AggregationState;)V

    :cond_0
    return-void
.end method

.method public onCreate()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    new-instance v1, Lcom/truecaller/content/TruecallerContentProvider$a;

    invoke-direct {v1, p0}, Lcom/truecaller/content/TruecallerContentProvider$a;-><init>(Lcom/truecaller/content/TruecallerContentProvider;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ACTION_RESTORE_AGGREGATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ln3/x/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Aggregation"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/truecaller/content/TruecallerContentProvider$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/truecaller/content/TruecallerContentProvider$b;-><init>(Lcom/truecaller/content/TruecallerContentProvider;Lcom/truecaller/content/TruecallerContentProvider$a;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/truecaller/content/TruecallerContentProvider;->j:Landroid/os/Handler;

    const/4 v0, 0x1

    return v0
.end method

.method public p(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/a/b0/i/c;->d:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le/a/b0/i/c;->d:Z

    .line 3
    iget-object v0, p0, Le/a/b0/i/c;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Le/a/b0/i/c;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/content/TruecallerContentProvider;->u()Lcom/truecaller/content/TruecallerContentProvider$AggregationState;

    move-result-object p1

    .line 10
    sget-object v0, Lcom/truecaller/content/TruecallerContentProvider$AggregationState;->DELAYED:Lcom/truecaller/content/TruecallerContentProvider$AggregationState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/truecaller/content/TruecallerContentProvider$AggregationState;->IMMEDIATE:Lcom/truecaller/content/TruecallerContentProvider$AggregationState;

    if-ne p1, v0, :cond_3

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/truecaller/content/TruecallerContentProvider;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    const-wide/16 v0, 0x64

    .line 12
    iget-object p1, p0, Lcom/truecaller/content/TruecallerContentProvider;->j:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public s(Landroid/content/Context;)Le/a/b0/i/e/c;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Le/a/b0/g/a;

    .line 2
    invoke-virtual {v2}, Le/a/b0/g/a;->R()Le/a/u3/g;

    move-result-object v3

    .line 3
    invoke-virtual {v2}, Le/a/b0/g/a;->S()Le/a/m0/d1/a;

    move-result-object v4

    .line 4
    invoke-virtual {v2}, Le/a/b0/g/a;->Q()Le/a/l0/k;

    move-result-object v5

    .line 5
    invoke-virtual {v2}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v6

    invoke-interface {v6}, Le/a/b0/c;->Y()Le/a/b0/e/r/a;

    move-result-object v6

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v1, v7}, Le/a/b0/i/f/b;->f(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 7
    new-instance v8, Le/a/b0/i/e/d;

    invoke-direct {v8}, Le/a/b0/i/e/d;-><init>()V

    .line 8
    invoke-virtual {v2}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v9

    invoke-interface {v9}, Le/a/b0/c;->y4()Le/a/a/i0;

    move-result-object v9

    .line 9
    new-instance v10, Le/a/m0/u;

    invoke-direct {v10, v9}, Le/a/m0/u;-><init>(Le/a/a/i0;)V

    .line 10
    invoke-virtual {v2}, Le/a/b0/g/a;->Y()Z

    move-result v9

    .line 11
    iget-object v11, v0, Lcom/truecaller/content/TruecallerContentProvider;->i:Le/a/m0/r0;

    .line 12
    iput-object v10, v11, Le/a/m0/r0;->b:Le/a/m0/u;

    .line 13
    invoke-virtual {v3}, Le/a/u3/g;->o()Le/a/u3/b;

    move-result-object v11

    invoke-interface {v11}, Le/a/u3/b;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 14
    iget-object v11, v0, Lcom/truecaller/content/TruecallerContentProvider;->i:Le/a/m0/r0;

    .line 15
    iput-object v5, v11, Le/a/m0/r0;->c:Le/a/l0/k;

    .line 16
    :cond_0
    iput-object v7, v8, Le/a/b0/i/e/d;->d:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 17
    iget-object v5, v8, Le/a/b0/i/e/d;->e:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content://"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v8, Le/a/b0/i/e/d;->e:Landroid/net/Uri;

    .line 19
    :cond_1
    iget-object v5, v8, Le/a/b0/i/e/d;->c:Le/a/b0/i/e/e;

    if-nez v5, :cond_2

    .line 20
    iput-object v0, v8, Le/a/b0/i/e/d;->c:Le/a/b0/i/e/e;

    .line 21
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string v7, "history_with_raw_contact"

    .line 22
    invoke-static {v8, v7, v7}, Lcom/truecaller/content/TruecallerContentProvider;->t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "history_with_aggregated_contact"

    .line 23
    invoke-static {v8, v11, v11}, Lcom/truecaller/content/TruecallerContentProvider;->t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "history_top_called_with_aggregated_contact"

    .line 24
    invoke-static {v8, v11, v11}, Lcom/truecaller/content/TruecallerContentProvider;->t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "history_with_aggregated_contact_number"

    .line 25
    invoke-static {v8, v11, v11}, Lcom/truecaller/content/TruecallerContentProvider;->t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 26
    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "history_with_aggregated_contact_number_data"

    .line 27
    invoke-static {v8, v11, v11}, Lcom/truecaller/content/TruecallerContentProvider;->t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 28
    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "history_with_call_recording"

    .line 29
    invoke-static {v8, v11, v11}, Lcom/truecaller/content/TruecallerContentProvider;->t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v12, "call_recordings_with_history_event"

    .line 30
    invoke-static {v8, v12, v12}, Lcom/truecaller/content/TruecallerContentProvider;->t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v12, "sorted_contacts_with_data"

    .line 31
    invoke-static {v8, v12, v12}, Lcom/truecaller/content/TruecallerContentProvider;->t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 32
    invoke-virtual {v5, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v13, "sorted_contacts_shallow"

    .line 33
    invoke-static {v8, v13, v13}, Lcom/truecaller/content/TruecallerContentProvider;->t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v13, "wvm_incoming_with_raw_contact_data"

    .line 34
    invoke-static {v8, v13, v13}, Lcom/truecaller/content/TruecallerContentProvider;->t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 35
    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static {}, Le/a/b0/q/g0;->E()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v13, "history_with_aggregated_contact_no_cr"

    .line 38
    invoke-static {v8, v13, v13}, Lcom/truecaller/content/TruecallerContentProvider;->t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 39
    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v13, "aggregated_contact_raw_contact"

    .line 40
    invoke-static {v8, v13, v13}, Lcom/truecaller/content/TruecallerContentProvider;->t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 41
    invoke-virtual {v5, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 43
    sget-object v14, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 44
    invoke-static {v14, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 45
    invoke-virtual {v13, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v7, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 47
    invoke-static {v7, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 48
    invoke-virtual {v13, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {}, Le/a/m0/a1$j;->c()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {}, Le/a/m0/a1$j;->d()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {}, Le/a/m0/a1$c;->b()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 53
    invoke-static {}, Le/a/m0/a1$k;->W()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "aggregated_contact"

    .line 54
    invoke-virtual {v8, v11}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v14

    const/4 v15, 0x5

    .line 55
    iput v15, v14, Le/a/b0/i/e/b;->i:I

    .line 56
    invoke-virtual {v14, v5}, Le/a/b0/i/e/b;->a(Ljava/util/Collection;)Le/a/b0/i/e/b;

    .line 57
    invoke-virtual {v14}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 58
    invoke-virtual {v8, v11}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v14

    .line 59
    invoke-virtual {v14, v5}, Le/a/b0/i/e/b;->a(Ljava/util/Collection;)Le/a/b0/i/e/b;

    const/4 v15, 0x1

    .line 60
    iput-boolean v15, v14, Le/a/b0/i/e/b;->f:Z

    .line 61
    invoke-virtual {v14}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 62
    invoke-virtual {v8, v11}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v11

    const/4 v14, 0x1

    .line 63
    iput-boolean v14, v11, Le/a/b0/i/e/b;->h:Z

    const-string v14, "aggregated_contact_t9"

    const/4 v15, 0x0

    move-object/from16 v17, v7

    const/4 v7, 0x1

    .line 64
    invoke-static {v11, v8, v14, v15, v7}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v7

    .line 65
    new-instance v11, Le/a/m0/c1/q;

    const/4 v14, 0x1

    invoke-direct {v11, v14, v3}, Le/a/m0/c1/q;-><init>(ZLe/a/u3/g;)V

    .line 66
    iput-object v11, v7, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v11, "aggregated_contact_plain_text"

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 67
    invoke-static {v7, v8, v11, v14, v15}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v7

    .line 68
    new-instance v11, Le/a/m0/c1/q;

    invoke-direct {v11, v14, v3}, Le/a/m0/c1/q;-><init>(ZLe/a/u3/g;)V

    .line 69
    iput-object v11, v7, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v11, "aggregated_contact_filtered_on_raw"

    .line 70
    invoke-static {v7, v8, v11, v14, v15}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v7

    .line 71
    new-instance v11, Le/a/m0/h;

    invoke-direct {v11}, Le/a/m0/h;-><init>()V

    .line 72
    iput-object v11, v7, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    .line 73
    invoke-virtual {v7}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v7, "raw_contact"

    .line 74
    invoke-virtual {v8, v7}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v11

    const/4 v14, 0x5

    .line 75
    iput v14, v11, Le/a/b0/i/e/b;->i:I

    .line 76
    iget-object v14, v0, Lcom/truecaller/content/TruecallerContentProvider;->i:Le/a/m0/r0;

    .line 77
    iput-object v14, v11, Le/a/b0/i/e/b;->n:Le/a/b0/i/e/a$f;

    .line 78
    iput-object v14, v11, Le/a/b0/i/e/b;->q:Le/a/b0/i/e/a$b;

    .line 79
    iput-object v14, v11, Le/a/b0/i/e/b;->p:Le/a/b0/i/e/a$e;

    .line 80
    invoke-virtual {v11, v5}, Le/a/b0/i/e/b;->a(Ljava/util/Collection;)Le/a/b0/i/e/b;

    .line 81
    invoke-virtual {v11}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 82
    invoke-virtual {v8, v7}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v11

    iget-object v14, v0, Lcom/truecaller/content/TruecallerContentProvider;->i:Le/a/m0/r0;

    .line 83
    iput-object v14, v11, Le/a/b0/i/e/b;->p:Le/a/b0/i/e/a$e;

    .line 84
    invoke-virtual {v11, v5}, Le/a/b0/i/e/b;->a(Ljava/util/Collection;)Le/a/b0/i/e/b;

    const/4 v14, 0x1

    .line 85
    iput-boolean v14, v11, Le/a/b0/i/e/b;->f:Z

    .line 86
    invoke-virtual {v11}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 87
    invoke-virtual {v8, v7}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v11

    .line 88
    iput-boolean v14, v11, Le/a/b0/i/e/b;->h:Z

    .line 89
    invoke-virtual {v11}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 90
    new-instance v11, Le/a/m0/q;

    invoke-direct {v11, v4}, Le/a/m0/q;-><init>(Le/a/m0/d1/a;)V

    .line 91
    new-instance v14, Le/a/m0/r;

    invoke-direct {v14, v4}, Le/a/m0/r;-><init>(Le/a/m0/d1/a;)V

    .line 92
    new-instance v15, Le/a/m0/p;

    invoke-direct {v15, v4}, Le/a/m0/p;-><init>(Le/a/m0/d1/a;)V

    const-string v4, "history"

    .line 93
    invoke-virtual {v8, v4}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    .line 94
    iput-object v11, v0, Le/a/b0/i/e/b;->q:Le/a/b0/i/e/a$b;

    .line 95
    iput-object v14, v0, Le/a/b0/i/e/b;->r:Le/a/b0/i/e/a$c;

    .line 96
    iput-object v15, v0, Le/a/b0/i/e/b;->s:Le/a/b0/i/e/a$a;

    .line 97
    invoke-virtual {v0, v5}, Le/a/b0/i/e/b;->a(Ljava/util/Collection;)Le/a/b0/i/e/b;

    .line 98
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 99
    invoke-virtual {v8, v4}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v5}, Le/a/b0/i/e/b;->a(Ljava/util/Collection;)Le/a/b0/i/e/b;

    const/4 v11, 0x1

    .line 101
    iput-boolean v11, v0, Le/a/b0/i/e/b;->f:Z

    .line 102
    iput-object v15, v0, Le/a/b0/i/e/b;->s:Le/a/b0/i/e/a$a;

    .line 103
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 104
    invoke-virtual {v8, v4}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const/4 v4, 0x1

    .line 105
    iput-boolean v4, v0, Le/a/b0/i/e/b;->h:Z

    .line 106
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 107
    invoke-virtual {v8, v7}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/i/e/b;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "raw_contact_data"

    const-string v4, "raw_contact/data"

    .line 108
    invoke-static {v8, v0, v4}, Lcom/truecaller/content/TruecallerContentProvider;->t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "aggregated_contact_data"

    const-string v4, "aggregated_contact/data"

    .line 109
    invoke-static {v8, v0, v4}, Lcom/truecaller/content/TruecallerContentProvider;->t(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Le/a/m0/m0;

    invoke-direct {v0}, Le/a/m0/m0;-><init>()V

    const-string v4, "data"

    .line 111
    invoke-virtual {v8, v4}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v7

    .line 112
    iput-object v0, v7, Le/a/b0/i/e/b;->n:Le/a/b0/i/e/a$f;

    .line 113
    iput-object v0, v7, Le/a/b0/i/e/b;->q:Le/a/b0/i/e/a$b;

    .line 114
    invoke-virtual {v7, v5}, Le/a/b0/i/e/b;->a(Ljava/util/Collection;)Le/a/b0/i/e/b;

    .line 115
    invoke-virtual {v7}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 116
    invoke-virtual {v8, v4}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v7

    .line 117
    iput-object v0, v7, Le/a/b0/i/e/b;->n:Le/a/b0/i/e/a$f;

    .line 118
    iput-object v0, v7, Le/a/b0/i/e/b;->q:Le/a/b0/i/e/a$b;

    .line 119
    invoke-virtual {v7, v5}, Le/a/b0/i/e/b;->a(Ljava/util/Collection;)Le/a/b0/i/e/b;

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, v7, Le/a/b0/i/e/b;->f:Z

    .line 121
    invoke-virtual {v7}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 122
    invoke-virtual {v8, v4}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const/4 v4, 0x1

    .line 123
    iput-boolean v4, v0, Le/a/b0/i/e/b;->h:Z

    .line 124
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 125
    new-instance v0, Le/a/m0/j;

    invoke-direct {v0}, Le/a/m0/j;-><init>()V

    const-string v4, "msg_conversations"

    .line 126
    invoke-virtual {v8, v4}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v4

    const-string v5, "msg/msg_conversations"

    .line 127
    iput-object v5, v4, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v5, 0x1

    .line 128
    invoke-virtual {v4, v5}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 129
    iput-object v0, v4, Le/a/b0/i/e/b;->n:Le/a/b0/i/e/a$f;

    .line 130
    iput-object v0, v4, Le/a/b0/i/e/b;->o:Le/a/b0/i/e/a$h;

    .line 131
    iput-object v0, v4, Le/a/b0/i/e/b;->p:Le/a/b0/i/e/a$e;

    .line 132
    invoke-virtual {v4}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_thread_stats"

    .line 133
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v4, "msg/msg_thread_stats"

    .line 134
    iput-object v4, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/Uri;

    .line 135
    invoke-static {}, Le/a/b0/q/g0;->n()Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-virtual {v0, v4}, Le/a/b0/i/e/b;->b([Landroid/net/Uri;)Le/a/b0/i/e/b;

    .line 136
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg/msg_thread_stats_specific_update"

    .line 137
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    new-instance v4, Le/a/m0/t0;

    invoke-direct {v4}, Le/a/m0/t0;-><init>()V

    .line 138
    iput-object v4, v0, Le/a/b0/i/e/b;->o:Le/a/b0/i/e/a$h;

    const/4 v4, 0x0

    .line 139
    invoke-virtual {v0, v4}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    const/4 v4, 0x1

    .line 140
    invoke-virtual {v0, v4}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 141
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_conversations_list"

    .line 142
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v4

    const-string v5, "msg/msg_conversations_list"

    .line 143
    iput-object v5, v4, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v7, 0x1

    .line 144
    iput-boolean v7, v4, Le/a/b0/i/e/b;->f:Z

    const/4 v7, 0x0

    .line 145
    invoke-virtual {v4, v7}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    new-instance v7, Le/a/m0/a;

    invoke-direct {v7, v3}, Le/a/m0/a;-><init>(Le/a/u3/g;)V

    .line 146
    iput-object v7, v4, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    .line 147
    invoke-virtual {v4}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 148
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    .line 149
    iput-object v5, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v4, 0x0

    .line 150
    invoke-virtual {v0, v4}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    new-instance v4, Le/a/m0/a;

    invoke-direct {v4, v3}, Le/a/m0/a;-><init>(Le/a/u3/g;)V

    .line 151
    iput-object v4, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    .line 152
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_participants"

    .line 153
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v4, "msg/msg_participants"

    .line 154
    iput-object v4, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    .line 155
    new-instance v4, Le/a/m0/n0;

    .line 156
    invoke-virtual {v2}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v5

    invoke-interface {v5}, Le/a/b0/c;->m()Le/a/b0/q/z;

    move-result-object v5

    new-instance v7, Le/a/m0/c1/i0;

    invoke-direct {v7}, Le/a/m0/c1/i0;-><init>()V

    invoke-direct {v4, v5, v7}, Le/a/m0/n0;-><init>(Le/a/b0/q/z;Le/a/m0/c1/i0;)V

    .line 157
    iput-object v4, v0, Le/a/b0/i/e/b;->n:Le/a/b0/i/e/a$f;

    .line 158
    new-instance v4, Le/a/m0/o0;

    invoke-direct {v4}, Le/a/m0/o0;-><init>()V

    .line 159
    iput-object v4, v0, Le/a/b0/i/e/b;->o:Le/a/b0/i/e/a$h;

    const/4 v4, 0x1

    .line 160
    invoke-virtual {v0, v4}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    .line 161
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_conversation_participants"

    .line 162
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v4, "msg/msg_conversation_participants"

    .line 163
    iput-object v4, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v4, 0x0

    .line 164
    invoke-virtual {v0, v4}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    const/4 v4, 0x1

    .line 165
    invoke-virtual {v0, v4}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    .line 166
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_participants_with_contact_info"

    .line 167
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v4, "msg/msg_participants_with_contact_info"

    .line 168
    iput-object v4, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    .line 169
    new-instance v4, Le/a/m0/p0;

    invoke-direct {v4, v1}, Le/a/m0/p0;-><init>(Landroid/content/Context;)V

    .line 170
    iput-object v4, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const/4 v4, 0x0

    .line 171
    invoke-virtual {v0, v4}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 172
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 173
    new-instance v0, Le/a/m0/f0;

    invoke-direct {v0}, Le/a/m0/f0;-><init>()V

    .line 174
    new-instance v4, Le/a/m0/i0;

    invoke-direct {v4}, Le/a/m0/i0;-><init>()V

    .line 175
    new-instance v5, Le/a/m0/g0;

    invoke-direct {v5}, Le/a/m0/g0;-><init>()V

    const-string v7, "msg_messages"

    .line 176
    invoke-virtual {v8, v7}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v11

    const-string v14, "msg/msg_messages"

    .line 177
    iput-object v14, v11, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    .line 178
    iput-object v5, v11, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    .line 179
    iput-object v5, v11, Le/a/b0/i/e/b;->o:Le/a/b0/i/e/a$h;

    .line 180
    iput-object v5, v11, Le/a/b0/i/e/b;->p:Le/a/b0/i/e/a$e;

    .line 181
    iput-object v0, v11, Le/a/b0/i/e/b;->n:Le/a/b0/i/e/a$f;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/net/Uri;

    .line 182
    invoke-static {}, Le/a/b0/q/g0;->n()Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v5, v16

    invoke-virtual {v11, v5}, Le/a/b0/i/e/b;->b([Landroid/net/Uri;)Le/a/b0/i/e/b;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/net/Uri;

    .line 183
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v15

    aput-object v15, v5, v16

    invoke-virtual {v11, v5}, Le/a/b0/i/e/b;->b([Landroid/net/Uri;)Le/a/b0/i/e/b;

    .line 184
    invoke-virtual {v11}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 185
    invoke-virtual {v8, v7}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v5

    .line 186
    iput-object v14, v5, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v7, 0x1

    .line 187
    iput-boolean v7, v5, Le/a/b0/i/e/b;->f:Z

    .line 188
    iput-object v4, v5, Le/a/b0/i/e/b;->o:Le/a/b0/i/e/a$h;

    .line 189
    iput-object v0, v5, Le/a/b0/i/e/b;->p:Le/a/b0/i/e/a$e;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    .line 190
    invoke-static {}, Le/a/b0/q/g0;->n()Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v0, v7

    invoke-virtual {v5, v0}, Le/a/b0/i/e/b;->b([Landroid/net/Uri;)Le/a/b0/i/e/b;

    .line 191
    invoke-virtual {v5}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_entities"

    .line 192
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v4, "msg/msg_entities"

    .line 193
    iput-object v4, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    .line 194
    new-instance v4, Le/a/m0/c0;

    .line 195
    invoke-virtual {v2}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v2

    invoke-interface {v2}, Le/a/b0/c;->d7()Le/a/m0/f;

    move-result-object v2

    invoke-direct {v4, v2}, Le/a/m0/c0;-><init>(Le/a/m0/f;)V

    .line 196
    iput-object v4, v0, Le/a/b0/i/e/b;->n:Le/a/b0/i/e/a$f;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    .line 197
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {v0, v2}, Le/a/b0/i/e/b;->b([Landroid/net/Uri;)Le/a/b0/i/e/b;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    .line 198
    invoke-static {}, Le/a/b0/q/g0;->n()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v2}, Le/a/b0/i/e/b;->b([Landroid/net/Uri;)Le/a/b0/i/e/b;

    .line 199
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_im_reactions"

    .line 200
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v2, "msg/msg_im_reactions"

    .line 201
    iput-object v2, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    .line 202
    new-instance v2, Le/a/m0/v;

    invoke-direct {v2}, Le/a/m0/v;-><init>()V

    .line 203
    iput-object v2, v0, Le/a/b0/i/e/b;->n:Le/a/b0/i/e/a$f;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    .line 204
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v2}, Le/a/b0/i/e/b;->b([Landroid/net/Uri;)Le/a/b0/i/e/b;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    .line 205
    invoke-static {}, Le/a/b0/q/g0;->n()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v2}, Le/a/b0/i/e/b;->b([Landroid/net/Uri;)Le/a/b0/i/e/b;

    const-string v2, "reaction_with_participants"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 206
    invoke-static {v0, v8, v2, v4, v5}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 207
    new-instance v2, Le/a/m0/s0;

    invoke-direct {v2}, Le/a/m0/s0;-><init>()V

    .line 208
    iput-object v2, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v2, "msg/msg_messages_with_entities"

    .line 209
    invoke-static {v0, v8, v2, v4, v5}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 210
    new-instance v4, Le/a/m0/c1/x;

    invoke-direct {v4, v1}, Le/a/m0/c1/x;-><init>(Landroid/content/Context;)V

    .line 211
    iput-object v4, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const/4 v4, 0x1

    .line 212
    iput-boolean v4, v0, Le/a/b0/i/e/b;->f:Z

    .line 213
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_im_mentions"

    .line 214
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v4, "msg/msg_im_mentions"

    .line 215
    iput-object v4, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    .line 216
    iput-object v10, v0, Le/a/b0/i/e/b;->n:Le/a/b0/i/e/a$f;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/Uri;

    .line 217
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v4}, Le/a/b0/i/e/b;->b([Landroid/net/Uri;)Le/a/b0/i/e/b;

    .line 218
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_messages_with_entities"

    .line 219
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    .line 220
    iput-object v2, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v2, 0x0

    .line 221
    invoke-virtual {v0, v2}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    const/4 v2, 0x1

    .line 222
    invoke-virtual {v0, v2}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    new-instance v2, Le/a/m0/c1/x;

    invoke-direct {v2, v1}, Le/a/m0/c1/x;-><init>(Landroid/content/Context;)V

    .line 223
    iput-object v2, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v2, "messages_with_grouped_history_events"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 224
    invoke-static {v0, v8, v2, v4, v5}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 225
    new-instance v2, Le/a/m0/c1/y;

    invoke-direct {v2, v1, v3, v9}, Le/a/m0/c1/y;-><init>(Landroid/content/Context;Le/a/u3/g;Z)V

    .line 226
    iput-object v2, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const/4 v1, 0x1

    .line 227
    iput-boolean v1, v0, Le/a/b0/i/e/b;->f:Z

    const-string v1, "messages_moved_to_spam_query"

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 228
    invoke-static {v0, v8, v1, v2, v4}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 229
    new-instance v1, Le/a/m0/c1/w;

    invoke-direct {v1}, Le/a/m0/c1/w;-><init>()V

    .line 230
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    .line 231
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_im_attachments"

    .line 232
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v1, "msg/msg_im_attachments"

    .line 233
    iput-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    .line 234
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_im_attachments_entities"

    .line 235
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const/4 v1, 0x0

    .line 236
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    const/4 v1, 0x1

    .line 237
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    .line 238
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_im_report_message"

    .line 239
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v1, "msg/msg_im_report_message"

    .line 240
    iput-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v1, 0x0

    .line 241
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    const/4 v1, 0x1

    .line 242
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    .line 243
    iput-boolean v1, v0, Le/a/b0/i/e/b;->f:Z

    .line 244
    new-instance v1, Le/a/m0/c1/s;

    invoke-direct {v1}, Le/a/m0/c1/s;-><init>()V

    .line 245
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    .line 246
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 247
    new-instance v0, Le/a/m0/w;

    invoke-direct {v0}, Le/a/m0/w;-><init>()V

    const-string v1, "msg_im_users"

    .line 248
    invoke-virtual {v8, v1}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    const-string v2, "msg/msg_im_users"

    .line 249
    iput-object v2, v1, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v2, 0x1

    .line 250
    invoke-virtual {v1, v2}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 251
    invoke-virtual {v1, v2}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    .line 252
    iput-object v0, v1, Le/a/b0/i/e/b;->n:Le/a/b0/i/e/a$f;

    .line 253
    iput-object v0, v1, Le/a/b0/i/e/b;->o:Le/a/b0/i/e/a$h;

    .line 254
    iput-object v0, v1, Le/a/b0/i/e/b;->p:Le/a/b0/i/e/a$e;

    const/4 v0, 0x5

    .line 255
    iput v0, v1, Le/a/b0/i/e/b;->i:I

    .line 256
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_im_group_participants"

    .line 257
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v1, "msg/msg_im_group_participants"

    .line 258
    iput-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v1, 0x1

    .line 259
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 260
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    const/4 v1, 0x5

    .line 261
    iput v1, v0, Le/a/b0/i/e/b;->i:I

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    .line 262
    invoke-static {}, Le/a/b0/q/g0;->E()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->b([Landroid/net/Uri;)Le/a/b0/i/e/b;

    .line 263
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_im_group_info"

    .line 264
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v1, "msg/msg_im_group_info"

    .line 265
    iput-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v1, 0x1

    .line 266
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 267
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    const/4 v1, 0x5

    .line 268
    iput v1, v0, Le/a/b0/i/e/b;->i:I

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    .line 269
    invoke-static {}, Le/a/b0/q/g0;->n()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->b([Landroid/net/Uri;)Le/a/b0/i/e/b;

    .line 270
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_im_invite_group_info"

    .line 271
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v1, "msg/msg_im_invite_group_info"

    .line 272
    iput-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v1, 0x1

    .line 273
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 274
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    const/4 v1, 0x5

    .line 275
    iput v1, v0, Le/a/b0/i/e/b;->i:I

    .line 276
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_im_group_participants_view"

    .line 277
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v1, "msg/msg_im_group_participants_view"

    .line 278
    iput-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v1, 0x0

    .line 279
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    const/4 v1, 0x1

    .line 280
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    new-instance v1, Le/a/m0/s;

    invoke-direct {v1}, Le/a/m0/s;-><init>()V

    .line 281
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v1, "message_attachments"

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 282
    invoke-static {v0, v8, v1, v2, v4}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 283
    new-instance v1, Le/a/m0/b0;

    invoke-direct {v1, v3, v9}, Le/a/m0/b0;-><init>(Le/a/u3/g;Z)V

    .line 284
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v1, "inbox_cleaner_spam_messages_query"

    .line 285
    invoke-static {v0, v8, v1, v2, v4}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 286
    new-instance v1, Le/a/m0/c1/v;

    invoke-direct {v1}, Le/a/m0/c1/v;-><init>()V

    .line 287
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v1, "inbox_cleaner_promotional_messages_query"

    .line 288
    invoke-static {v0, v8, v1, v2, v4}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 289
    new-instance v1, Le/a/m0/c1/u;

    invoke-direct {v1}, Le/a/m0/c1/u;-><init>()V

    .line 290
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v1, "inbox_cleaner_otp_messages_query"

    .line 291
    invoke-static {v0, v8, v1, v2, v4}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 292
    new-instance v1, Le/a/m0/c1/t;

    invoke-direct {v1}, Le/a/m0/c1/t;-><init>()V

    .line 293
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v1, "message_to_nudge"

    .line 294
    invoke-static {v0, v8, v1, v2, v4}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 295
    new-instance v1, Le/a/m0/e0;

    invoke-direct {v1, v3}, Le/a/m0/e0;-><init>(Le/a/u3/g;)V

    .line 296
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v1, "media_storage"

    .line 297
    invoke-static {v0, v8, v1, v2, v4}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 298
    new-instance v1, Le/a/m0/a0;

    invoke-direct {v1}, Le/a/m0/a0;-><init>()V

    .line 299
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v1, "media_size_by_conversation"

    .line 300
    invoke-static {v0, v8, v1, v2, v4}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 301
    new-instance v1, Le/a/m0/z;

    invoke-direct {v1}, Le/a/m0/z;-><init>()V

    .line 302
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v1, "new_conversation_items"

    .line 303
    invoke-static {v0, v8, v1, v2, v4}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 304
    new-instance v1, Le/a/m0/k0;

    invoke-direct {v1, v6, v3}, Le/a/m0/k0;-><init>(Le/a/b0/e/r/a;Le/a/u3/g;)V

    .line 305
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v1, "conversation_messages"

    const/4 v2, 0x1

    .line 306
    invoke-static {v0, v8, v1, v2, v2}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 307
    new-instance v1, Le/a/m0/x0;

    invoke-direct {v1}, Le/a/m0/x0;-><init>()V

    .line 308
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v1, "messages_brand_keywords"

    .line 309
    invoke-static {v0, v8, v1, v2, v2}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 310
    new-instance v1, Le/a/m0/i;

    invoke-direct {v1}, Le/a/m0/i;-><init>()V

    .line 311
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v1, "messages_to_translate"

    const/4 v2, 0x0

    .line 312
    invoke-static {v0, v8, v1, v2, v4}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 313
    new-instance v1, Le/a/m0/h0;

    invoke-direct {v1, v3, v9}, Le/a/m0/h0;-><init>(Le/a/u3/g;Z)V

    .line 314
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v1, "gif_stats"

    const/4 v3, 0x1

    .line 315
    invoke-static {v0, v8, v1, v2, v3}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 316
    new-instance v1, Le/a/m0/n;

    invoke-direct {v1}, Le/a/m0/n;-><init>()V

    .line 317
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    .line 318
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_im_group_reports"

    .line 319
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v1, "msg/msg_im_group_reports"

    .line 320
    iput-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const-string v1, "msg_im_group_reports_query"

    .line 321
    invoke-static {v0, v8, v1, v2, v3}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 322
    new-instance v1, Le/a/m0/t;

    invoke-direct {v1}, Le/a/m0/t;-><init>()V

    .line 323
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    .line 324
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_links"

    .line 325
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v1, "msg/msg_links"

    .line 326
    iput-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v1, 0x1

    .line 327
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 328
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    const/4 v1, 0x5

    .line 329
    iput v1, v0, Le/a/b0/i/e/b;->i:I

    .line 330
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_im_quick_actions"

    .line 331
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v1, "msg/msg_im_quick_actions"

    .line 332
    iput-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v1, 0x1

    .line 333
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 334
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    const/4 v1, 0x5

    .line 335
    iput v1, v0, Le/a/b0/i/e/b;->i:I

    .line 336
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "business_im"

    .line 337
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const/4 v1, 0x1

    .line 338
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    new-instance v1, Le/a/m0/y;

    invoke-direct {v1}, Le/a/m0/y;-><init>()V

    .line 339
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v1, "insights_resync_directory"

    const/4 v2, 0x1

    .line 340
    invoke-static {v0, v8, v1, v2, v2}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 341
    new-instance v1, Le/a/m0/x;

    invoke-direct {v1}, Le/a/m0/x;-><init>()V

    .line 342
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    .line 343
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "filters"

    .line 344
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    .line 345
    iput-object v0, v1, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    .line 346
    new-instance v2, Le/a/m0/l;

    invoke-direct {v2}, Le/a/m0/l;-><init>()V

    .line 347
    iput-object v2, v1, Le/a/b0/i/e/b;->n:Le/a/b0/i/e/a$f;

    .line 348
    new-instance v2, Le/a/m0/m;

    invoke-direct {v2}, Le/a/m0/m;-><init>()V

    .line 349
    iput-object v2, v1, Le/a/b0/i/e/b;->o:Le/a/b0/i/e/a$h;

    .line 350
    new-instance v2, Le/a/m0/k;

    invoke-direct {v2}, Le/a/m0/k;-><init>()V

    .line 351
    iput-object v2, v1, Le/a/b0/i/e/b;->p:Le/a/b0/i/e/a$e;

    .line 352
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    move-result-object v1

    .line 353
    invoke-virtual {v1, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    .line 354
    iput-object v0, v1, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v2, 0x1

    .line 355
    iput-boolean v2, v1, Le/a/b0/i/e/b;->f:Z

    .line 356
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    move-result-object v1

    .line 357
    invoke-virtual {v1, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    .line 358
    iput-object v0, v1, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, v1, Le/a/b0/i/e/b;->h:Z

    .line 360
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "topspammers"

    .line 361
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    .line 362
    iput-object v0, v1, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    .line 363
    new-instance v2, Le/a/m0/v0;

    invoke-direct {v2}, Le/a/m0/v0;-><init>()V

    .line 364
    iput-object v2, v1, Le/a/b0/i/e/b;->q:Le/a/b0/i/e/a$b;

    .line 365
    new-instance v2, Le/a/m0/w0;

    invoke-direct {v2}, Le/a/m0/w0;-><init>()V

    .line 366
    iput-object v2, v1, Le/a/b0/i/e/b;->o:Le/a/b0/i/e/a$h;

    .line 367
    new-instance v2, Le/a/m0/u0;

    invoke-direct {v2}, Le/a/m0/u0;-><init>()V

    .line 368
    iput-object v2, v1, Le/a/b0/i/e/b;->s:Le/a/b0/i/e/a$a;

    .line 369
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    move-result-object v1

    .line 370
    invoke-virtual {v1, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    .line 371
    iput-object v0, v1, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v2, 0x1

    .line 372
    iput-boolean v2, v1, Le/a/b0/i/e/b;->f:Z

    .line 373
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    move-result-object v1

    .line 374
    invoke-virtual {v1, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    .line 375
    iput-object v0, v1, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 376
    iput-boolean v0, v1, Le/a/b0/i/e/b;->h:Z

    .line 377
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "t9_mapping"

    .line 378
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const/4 v1, 0x1

    .line 379
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 380
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    .line 381
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "contact_sorting_index"

    .line 382
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    .line 383
    invoke-virtual {v1, v2}, Le/a/b0/i/e/b;->b([Landroid/net/Uri;)Le/a/b0/i/e/b;

    const/4 v2, 0x1

    .line 384
    invoke-virtual {v1, v2}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 385
    invoke-virtual {v1, v2}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    .line 386
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 387
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v1, "contact_sorting_index/fast_scroll"

    .line 388
    iput-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v1, 0x0

    .line 389
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    const/4 v1, 0x1

    .line 390
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    new-instance v1, Le/a/m0/c1/p;

    invoke-direct {v1}, Le/a/m0/c1/p;-><init>()V

    .line 391
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    .line 392
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "call_recordings"

    .line 393
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    .line 394
    iput-object v0, v1, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    .line 395
    invoke-virtual {v1, v13}, Le/a/b0/i/e/b;->a(Ljava/util/Collection;)Le/a/b0/i/e/b;

    const/4 v0, 0x1

    .line 396
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 397
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    .line 398
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "profile_view_events"

    .line 399
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    .line 400
    iput-object v0, v1, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    move-object/from16 v0, v17

    .line 401
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->a(Ljava/util/Collection;)Le/a/b0/i/e/b;

    const/4 v0, 0x1

    .line 402
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 403
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    .line 404
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_im_unsupported_events"

    .line 405
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v1, "msg/msg_im_unsupported_events"

    .line 406
    iput-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v1, 0x1

    .line 407
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 408
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    .line 409
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "msg_im_unprocessed_events"

    .line 410
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const-string v1, "msg/msg_im_unprocessed_events"

    .line 411
    iput-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v1, 0x1

    .line 412
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 413
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    .line 414
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "contact_settings"

    .line 415
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    .line 416
    iput-object v0, v1, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 417
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 418
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    const/4 v0, 0x5

    .line 419
    iput v0, v1, Le/a/b0/i/e/b;->i:I

    .line 420
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "voip_history_peers"

    .line 421
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    .line 422
    iput-object v0, v1, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 423
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 424
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    const/4 v0, 0x5

    .line 425
    iput v0, v1, Le/a/b0/i/e/b;->i:I

    .line 426
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "voip_history_with_aggregated_contacts_shallow"

    .line 427
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    .line 428
    iput-object v0, v1, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 429
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    const/4 v0, 0x1

    .line 430
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    .line 431
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "message_notifications_analytics"

    .line 432
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v0

    const/4 v1, 0x0

    .line 433
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    const/4 v1, 0x1

    .line 434
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    new-instance v1, Le/a/m0/d0;

    invoke-direct {v1}, Le/a/m0/d0;-><init>()V

    .line 435
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    const-string v1, "group_conversation_search"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 436
    invoke-static {v0, v8, v1, v2, v3}, Le/d/c/a/a;->s1(Le/a/b0/i/e/b;Le/a/b0/i/e/d;Ljava/lang/String;ZZ)Le/a/b0/i/e/b;

    move-result-object v0

    .line 437
    new-instance v1, Le/a/m0/o;

    invoke-direct {v1}, Le/a/m0/o;-><init>()V

    .line 438
    iput-object v1, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    .line 439
    invoke-virtual {v0}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "screened_calls"

    .line 440
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    .line 441
    iput-object v0, v1, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 442
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 443
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    const/4 v0, 0x5

    .line 444
    iput v0, v1, Le/a/b0/i/e/b;->i:I

    .line 445
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    const-string v0, "screened_call_messages"

    .line 446
    invoke-virtual {v8, v0}, Le/a/b0/i/e/d;->a(Ljava/lang/String;)Le/a/b0/i/e/b;

    move-result-object v1

    .line 447
    iput-object v0, v1, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 448
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->f(Z)Le/a/b0/i/e/b;

    .line 449
    invoke-virtual {v1, v0}, Le/a/b0/i/e/b;->e(Z)Le/a/b0/i/e/b;

    const/4 v0, 0x5

    .line 450
    iput v0, v1, Le/a/b0/i/e/b;->i:I

    .line 451
    invoke-virtual {v1}, Le/a/b0/i/e/b;->c()Le/a/b0/i/e/d;

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/content/TruecallerContentProvider;->v()V

    .line 453
    new-instance v0, Le/a/b0/i/e/c;

    iget-object v1, v8, Le/a/b0/i/e/d;->e:Landroid/net/Uri;

    iget-object v2, v8, Le/a/b0/i/e/d;->a:Landroid/util/SparseArray;

    iget-object v3, v8, Le/a/b0/i/e/d;->b:Landroid/content/UriMatcher;

    iget-object v4, v8, Le/a/b0/i/e/d;->c:Le/a/b0/i/e/e;

    invoke-direct {v0, v1, v2, v3, v4}, Le/a/b0/i/e/c;-><init>(Landroid/net/Uri;Landroid/util/SparseArray;Landroid/content/UriMatcher;Le/a/b0/i/e/e;)V

    return-object v0

    .line 454
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Database factory already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final u()Lcom/truecaller/content/TruecallerContentProvider$AggregationState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/content/TruecallerContentProvider;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/content/TruecallerContentProvider$AggregationState;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/content/TruecallerContentProvider$AggregationState;->NONE:Lcom/truecaller/content/TruecallerContentProvider$AggregationState;

    :cond_0
    return-object v0
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w(Lcom/truecaller/content/TruecallerContentProvider$AggregationState;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/content/TruecallerContentProvider;->u()Lcom/truecaller/content/TruecallerContentProvider$AggregationState;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/truecaller/content/TruecallerContentProvider;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
