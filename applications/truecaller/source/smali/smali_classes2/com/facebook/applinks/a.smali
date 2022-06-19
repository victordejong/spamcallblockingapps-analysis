.class public final Lcom/facebook/applinks/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/facebook/applinks/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/applinks/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/applinks/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/applinks/a;->c:Lcom/facebook/applinks/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/applinks/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/applinks/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/applinks/a;->c:Lcom/facebook/applinks/b$a;

    invoke-static {v0, v1, v2}, Lcom/facebook/applinks/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
