.class public Lcom/squareup/picasso/Picasso;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/Picasso$d;,
        Lcom/squareup/picasso/Picasso$b;,
        Lcom/squareup/picasso/Picasso$e;,
        Lcom/squareup/picasso/Picasso$f;,
        Lcom/squareup/picasso/Picasso$c;
    }
.end annotation


# static fields
.field public static final o:Landroid/os/Handler;

.field public static volatile p:Lcom/squareup/picasso/Picasso;


# instance fields
.field public final a:Lcom/squareup/picasso/Picasso$c;

.field public final b:Lcom/squareup/picasso/Picasso$f;

.field public final c:Lcom/squareup/picasso/Picasso$b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/p/b/z;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/content/Context;

.field public final f:Le/p/b/i;

.field public final g:Le/p/b/d;

.field public final h:Le/p/b/b0;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Le/p/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Le/p/b/h;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Landroid/graphics/Bitmap$Config;

.field public m:Z

.field public volatile n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/squareup/picasso/Picasso$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/picasso/Picasso$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/squareup/picasso/Picasso;->o:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/squareup/picasso/Picasso;->p:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/p/b/i;Le/p/b/d;Lcom/squareup/picasso/Picasso$c;Lcom/squareup/picasso/Picasso$f;Ljava/util/List;Le/p/b/b0;Landroid/graphics/Bitmap$Config;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/p/b/i;",
            "Le/p/b/d;",
            "Lcom/squareup/picasso/Picasso$c;",
            "Lcom/squareup/picasso/Picasso$f;",
            "Ljava/util/List<",
            "Le/p/b/z;",
            ">;",
            "Le/p/b/b0;",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/squareup/picasso/Picasso;->f:Le/p/b/i;

    .line 4
    iput-object p3, p0, Lcom/squareup/picasso/Picasso;->g:Le/p/b/d;

    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Lcom/squareup/picasso/Picasso;->a:Lcom/squareup/picasso/Picasso$c;

    .line 6
    iput-object p5, p0, Lcom/squareup/picasso/Picasso;->b:Lcom/squareup/picasso/Picasso$f;

    .line 7
    iput-object p3, p0, Lcom/squareup/picasso/Picasso;->l:Landroid/graphics/Bitmap$Config;

    .line 8
    new-instance p3, Ljava/util/ArrayList;

    const/4 p4, 0x7

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    new-instance p4, Le/p/b/a0;

    invoke-direct {p4, p1}, Le/p/b/a0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p4, Le/p/b/f;

    invoke-direct {p4, p1}, Le/p/b/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance p4, Le/p/b/r;

    invoke-direct {p4, p1}, Le/p/b/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p4, Le/p/b/g;

    invoke-direct {p4, p1}, Le/p/b/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance p4, Le/p/b/b;

    invoke-direct {p4, p1}, Le/p/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p4, Le/p/b/l;

    invoke-direct {p4, p1}, Le/p/b/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p1, Le/p/b/t;

    iget-object p2, p2, Le/p/b/i;->d:Le/p/b/j;

    invoke-direct {p1, p2, p7}, Le/p/b/t;-><init>(Le/p/b/j;Le/p/b/b0;)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->d:Ljava/util/List;

    .line 17
    iput-object p7, p0, Lcom/squareup/picasso/Picasso;->h:Le/p/b/b0;

    .line 18
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    .line 19
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->j:Ljava/util/Map;

    .line 20
    iput-boolean p9, p0, Lcom/squareup/picasso/Picasso;->m:Z

    .line 21
    iput-boolean p10, p0, Lcom/squareup/picasso/Picasso;->n:Z

    .line 22
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/Picasso;->k:Ljava/lang/ref/ReferenceQueue;

    .line 23
    new-instance p2, Lcom/squareup/picasso/Picasso$b;

    sget-object p3, Lcom/squareup/picasso/Picasso;->o:Landroid/os/Handler;

    invoke-direct {p2, p1, p3}, Lcom/squareup/picasso/Picasso$b;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/squareup/picasso/Picasso;->c:Lcom/squareup/picasso/Picasso$b;

    .line 24
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static get()Lcom/squareup/picasso/Picasso;
    .locals 17

    .line 1
    sget-object v0, Lcom/squareup/picasso/Picasso;->p:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_2

    .line 2
    const-class v1, Lcom/squareup/picasso/Picasso;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/squareup/picasso/Picasso;->p:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/squareup/picasso/PicassoProvider;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    new-instance v6, Le/p/b/u;

    invoke-direct {v6, v0}, Le/p/b/u;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v9, Le/p/b/p;

    invoke-direct {v9, v0}, Le/p/b/p;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v4, Le/p/b/w;

    invoke-direct {v4}, Le/p/b/w;-><init>()V

    .line 9
    sget-object v10, Lcom/squareup/picasso/Picasso$f;->a:Lcom/squareup/picasso/Picasso$f;

    .line 10
    new-instance v11, Le/p/b/b0;

    invoke-direct {v11, v9}, Le/p/b/b0;-><init>(Le/p/b/d;)V

    .line 11
    new-instance v12, Le/p/b/i;

    sget-object v5, Lcom/squareup/picasso/Picasso;->o:Landroid/os/Handler;

    move-object v2, v12

    move-object v3, v0

    move-object v7, v9

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Le/p/b/i;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Le/p/b/j;Le/p/b/d;Le/p/b/b0;)V

    .line 12
    new-instance v13, Lcom/squareup/picasso/Picasso;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v2, v13

    move-object v3, v0

    move-object v4, v12

    move-object v5, v9

    move-object v7, v10

    move-object v9, v11

    move-object v10, v14

    move v11, v15

    move/from16 v12, v16

    invoke-direct/range {v2 .. v12}, Lcom/squareup/picasso/Picasso;-><init>(Landroid/content/Context;Le/p/b/i;Le/p/b/d;Lcom/squareup/picasso/Picasso$c;Lcom/squareup/picasso/Picasso$f;Ljava/util/List;Le/p/b/b0;Landroid/graphics/Bitmap$Config;ZZ)V

    .line 13
    sput-object v13, Lcom/squareup/picasso/Picasso;->p:Lcom/squareup/picasso/Picasso;

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "context == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 16
    :cond_2
    :goto_1
    sget-object v0, Lcom/squareup/picasso/Picasso;->p:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Le/p/b/f0;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/p/b/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Le/p/b/a;->a()V

    .line 4
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->f:Le/p/b/i;

    .line 5
    iget-object v1, v1, Le/p/b/i;->i:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Landroid/widget/ImageView;

    .line 8
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->j:Ljava/util/Map;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/p/b/h;

    if-eqz p1, :cond_2

    .line 10
    iget-object v0, p1, Le/p/b/h;->a:Le/p/b/y;

    const/4 v1, 0x0

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput-object v1, p1, Le/p/b/h;->c:Le/p/b/e;

    .line 13
    iget-object v0, p1, Le/p/b/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p1, Le/p/b/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 16
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    :goto_0
    return-void

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Method call should happen from the main thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$d;Le/p/b/a;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-boolean v0, p3, Le/p/b/a;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p3, Le/p/b/a;->k:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    invoke-virtual {p3}, Le/p/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "Main"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p3, p1, p2}, Le/p/b/a;->b(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$d;)V

    .line 5
    iget-boolean p1, p0, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p3, Le/p/b/a;->b:Le/p/b/x;

    invoke-virtual {p1}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "completed"

    invoke-static {v0, p3, p1, p2}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "LoadedFrom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 8
    :cond_3
    invoke-virtual {p3, p4}, Le/p/b/a;->c(Ljava/lang/Exception;)V

    .line 9
    iget-boolean p1, p0, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p3, Le/p/b/a;->b:Le/p/b/x;

    invoke-virtual {p1}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "errored"

    invoke-static {v0, p3, p1, p2}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Le/p/b/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Le/p/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->f:Le/p/b/i;

    .line 6
    iget-object v0, v0, Le/p/b/i;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d(Landroid/net/Uri;)Le/p/b/y;
    .locals 2

    .line 1
    new-instance v0, Le/p/b/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/p/b/y;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)Le/p/b/y;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Le/p/b/y;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Le/p/b/y;-><init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/picasso/Picasso;->d(Landroid/net/Uri;)Le/p/b/y;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path must not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->g:Le/p/b/d;

    invoke-interface {v0, p1}, Le/p/b/d;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->h:Le/p/b/b0;

    .line 3
    iget-object v0, v0, Le/p/b/b0;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/Picasso;->h:Le/p/b/b0;

    .line 5
    iget-object v0, v0, Le/p/b/b0;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object p1
.end method
