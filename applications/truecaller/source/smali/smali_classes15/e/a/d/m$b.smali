.class public final Le/a/d/m$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/m;->z(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/d/c0/k1;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.VoipSupportImpl$fetchContactFromCache$2"
    f = "VoipSupportImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/m;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/m;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/m$b;->e:Le/a/d/m;

    iput-object p2, p0, Le/a/d/m$b;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/d/m$b;

    iget-object v0, p0, Le/a/d/m$b;->e:Le/a/d/m;

    iget-object v1, p0, Le/a/d/m$b;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/m$b;-><init>(Le/a/d/m;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/d/m$b;->e:Le/a/d/m;

    iget-object v0, p0, Le/a/d/m$b;->f:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/d/m;->n:Le/a/k3/j/b;

    .line 6
    invoke-virtual {p2, v0}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "aggregatedContactDao.get\u2026: return@withContext null"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p1, Le/a/d/m;->o:Lo3/a;

    .line 8
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/w4/d;

    invoke-interface {v0, p2}, Le/a/w4/d;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    .line 9
    invoke-virtual {p1, p2, v0}, Le/a/d/m;->K(Lcom/truecaller/data/entity/Contact;Z)Le/a/d/c0/k1;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/m$b;->e:Le/a/d/m;

    .line 3
    iget-object p1, p1, Le/a/d/m;->n:Le/a/k3/j/b;

    .line 4
    iget-object v0, p0, Le/a/d/m$b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "aggregatedContactDao.get\u2026: return@withContext null"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/d/m$b;->e:Le/a/d/m;

    .line 6
    iget-object v0, v0, Le/a/d/m;->o:Lo3/a;

    .line 7
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/w4/d;

    invoke-interface {v0, p1}, Le/a/w4/d;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    .line 8
    iget-object v1, p0, Le/a/d/m$b;->e:Le/a/d/m;

    .line 9
    invoke-virtual {v1, p1, v0}, Le/a/d/m;->K(Lcom/truecaller/data/entity/Contact;Z)Le/a/d/c0/k1;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
