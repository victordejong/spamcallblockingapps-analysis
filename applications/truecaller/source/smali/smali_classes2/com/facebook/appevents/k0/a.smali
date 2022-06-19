.class public final synthetic Lcom/facebook/appevents/k0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/k0/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/k0/a;

    invoke-direct {v0}, Lcom/facebook/appevents/k0/a;-><init>()V

    sput-object v0, Lcom/facebook/appevents/k0/a;->a:Lcom/facebook/appevents/k0/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/facebook/appevents/k0/k;->a:Lcom/facebook/appevents/k0/k;

    .line 3
    sget-object v2, Lcom/facebook/appevents/k0/h;->h:Ljava/lang/Object;

    .line 4
    invoke-static {v0, v2}, Lcom/facebook/appevents/k0/k;->f(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5
    sget-object v3, Lcom/facebook/appevents/k0/h;->a:Lcom/facebook/appevents/k0/h;

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4}, Lcom/facebook/appevents/k0/h;->a(Lcom/facebook/appevents/k0/h;Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 6
    sget-object v2, Lcom/facebook/appevents/k0/h;->h:Ljava/lang/Object;

    .line 7
    const-class v3, Lcom/facebook/appevents/k0/k;

    invoke-static {v3}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v4, "context"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "subs"

    .line 8
    invoke-virtual {v1, v0, v2, v4}, Lcom/facebook/appevents/k0/k;->e(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/appevents/k0/k;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1, v3}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 9
    :goto_0
    sget-object v1, Lcom/facebook/appevents/k0/h;->a:Lcom/facebook/appevents/k0/h;

    const/4 v2, 0x1

    invoke-static {v1, v0, v5, v2}, Lcom/facebook/appevents/k0/h;->a(Lcom/facebook/appevents/k0/h;Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method
