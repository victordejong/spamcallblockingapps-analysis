.class public final synthetic Lcom/facebook/appevents/k0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/k0/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/k0/b;

    invoke-direct {v0}, Lcom/facebook/appevents/k0/b;-><init>()V

    sput-object v0, Lcom/facebook/appevents/k0/b;->a:Lcom/facebook/appevents/k0/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

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
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    sget-object v2, Lcom/facebook/appevents/k0/h;->h:Ljava/lang/Object;

    .line 7
    const-class v3, Lcom/facebook/appevents/k0/k;

    invoke-static {v3}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v4, "context"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "com.android.vending.billing.IInAppBillingService"

    .line 9
    invoke-virtual {v1, v0, v6}, Lcom/facebook/appevents/k0/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v7, "getPurchaseHistory"

    .line 10
    invoke-virtual {v1, v6, v7}, Lcom/facebook/appevents/k0/k;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-nez v6, :cond_3

    :goto_0
    move-object v2, v4

    goto :goto_2

    :cond_3
    const-string v4, "inapp"

    .line 11
    invoke-virtual {v1, v0, v2, v4}, Lcom/facebook/appevents/k0/k;->d(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Lcom/facebook/appevents/k0/k;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-static {v1, v3}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_1
    move-object v2, v5

    .line 13
    :cond_4
    :goto_2
    sget-object v1, Lcom/facebook/appevents/k0/h;->a:Lcom/facebook/appevents/k0/h;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/appevents/k0/h;->a(Lcom/facebook/appevents/k0/h;Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method
