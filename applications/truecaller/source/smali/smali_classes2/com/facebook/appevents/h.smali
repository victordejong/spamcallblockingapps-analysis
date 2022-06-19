.class public final synthetic Lcom/facebook/appevents/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/h;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/h;

    invoke-direct {v0}, Lcom/facebook/appevents/h;-><init>()V

    sput-object v0, Lcom/facebook/appevents/h;->a:Lcom/facebook/appevents/h;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    sget-object v1, Lcom/facebook/appevents/t;->a:Lcom/facebook/appevents/t;

    .line 3
    const-class v1, Lcom/facebook/appevents/t;

    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    sget-object v2, Lcom/facebook/appevents/t;->d:Lcom/facebook/appevents/s;

    invoke-virtual {v2}, Lcom/facebook/appevents/s;->e()Ljava/util/Set;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v2, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 5
    :goto_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/p;

    .line 6
    iget-object v2, v2, Lcom/facebook/appevents/p;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    sget-object v2, Lcom/facebook/internal/d0;->a:Lcom/facebook/internal/d0;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/facebook/internal/d0;->f(Ljava/lang/String;Z)Lcom/facebook/internal/c0;

    goto :goto_2

    :cond_2
    return-void
.end method
