.class public final Le/a/c/a/d/d/j;
.super Le/a/c/a/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/c<",
        "Ls1/s;",
        "Ljava/util/List<",
        "+",
        "Le/a/c/a/l/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final b:Le/a/b0/m/c/a;

.field public final c:Le/a/b0/m/d/a;

.field public final d:Le/a/c/w/v;

.field public final e:Le/a/c/w/o0/g;

.field public final f:Le/a/c/h/e;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/b0/m/c/a;Le/a/b0/m/d/a;Le/a/c/w/v;Le/a/c/w/o0/g;Le/a/c/h/e;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressProfileLoader"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderInfoManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountsRepository"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsFilterFetcher"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/c/a/i/c;-><init>(Ls1/w/f;)V

    iput-object p2, p0, Le/a/c/a/d/d/j;->b:Le/a/b0/m/c/a;

    iput-object p3, p0, Le/a/c/a/d/d/j;->c:Le/a/b0/m/d/a;

    iput-object p4, p0, Le/a/c/a/d/d/j;->d:Le/a/c/w/v;

    iput-object p5, p0, Le/a/c/a/d/d/j;->e:Le/a/c/w/o0/g;

    iput-object p6, p0, Le/a/c/a/d/d/j;->f:Le/a/c/h/e;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lq3/a/x2/f;
    .locals 1

    .line 1
    check-cast p1, Ls1/s;

    const-string v0, "input"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/c/a/d/d/j;->d:Le/a/c/w/v;

    invoke-interface {p1}, Le/a/c/w/v;->a()Lq3/a/x2/f;

    move-result-object p1

    .line 4
    new-instance v0, Le/a/c/a/d/d/i;

    invoke-direct {v0, p1, p0}, Le/a/c/a/d/d/i;-><init>(Lq3/a/x2/f;Le/a/c/a/d/d/j;)V

    return-object v0
.end method
