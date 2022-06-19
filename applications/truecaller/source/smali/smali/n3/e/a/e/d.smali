.class public final synthetic Ln3/e/a/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/j1/q;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/j1/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/d;->a:Ln3/e/b/j1/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ln3/e/a/e/d;->a:Ln3/e/b/j1/q;

    .line 1
    invoke-virtual {v0}, Ln3/e/b/j1/q;->a()V

    return-void
.end method
