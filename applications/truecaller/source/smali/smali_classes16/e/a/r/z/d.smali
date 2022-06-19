.class public final Le/a/r/z/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/z/n;


# instance fields
.field public final a:Le/a/r/h;


# direct methods
.method public constructor <init>(Le/a/r/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/z/d;->a:Le/a/r/h;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/account/network/TokenResponseDto;Ljava/lang/Long;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/account/network/TokenResponseDto;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/account/network/TokenResponseDto;->getParsedPhoneNumber()Ljava/lang/Long;

    move-result-object p4

    if-eqz p4, :cond_0

    move-object p2, p4

    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Le/a/p5/s0/g;->e(J)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/account/network/TokenResponseDto;->getParsedCountryCode()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    move-object p3, p4

    :cond_1
    if-eqz p3, :cond_3

    .line 3
    iget-object p4, p0, Le/a/r/z/d;->a:Le/a/r/h;

    invoke-interface {p4, p2, p3}, Le/a/r/h;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/account/network/TokenResponseDto;->getSuspended()Ljava/lang/Boolean;

    move-result-object p1

    .line 5
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    invoke-static {p1, p3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Le/a/r/z/d;->a:Le/a/r/h;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-interface {p1, p3, v0, v1}, Le/a/r/h;->f(Ljava/lang/String;J)V

    .line 8
    :cond_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method
