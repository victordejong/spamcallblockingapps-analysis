.class public final synthetic Lcom/facebook/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/b0$a;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/b0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/d;->a:Lcom/facebook/internal/b0$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/d;->a:Lcom/facebook/internal/b0$a;

    .line 1
    invoke-interface {v0}, Lcom/facebook/internal/b0$a;->a()V

    return-void
.end method
