.class public final synthetic Lcom/facebook/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/d0$b;

.field public final synthetic b:Lcom/facebook/internal/c0;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/d0$b;Lcom/facebook/internal/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/h;->a:Lcom/facebook/internal/d0$b;

    iput-object p2, p0, Lcom/facebook/internal/h;->b:Lcom/facebook/internal/c0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/internal/h;->a:Lcom/facebook/internal/d0$b;

    iget-object v1, p0, Lcom/facebook/internal/h;->b:Lcom/facebook/internal/c0;

    .line 1
    invoke-interface {v0, v1}, Lcom/facebook/internal/d0$b;->b(Lcom/facebook/internal/c0;)V

    return-void
.end method
