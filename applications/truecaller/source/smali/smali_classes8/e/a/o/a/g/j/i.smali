.class public final Le/a/o/a/g/j/i;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/contextcall/utils/ContextCallState;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contextcall.ui.custommessage.ondemand.OnDemandCustomMessagePresenter$maybeListenToCurrentCallState$1"
    f = "OnDemandCustomMessagePresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/o/a/g/j/l;


# direct methods
.method public constructor <init>(Le/a/o/a/g/j/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/g/j/i;->f:Le/a/o/a/g/j/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/o/a/g/j/i;

    iget-object v1, p0, Le/a/o/a/g/j/i;->f:Le/a/o/a/g/j/l;

    invoke-direct {v0, v1, p2}, Le/a/o/a/g/j/i;-><init>(Le/a/o/a/g/j/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/o/a/g/j/i;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/o/a/g/j/i;

    iget-object v1, p0, Le/a/o/a/g/j/i;->f:Le/a/o/a/g/j/l;

    invoke-direct {v0, v1, p2}, Le/a/o/a/g/j/i;-><init>(Le/a/o/a/g/j/l;Ls1/w/d;)V

    iput-object p1, v0, Le/a/o/a/g/j/i;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/o/a/g/j/i;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/o/a/g/j/i;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/contextcall/utils/ContextCallState;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 3
    iget-object p1, p0, Le/a/o/a/g/j/i;->f:Le/a/o/a/g/j/l;

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1}, Le/a/o/a/g/f;->s()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 7
    :cond_1
    iget-object p1, p0, Le/a/o/a/g/j/i;->f:Le/a/o/a/g/j/l;

    .line 8
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/j/h;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Le/a/o/a/g/j/h;->l6()V

    goto :goto_0

    :cond_2
    move p1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v1

    .line 10
    :goto_1
    iget-object v2, p0, Le/a/o/a/g/j/i;->f:Le/a/o/a/g/j/l;

    .line 11
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Le/a/o/a/g/j/h;

    if-eqz v3, :cond_8

    if-eqz p1, :cond_7

    check-cast v2, Le/a/o/a/g/j/h;

    if-eqz v2, :cond_4

    .line 12
    invoke-interface {v2}, Le/a/o/a/g/j/h;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    move p1, v1

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v0

    :goto_4
    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    move v0, v1

    :goto_5
    invoke-interface {v3, v0}, Le/a/o/a/g/f;->C8(Z)V

    .line 13
    :cond_8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
