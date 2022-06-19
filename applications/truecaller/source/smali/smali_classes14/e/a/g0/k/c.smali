.class public final Le/a/g0/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g0/k/b;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Le/a/d4/c;

.field public final d:Le/a/g0/k/d;

.field public final e:Le/a/g0/k/d;


# direct methods
.method public constructor <init>(Le/a/d4/c;Le/a/g0/k/d;Le/a/g0/k/d;)V
    .locals 1
    .param p2    # Le/a/g0/k/d;
        .annotation runtime Ljavax/inject/Named;
            value = "pu+gmsc"
        .end annotation
    .end param
    .param p3    # Le/a/g0/k/d;
        .annotation runtime Ljavax/inject/Named;
            value = "pu+hmsc"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "mobileServicesAvailabilityProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmsCaptchaProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hmsCaptchaProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g0/k/c;->c:Le/a/d4/c;

    iput-object p2, p0, Le/a/g0/k/c;->d:Le/a/g0/k/d;

    iput-object p3, p0, Le/a/g0/k/c;->e:Le/a/g0/k/d;

    .line 2
    new-instance p1, Le/a/g0/k/c$a;

    invoke-direct {p1, p0}, Le/a/g0/k/c$a;-><init>(Le/a/g0/k/c;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/g0/k/c;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/g0/k/c$b;

    invoke-direct {p1, p0}, Le/a/g0/k/c$b;-><init>(Le/a/g0/k/c;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/g0/k/c;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a()Le/a/d4/e;
    .locals 1

    iget-object v0, p0, Le/a/g0/k/c;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d4/e;

    return-object v0
.end method

.method public final b()Le/a/g0/k/d;
    .locals 1

    iget-object v0, p0, Le/a/g0/k/c;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g0/k/d;

    return-object v0
.end method
