.class public Lcom/truecaller/network/search/BulkSearcherImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/network/search/BulkSearcherImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/truecaller/network/search/BulkSearcherImpl;


# direct methods
.method public constructor <init>(Lcom/truecaller/network/search/BulkSearcherImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->a:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    .line 4
    iget-object v1, v0, Lcom/truecaller/network/search/BulkSearcherImpl;->f:Landroid/os/Handler;

    .line 5
    iget v0, v0, Lcom/truecaller/network/search/BulkSearcherImpl;->d:I

    int-to-long v2, v0

    .line 6
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    .line 8
    iget-object v0, v0, Lcom/truecaller/network/search/BulkSearcherImpl;->k:Ljava/util/Set;

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->a:Landroid/os/AsyncTask;

    .line 11
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    .line 12
    iget-object v1, v1, Lcom/truecaller/network/search/BulkSearcherImpl;->m:Ljava/util/LinkedHashMap;

    .line 13
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "Triggering bulk search for "

    .line 14
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    .line 15
    iget-object v2, v2, Lcom/truecaller/network/search/BulkSearcherImpl;->m:Ljava/util/LinkedHashMap;

    .line 16
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    .line 18
    iget-object v1, v1, Lcom/truecaller/network/search/BulkSearcherImpl;->a:Landroid/content/Context;

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Le/a/b0/g/a;

    .line 20
    invoke-virtual {v1}, Le/a/b0/g/a;->W()Z

    move-result v1

    if-nez v1, :cond_2

    .line 21
    iget-object v1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    invoke-virtual {v1, v0}, Lcom/truecaller/network/search/BulkSearcherImpl;->f(Ljava/util/Collection;)V

    return-void

    .line 22
    :cond_2
    new-instance v12, Le/a/f4/g/i;

    iget-object v1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    .line 23
    iget-object v1, v1, Lcom/truecaller/network/search/BulkSearcherImpl;->a:Landroid/content/Context;

    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    .line 25
    iget-object v3, v3, Lcom/truecaller/network/search/BulkSearcherImpl;->i:Ljava/lang/String;

    .line 26
    invoke-direct {v12, v1, v2, v3}, Le/a/f4/g/i;-><init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    .line 27
    iget-object v1, v1, Lcom/truecaller/network/search/BulkSearcherImpl;->m:Ljava/util/LinkedHashMap;

    .line 28
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 29
    iget-object v2, v12, Le/a/f4/g/i;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 30
    iget-object v1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    .line 31
    iget v1, v1, Lcom/truecaller/network/search/BulkSearcherImpl;->h:I

    .line 32
    iput v1, v12, Le/a/f4/g/i;->g:I

    .line 33
    invoke-virtual {v12}, Le/a/f4/g/i;->b()Le/a/f4/g/i;

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, v12, Le/a/f4/g/i;->e:Z

    .line 35
    iput-boolean v1, v12, Le/a/f4/g/i;->f:Z

    .line 36
    iget-object v1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    .line 37
    iget-object v2, v1, Lcom/truecaller/network/search/BulkSearcherImpl;->j:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 38
    iget-object v2, v1, Lcom/truecaller/network/search/BulkSearcherImpl;->k:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    iget-object v1, v1, Lcom/truecaller/network/search/BulkSearcherImpl;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 40
    iget-object v1, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->b:Lcom/truecaller/network/search/BulkSearcherImpl;

    new-instance v10, Lcom/truecaller/network/search/BulkSearcherImpl$c;

    invoke-direct {v10, v1, v0}, Lcom/truecaller/network/search/BulkSearcherImpl$c;-><init>(Lcom/truecaller/network/search/BulkSearcherImpl;Ljava/util/List;)V

    invoke-static {v1, v10}, Lcom/truecaller/network/search/BulkSearcherImpl;->e(Lcom/truecaller/network/search/BulkSearcherImpl;Le/a/f4/g/p$c;)Le/a/f4/g/p$c;

    .line 41
    new-instance v0, Le/a/f4/g/q;

    iget-object v3, v12, Le/a/f4/g/i;->a:Landroid/content/Context;

    iget-object v1, v12, Le/a/f4/g/i;->d:Ljava/util/Set;

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v12, Le/a/f4/g/i;->h:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v2, v0

    move-object v7, v12

    invoke-direct/range {v2 .. v12}, Le/a/f4/g/q;-><init>(Landroid/content/Context;Le/a/j4/a/d;ZZLe/a/f4/i/b$a;Ljava/lang/String;Ljava/lang/String;Le/a/f4/g/p$c;Le/a/f4/g/p$b;Le/a/f4/i/f;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 42
    sget-object v2, Le/a/j4/a/b;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    iput-object v0, p0, Lcom/truecaller/network/search/BulkSearcherImpl$b;->a:Landroid/os/AsyncTask;

    return-void
.end method
