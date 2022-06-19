.class public Lcom/freshchat/consumer/sdk/j/by$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/by;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private final lk:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic mO:Lcom/freshchat/consumer/sdk/j/by;


# direct methods
.method private constructor <init>(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/by$b;->mO:Lcom/freshchat/consumer/sdk/j/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/by$b;->lk:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/bz;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/by$b;-><init>(Lcom/freshchat/consumer/sdk/j/by;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/by$b;->lk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/by$b;->mO:Lcom/freshchat/consumer/sdk/j/by;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/by$b;->lk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/by;->d(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/by$b;->mO:Lcom/freshchat/consumer/sdk/j/by;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/by;->b(Lcom/freshchat/consumer/sdk/j/by;)V

    :goto_0
    return-void
.end method
