.class public final Le/a/f4/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# instance fields
.field public final a:Z

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/f4/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/f4/b/d;


# direct methods
.method public constructor <init>(ZLo3/a;Le/a/f4/b/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lo3/a<",
            "Le/a/f4/a/d;",
            ">;",
            "Le/a/f4/b/d;",
            ")V"
        }
    .end annotation

    const-string v0, "credentialsChecker"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crossDomainSupport"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/f4/a/g;->a:Z

    iput-object p2, p0, Le/a/f4/a/g;->b:Lo3/a;

    iput-object p3, p0, Le/a/f4/a/g;->c:Le/a/f4/b/d;

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/f4/a/g;->c:Le/a/f4/b/d;

    invoke-static {v0}, Le/a/n/g0;->T(Lu3/g0;)Le/a/b0/b/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/f4/b/a;->a(Le/a/b0/b/e;)Z

    move-result v1

    .line 3
    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1

    .line 4
    iget v2, p1, Lu3/k0;->e:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v2, p0, Le/a/f4/a/g;->a:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Le/a/f4/a/g;->b:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f4/a/d;

    .line 7
    iget-object v0, v0, Lu3/g0;->b:Lu3/a0;

    .line 8
    iget-object v0, v0, Lu3/a0;->j:Ljava/lang/String;

    .line 9
    invoke-interface {v1, v0}, Le/a/f4/a/d;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1
.end method
