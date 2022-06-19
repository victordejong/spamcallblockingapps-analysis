.class public Lcom/google/firebase/inappmessaging/display/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/a;->a:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/inappmessaging/display/internal/j;Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/display/internal/q/c;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/r/a/c;->e()Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/a;->a:Landroid/app/Application;

    invoke-direct {v1, p2, p1, v2}, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;-><init>(Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/display/internal/j;Landroid/app/Application;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;->b(Lcom/google/firebase/inappmessaging/display/internal/r/b/o;)Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;->a()Lcom/google/firebase/inappmessaging/display/internal/r/a/e;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/firebase/inappmessaging/display/internal/r/a/e;->c()Lcom/google/firebase/inappmessaging/display/internal/q/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/firebase/inappmessaging/display/internal/j;Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/display/internal/q/c;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/r/a/c;->e()Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/a;->a:Landroid/app/Application;

    invoke-direct {v1, p2, p1, v2}, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;-><init>(Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/display/internal/j;Landroid/app/Application;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;->b(Lcom/google/firebase/inappmessaging/display/internal/r/b/o;)Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;->a()Lcom/google/firebase/inappmessaging/display/internal/r/a/e;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/firebase/inappmessaging/display/internal/r/a/e;->b()Lcom/google/firebase/inappmessaging/display/internal/q/d;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/firebase/inappmessaging/display/internal/j;Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/display/internal/q/c;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/r/a/c;->e()Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/a;->a:Landroid/app/Application;

    invoke-direct {v1, p2, p1, v2}, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;-><init>(Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/display/internal/j;Landroid/app/Application;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;->b(Lcom/google/firebase/inappmessaging/display/internal/r/b/o;)Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;->a()Lcom/google/firebase/inappmessaging/display/internal/r/a/e;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/firebase/inappmessaging/display/internal/r/a/e;->a()Lcom/google/firebase/inappmessaging/display/internal/q/f;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/google/firebase/inappmessaging/display/internal/j;Lcom/google/firebase/inappmessaging/model/i;)Lcom/google/firebase/inappmessaging/display/internal/q/c;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/r/a/c;->e()Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/a;->a:Landroid/app/Application;

    invoke-direct {v1, p2, p1, v2}, Lcom/google/firebase/inappmessaging/display/internal/r/b/o;-><init>(Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/display/internal/j;Landroid/app/Application;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;->b(Lcom/google/firebase/inappmessaging/display/internal/r/b/o;)Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/r/a/c$b;->a()Lcom/google/firebase/inappmessaging/display/internal/r/a/e;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/firebase/inappmessaging/display/internal/r/a/e;->d()Lcom/google/firebase/inappmessaging/display/internal/q/h;

    move-result-object p1

    return-object p1
.end method
