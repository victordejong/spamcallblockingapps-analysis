.class public final synthetic Lcom/facebook/appevents/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/appevents/p;

.field public final synthetic b:Lcom/facebook/appevents/f0;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/p;Lcom/facebook/appevents/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/g;->a:Lcom/facebook/appevents/p;

    iput-object p2, p0, Lcom/facebook/appevents/g;->b:Lcom/facebook/appevents/f0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/appevents/g;->a:Lcom/facebook/appevents/p;

    iget-object v1, p0, Lcom/facebook/appevents/g;->b:Lcom/facebook/appevents/f0;

    .line 1
    const-class v2, Lcom/facebook/appevents/t;

    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v3, "$accessTokenAppId"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$appEvents"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Lcom/facebook/appevents/u;->a:Lcom/facebook/appevents/u;

    invoke-static {v0, v1}, Lcom/facebook/appevents/u;->a(Lcom/facebook/appevents/p;Lcom/facebook/appevents/f0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
