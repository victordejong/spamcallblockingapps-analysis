.class public final Le/a/l/a/h0$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/a/h0;->b(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.util.ProductsReporterImpl$report$2"
    f = "ProductsReporter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/l/a/h0;


# direct methods
.method public constructor <init>(Le/a/l/a/h0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/a/h0$c;->e:Le/a/l/a/h0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/a/h0$c;

    iget-object v0, p0, Le/a/l/a/h0$c;->e:Le/a/l/a/h0;

    invoke-direct {p1, v0, p2}, Le/a/l/a/h0$c;-><init>(Le/a/l/a/h0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/l/a/h0$c;->e:Le/a/l/a/h0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v0, p1, Le/a/l/a/h0;->b:Le/a/l/s2/a;

    .line 7
    invoke-interface {v0}, Le/a/l/s2/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p1, Le/a/l/a/h0;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l/p2/t0;

    .line 9
    iget-object v2, p1, Le/a/l/a/h0;->c:Le/a/l/u2/a;

    .line 10
    invoke-interface {v2}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/premium/provider/Store;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Le/a/l/p2/t0;->c(Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object v0

    .line 11
    :try_start_0
    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object v0

    const-string v1, "call.execute()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Le/a/l/a/h0;->a(Le/a/l/a/h0;Ljava/lang/StringBuilder;Lx3/a0;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error while fetching products: "

    .line 12
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "append(value)"

    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "append(\'\\n\')"

    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v0, p0, Le/a/l/a/h0$c;->e:Le/a/l/a/h0;

    .line 4
    iget-object v0, v0, Le/a/l/a/h0;->b:Le/a/l/s2/a;

    .line 5
    invoke-interface {v0}, Le/a/l/s2/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Le/a/l/a/h0$c;->e:Le/a/l/a/h0;

    .line 7
    iget-object v1, v1, Le/a/l/a/h0;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l/p2/t0;

    .line 8
    iget-object v2, p0, Le/a/l/a/h0$c;->e:Le/a/l/a/h0;

    .line 9
    iget-object v2, v2, Le/a/l/a/h0;->c:Le/a/l/u2/a;

    .line 10
    invoke-interface {v2}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/premium/provider/Store;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Le/a/l/p2/t0;->c(Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object v0

    .line 11
    :try_start_0
    iget-object v1, p0, Le/a/l/a/h0$c;->e:Le/a/l/a/h0;

    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object v0

    const-string v2, "call.execute()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, v0}, Le/a/l/a/h0;->a(Le/a/l/a/h0;Ljava/lang/StringBuilder;Lx3/a0;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error while fetching products: "

    .line 12
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "append(value)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "append(\'\\n\')"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
