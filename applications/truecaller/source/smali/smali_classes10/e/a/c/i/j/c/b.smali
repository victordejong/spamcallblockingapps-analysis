.class public final Le/a/c/i/j/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/j/c/a;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Ljava/lang/String;

.field public final c:Lq3/a/i0;

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/i/b/a;Le/a/c/b/e;Ls1/w/f;)V
    .locals 7
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "firebaseSeedStore"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Le/a/c/i/j/c/b;->f:Ls1/w/f;

    .line 2
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    iput-object v0, p0, Le/a/c/i/j/c/b;->a:Le/m/e/k;

    .line 3
    invoke-interface {p2}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Le/a/c/i/j/c/b;->b:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 4
    invoke-static {p2, v0}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object v1

    invoke-interface {p3, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p3

    invoke-static {p3}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v1

    iput-object v1, p0, Le/a/c/i/j/c/b;->c:Lq3/a/i0;

    .line 5
    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p3, p0, Le/a/c/i/j/c/b;->d:Ljava/util/Set;

    .line 6
    sget p3, Lkotlinx/coroutines/CoroutineExceptionHandler;->d0:I

    sget-object p3, Lkotlinx/coroutines/CoroutineExceptionHandler$a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler$a;

    new-instance v2, Le/a/c/i/j/c/b$a;

    invoke-direct {v2, p3}, Le/a/c/i/j/c/b$a;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$a;)V

    .line 7
    iput-object v2, p0, Le/a/c/i/j/c/b;->e:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 8
    invoke-interface {p1}, Le/a/c/i/b/a;->l()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 10
    new-instance v4, Le/a/c/i/j/c/c;

    invoke-direct {v4, p0, p1, p2}, Le/a/c/i/j/c/c;-><init>(Le/a/c/i/j/c/b;Ljava/lang/String;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "rawAddress"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/i/j/c/b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/c/i/j/c/b;->d:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Locale.ENGLISH"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
