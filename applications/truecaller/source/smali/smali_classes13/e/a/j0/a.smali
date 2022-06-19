.class public final Le/a/j0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j0/n;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Landroid/content/Context;

.field public final g:Ls1/w/f;

.field public final h:Le/a/a/g/x;

.field public final i:Le/a/a/i0;

.field public final j:Le/a/c/a/i/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Le/a/a/g/x;Le/a/a/i0;Le/a/c/a/i/d;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "async"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getSmartCardsCountUseCase"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/j0/a;->f:Landroid/content/Context;

    iput-object p2, p0, Le/a/j0/a;->g:Ls1/w/f;

    iput-object p3, p0, Le/a/j0/a;->h:Le/a/a/g/x;

    iput-object p4, p0, Le/a/j0/a;->i:Le/a/a/i0;

    iput-object p5, p0, Le/a/j0/a;->j:Le/a/c/a/i/d;

    .line 2
    new-instance p1, Le/a/j0/a$c;

    invoke-direct {p1, p0}, Le/a/j0/a$c;-><init>(Le/a/j0/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/j0/a;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/j0/a$p;

    invoke-direct {p1, p0}, Le/a/j0/a$p;-><init>(Le/a/j0/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/j0/a;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/j0/a$b;

    invoke-direct {p1, p0}, Le/a/j0/a$b;-><init>(Le/a/j0/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/j0/a;->c:Ls1/g;

    .line 5
    sget-object p1, Le/a/j0/a$a;->d:Le/a/j0/a$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/j0/a;->d:Ls1/g;

    .line 6
    sget-object p1, Le/a/j0/a$a;->c:Le/a/j0/a$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/j0/a;->e:Ls1/g;

    return-void
.end method

.method public static final n(Le/a/j0/a;)Le/a/j0/b;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/j0/a;->c:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/j0/b;

    return-object p0
.end method

.method public static final o(Le/a/j0/a;)Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/j0/a;->a:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static final p(Le/a/j0/a;)J
    .locals 2

    .line 1
    iget-object p0, p0, Le/a/j0/a;->e:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final q(Le/a/j0/a;)Le/a/j0/j;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/j0/a;->b:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/j0/j;

    return-object p0
.end method

.method public static final r(Le/a/j0/a;)J
    .locals 2

    .line 1
    iget-object p0, p0, Le/a/j0/a;->d:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j0/a;->g:Ls1/w/f;

    new-instance v1, Le/a/j0/a$l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/j0/a$l;-><init>(Le/a/j0/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j0/a;->g:Ls1/w/f;

    new-instance v1, Le/a/j0/a$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/j0/a$f;-><init>(Le/a/j0/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j0/a;->g:Ls1/w/f;

    new-instance v1, Le/a/j0/a$j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/j0/a$j;-><init>(Le/a/j0/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j0/a;->g:Ls1/w/f;

    new-instance v1, Le/a/j0/a$m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/j0/a$m;-><init>(Le/a/j0/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j0/a;->g:Ls1/w/f;

    new-instance v1, Le/a/j0/a$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/j0/a$h;-><init>(Le/a/j0/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j0/a;->g:Ls1/w/f;

    new-instance v1, Le/a/j0/a$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/j0/a$i;-><init>(Le/a/j0/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j0/a;->g:Ls1/w/f;

    new-instance v1, Le/a/j0/a$k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/j0/a$k;-><init>(Le/a/j0/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j0/a;->g:Ls1/w/f;

    new-instance v1, Le/a/j0/a$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/j0/a$e;-><init>(Le/a/j0/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j0/a;->g:Ls1/w/f;

    new-instance v1, Le/a/j0/a$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/j0/a$g;-><init>(Le/a/j0/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j0/a;->j:Le/a/c/a/i/d;

    new-instance v1, Lw3/b/a/b;

    .line 2
    iget-object v2, p0, Le/a/j0/a;->d:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 3
    invoke-direct {v1, v2, v3}, Lw3/b/a/b;-><init>(J)V

    .line 4
    iget-object v2, v0, Le/a/c/a/i/k;->a:Ls1/w/f;

    new-instance v3, Le/a/c/a/i/k$a;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Le/a/c/a/i/k$a;-><init>(Le/a/c/a/i/k;Ljava/lang/Object;Ls1/w/d;)V

    invoke-static {v2, v3, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j0/a;->g:Ls1/w/f;

    new-instance v1, Le/a/j0/a$o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/j0/a$o;-><init>(Le/a/j0/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j0/a;->g:Ls1/w/f;

    new-instance v1, Le/a/j0/a$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/j0/a$d;-><init>(Le/a/j0/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j0/a;->g:Ls1/w/f;

    new-instance v1, Le/a/j0/a$n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/j0/a$n;-><init>(Le/a/j0/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
