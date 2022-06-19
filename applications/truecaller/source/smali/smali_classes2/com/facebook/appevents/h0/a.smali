.class public final synthetic Lcom/facebook/appevents/h0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/h0/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/h0/a;

    invoke-direct {v0}, Lcom/facebook/appevents/h0/a;-><init>()V

    sput-object v0, Lcom/facebook/appevents/h0/a;->a:Lcom/facebook/appevents/h0/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/facebook/appevents/h0/c;->a:Lcom/facebook/appevents/h0/c;

    const-class v0, Lcom/facebook/appevents/h0/c;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    sget-object v1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Lcom/facebook/internal/q$a;->b(Landroid/content/Context;)Lcom/facebook/internal/q;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    iget-boolean v1, v1, Lcom/facebook/internal/q;->e:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 6
    sget-object v1, Lcom/facebook/appevents/h0/c;->a:Lcom/facebook/appevents/h0/c;

    invoke-virtual {v1}, Lcom/facebook/appevents/h0/c;->a()V

    .line 7
    sput-boolean v2, Lcom/facebook/appevents/h0/c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 8
    invoke-static {v1, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
