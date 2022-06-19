.class public Le/a/e/b2/e;
.super Le/a/e/b2/c;
.source "SourceFile"


# instance fields
.field public final b:Le/a/f4/g/p;

.field public final c:Ljava/lang/String;

.field public d:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field public final e:Le/a/q2/a;

.field public final f:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/f4/g/p;Ljava/lang/String;Le/a/q2/a;Lcom/truecaller/calling/initiate_call/InitiateCallHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/e/b2/c;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/e/b2/e;->b:Le/a/f4/g/p;

    .line 3
    iput-object p1, p0, Le/a/e/b2/e;->c:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Le/a/e/b2/e;->e:Le/a/q2/a;

    .line 5
    iput-object p5, p0, Le/a/e/b2/e;->f:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    return-void
.end method


# virtual methods
.method public Hj(Ln3/r/a/l;)V
    .locals 10

    .line 1
    iget-object v1, p0, Le/a/e/b2/e;->c:Ljava/lang/String;

    const-string v2, "deepLinkClickToCall"

    const-string p1, "analyticsContext"

    .line 2
    invoke-static {v2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v9, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;->a:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption$ShowOnBoarded;

    const/4 v8, 0x1

    .line 4
    new-instance p1, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V

    .line 5
    iget-object v0, p0, Le/a/e/b2/e;->f:Lcom/truecaller/calling/initiate_call/InitiateCallHelper;

    invoke-interface {v0, p1}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper;->b(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Le/a/e/b2/f;

    .line 2
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Le/a/e/b2/e;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Le/a/e/b2/f;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Le/a/e/b2/e;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Le/a/e/b2/e;->b:Le/a/f4/g/p;

    .line 6
    iput-object p1, v0, Le/a/f4/g/p;->p:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Le/a/f4/g/p;->d()Le/a/f4/g/p;

    new-instance p1, Le/a/e/b2/d;

    invoke-direct {p1, p0}, Le/a/e/b2/d;-><init>(Le/a/e/b2/e;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v2, v3, p1}, Le/a/f4/g/p;->f(Le/a/j4/a/d;ZZLe/a/f4/g/p$c;)Landroid/os/AsyncTask;

    move-result-object p1

    .line 9
    iput-object p1, p0, Le/a/e/b2/e;->d:Landroid/os/AsyncTask;

    .line 10
    iget-object p1, p0, Le/a/e/b2/e;->e:Le/a/q2/a;

    const-string v0, "callConfirmation"

    invoke-static {v0}, Le/a/q2/y0/a/a;->b(Ljava/lang/String;)Le/a/q2/y0/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/a/e/b2/e;->d:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method
