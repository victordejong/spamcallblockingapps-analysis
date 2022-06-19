.class final Li/a/d/f/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/d/f/v;


# static fields
.field private static final f:Li/a/d/f/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/d/f/j;

    invoke-direct {v0}, Li/a/d/f/j;-><init>()V

    sput-object v0, Li/a/d/f/j;->f:Li/a/d/f/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Li/a/d/f/v;
    .locals 1

    .line 1
    sget-object v0, Li/a/d/f/j;->f:Li/a/d/f/j;

    return-object v0
.end method


# virtual methods
.method public E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic b0()Li/a/d/c/e;
    .locals 1

    invoke-static {p0}, Li/a/d/f/u;->b(Li/a/d/f/v;)Li/a/d/c/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic close()V
    .locals 0

    invoke-static {p0}, Li/a/d/f/u;->a(Li/a/d/f/v;)V

    return-void
.end method

.method public i1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j0(Li/a/b/e;Li/a/d/f/l;)V
    .locals 0

    return-void
.end method

.method public synthetic shutdown()Li/a/d/c/e;
    .locals 1

    invoke-static {p0}, Li/a/d/f/u;->c(Li/a/d/f/v;)Li/a/d/c/e;

    move-result-object v0

    return-object v0
.end method

.method public u1(Li/a/d/f/m;)V
    .locals 0

    return-void
.end method
