.class public final Li/a/d/f/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Li/a/d/f/b0/h;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/a/d/f/v;",
            ">;"
        }
    .end annotation
.end field

.field private b:Li/a/d/c/d;

.field private c:Li/a/d/f/h;

.field private d:Li/a/d/e/d;

.field private e:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Li/a/d/f/s;",
            ">;"
        }
    .end annotation
.end field

.field private f:Li/a/d/f/b0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Li/a/d/f/b0/g;->b()Li/a/d/f/b0/h;

    move-result-object v0

    invoke-static {v0}, Li/a/d/f/b0/g;->c(Li/a/d/f/b0/h;)Li/a/d/f/b0/h;

    move-result-object v0

    sput-object v0, Li/a/d/f/r;->g:Li/a/d/f/b0/h;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/a/d/f/r;->a:Ljava/util/List;

    .line 3
    invoke-static {}, Li/a/d/d/g;->c()Li/a/d/d/g;

    move-result-object v0

    iput-object v0, p0, Li/a/d/f/r;->b:Li/a/d/c/d;

    .line 4
    invoke-static {}, Li/a/d/f/g;->a()Li/a/d/f/h;

    move-result-object v0

    iput-object v0, p0, Li/a/d/f/r;->c:Li/a/d/f/h;

    .line 5
    invoke-static {}, Li/a/d/e/d;->d()Li/a/d/e/d;

    move-result-object v0

    iput-object v0, p0, Li/a/d/f/r;->d:Li/a/d/e/d;

    .line 6
    sget-object v0, Li/a/d/f/c;->a:Li/a/d/f/c;

    iput-object v0, p0, Li/a/d/f/r;->e:Ljava/util/function/Supplier;

    .line 7
    sget-object v0, Li/a/d/f/r;->g:Li/a/d/f/b0/h;

    iput-object v0, p0, Li/a/d/f/r;->f:Li/a/d/f/b0/h;

    return-void
.end method


# virtual methods
.method public a(Li/a/d/f/v;)Li/a/d/f/r;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/r;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Li/a/d/f/q;
    .locals 8

    .line 1
    new-instance v7, Li/a/d/f/q;

    iget-object v1, p0, Li/a/d/f/r;->b:Li/a/d/c/d;

    iget-object v2, p0, Li/a/d/f/r;->c:Li/a/d/f/h;

    iget-object v3, p0, Li/a/d/f/r;->d:Li/a/d/e/d;

    iget-object v4, p0, Li/a/d/f/r;->e:Ljava/util/function/Supplier;

    iget-object v5, p0, Li/a/d/f/r;->f:Li/a/d/f/b0/h;

    iget-object v6, p0, Li/a/d/f/r;->a:Ljava/util/List;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Li/a/d/f/q;-><init>(Li/a/d/c/d;Li/a/d/f/h;Li/a/d/e/d;Ljava/util/function/Supplier;Li/a/d/f/b0/h;Ljava/util/List;)V

    return-object v7
.end method

.method public c(Li/a/d/f/h;)Li/a/d/f/r;
    .locals 1

    const-string v0, "idGenerator"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Li/a/d/f/r;->c:Li/a/d/f/h;

    return-object p0
.end method

.method public d(Li/a/d/e/d;)Li/a/d/f/r;
    .locals 1

    const-string v0, "resource"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Li/a/d/f/r;->d:Li/a/d/e/d;

    return-object p0
.end method
