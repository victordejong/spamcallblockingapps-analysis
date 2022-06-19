.class final Li/a/d/f/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/f/x;


# instance fields
.field private final a:Li/a/d/f/x;

.field private final b:Li/a/d/c/f;


# direct methods
.method constructor <init>(Li/a/d/f/x;Li/a/d/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/a/d/f/p;->a:Li/a/d/f/x;

    .line 3
    iput-object p2, p0, Li/a/d/f/p;->b:Li/a/d/c/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Li/a/a/f/l;
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "<unspecified span name>"

    .line 2
    :cond_1
    iget-object v0, p0, Li/a/d/f/p;->a:Li/a/d/f/x;

    invoke-virtual {v0}, Li/a/d/f/x;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Li/a/a/f/y;->a()Li/a/a/f/z;

    move-result-object v0

    iget-object v1, p0, Li/a/d/f/p;->b:Li/a/d/c/f;

    .line 4
    invoke-virtual {v1}, Li/a/d/c/f;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Li/a/d/f/p;->b:Li/a/d/c/f;

    invoke-virtual {v2}, Li/a/d/c/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Li/a/a/f/z;->a(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/x;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Li/a/a/f/x;->a(Ljava/lang/String;)Li/a/a/f/l;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    new-instance v0, Li/a/d/f/o;

    iget-object v1, p0, Li/a/d/f/p;->b:Li/a/d/c/f;

    iget-object v2, p0, Li/a/d/f/p;->a:Li/a/d/f/x;

    .line 7
    invoke-virtual {v2}, Li/a/d/f/x;->f()Li/a/d/f/s;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Li/a/d/f/o;-><init>(Ljava/lang/String;Li/a/d/c/f;Li/a/d/f/x;Li/a/d/f/s;)V

    return-object v0
.end method
