.class public final Le/a/e3/g/b$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e3/g/b;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.call_alert.debug.NotificationDebugDialog$showBusinessCard$1$businessCard$1"
    f = "NotificationDebugDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/e3/g/b;


# direct methods
.method public constructor <init>(Le/a/e3/g/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e3/g/b$b;->e:Le/a/e3/g/b;

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

    new-instance p1, Le/a/e3/g/b$b;

    iget-object v0, p0, Le/a/e3/g/b$b;->e:Le/a/e3/g/b;

    invoke-direct {p1, v0, p2}, Le/a/e3/g/b$b;-><init>(Le/a/e3/g/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/e3/g/b$b;->e:Le/a/e3/g/b;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    .line 6
    iget-object p1, p1, Le/a/e3/g/a;->a:Le/a/d3/h;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Le/a/d3/h;->a()Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "businessCardRepository"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/e3/g/b$b;->e:Le/a/e3/g/b;

    iget-object p1, p1, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    .line 3
    iget-object p1, p1, Le/a/e3/g/a;->a:Le/a/d3/h;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/a/d3/h;->a()Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "businessCardRepository"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
