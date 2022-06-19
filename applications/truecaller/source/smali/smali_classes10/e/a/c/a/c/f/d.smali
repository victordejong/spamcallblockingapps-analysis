.class public final Le/a/c/a/c/f/d;
.super Le/a/c/a/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/c<",
        "Ls1/s;",
        "Le/a/c/a/l/b$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/c/q/d;

.field public final c:Ls1/w/f;

.field public final d:Le/a/c/a/c/c;

.field public final e:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/c/q/d;Ls1/w/f;Le/a/c/a/c/c;Le/a/c/b/j;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "businessInsightsManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoDismissHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/c/a/i/c;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/c/f/d;->b:Le/a/c/q/d;

    iput-object p2, p0, Le/a/c/a/c/f/d;->c:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/c/f/d;->d:Le/a/c/a/c/c;

    iput-object p4, p0, Le/a/c/a/c/f/d;->e:Le/a/c/b/j;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lq3/a/x2/f;
    .locals 0

    .line 1
    check-cast p1, Ls1/s;

    invoke-virtual {p0, p1}, Le/a/c/a/c/f/d;->d(Ls1/s;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/s;)Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/s;",
            ")",
            "Lq3/a/x2/f<",
            "Le/a/c/a/l/b$d;",
            ">;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/c/a/c/f/d;->e:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->e0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/c/a/c/f/d;->b:Le/a/c/q/d;

    invoke-interface {p1}, Le/a/c/q/d;->r()Lq3/a/x2/f;

    move-result-object p1

    sget-object v0, Le/a/c/a/c/f/e;->b:Le/a/c/a/c/f/e;

    .line 3
    sget-object v1, Lq3/a/x2/q;->a:Ls1/z/b/l;

    invoke-static {p1, v1, v0}, Lq3/a/x2/q;->a(Lq3/a/x2/f;Ls1/z/b/l;Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object p1

    .line 4
    new-instance v0, Le/a/c/a/c/f/d$a;

    invoke-direct {v0, p1, p0}, Le/a/c/a/c/f/d$a;-><init>(Lq3/a/x2/f;Le/a/c/a/c/f/d;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Le/a/c/a/c/f/d$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Le/a/c/a/c/f/d$b;-><init>(Ls1/w/d;)V

    .line 6
    new-instance v0, Lq3/a/x2/d1;

    invoke-direct {v0, p1}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    :goto_0
    return-object v0
.end method
