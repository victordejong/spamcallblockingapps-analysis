.class public Le/m/a/h/a/g/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/g/b;


# static fields
.field public static final o:J

.field public static final synthetic p:I


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Landroid/content/Context;

.field public final c:Le/m/a/h/a/g/o0;

.field public final d:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/g/g/p;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/m/a/h/a/d/a1;

.field public final f:Le/m/a/h/a/d/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f<",
            "Le/m/a/h/a/g/d;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/m/a/h/a/d/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f<",
            "Le/m/a/h/a/g/d;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Le/m/a/h/a/g/e0;

.field public final j:Ljava/io/File;

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/m/a/h/a/g/d;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Le/m/a/h/a/g/g/a;->o:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Le/m/a/h/a/g/o0;Le/m/a/h/a/d/f1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Le/m/a/h/a/g/o0;",
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/g/g/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ln3/g0/y;->u2()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Le/m/a/h/a/d/a1;

    invoke-direct {v1, p1}, Le/m/a/h/a/d/a1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Le/m/a/h/a/g/g/a;->a:Landroid/os/Handler;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Le/m/a/h/a/g/g/a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/HashSet;

    .line 4
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Le/m/a/h/a/g/g/a;->l:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    .line 5
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Le/m/a/h/a/g/g/a;->m:Ljava/util/Set;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    .line 6
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Le/m/a/h/a/g/g/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Le/m/a/h/a/g/g/a;->b:Landroid/content/Context;

    iput-object p2, p0, Le/m/a/h/a/g/g/a;->j:Ljava/io/File;

    iput-object p3, p0, Le/m/a/h/a/g/g/a;->c:Le/m/a/h/a/g/o0;

    iput-object p4, p0, Le/m/a/h/a/g/g/a;->d:Le/m/a/h/a/d/f1;

    iput-object v0, p0, Le/m/a/h/a/g/g/a;->h:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Le/m/a/h/a/g/g/a;->e:Le/m/a/h/a/d/a1;

    new-instance p1, Le/m/a/h/a/d/f;

    .line 7
    invoke-direct {p1}, Le/m/a/h/a/d/f;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/g/a;->g:Le/m/a/h/a/d/f;

    new-instance p1, Le/m/a/h/a/d/f;

    .line 8
    invoke-direct {p1}, Le/m/a/h/a/d/f;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/g/a;->f:Le/m/a/h/a/d/f;

    .line 9
    sget-object p1, Le/m/a/h/a/g/l0;->a:Le/m/a/h/a/g/l0;

    iput-object p1, p0, Le/m/a/h/a/g/g/a;->i:Le/m/a/h/a/g/e0;

    return-void
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\.config\\."

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method


