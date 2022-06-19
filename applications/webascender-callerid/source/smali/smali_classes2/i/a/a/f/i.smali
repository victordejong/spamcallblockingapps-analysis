.class final Li/a/a/f/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/f/k;


# static fields
.field static final b:Li/a/a/f/i;


# instance fields
.field private final a:Li/a/a/f/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/a/a/f/i;

    invoke-static {}, Li/a/a/f/m;->c()Li/a/a/f/n;

    move-result-object v1

    invoke-direct {v0, v1}, Li/a/a/f/i;-><init>(Li/a/a/f/n;)V

    sput-object v0, Li/a/a/f/i;->b:Li/a/a/f/i;

    return-void
.end method

.method private constructor <init>(Li/a/a/f/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/a/a/f/i;->a:Li/a/a/f/n;

    return-void
.end method

.method static e(Li/a/a/f/n;)Li/a/a/f/k;
    .locals 1

    .line 1
    new-instance v0, Li/a/a/f/i;

    invoke-direct {v0, p0}, Li/a/a/f/i;-><init>(Li/a/a/f/n;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Li/a/a/f/n;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/a/f/i;->a:Li/a/a/f/n;

    return-object v0
.end method

.method public synthetic c()Li/a/b/p;
    .locals 1

    invoke-static {p0}, Li/a/b/m;->a(Li/a/b/n;)Li/a/b/p;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Li/a/a/f/k;
    .locals 0

    return-object p0
.end method

.method public synthetic f(Li/a/b/e;)Li/a/b/e;
    .locals 0

    invoke-static {p0, p1}, Li/a/a/f/j;->c(Li/a/a/f/k;Li/a/b/e;)Li/a/b/e;

    move-result-object p1

    return-object p1
.end method

.method public g(Li/a/a/c/f;Ljava/lang/Object;)Li/a/a/f/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/a/c/f<",
            "TT;>;TT;)",
            "Li/a/a/f/k;"
        }
    .end annotation

    return-object p0
.end method

.method public h(Li/a/a/f/r;Ljava/lang/String;)Li/a/a/f/k;
    .locals 0

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;
    .locals 0

    return-object p0
.end method

.method public j(Ljava/lang/String;Z)Li/a/a/f/k;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PropagatedSpan{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a/a/f/i;->a:Li/a/a/f/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
