.class public final Le/a/l/n2/a$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/n2/a;->a(Ls1/w/d;)Ljava/lang/Object;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.billing.GooglePlayBilling$destroy$2"
    f = "GooglePlayBilling.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/l/n2/a;


# direct methods
.method public constructor <init>(Le/a/l/n2/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/n2/a$c;->e:Le/a/l/n2/a;

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

    new-instance p1, Le/a/l/n2/a$c;

    iget-object v0, p0, Le/a/l/n2/a$c;->e:Le/a/l/n2/a;

    invoke-direct {p1, v0, p2}, Le/a/l/n2/a$c;-><init>(Le/a/l/n2/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/l/n2/a$c;->e:Le/a/l/n2/a;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/l/n2/a;->b:Ls1/z/b/l;

    if-nez p2, :cond_1

    .line 5
    iget-object p2, v0, Le/a/l/n2/a;->a:Le/d/a/a/d;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Le/d/a/a/d;->e()Z

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 7
    iget-object p2, v0, Le/a/l/n2/a;->a:Le/d/a/a/d;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Le/d/a/a/d;->c()V

    :cond_0
    const/4 p2, 0x0

    .line 9
    iput-object p2, v0, Le/a/l/n2/a;->a:Le/d/a/a/d;

    :cond_1
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/l/n2/a$c;->e:Le/a/l/n2/a;

    .line 3
    iget-object v0, p1, Le/a/l/n2/a;->b:Ls1/z/b/l;

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p1, Le/a/l/n2/a;->a:Le/d/a/a/d;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Le/d/a/a/d;->e()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Le/a/l/n2/a$c;->e:Le/a/l/n2/a;

    .line 7
    iget-object p1, p1, Le/a/l/n2/a;->a:Le/d/a/a/d;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Le/d/a/a/d;->c()V

    .line 9
    :cond_0
    iget-object p1, p0, Le/a/l/n2/a$c;->e:Le/a/l/n2/a;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Le/a/l/n2/a;->a:Le/d/a/a/d;

    .line 11
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
