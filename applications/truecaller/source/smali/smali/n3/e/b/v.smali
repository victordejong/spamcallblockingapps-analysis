.class public final synthetic Ln3/e/b/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/f1$h;

.field public final synthetic b:Ln3/e/b/f1$g;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/f1$h;Ln3/e/b/f1$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/v;->a:Ln3/e/b/f1$h;

    iput-object p2, p0, Ln3/e/b/v;->b:Ln3/e/b/f1$g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln3/e/b/v;->a:Ln3/e/b/f1$h;

    iget-object v1, p0, Ln3/e/b/v;->b:Ln3/e/b/f1$g;

    .line 1
    check-cast v0, Ln3/e/d/e;

    invoke-virtual {v0, v1}, Ln3/e/d/e;->a(Ln3/e/b/f1$g;)V

    return-void
.end method
