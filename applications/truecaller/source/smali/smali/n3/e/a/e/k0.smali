.class public final synthetic Ln3/e/a/e/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/c2;

.field public final synthetic b:Ln3/e/a/e/b2;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/c2;Ln3/e/a/e/b2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/k0;->a:Ln3/e/a/e/c2;

    iput-object p2, p0, Ln3/e/a/e/k0;->b:Ln3/e/a/e/b2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln3/e/a/e/k0;->a:Ln3/e/a/e/c2;

    iget-object v1, p0, Ln3/e/a/e/k0;->b:Ln3/e/a/e/b2;

    .line 1
    iget-object v0, v0, Ln3/e/a/e/c2;->f:Ln3/e/a/e/b2$a;

    invoke-virtual {v0, v1}, Ln3/e/a/e/b2$a;->r(Ln3/e/a/e/b2;)V

    return-void
.end method
