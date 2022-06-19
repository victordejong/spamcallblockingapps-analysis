.class public final Le/a/h/e/q;
.super Le/a/u2/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/d<",
        "Le/a/h/e/o;",
        "Le/a/h/e/p;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

.field public final h:Le/a/h/r0/b;


# direct methods
.method public constructor <init>(Le/a/h/r0/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "phoneAccountsManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/d;-><init>()V

    iput-object p1, p0, Le/a/h/e/q;->h:Le/a/h/r0/b;

    .line 2
    sget-object p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;

    iput-object p1, p0, Le/a/h/e/q;->g:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    return-void
.end method


# virtual methods
.method public Hj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V
    .locals 6

    const-string v1, "number"

    const-string v3, "displayName"

    const-string v5, "analyticsContext"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/h/e/q;->c:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Le/a/h/e/q;->d:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Le/a/h/e/q;->e:Ljava/lang/String;

    .line 4
    iput-boolean p4, p0, Le/a/h/e/q;->f:Z

    if-eqz p5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p5, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$Skip;

    :goto_0
    iput-object p5, p0, Le/a/h/e/q;->g:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    .line 6
    invoke-static {p1}, Le/a/b0/q/c0;->e(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Non-callable number was passed"

    .line 7
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/e/p;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/h/e/p;->t()V

    :cond_1
    return-void

    .line 9
    :cond_2
    iget-object p1, p0, Le/a/h/e/q;->h:Le/a/h/r0/b;

    invoke-interface {p1}, Le/a/h/r0/b;->a()Ljava/util/List;

    move-result-object p1

    .line 10
    iget-object p3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/h/e/p;

    if-eqz p3, :cond_3

    invoke-interface {p3, p1, p2}, Le/a/h/e/p;->C2(Ljava/util/List;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
