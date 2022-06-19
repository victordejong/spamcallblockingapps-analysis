.class public final Le/a/o/a/g/g/a;
.super Le/a/o/a/g/g/f;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/g/g/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/o/a/g/g/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o/a/g/a<",
        "Le/a/o/a/g/g/d;",
        "Le/a/o/a/g/g/c;",
        ">;",
        "Le/a/o/a/g/g/d;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0007\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0002:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\t\u001a\u00020\u00048\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\r\u001a\u00020\n8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u0013\u001a\u00020\u000e8V@\u0016X\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\"\u0010\u001a\u001a\u00020\u00038\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Le/a/o/a/g/g/a;",
        "Le/a/o/a/g/a;",
        "Le/a/o/a/g/g/d;",
        "Le/a/o/a/g/g/c;",
        "Le/a/o/a/g/d;",
        "j",
        "Le/a/o/a/g/d;",
        "RA",
        "()Le/a/o/a/g/d;",
        "type",
        "",
        "i5",
        "()Ljava/lang/String;",
        "hint",
        "Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;",
        "k",
        "Ls1/g;",
        "Q3",
        "()Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;",
        "manageCallReasonAnalyticsContext",
        "i",
        "Le/a/o/a/g/g/c;",
        "getAddCallReasonPresenter",
        "()Le/a/o/a/g/g/c;",
        "setAddCallReasonPresenter",
        "(Le/a/o/a/g/g/c;)V",
        "addCallReasonPresenter",
        "<init>",
        "()V",
        "l",
        "a",
        "context-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final l:Le/a/o/a/g/g/a$a;


# instance fields
.field public i:Le/a/o/a/g/g/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final j:Le/a/o/a/g/d;

.field public final k:Ls1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/o/a/g/g/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/o/a/g/g/a$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/o/a/g/g/a;->l:Le/a/o/a/g/g/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/o/a/g/g/f;-><init>()V

    .line 2
    sget-object v0, Le/a/o/a/g/d$a;->a:Le/a/o/a/g/d$a;

    iput-object v0, p0, Le/a/o/a/g/g/a;->j:Le/a/o/a/g/d;

    .line 3
    new-instance v0, Le/a/o/a/g/g/a$b;

    invoke-direct {v0, p0}, Le/a/o/a/g/g/a$b;-><init>(Le/a/o/a/g/g/a;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/o/a/g/g/a;->k:Ls1/g;

    return-void
.end method

.method public static final VA(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Le/a/o/a/g/g/a;
    .locals 3

    const-string v0, "fragmentManager"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Le/a/o/a/g/g/a;

    invoke-direct {v1}, Le/a/o/a/g/g/a;-><init>()V

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "manage_call_reason_source"

    const/4 v0, 0x0

    .line 5
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    const-class p1, Le/a/o/a/g/g/a;

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public Q3()Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;
    .locals 1

    iget-object v0, p0, Le/a/o/a/g/g/a;->k:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;

    return-object v0
.end method

.method public QA()Le/a/o/a/g/f;
    .locals 0

    return-object p0
.end method

.method public RA()Le/a/o/a/g/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/a/g/g/a;->j:Le/a/o/a/g/d;

    return-object v0
.end method

.method public SA()Le/a/o/a/g/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/a/g/g/a;->i:Le/a/o/a/g/g/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "addCallReasonPresenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public i5()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "hint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
