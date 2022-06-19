.class public final Le/a/o/a/g/h/a;
.super Le/a/o/a/g/h/f;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/g/h/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o/a/g/a<",
        "Le/a/o/a/g/h/d;",
        "Le/a/o/a/g/h/c;",
        ">;",
        "Le/a/o/a/g/h/d;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u000c\u001a\u00020\u00078\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\u00038\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Le/a/o/a/g/h/a;",
        "Le/a/o/a/g/a;",
        "Le/a/o/a/g/h/d;",
        "Le/a/o/a/g/h/c;",
        "Lcom/truecaller/contextcall/db/reason/CallReason;",
        "T3",
        "()Lcom/truecaller/contextcall/db/reason/CallReason;",
        "Le/a/o/a/g/d;",
        "j",
        "Le/a/o/a/g/d;",
        "RA",
        "()Le/a/o/a/g/d;",
        "type",
        "i",
        "Le/a/o/a/g/h/c;",
        "getAddCallReasonPresenter$context_call_release",
        "()Le/a/o/a/g/h/c;",
        "setAddCallReasonPresenter$context_call_release",
        "(Le/a/o/a/g/h/c;)V",
        "addCallReasonPresenter",
        "<init>",
        "()V",
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
.field public i:Le/a/o/a/g/h/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final j:Le/a/o/a/g/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/o/a/g/h/f;-><init>()V

    .line 2
    sget-object v0, Le/a/o/a/g/d$b;->a:Le/a/o/a/g/d$b;

    iput-object v0, p0, Le/a/o/a/g/h/a;->j:Le/a/o/a/g/d;

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
    iget-object v0, p0, Le/a/o/a/g/h/a;->j:Le/a/o/a/g/d;

    return-object v0
.end method

.method public SA()Le/a/o/a/g/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/a/g/h/a;->i:Le/a/o/a/g/h/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "addCallReasonPresenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public T3()Lcom/truecaller/contextcall/db/reason/CallReason;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "CallReason"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/contextcall/db/reason/CallReason;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Call reason needs to be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
