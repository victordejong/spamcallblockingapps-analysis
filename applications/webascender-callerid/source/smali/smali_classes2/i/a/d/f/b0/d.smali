.class abstract Li/a/d/f/b0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/d/f/b0/k;


# static fields
.field static final a:Li/a/d/f/b0/k;

.field static final b:Li/a/d/f/b0/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Li/a/d/f/b0/i;->RECORD_AND_SAMPLE:Li/a/d/f/b0/i;

    .line 2
    invoke-static {v0}, Li/a/d/f/b0/d;->d(Li/a/d/f/b0/i;)Li/a/d/f/b0/k;

    move-result-object v0

    sput-object v0, Li/a/d/f/b0/d;->a:Li/a/d/f/b0/k;

    .line 3
    sget-object v0, Li/a/d/f/b0/i;->DROP:Li/a/d/f/b0/i;

    .line 4
    invoke-static {v0}, Li/a/d/f/b0/d;->d(Li/a/d/f/b0/i;)Li/a/d/f/b0/k;

    move-result-object v0

    sput-object v0, Li/a/d/f/b0/d;->b:Li/a/d/f/b0/k;

    .line 5
    sget-object v0, Li/a/d/f/b0/i;->RECORD_ONLY:Li/a/d/f/b0/i;

    .line 6
    invoke-static {v0}, Li/a/d/f/b0/d;->d(Li/a/d/f/b0/i;)Li/a/d/f/b0/k;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(Li/a/d/f/b0/i;)Li/a/d/f/b0/k;
    .locals 2

    .line 1
    new-instance v0, Li/a/d/f/b0/c;

    invoke-static {}, Li/a/a/c/i;->b()Li/a/a/c/j;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Li/a/d/f/b0/c;-><init>(Li/a/d/f/b0/i;Li/a/a/c/j;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Li/a/a/c/j;
.end method

.method public synthetic b(Li/a/a/f/w;)Li/a/a/f/w;
    .locals 0

    invoke-static {p0, p1}, Li/a/d/f/b0/j;->a(Li/a/d/f/b0/k;Li/a/a/f/w;)Li/a/a/f/w;

    move-result-object p1

    return-object p1
.end method

.method public abstract c()Li/a/d/f/b0/i;
.end method
