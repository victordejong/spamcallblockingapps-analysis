.class public final Le/a/f4/e/a$a;
.super Lp3/a/w$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f4/e/a;->a(Lp3/a/p0;Lp3/a/c;Lp3/a/d;)Lp3/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/w$a<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/f4/e/a;

.field public final synthetic c:Lp3/a/d;


# direct methods
.method public constructor <init>(Le/a/f4/e/a;Lp3/a/d;Lp3/a/p0;Lp3/a/c;Lp3/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/d;",
            "Lp3/a/p0;",
            "Lp3/a/c;",
            "Lp3/a/f;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/f4/e/a$a;->b:Le/a/f4/e/a;

    iput-object p2, p0, Le/a/f4/e/a$a;->c:Lp3/a/d;

    .line 2
    invoke-direct {p0, p5}, Lp3/a/w$a;-><init>(Lp3/a/f;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp3/a/w$a;->f()Lp3/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lp3/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-static {p2}, Lp3/a/g1;->e(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    const-string p2, "status"

    .line 3
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p2, p1, Lp3/a/g1;->a:Lp3/a/g1$b;

    .line 5
    sget-object v0, Lp3/a/g1;->l:Lp3/a/g1;

    const-string v1, "Status.UNAUTHENTICATED"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, v0, Lp3/a/g1;->a:Lp3/a/g1$b;

    if-ne p2, v0, :cond_0

    .line 7
    :try_start_0
    iget-object p1, p0, Le/a/f4/e/a$a;->b:Le/a/f4/e/a;

    .line 8
    iget-object p1, p1, Le/a/f4/e/a;->a:Le/a/f4/a/d;

    .line 9
    iget-object p2, p0, Le/a/f4/e/a$a;->c:Lp3/a/d;

    invoke-virtual {p2}, Lp3/a/d;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "next.authority()"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Le/a/f4/a/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lp3/a/g1;->n:Lp3/a/g1;

    const-string v1, "Status.FAILED_PRECONDITION"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, v0, Lp3/a/g1;->a:Lp3/a/g1$b;

    if-ne p2, v0, :cond_1

    .line 12
    iget-object p1, p1, Lp3/a/g1;->b:Ljava/lang/String;

    const-string p2, "NOT_REGISTERED"

    .line 13
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Le/a/f4/e/a$a;->b:Le/a/f4/e/a;

    .line 15
    iget-object p1, p1, Le/a/f4/e/a;->b:Le/a/a/i0;

    const/4 p2, 0x0

    .line 16
    invoke-interface {p1, p2}, Le/a/a/i0;->l4(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    sget-object v0, Lp3/a/g1;->j:Lp3/a/g1;

    const-string v1, "Status.NOT_FOUND"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, v0, Lp3/a/g1;->a:Lp3/a/g1$b;

    if-ne p2, v0, :cond_2

    .line 19
    iget-object p1, p1, Lp3/a/g1;->b:Ljava/lang/String;

    const-string p2, "GROUP"

    .line 20
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p0, Le/a/f4/e/a$a;->b:Le/a/f4/e/a;

    .line 22
    iget-object p1, p1, Le/a/f4/e/a;->c:Le/a/r2/f;

    .line 23
    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/k/a/a/m;

    const/4 p2, 0x0

    .line 24
    invoke-interface {p1, p2, p2}, Le/a/a/k/a/a/m;->d(ZZ)V

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
