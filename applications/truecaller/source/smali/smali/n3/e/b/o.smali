.class public final synthetic Ln3/e/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/z0;

.field public final synthetic b:Ln3/e/b/j1/r0$a;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/z0;Ln3/e/b/j1/r0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/o;->a:Ln3/e/b/z0;

    iput-object p2, p0, Ln3/e/b/o;->b:Ln3/e/b/j1/r0$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ln3/e/b/o;->a:Ln3/e/b/z0;

    iget-object v1, p0, Ln3/e/b/o;->b:Ln3/e/b/j1/r0$a;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v1, v0}, Ln3/e/b/j1/r0$a;->a(Ln3/e/b/j1/r0;)V

    return-void
.end method
