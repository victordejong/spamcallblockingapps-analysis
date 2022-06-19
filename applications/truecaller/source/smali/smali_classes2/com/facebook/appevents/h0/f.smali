.class public final Lcom/facebook/appevents/h0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/h0/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0011H\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u000fH\u0002J\u0008\u0010\u001a\u001a\u00020\u000fH\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/appevents/aam/MetadataViewObserver;",
        "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "activityWeakReference",
        "Ljava/lang/ref/WeakReference;",
        "isTracking",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "processedText",
        "",
        "",
        "uiThreadHandler",
        "Landroid/os/Handler;",
        "onGlobalFocusChanged",
        "",
        "oldView",
        "Landroid/view/View;",
        "newView",
        "process",
        "view",
        "processEditText",
        "runOnUIThread",
        "runnable",
        "Ljava/lang/Runnable;",
        "startTracking",
        "stopTracking",
        "Companion",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final e:Lcom/facebook/appevents/h0/f$a;

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/appevents/h0/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/appevents/h0/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/appevents/h0/f$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/facebook/appevents/h0/f;->e:Lcom/facebook/appevents/h0/f$a;

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/h0/f;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ls1/z/c/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/facebook/appevents/h0/f;->a:Ljava/util/Set;

    .line 3
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/facebook/appevents/h0/f;->b:Landroid/os/Handler;

    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/facebook/appevents/h0/f;->c:Ljava/lang/ref/WeakReference;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/facebook/appevents/h0/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    new-instance v0, Lcom/facebook/appevents/h0/b;

    invoke-direct {v0, p1, p0}, Lcom/facebook/appevents/h0/b;-><init>(Landroid/view/View;Lcom/facebook/appevents/h0/f;)V

    .line 2
    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/facebook/appevents/h0/b;->run()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/facebook/appevents/h0/f;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_2
    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 7
    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 14

    sget-object v0, Lcom/facebook/appevents/h0/f;->e:Lcom/facebook/appevents/h0/f$a;

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {v1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/facebook/appevents/h0/f;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x64

    if-le v2, v5, :cond_2

    goto/16 :goto_a

    .line 3
    :cond_2
    iget-object v2, p0, Lcom/facebook/appevents/h0/f;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/facebook/appevents/h0/d;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v5

    .line 6
    sget-object v6, Lcom/facebook/appevents/h0/e;->d:Lcom/facebook/appevents/h0/e;

    .line 7
    new-instance v6, Ljava/util/HashSet;

    invoke-static {}, Lcom/facebook/appevents/h0/e;->a()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v7

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/appevents/h0/e;

    .line 9
    invoke-virtual {v9}, Lcom/facebook/appevents/h0/e;->d()Ljava/lang/String;

    move-result-object v10

    const-string v11, "r2"

    .line 10
    invoke-static {v11, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 11
    new-instance v10, Ls1/f0/h;

    const-string v11, "[^\\d.]"

    invoke-direct {v10, v11}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    const-string v11, ""

    invoke-virtual {v10, v1, v11}, Ls1/f0/h;->e(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_4
    move-object v10, v1

    .line 12
    :goto_2
    invoke-static {v9}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v11, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    :try_start_1
    iget-object v11, v9, Lcom/facebook/appevents/h0/e;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v11

    :try_start_2
    invoke-static {v11, v9}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_3
    move-object v11, v7

    .line 14
    :goto_4
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    move v11, v3

    goto :goto_5

    :cond_6
    move v11, v4

    :goto_5
    if-eqz v11, :cond_9

    .line 15
    invoke-static {v9}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v11, :cond_7

    goto :goto_6

    .line 16
    :cond_7
    :try_start_3
    iget-object v11, v9, Lcom/facebook/appevents/h0/e;->b:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v11

    :try_start_4
    invoke-static {v11, v9}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_6
    move-object v11, v7

    .line 17
    :goto_7
    const-class v12, Lcom/facebook/appevents/h0/d;

    invoke-static {v12}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v13, :cond_8

    goto :goto_8

    :cond_8
    :try_start_5
    const-string v13, "text"

    invoke-static {v10, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "rule"

    invoke-static {v11, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v13, Ls1/f0/h;

    invoke-direct {v13, v11}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v11

    :try_start_6
    invoke-static {v11, v12}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_8
    move v11, v4

    :goto_9
    if-nez v11, :cond_9

    goto :goto_1

    .line 19
    :cond_9
    invoke-virtual {v9}, Lcom/facebook/appevents/h0/e;->c()Ljava/util/List;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/facebook/appevents/h0/d;->d(Ljava/util/List;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 20
    invoke-virtual {v9}, Lcom/facebook/appevents/h0/e;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v2, v9, v10}, Lcom/facebook/appevents/h0/f$a;->a(Lcom/facebook/appevents/h0/f$a;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    if-nez v8, :cond_b

    .line 21
    invoke-static {p1}, Lcom/facebook/appevents/h0/d;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v8

    .line 22
    :cond_b
    invoke-virtual {v9}, Lcom/facebook/appevents/h0/e;->c()Ljava/util/List;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/facebook/appevents/h0/d;->d(Ljava/util/List;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 23
    invoke-virtual {v9}, Lcom/facebook/appevents/h0/e;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v2, v9, v10}, Lcom/facebook/appevents/h0/f$a;->a(Lcom/facebook/appevents/h0/f$a;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 24
    :cond_c
    invoke-static {v2}, Lcom/facebook/appevents/d0;->b(Ljava/util/Map;)V

    :cond_d
    :goto_a
    return-void

    .line 25
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    .line 26
    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/appevents/h0/f;->a(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p0, p2}, Lcom/facebook/appevents/h0/f;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 3
    :goto_1
    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-void
.end method
