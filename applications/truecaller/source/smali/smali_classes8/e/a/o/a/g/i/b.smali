.class public final Le/a/o/a/g/i/b;
.super Le/a/o/a/g/i/a;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/g/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o/a/g/a<",
        "Le/a/o/a/g/i/e;",
        "Le/a/o/a/g/i/d;",
        ">;",
        "Le/a/o/a/g/i/e;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u001f\u0010\u0006J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001f\u0010\u000c\u001a\u0004\u0018\u00010\u00078V@\u0016X\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\u00038\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0018\u001a\u00020\u00148V@\u0016X\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\t\u001a\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u001e\u001a\u00020\u00198\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Le/a/o/a/g/i/b;",
        "Le/a/o/a/g/a;",
        "Le/a/o/a/g/i/e;",
        "Le/a/o/a/g/i/d;",
        "Ls1/s;",
        "t7",
        "()V",
        "Lcom/truecaller/contextcall/db/reason/CallReason;",
        "l",
        "Ls1/g;",
        "T3",
        "()Lcom/truecaller/contextcall/db/reason/CallReason;",
        "callReason",
        "i",
        "Le/a/o/a/g/i/d;",
        "getAddCallReasonPresenter$context_call_release",
        "()Le/a/o/a/g/i/d;",
        "setAddCallReasonPresenter$context_call_release",
        "(Le/a/o/a/g/i/d;)V",
        "addCallReasonPresenter",
        "Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;",
        "k",
        "r",
        "()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;",
        "requestedCallOptions",
        "Le/a/o/a/g/d;",
        "j",
        "Le/a/o/a/g/d;",
        "RA",
        "()Le/a/o/a/g/d;",
        "type",
        "<init>",
        "context-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public i:Le/a/o/a/g/i/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final j:Le/a/o/a/g/d;

.field public final k:Ls1/g;

.field public final l:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/o/a/g/i/a;-><init>()V

    .line 2
    sget-object v0, Le/a/o/a/g/d$d;->a:Le/a/o/a/g/d$d;

    iput-object v0, p0, Le/a/o/a/g/i/b;->j:Le/a/o/a/g/d;

    .line 3
    new-instance v0, Le/a/o/a/g/i/b$b;

    invoke-direct {v0, p0}, Le/a/o/a/g/i/b$b;-><init>(Le/a/o/a/g/i/b;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/o/a/g/i/b;->k:Ls1/g;

    .line 4
    new-instance v0, Le/a/o/a/g/i/b$a;

    invoke-direct {v0, p0}, Le/a/o/a/g/i/b$a;-><init>(Le/a/o/a/g/i/b;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/o/a/g/i/b;->l:Ls1/g;

    return-void
.end method


# virtual methods
.method public QA()Le/a/o/a/g/f;
    .locals 0

    return-object p0
.end method

.method public RA()Le/a/o/a/g/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/a/g/i/b;->j:Le/a/o/a/g/d;

    return-object v0
.end method

.method public SA()Le/a/o/a/g/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/a/g/i/b;->i:Le/a/o/a/g/i/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "addCallReasonPresenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public T3()Lcom/truecaller/contextcall/db/reason/CallReason;
    .locals 1

    iget-object v0, p0, Le/a/o/a/g/i/b;->l:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/contextcall/db/reason/CallReason;

    return-object v0
.end method

.method public r()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;
    .locals 1

    iget-object v0, p0, Le/a/o/a/g/i/b;->k:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;

    return-object v0
.end method

.method public t7()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/o/a/g/a;->t7()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
