.class public final Le/a/o/i;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/o/g;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contextcall.ContextCallSupportImpl$getContactByNumber$2"
    f = "ContextCallSupportImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/o/h;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/o/h;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/i;->e:Le/a/o/h;

    iput-object p2, p0, Le/a/o/i;->f:Ljava/lang/String;

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

    new-instance p1, Le/a/o/i;

    iget-object v0, p0, Le/a/o/i;->e:Le/a/o/h;

    iget-object v1, p0, Le/a/o/i;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/o/i;-><init>(Le/a/o/h;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/o/i;->e:Le/a/o/h;

    iget-object v0, p0, Le/a/o/i;->f:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/o/h;->e:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k3/j/b;

    invoke-virtual {p1, v0}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "aggregatedContactDao.get\u2026: return@withContext null"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Le/a/o/g;

    const/4 v1, 0x7

    const/4 v2, 0x0

    .line 8
    invoke-static {p1, v2, v2, p2, v1}, Le/m/d/y/n;->s(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p2

    .line 9
    invoke-direct {v0, p1, p2}, Le/a/o/g;-><init>(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/o/i;->e:Le/a/o/h;

    .line 3
    iget-object p1, p1, Le/a/o/h;->e:Lo3/a;

    .line 4
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k3/j/b;

    iget-object v0, p0, Le/a/o/i;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "aggregatedContactDao.get\u2026: return@withContext null"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Le/a/o/g;

    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v3, v3, v0, v2}, Le/m/d/y/n;->s(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v0

    .line 7
    invoke-direct {v1, p1, v0}, Le/a/o/g;-><init>(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    return-object v1

    :cond_0
    return-object v0
.end method
