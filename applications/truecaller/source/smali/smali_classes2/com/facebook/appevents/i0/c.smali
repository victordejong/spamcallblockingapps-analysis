.class public final synthetic Lcom/facebook/appevents/i0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/appevents/i0/m$a;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/c0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/c0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/i0/c;->a:Lcom/facebook/internal/c0;

    iput-object p2, p0, Lcom/facebook/appevents/i0/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lcom/facebook/appevents/i0/c;->a:Lcom/facebook/internal/c0;

    iget-object v1, p0, Lcom/facebook/appevents/i0/c;->b:Ljava/lang/String;

    .line 1
    const-class v2, Lcom/facebook/appevents/i0/i;

    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v3, "$appId"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, v0, Lcom/facebook/internal/c0;->h:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 3
    :goto_0
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    .line 4
    sget-object v0, Le/j/v0;->a:Le/j/v0;

    .line 5
    const-class v5, Le/j/v0;

    invoke-static {v5}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Le/j/v0;->d()V

    .line 7
    sget-object v0, Le/j/v0;->h:Le/j/v0$a;

    invoke-virtual {v0}, Le/j/v0$a;->a()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0, v5}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 8
    invoke-static {v1}, Lcom/facebook/appevents/i0/i;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 9
    invoke-static {v0, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method
