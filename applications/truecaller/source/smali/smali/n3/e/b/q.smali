.class public final synthetic Ln3/e/b/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/c1$d;

.field public final synthetic b:Ln3/e/b/f1;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/c1$d;Ln3/e/b/f1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/q;->a:Ln3/e/b/c1$d;

    iput-object p2, p0, Ln3/e/b/q;->b:Ln3/e/b/f1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln3/e/b/q;->a:Ln3/e/b/c1$d;

    iget-object v1, p0, Ln3/e/b/q;->b:Ln3/e/b/f1;

    .line 1
    invoke-interface {v0, v1}, Ln3/e/b/c1$d;->a(Ln3/e/b/f1;)V

    return-void
.end method
