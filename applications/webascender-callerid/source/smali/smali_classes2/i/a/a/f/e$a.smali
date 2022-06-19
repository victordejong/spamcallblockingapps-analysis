.class final Li/a/a/f/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/f/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/a/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Li/a/a/f/n;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d()Li/a/a/f/e$a;
    .locals 1

    .line 1
    new-instance v0, Li/a/a/f/e$a;

    invoke-direct {v0}, Li/a/a/f/e$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Li/a/a/f/k;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/a/f/e$a;->a:Li/a/a/f/n;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Li/a/a/f/j;->d()Li/a/a/f/k;

    move-result-object v0

    invoke-interface {v0}, Li/a/a/f/k;->b()Li/a/a/f/n;

    move-result-object v0

    iput-object v0, p0, Li/a/a/f/e$a;->a:Li/a/a/f/n;

    .line 3
    :cond_0
    iget-object v0, p0, Li/a/a/f/e$a;->a:Li/a/a/f/n;

    invoke-static {v0}, Li/a/a/f/j;->g(Li/a/a/f/n;)Li/a/a/f/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Li/a/a/f/l;
    .locals 0

    .line 1
    invoke-virtual {p0}, Li/a/a/f/e$a;->e()Li/a/a/f/e$a;

    return-object p0
.end method

.method public bridge synthetic c(Li/a/b/e;)Li/a/a/f/l;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/a/a/f/e$a;->f(Li/a/b/e;)Li/a/a/f/e$a;

    return-object p0
.end method

.method public e()Li/a/a/f/e$a;
    .locals 1

    .line 1
    invoke-static {}, Li/a/a/f/m;->c()Li/a/a/f/n;

    move-result-object v0

    iput-object v0, p0, Li/a/a/f/e$a;->a:Li/a/a/f/n;

    return-object p0
.end method

.method public f(Li/a/b/e;)Li/a/a/f/e$a;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p1}, Li/a/a/f/j;->e(Li/a/b/e;)Li/a/a/f/k;

    move-result-object p1

    invoke-interface {p1}, Li/a/a/f/k;->b()Li/a/a/f/n;

    move-result-object p1

    iput-object p1, p0, Li/a/a/f/e$a;->a:Li/a/a/f/n;

    return-object p0
.end method
