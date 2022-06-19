.class public final synthetic Lcom/facebook/appevents/h0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/facebook/appevents/h0/f;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/facebook/appevents/h0/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/h0/b;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/facebook/appevents/h0/b;->b:Lcom/facebook/appevents/h0/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/appevents/h0/b;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/appevents/h0/b;->b:Lcom/facebook/appevents/h0/f;

    .line 1
    const-class v2, Lcom/facebook/appevents/h0/f;

    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v2, "$view"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v2, v0, Landroid/widget/EditText;

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v1, v0}, Lcom/facebook/appevents/h0/f;->b(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    const-class v1, Lcom/facebook/appevents/h0/f;

    invoke-static {v0, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
