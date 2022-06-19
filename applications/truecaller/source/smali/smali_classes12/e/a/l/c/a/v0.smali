.class public final Le/a/l/c/a/v0;
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
        "Le/a/l/c/a/t$l;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.premiumusertab.list.PremiumSpamStatsCardPayloadCreator$createPayload$2"
    f = "PremiumSpamStatsCardPayloadCreator.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/l/c/a/w0;


# direct methods
.method public constructor <init>(Le/a/l/c/a/w0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/a/v0;->e:Le/a/l/c/a/w0;

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

    new-instance p1, Le/a/l/c/a/v0;

    iget-object v0, p0, Le/a/l/c/a/v0;->e:Le/a/l/c/a/w0;

    invoke-direct {p1, v0, p2}, Le/a/l/c/a/v0;-><init>(Le/a/l/c/a/w0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/l/c/a/v0;->e:Le/a/l/c/a/w0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/l/c/a/w0;->b:Le/a/c0/h;

    .line 6
    iget-object p2, p2, Le/a/c0/h;->k:Le/a/c0/c;

    .line 7
    invoke-virtual {p2}, Le/a/c0/c;->g()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 8
    iget-object p2, p1, Le/a/l/c/a/w0;->c:Le/a/l/p2/v0;

    .line 9
    invoke-interface {p2}, Le/a/l/p2/v0;->H()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    iget-object p1, p1, Le/a/l/c/a/w0;->a:Le/a/u3/g;

    .line 11
    iget-object p2, p1, Le/a/u3/g;->M2:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0xc2

    aget-object v1, v1, v2

    invoke-virtual {p2, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    check-cast p1, Le/a/u3/i;

    .line 12
    invoke-interface {p1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    :try_start_0
    new-instance p2, Le/m/e/k;

    invoke-direct {p2}, Le/m/e/k;-><init>()V

    const-class v1, Le/a/l/c/a/u0;

    invoke-virtual {p2, p1, v1}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/a/u0;

    .line 15
    new-instance p2, Le/a/l/c/a/t$l;

    const-string v1, "premiumSpamStats"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/l/c/a/t$l;-><init>(Le/a/l/c/a/u0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p2

    goto :goto_1

    :catch_0
    const-string p1, "Premium spam stat json format is invalid"

    .line 16
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/l/c/a/v0;->e:Le/a/l/c/a/w0;

    .line 3
    iget-object p1, p1, Le/a/l/c/a/w0;->b:Le/a/c0/h;

    .line 4
    iget-object p1, p1, Le/a/c0/h;->k:Le/a/c0/c;

    .line 5
    invoke-virtual {p1}, Le/a/c0/c;->g()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/l/c/a/v0;->e:Le/a/l/c/a/w0;

    .line 6
    iget-object p1, p1, Le/a/l/c/a/w0;->c:Le/a/l/p2/v0;

    .line 7
    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/l/c/a/v0;->e:Le/a/l/c/a/w0;

    .line 9
    iget-object p1, p1, Le/a/l/c/a/w0;->a:Le/a/u3/g;

    .line 10
    iget-object v1, p1, Le/a/u3/g;->M2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xc2

    aget-object v2, v2, v3

    invoke-virtual {v1, p1, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    check-cast p1, Le/a/u3/i;

    .line 11
    invoke-interface {p1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return-object v0

    .line 13
    :cond_2
    :try_start_0
    new-instance v1, Le/m/e/k;

    invoke-direct {v1}, Le/m/e/k;-><init>()V

    const-class v2, Le/a/l/c/a/u0;

    invoke-virtual {v1, p1, v2}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/a/u0;

    .line 14
    new-instance v1, Le/a/l/c/a/t$l;

    const-string v2, "premiumSpamStats"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Le/a/l/c/a/t$l;-><init>(Le/a/l/c/a/u0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    const-string p1, "Premium spam stat json format is invalid"

    .line 15
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0
.end method
