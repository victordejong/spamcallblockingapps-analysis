.class public final Le/a/l/p2/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/o0;


# instance fields
.field public final a:Le/a/l/p2/i0;

.field public final b:Le/a/l/p2/m0;

.field public final c:Le/a/l/u2/a;

.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/p2/i0;Le/a/l/p2/m0;Le/a/l/u2/a;Ls1/w/f;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumNetworkHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumProductsCache"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumProductStoreProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/p0;->a:Le/a/l/p2/i0;

    iput-object p2, p0, Le/a/l/p2/p0;->b:Le/a/l/p2/m0;

    iput-object p3, p0, Le/a/l/p2/p0;->c:Le/a/l/u2/a;

    iput-object p4, p0, Le/a/l/p2/p0;->d:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/k1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l/p2/p0;->d:Ls1/w/f;

    new-instance v1, Le/a/l/p2/p0$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/l/p2/p0$b;-><init>(Le/a/l/p2/p0;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

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
            "Le/a/l/p2/o0$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l/p2/p0;->d:Ls1/w/f;

    new-instance v1, Le/a/l/p2/p0$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/l/p2/p0$a;-><init>(Le/a/l/p2/p0;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/p2/p0;->b:Le/a/l/p2/m0;

    invoke-interface {v0}, Le/a/l/p2/m0;->clear()V

    return-void
.end method
