.class public final Le/a/k/b/b;
.super Ln3/r/a/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/k/b/b$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ+\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u000f8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0018\u001a\u00020\u00138B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006 "
    }
    d2 = {
        "Le/a/k/b/b;",
        "Ln3/r/a/k;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "Ls1/s;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
        "PA",
        "()Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
        "avatarXConfig",
        "Le/a/k/m/j;",
        "a",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "QA",
        "()Le/a/k/m/j;",
        "binding",
        "Le/a/k/a/k/a;",
        "b",
        "Le/a/k/a/k/a;",
        "avatarVideoConfig",
        "<init>",
        "()V",
        "d",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic c:[Ls1/a/l;

.field public static final d:Le/a/k/b/b$b;


# instance fields
.field public final a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

.field public b:Le/a/k/a/k/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/k/b/b;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/videocallerid/databinding/FragmentVideoCallerIdDebugVideoAvatarBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/k/b/b;->c:[Ls1/a/l;

    new-instance v0, Le/a/k/b/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/k/b/b$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/k/b/b;->d:Le/a/k/b/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ln3/r/a/k;-><init>()V

    .line 2
    new-instance v1, Le/a/p5/x0/a;

    new-instance v2, Le/a/k/b/b$a;

    invoke-direct {v2}, Le/a/k/b/b$a;-><init>()V

    invoke-direct {v1, v2}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v1, v0, Le/a/k/b/b;->a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    .line 3
    new-instance v1, Le/a/k/a/k/a$a;

    .line 4
    new-instance v15, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v2, v15

    const/4 v3, 0x0

    const-string v4, "1234"

    const/4 v5, 0x0

    const-string v6, "S"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v20, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xfff5

    invoke-direct/range {v2 .. v19}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    move-object/from16 v2, v20

    .line 5
    invoke-direct {v1, v2}, Le/a/k/a/k/a$a;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    iput-object v1, v0, Le/a/k/b/b;->b:Le/a/k/a/k/a;

    return-void
.end method

.method public static final OA(Le/a/k/b/b;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/k/b/b;->b:Le/a/k/a/k/a;

    .line 2
    instance-of v1, v0, Le/a/k/a/k/a$a;

    const-string v2, "avatarXConfig"

    if-eqz v1, :cond_0

    check-cast v0, Le/a/k/a/k/a$a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/a/k/a$a;

    invoke-direct {v0, p1}, Le/a/k/a/k/a$a;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Le/a/k/a/k/a$c;

    const-string v3, "playingBehaviour"

    if-eqz v1, :cond_1

    check-cast v0, Le/a/k/a/k/a$c;

    .line 5
    iget-object v6, v0, Le/a/k/a/k/a$c;->b:Ljava/lang/String;

    iget-object v7, v0, Le/a/k/a/k/a$c;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iget-boolean v8, v0, Le/a/k/a/k/a$c;->d:Z

    iget-object v9, v0, Le/a/k/a/k/a$c;->e:Ljava/lang/String;

    iget-object v10, v0, Le/a/k/a/k/a$c;->f:Ljava/lang/String;

    .line 6
    iget-object v11, v0, Le/a/k/a/k/a$c;->g:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    .line 7
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/a/k/a$c;

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Le/a/k/a/k/a$c;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of v1, v0, Le/a/k/a/k/a$b;

    if-eqz v1, :cond_2

    check-cast v0, Le/a/k/a/k/a$b;

    .line 9
    iget-object v1, v0, Le/a/k/a/k/a$b;->b:Ljava/util/List;

    iget-object v4, v0, Le/a/k/a/k/a$b;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    .line 10
    iget-object v0, v0, Le/a/k/a/k/a$b;->d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    .line 11
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "numbers"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Le/a/k/a/k/a$b;

    invoke-direct {v2, p1, v1, v4, v0}, Le/a/k/a/k/a$b;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/util/List;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;)V

    move-object v0, v2

    .line 12
    :goto_0
    iput-object v0, p0, Le/a/k/b/b;->b:Le/a/k/a/k/a;

    .line 13
    invoke-virtual {p0}, Le/a/k/b/b;->QA()Le/a/k/m/j;

    move-result-object p1

    iget-object p1, p1, Le/a/k/m/j;->e:Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

    iget-object p0, p0, Le/a/k/b/b;->b:Le/a/k/a/k/a;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1}, Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;->g(Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;Le/a/k/a/k/a;Ljava/lang/String;I)V

    return-void

    .line 14
    :cond_2
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method


# virtual methods
.method public final PA()Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/b/b;->b:Le/a/k/a/k/a;

    invoke-virtual {v0}, Le/a/k/a/k/a;->b()Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v0

    return-object v0
.end method

.method public final QA()Le/a/k/m/j;
    .locals 3

    iget-object v0, p0, Le/a/k/b/b;->a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v1, Le/a/k/b/b;->c:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/k/m/j;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p3, Lcom/truecaller/videocallerid/R$layout;->fragment_video_caller_id_debug_video_avatar:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026avatar, container, false)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Le/a/k/b/b;->QA()Le/a/k/m/j;

    move-result-object p1

    iget-object p1, p1, Le/a/k/m/j;->d:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance p2, Lu;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lu;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3
    invoke-virtual {p0}, Le/a/k/b/b;->QA()Le/a/k/m/j;

    move-result-object p1

    iget-object p1, p1, Le/a/k/m/j;->b:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance p2, Lu;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lu;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4
    invoke-virtual {p0}, Le/a/k/b/b;->QA()Le/a/k/m/j;

    move-result-object p1

    iget-object p1, p1, Le/a/k/m/j;->a:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance p2, Lu;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Lu;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5
    invoke-virtual {p0}, Le/a/k/b/b;->QA()Le/a/k/m/j;

    move-result-object p1

    iget-object p1, p1, Le/a/k/m/j;->c:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance p2, Lu;

    const/4 v1, 0x3

    invoke-direct {p2, v1, p0}, Lu;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 6
    invoke-virtual {p0}, Le/a/k/b/b;->QA()Le/a/k/m/j;

    move-result-object p1

    iget-object p1, p1, Le/a/k/m/j;->e:Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

    iget-object p2, p0, Le/a/k/b/b;->b:Le/a/k/a/k/a;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;->g(Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;Le/a/k/a/k/a;Ljava/lang/String;I)V

    return-void
.end method
