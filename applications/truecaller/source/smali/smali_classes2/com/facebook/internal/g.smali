.class public final synthetic Lcom/facebook/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/d0$b;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/d0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/g;->a:Lcom/facebook/internal/d0$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/g;->a:Lcom/facebook/internal/d0$b;

    .line 1
    invoke-interface {v0}, Lcom/facebook/internal/d0$b;->a()V

    return-void
.end method
