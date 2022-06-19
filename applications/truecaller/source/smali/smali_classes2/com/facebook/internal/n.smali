.class public final synthetic Lcom/facebook/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/s0;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/s0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/n;->a:Lcom/facebook/internal/s0;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/internal/n;->a:Lcom/facebook/internal/s0;

    const-string v0, "this$0"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/internal/s0;->cancel()V

    return-void
.end method
