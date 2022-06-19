.class public final Li/a/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Li/a/b/t/b;

.field private b:Li/a/d/f/q;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Li/a/b/t/a;->a()Li/a/b/t/b;

    move-result-object v0

    iput-object v0, p0, Li/a/d/b;->a:Li/a/b/t/b;

    return-void
.end method


# virtual methods
.method public a()Li/a/d/a;
    .locals 3

    .line 1
    iget-object v0, p0, Li/a/d/b;->b:Li/a/d/f/q;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Li/a/d/f/q;->b()Li/a/d/f/r;

    move-result-object v0

    invoke-virtual {v0}, Li/a/d/f/r;->b()Li/a/d/f/q;

    move-result-object v0

    iput-object v0, p0, Li/a/d/b;->b:Li/a/d/f/q;

    .line 3
    :cond_0
    new-instance v0, Li/a/d/a;

    new-instance v1, Li/a/d/a$a;

    iget-object v2, p0, Li/a/d/b;->b:Li/a/d/f/q;

    invoke-direct {v1, v2}, Li/a/d/a$a;-><init>(Li/a/d/f/q;)V

    iget-object v2, p0, Li/a/d/b;->a:Li/a/b/t/b;

    invoke-direct {v0, v1, v2}, Li/a/d/a;-><init>(Li/a/d/a$a;Li/a/b/t/b;)V

    return-object v0
.end method

.method public b(Li/a/d/f/q;)Li/a/d/b;
    .locals 0

    .line 1
    iput-object p1, p0, Li/a/d/b;->b:Li/a/d/f/q;

    return-object p0
.end method
