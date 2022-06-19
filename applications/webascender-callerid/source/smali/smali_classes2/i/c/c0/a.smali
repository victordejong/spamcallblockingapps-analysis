.class public final Li/c/c0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/c0/a$b;,
        Li/c/c0/a$h;,
        Li/c/c0/a$f;,
        Li/c/c0/a$c;,
        Li/c/c0/a$e;,
        Li/c/c0/a$d;,
        Li/c/c0/a$a;,
        Li/c/c0/a$g;
    }
.end annotation


# static fields
.field static final a:Li/c/r;

.field static final b:Li/c/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/c/c0/a$h;

    invoke-direct {v0}, Li/c/c0/a$h;-><init>()V

    invoke-static {v0}, Li/c/a0/a;->h(Ljava/util/concurrent/Callable;)Li/c/r;

    .line 2
    new-instance v0, Li/c/c0/a$b;

    invoke-direct {v0}, Li/c/c0/a$b;-><init>()V

    invoke-static {v0}, Li/c/a0/a;->e(Ljava/util/concurrent/Callable;)Li/c/r;

    move-result-object v0

    sput-object v0, Li/c/c0/a;->a:Li/c/r;

    .line 3
    new-instance v0, Li/c/c0/a$c;

    invoke-direct {v0}, Li/c/c0/a$c;-><init>()V

    invoke-static {v0}, Li/c/a0/a;->f(Ljava/util/concurrent/Callable;)Li/c/r;

    move-result-object v0

    sput-object v0, Li/c/c0/a;->b:Li/c/r;

    .line 4
    invoke-static {}, Li/c/z/g/k;->d()Li/c/z/g/k;

    .line 5
    new-instance v0, Li/c/c0/a$f;

    invoke-direct {v0}, Li/c/c0/a$f;-><init>()V

    invoke-static {v0}, Li/c/a0/a;->g(Ljava/util/concurrent/Callable;)Li/c/r;

    return-void
.end method

.method public static a()Li/c/r;
    .locals 1

    .line 1
    sget-object v0, Li/c/c0/a;->a:Li/c/r;

    invoke-static {v0}, Li/c/a0/a;->p(Li/c/r;)Li/c/r;

    move-result-object v0

    return-object v0
.end method

.method public static b()Li/c/r;
    .locals 1

    .line 1
    sget-object v0, Li/c/c0/a;->b:Li/c/r;

    invoke-static {v0}, Li/c/a0/a;->r(Li/c/r;)Li/c/r;

    move-result-object v0

    return-object v0
.end method
