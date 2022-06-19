.class public final synthetic Lcom/facebook/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/s0$d;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/w;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/a;->a:Lcom/facebook/internal/w;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Le/j/c0;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/internal/a;->a:Lcom/facebook/internal/w;

    .line 1
    sget v1, Lcom/facebook/internal/w;->b:I

    const-string v1, "this$0"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/facebook/internal/w;->OA(Landroid/os/Bundle;Le/j/c0;)V

    return-void
.end method
