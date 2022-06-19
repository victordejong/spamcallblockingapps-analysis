.class public Ln3/e/d/s;
.super Ln3/e/b/j1/q;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln3/h/a/b;

.field public final synthetic b:Ln3/e/b/l0;


# direct methods
.method public constructor <init>(Ln3/e/d/t;Ln3/h/a/b;Ln3/e/b/l0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/e/d/s;->a:Ln3/h/a/b;

    iput-object p3, p0, Ln3/e/d/s;->b:Ln3/e/b/l0;

    invoke-direct {p0}, Ln3/e/b/j1/q;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ln3/e/b/j1/t;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/e/d/s;->a:Ln3/h/a/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Ln3/e/d/s;->b:Ln3/e/b/l0;

    check-cast p1, Ln3/e/b/j1/z;

    invoke-interface {p1, p0}, Ln3/e/b/j1/z;->d(Ln3/e/b/j1/q;)V

    return-void
.end method
