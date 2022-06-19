.class public final synthetic Ln3/e/d/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/h/b;


# instance fields
.field public final synthetic a:Ln3/e/d/x$b;


# direct methods
.method public synthetic constructor <init>(Ln3/e/d/x$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/d/j;->a:Ln3/e/d/x$b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ln3/e/d/j;->a:Ln3/e/d/x$b;

    check-cast p1, Ln3/e/b/f1$f;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v1, "SurfaceViewImpl"

    const-string v2, "Safe to release surface."

    .line 2
    invoke-static {v1, v2, p1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, v0, Ln3/e/d/x$b;->e:Ln3/e/d/x;

    .line 4
    iget-object v1, v0, Ln3/e/d/x;->g:Ln3/e/d/v$a;

    if-eqz v1, :cond_0

    .line 5
    check-cast v1, Ln3/e/d/d;

    invoke-virtual {v1}, Ln3/e/d/d;->a()V

    .line 6
    iput-object p1, v0, Ln3/e/d/x;->g:Ln3/e/d/v$a;

    :cond_0
    return-void
.end method
