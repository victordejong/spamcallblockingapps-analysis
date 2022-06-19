.class public abstract Le/a/x/b;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Le/a/x/g;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008#\u0010\u000fJ!\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118$@$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0004@\u0004X\u0084.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8$@$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\"\u001a\u00020\u00118$@$X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0013\u00a8\u0006$"
    }
    d2 = {
        "Le/a/x/b;",
        "Landroidx/fragment/app/Fragment;",
        "Le/a/x/g;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Le/a/f/z/k0;",
        "profilePicture",
        "C3",
        "(Le/a/f/z/k0;)V",
        "C5",
        "()V",
        "T1",
        "Landroid/widget/TextView;",
        "PA",
        "()Landroid/widget/TextView;",
        "regularCallerLabel",
        "Le/a/b0/a/b/a;",
        "a",
        "Le/a/b0/a/b/a;",
        "getAvatarPresenter",
        "()Le/a/b0/a/b/a;",
        "setAvatarPresenter",
        "(Le/a/b0/a/b/a;)V",
        "avatarPresenter",
        "Lcom/truecaller/common/ui/avatar/AvatarXView;",
        "OA",
        "()Lcom/truecaller/common/ui/avatar/AvatarXView;",
        "avatar",
        "QA",
        "simSlot",
        "<init>",
        "ghost-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/b0/a/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public C3(Le/a/f/z/k0;)V
    .locals 4

    const-string v0, "profilePicture"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/x/b;->a:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Le/a/m0/a1$k;->R0(Le/a/f/z/k0;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p1, v2, v3, v1}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Le/a/x/b;->OA()Lcom/truecaller/common/ui/avatar/AvatarXView;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void

    :cond_0
    const-string p1, "avatarPresenter"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public C5()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/x/b;->QA()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public abstract OA()Lcom/truecaller/common/ui/avatar/AvatarXView;
.end method

.method public abstract PA()Landroid/widget/TextView;
.end method

.method public abstract QA()Landroid/widget/TextView;
.end method

.method public final T1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/x/b;->PA()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Le/a/b0/a/b/a;

    new-instance p2, Le/a/p5/i0;

    invoke-virtual {p0}, Le/a/x/b;->OA()Lcom/truecaller/common/ui/avatar/AvatarXView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "avatar.context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object p1, p0, Le/a/x/b;->a:Le/a/b0/a/b/a;

    .line 3
    invoke-virtual {p0}, Le/a/x/b;->OA()Lcom/truecaller/common/ui/avatar/AvatarXView;

    move-result-object p1

    iget-object p2, p0, Le/a/x/b;->a:Le/a/b0/a/b/a;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    return-void

    :cond_0
    const-string p1, "avatarPresenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