# virtual methods
.method public final a(Le/m/a/h/a/g/c;)Le/m/a/h/a/h/r;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/g/c;",
            ")",
            "Le/m/a/h/a/h/r<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    :try_start_0
    new-instance v1, Le/m/a/h/a/g/g/g;

    .line 1
    invoke-direct {v1, v0}, Le/m/a/h/a/g/g/g;-><init>(Le/m/a/h/a/g/c;)V

    invoke-virtual {v9, v1}, Le/m/a/h/a/g/g/a;->i(Le/m/a/h/a/g/g/n;)Le/m/a/h/a/g/d;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Le/m/a/h/a/g/d;->g()I

    move-result v1
    :try_end_0
    .catch Le/m/a/h/a/g/a; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v10, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, v0, Le/m/a/h/a/g/c;->b:Ljava/util/List;

    .line 4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 5
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    .line 6
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v9, Le/m/a/h/a/g/g/a;->j:Ljava/io/File;

    .line 8
    sget-object v4, Le/m/a/h/a/g/g/i;->a:Le/m/a/h/a/g/g/i;

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v0, -0x5

    .line 9
    invoke-virtual {v9, v0}, Le/m/a/h/a/g/g/a;->j(I)Le/m/a/h/a/h/r;

    move-result-object v0

    return-object v0

    :cond_1
    array-length v4, v3

    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    :goto_1
    if-ge v8, v4, :cond_10

    .line 10
    aget-object v15, v3, v8

    .line 11
    invoke-static {v15}, Ln3/g0/y;->r2(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v5}, Le/m/a/h/a/g/g/a;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v7, v0, Le/m/a/h/a/g/c;->a:Ljava/util/List;

    .line 15
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Language information could not be found. Make sure you are using the target application context, not the tests context, and the app is built as a bundle."

    if-eqz v6, :cond_a

    .line 16
    invoke-static {v5}, Le/m/a/h/a/g/g/a;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v14, Ljava/util/HashSet;

    move-object/from16 v17, v3

    iget-object v3, v9, Le/m/a/h/a/g/g/a;->e:Le/m/a/h/a/d/a1;

    .line 17
    iget-object v3, v3, Le/m/a/h/a/d/a1;->a:Landroid/content/Context;

    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    move/from16 v18, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v19, v1

    const/16 v1, 0x18

    if-lt v4, v1, :cond_2

    .line 19
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v20, v2

    const/4 v4, 0x0

    .line 21
    :goto_2
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v4, v2, :cond_3

    .line 22
    invoke-virtual {v1, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Le/m/a/h/a/d/a1;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v20, v2

    .line 23
    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Le/m/a/h/a/d/a1;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 24
    :cond_3
    invoke-direct {v14, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 25
    iget-object v1, v9, Le/m/a/h/a/g/g/a;->c:Le/m/a/h/a/g/o0;

    .line 26
    invoke-virtual {v1}, Le/m/a/h/a/g/o0;->a()Le/m/a/h/a/g/h0;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    .line 27
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/m/a/h/a/g/h0;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    .line 28
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 29
    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 30
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/util/HashSet;

    .line 31
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 32
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v14, "_"

    .line 33
    invoke-virtual {v6, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v16, v4

    const/4 v4, -0x1

    invoke-virtual {v6, v14, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    move-object v6, v4

    goto :goto_5

    :cond_5
    move-object/from16 v16, v4

    :goto_5
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v16

    goto :goto_4

    :cond_6
    iget-object v4, v9, Le/m/a/h/a/g/g/a;->m:Ljava/util/Set;

    .line 34
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-interface {v3, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/HashSet;

    .line 36
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 37
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 39
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 40
    :cond_8
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 41
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_7

    .line 42
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    .line 44
    :cond_b
    iget-object v1, v0, Le/m/a/h/a/g/c;->b:Ljava/util/List;

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v9, Le/m/a/h/a/g/g/a;->l:Ljava/util/Set;

    .line 46
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, ""

    const-string v4, "base"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v3, v9, Le/m/a/h/a/g/g/a;->c:Le/m/a/h/a/g/o0;

    .line 49
    invoke-virtual {v3}, Le/m/a/h/a/g/o0;->a()Le/m/a/h/a/g/h0;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 50
    invoke-virtual {v3, v2}, Le/m/a/h/a/g/h0;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 52
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    move-object v6, v2

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 53
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 54
    :cond_d
    :goto_7
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v1

    add-long/2addr v12, v1

    .line 55
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    goto/16 :goto_1

    .line 56
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move/from16 v19, v1

    move-object/from16 v20, v2

    .line 58
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 59
    iget-object v2, v0, Le/m/a/h/a/g/c;->a:Ljava/util/List;

    .line 60
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 61
    iget-object v1, v0, Le/m/a/h/a/g/c;->a:Ljava/util/List;

    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    iget-object v1, v9, Le/m/a/h/a/g/g/a;->d:Le/m/a/h/a/d/f1;

    .line 63
    invoke-interface {v1}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/h/a/g/g/p;

    .line 64
    invoke-virtual {v1}, Le/m/a/h/a/g/g/p;->b()Ljava/util/Map;

    move-result-object v1

    .line 65
    iget-object v2, v0, Le/m/a/h/a/g/c;->a:Ljava/util/List;

    const/4 v3, 0x0

    .line 66
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_12

    :cond_11
    iget-object v1, v9, Le/m/a/h/a/g/g/a;->d:Le/m/a/h/a/d/f1;

    .line 67
    invoke-interface {v1}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/h/a/g/g/p;

    invoke-virtual {v1}, Le/m/a/h/a/g/g/p;->a()Ljava/lang/Integer;

    move-result-object v1

    :cond_12
    if-eqz v1, :cond_13

    .line 68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v9, v0}, Le/m/a/h/a/g/g/a;->j(I)Le/m/a/h/a/h/r;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v1, Ljava/util/HashSet;

    .line 69
    iget-object v2, v0, Le/m/a/h/a/g/c;->a:Ljava/util/List;

    .line 70
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v2, v20

    invoke-interface {v2, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, -0x2

    .line 71
    invoke-virtual {v9, v0}, Le/m/a/h/a/g/g/a;->j(I)Le/m/a/h/a/h/r;

    move-result-object v0

    return-object v0

    :cond_14
    const-wide/16 v1, 0x0

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 73
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 74
    iget-object v6, v0, Le/m/a/h/a/g/c;->a:Ljava/util/List;

    .line 75
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v7, v0

    move-object v8, v10

    .line 76
    invoke-virtual/range {v1 .. v8}, Le/m/a/h/a/g/g/a;->n(IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)Z

    iget-object v1, v9, Le/m/a/h/a/g/g/a;->h:Ljava/util/concurrent/Executor;

    new-instance v2, Le/m/a/h/a/g/g/l;

    .line 77
    invoke-direct {v2, v9, v11, v10}, Le/m/a/h/a/g/g/l;-><init>(Le/m/a/h/a/g/g/a;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    invoke-static {v0}, Ln3/g0/y;->B2(Ljava/lang/Object;)Le/m/a/h/a/h/r;

    move-result-object v0

    return-object v0

    :cond_15
    const/16 v0, -0x64

    .line 79
    :try_start_1
    invoke-virtual {v9, v0}, Le/m/a/h/a/g/g/a;->j(I)Le/m/a/h/a/h/r;

    move-result-object v0
    :try_end_1
    .catch Le/m/a/h/a/g/a; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 80
    iget v0, v0, Le/m/a/h/a/g/a;->a:I

    .line 81
    invoke-virtual {v9, v0}, Le/m/a/h/a/g/g/a;->j(I)Le/m/a/h/a/h/r;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/List;)Le/m/a/h/a/h/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Le/m/a/h/a/h/r<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance p1, Le/m/a/h/a/g/a;

    const/4 v0, -0x5

    .line 1
    invoke-direct {p1, v0}, Le/m/a/h/a/g/a;-><init>(I)V

    invoke-static {p1}, Ln3/g0/y;->m2(Ljava/lang/Exception;)Le/m/a/h/a/h/r;

    move-result-object p1

    return-object p1
.end method

.method public final c(Le/m/a/h/a/g/e;)V
    .locals 2

    iget-object v0, p0, Le/m/a/h/a/g/g/a;->g:Le/m/a/h/a/d/f;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Le/m/a/h/a/d/f;->a:Ljava/util/Set;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final d(Le/m/a/h/a/g/e;)V
    .locals 2

    iget-object v0, p0, Le/m/a/h/a/g/g/a;->g:Le/m/a/h/a/d/f;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Le/m/a/h/a/d/f;->a:Ljava/util/Set;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final e(Le/m/a/h/a/g/d;Landroid/app/Activity;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final f(I)Le/m/a/h/a/h/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/m/a/h/a/h/r<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Le/m/a/h/a/g/g/e;

    .line 1
    invoke-direct {v0, p1}, Le/m/a/h/a/g/g/e;-><init>(I)V

    .line 2
    invoke-virtual {p0, v0}, Le/m/a/h/a/g/g/a;->i(Le/m/a/h/a/g/g/n;)Le/m/a/h/a/g/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/m/a/h/a/g/g/a;->a:Landroid/os/Handler;

    new-instance v1, Le/m/a/h/a/g/g/k;

    .line 4
    invoke-direct {v1, p0, p1}, Le/m/a/h/a/g/g/k;-><init>(Le/m/a/h/a/g/g/a;Le/m/a/h/a/g/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Ln3/g0/y;->B2(Ljava/lang/Object;)Le/m/a/h/a/h/r;

    move-result-object p1
    :try_end_0
    .catch Le/m/a/h/a/g/a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Ln3/g0/y;->m2(Ljava/lang/Exception;)Le/m/a/h/a/h/r;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    .line 1
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Le/m/a/h/a/g/g/a;->c:Le/m/a/h/a/g/o0;

    .line 2
    invoke-virtual {v1}, Le/m/a/h/a/g/o0;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Le/m/a/h/a/g/g/a;->l:Ljava/util/Set;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final h()Le/m/a/h/a/g/d;
    .locals 1

    iget-object v0, p0, Le/m/a/h/a/g/g/a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/h/a/g/d;

    return-object v0
.end method

.method public final declared-synchronized i(Le/m/a/h/a/g/g/n;)Le/m/a/h/a/g/d;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/m/a/h/a/g/g/a;->h()Le/m/a/h/a/g/d;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Le/m/a/h/a/g/g/n;->a(Le/m/a/h/a/g/d;)Le/m/a/h/a/g/d;

    move-result-object p1

    iget-object v1, p0, Le/m/a/h/a/g/g/a;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j(I)Le/m/a/h/a/h/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/m/a/h/a/h/r<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Le/m/a/h/a/g/g/f;

    .line 1
    invoke-direct {v0, p1}, Le/m/a/h/a/g/g/f;-><init>(I)V

    invoke-virtual {p0, v0}, Le/m/a/h/a/g/g/a;->i(Le/m/a/h/a/g/g/n;)Le/m/a/h/a/g/d;

    new-instance v0, Le/m/a/h/a/g/a;

    .line 2
    invoke-direct {v0, p1}, Le/m/a/h/a/g/a;-><init>(I)V

    invoke-static {v0}, Ln3/g0/y;->m2(Ljava/lang/Exception;)Le/m/a/h/a/h/r;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/util/List;Ljava/util/List;Ljava/util/List;JZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZ)V"
        }
    .end annotation

    move-object v8, p0

    iget-object v0, v8, Le/m/a/h/a/g/g/a;->i:Le/m/a/h/a/g/e0;

    .line 1
    check-cast v0, Le/m/a/h/a/g/l0;

    invoke-virtual {v0}, Le/m/a/h/a/g/l0;->a()Le/m/a/h/a/g/f0;

    move-result-object v9

    new-instance v10, Le/m/a/h/a/g/g/m;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Le/m/a/h/a/g/g/m;-><init>(Le/m/a/h/a/g/g/a;Ljava/util/List;Ljava/util/List;JZLjava/util/List;)V

    move-object v0, p1

    .line 2
    invoke-interface {v9, p1, v10}, Le/m/a/h/a/g/f0;->a(Ljava/util/List;Le/m/a/h/a/g/d0;)V

    return-void
.end method

.method public final m(Ljava/util/List;Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/g/g/a;->l:Ljava/util/Set;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Le/m/a/h/a/g/g/a;->m:Ljava/util/Set;

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, v4

    .line 4
    invoke-virtual/range {v0 .. v7}, Le/m/a/h/a/g/g/a;->n(IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)Z

    return-void
.end method

.method public final n(IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object v0, p0

    new-instance v9, Le/m/a/h/a/g/g/h;

    move-object v1, v9

    move-object/from16 v2, p6

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p7

    .line 1
    invoke-direct/range {v1 .. v8}, Le/m/a/h/a/g/g/h;-><init>(Ljava/lang/Integer;IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v9}, Le/m/a/h/a/g/g/a;->i(Le/m/a/h/a/g/g/n;)Le/m/a/h/a/g/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v0, Le/m/a/h/a/g/g/a;->a:Landroid/os/Handler;

    new-instance v3, Le/m/a/h/a/g/g/k;

    .line 3
    invoke-direct {v3, p0, v1}, Le/m/a/h/a/g/g/k;-><init>(Le/m/a/h/a/g/g/a;Le/m/a/h/a/g/d;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
