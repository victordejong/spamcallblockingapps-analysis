.class public abstract Le/a/b/a/c/a/a/d;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/c/a/r;
.implements Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Le/a/b/a/c/a/r;",
        ">",
        "Landroidx/fragment/app/Fragment;",
        "Le/a/b/a/c/a/r;",
        "Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u000bJ\u001d\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bR\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Le/a/b/a/c/a/a/d;",
        "Le/a/b/a/c/a/r;",
        "T",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;",
        "Le/a/b/a/c/a/q;",
        "parentPresenter",
        "Ls1/s;",
        "OA",
        "(Le/a/b/a/c/a/q;)V",
        "E6",
        "()V",
        "xy",
        "a",
        "Le/a/b/a/c/a/q;",
        "<init>",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/b/a/c/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/b/a/c/a/q<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public E6()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/a/d;->a:Le/a/b/a/c/a/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/b/a/c/a/q;->kc()V

    return-void

    :cond_0
    const-string v0, "parentPresenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final OA(Le/a/b/a/c/a/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b/a/c/a/q<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "parentPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b/a/c/a/a/d;->a:Le/a/b/a/c/a/q;

    return-void
.end method

.method public xy()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/c/a/a/d;->a:Le/a/b/a/c/a/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/b/a/c/a/q;->xd()V

    return-void

    :cond_0
    const-string v0, "parentPresenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
