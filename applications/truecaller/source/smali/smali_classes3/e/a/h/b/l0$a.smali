.class public final Le/a/h/b/l0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/l0;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Le/a/h/b/e/d;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.DialpadPresenter$onAttachView$1$numberFormatter$1"
    f = "DialpadPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/h/b/l0;


# direct methods
.method public constructor <init>(Le/a/h/b/l0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/l0$a;->e:Le/a/h/b/l0;

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

    new-instance p1, Le/a/h/b/l0$a;

    iget-object v0, p0, Le/a/h/b/l0$a;->e:Le/a/h/b/l0;

    invoke-direct {p1, v0, p2}, Le/a/h/b/l0$a;-><init>(Le/a/h/b/l0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/h/b/l0$a;->e:Le/a/h/b/l0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    new-instance p2, Le/a/h/b/e/d;

    iget-object p1, p1, Le/a/h/b/l0;->f:Le/a/h/b/m0;

    .line 6
    iget-object p1, p1, Le/a/h/b/m0;->r:Le/a/b0/e/l;

    .line 7
    invoke-interface {p1}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p1, Le/a/b0/e/b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 9
    :goto_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "Locale.ROOT"

    const-string v2, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v0, v1, p1, v0, v2}, Le/d/c/a/a;->p(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Le/a/h/b/e/d;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Le/a/h/b/e/d;

    iget-object v0, p0, Le/a/h/b/l0$a;->e:Le/a/h/b/l0;

    iget-object v0, v0, Le/a/h/b/l0;->f:Le/a/h/b/m0;

    .line 3
    iget-object v0, v0, Le/a/h/b/m0;->r:Le/a/b0/e/l;

    .line 4
    invoke-interface {v0}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Le/a/b0/e/b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 6
    :goto_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Locale.ROOT"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Le/a/h/b/e/d;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
