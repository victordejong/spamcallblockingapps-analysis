.class final Lcom/hiya/client/callerid/ui/overlay/RippleLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/overlay/RippleLayout;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/overlay/RippleLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout$b;->f:Lcom/hiya/client/callerid/ui/overlay/RippleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout$b;->f:Lcom/hiya/client/callerid/ui/overlay/RippleLayout;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->d(Lcom/hiya/client/callerid/ui/overlay/RippleLayout;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout$b;->f:Lcom/hiya/client/callerid/ui/overlay/RippleLayout;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->c(Lcom/hiya/client/callerid/ui/overlay/RippleLayout;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout$b;->f:Lcom/hiya/client/callerid/ui/overlay/RippleLayout;

    invoke-static {v1}, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->b(Lcom/hiya/client/callerid/ui/overlay/RippleLayout;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
