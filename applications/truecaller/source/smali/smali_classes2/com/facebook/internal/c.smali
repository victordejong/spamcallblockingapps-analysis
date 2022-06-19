.class public final synthetic Lcom/facebook/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/z;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/c;->a:Lcom/facebook/internal/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/c;->a:Lcom/facebook/internal/z;

    invoke-static {v0}, Lcom/facebook/internal/z;->g(Lcom/facebook/internal/z;)V

    return-void
.end method
