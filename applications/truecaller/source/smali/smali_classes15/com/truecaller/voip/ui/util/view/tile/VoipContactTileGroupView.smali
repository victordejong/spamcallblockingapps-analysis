.class public final Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;
.super Le/a/d/c/a/p/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/c/a/p/a/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\tJ\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\tJ\u000f\u0010\u0015\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\tJ\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u000eJ\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0007J\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0007J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010%\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008%\u0010\u000eJ\u0017\u0010(\u001a\u00020\u00052\u0006\u0010\'\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00082\u0010\tJ\u000f\u00103\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u00083\u0010\tJ\u000f\u00104\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u00084\u0010\tJ\u0019\u00107\u001a\u0004\u0018\u0001062\u0006\u00105\u001a\u00020.H\u0002\u00a2\u0006\u0004\u00087\u00108J\u0019\u0010:\u001a\u00020\u00052\u0008\u0008\u0001\u00109\u001a\u00020.H\u0002\u00a2\u0006\u0004\u0008:\u00101J!\u0010>\u001a\u00020\u00052\u0008\u0008\u0001\u0010;\u001a\u00020.2\u0006\u0010=\u001a\u00020<H\u0002\u00a2\u0006\u0004\u0008>\u0010?J\u001d\u0010B\u001a\u00020\u00052\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u000b0@H\u0002\u00a2\u0006\u0004\u0008B\u0010CR\"\u0010K\u001a\u00020D8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u0016\u0010N\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR2\u0010S\u001a\u001e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u0002060Oj\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u000206`P8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0016\u0010W\u001a\u00020T8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u001c\u0010Z\u001a\u0008\u0012\u0004\u0012\u0002060@8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010YR\u0016\u0010^\u001a\u00020[8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]\u00a8\u0006_"
    }
    d2 = {
        "Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Le/a/d/c/a/p/a/e;",
        "",
        "label",
        "Ls1/s;",
        "setSpamTheme",
        "(Ljava/lang/String;)V",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "",
        "visible",
        "d0",
        "(Z)V",
        "u0",
        "Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;",
        "state",
        "setRingState",
        "(Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;)V",
        "p",
        "s0",
        "loading",
        "n0",
        "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
        "avatarConfig",
        "setAvatarConfig",
        "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V",
        "profileName",
        "setProfileName",
        "phone",
        "setProfilePhone",
        "Le/a/d/c/a/o;",
        "voipUserBadgeTheme",
        "D",
        "(Le/a/d/c/a/o;)V",
        "modeIncoming",
        "setModeIncoming",
        "Le/a/d/c0/z1/e;",
        "peer",
        "g",
        "(Le/a/d/c0/z1/e;)V",
        "Le/a/d/v/l/a;",
        "call",
        "setCallOnTile",
        "(Le/a/d/v/l/a;)V",
        "",
        "id",
        "h0",
        "(I)V",
        "C",
        "H0",
        "h1",
        "peerId",
        "Le/a/d/c/a/p/a/w;",
        "g1",
        "(I)Le/a/d/c/a/p/a/w;",
        "stateId",
        "j1",
        "flowId",
        "",
        "referencedIds",
        "i1",
        "(I[I)V",
        "",
        "sizeArray",
        "k1",
        "([Ljava/lang/Boolean;)V",
        "Le/a/d/c/a/p/a/c;",
        "v",
        "Le/a/d/c/a/p/a/c;",
        "getPresenter$voip_release",
        "()Le/a/d/c/a/p/a/c;",
        "setPresenter$voip_release",
        "(Le/a/d/c/a/p/a/c;)V",
        "presenter",
        "y",
        "Z",
        "isModeIncoming",
        "Ljava/util/LinkedHashMap;",
        "Lkotlin/collections/LinkedHashMap;",
        "z",
        "Ljava/util/LinkedHashMap;",
        "viewMap",
        "Le/a/b0/a/b/a;",
        "x",
        "Le/a/b0/a/b/a;",
        "avatarXPresenter",
        "getTiles",
        "()[Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileView;",
        "tiles",
        "Le/a/d/s/h;",
        "w",
        "Le/a/d/s/h;",
        "binding",
        "voip_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public v:Le/a/d/c/a/p/a/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public w:Le/a/d/s/h;

.field public x:Le/a/b0/a/b/a;

.field public y:Z

.field public final z:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Le/a/d/c/a/p/a/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Le/a/d/c/a/p/a/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->y:Z

    .line 4
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->z:Ljava/util/LinkedHashMap;

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x7

    .line 6
    invoke-static {v0, p1}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object p2, p1

    check-cast p2, Ls1/d0/h;

    invoke-virtual {p2}, Ls1/d0/h;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ls1/u/z;

    invoke-virtual {p2}, Ls1/u/z;->a()I

    move-result p2

    .line 8
    invoke-virtual {p0, p2}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->g1(I)Le/a/d/c/a/p/a/w;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->H0()V

    goto/16 :goto_1

    .line 10
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 11
    sget v0, Lcom/truecaller/voip/R$layout;->view_voip_contact_tile_group_avatar:I

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    sget p2, Lcom/truecaller/voip/R$id;->avatarContainer:I

    .line 13
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_3

    .line 14
    sget p2, Lcom/truecaller/voip/R$id;->groupAvatar:I

    .line 15
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/Group;

    if-eqz v4, :cond_3

    .line 16
    sget p2, Lcom/truecaller/voip/R$id;->imageCallStateRing:I

    .line 17
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 18
    sget p2, Lcom/truecaller/voip/R$id;->imageProfilePicture:I

    .line 19
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v6, :cond_3

    .line 20
    sget p2, Lcom/truecaller/voip/R$id;->textContactLabel:I

    .line 21
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v7, :cond_3

    .line 22
    sget p2, Lcom/truecaller/voip/R$id;->textProfileName:I

    .line 23
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v8, :cond_3

    .line 24
    sget p2, Lcom/truecaller/voip/R$id;->textProfilePhone:I

    .line 25
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_3

    .line 26
    sget p2, Lcom/truecaller/voip/R$id;->viewRipple:I

    .line 27
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/truecaller/common/ui/HeartbeatRippleView;

    if-eqz v10, :cond_3

    .line 28
    new-instance p2, Le/a/d/s/h;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Le/a/d/s/h;-><init>(Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Lcom/truecaller/common/ui/avatar/AvatarXView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Landroid/widget/TextView;Lcom/truecaller/common/ui/HeartbeatRippleView;)V

    const-string v0, "ViewVoipContactTileGroup\u2026ater.from(context), this)"

    .line 29
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    .line 30
    new-instance p2, Le/a/b0/a/b/a;

    new-instance v0, Le/a/p5/i0;

    invoke-direct {v0, p1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object p2, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->x:Le/a/b0/a/b/a;

    .line 31
    iget-object p2, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz p2, :cond_2

    iget-object p2, p2, Le/a/d/s/h;->c:Landroid/widget/ImageView;

    new-instance v0, Le/a/d/c/a/a/a;

    invoke-direct {v0, p1}, Le/a/d/c/a/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_2
    const-string p1, "binding"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 32
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final getTiles()[Le/a/d/c/a/p/a/w;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->z:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "viewMap.values"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Le/a/d/c/a/p/a/w;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Le/a/d/c/a/p/a/w;

    return-object v0
.end method

.method private final setSpamTheme(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/d/s/h;->e:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x106000b

    .line 3
    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setTextColorRes(I)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v3, Lcom/truecaller/voip/R$color;->tcx_voip_spam_color:I

    const/16 v4, 0x11

    invoke-static {p1, v3, v4}, Le/a/b0/q/o;->e(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz p1, :cond_0

    iget-object p1, p1, Le/a/d/s/h;->f:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    sget v0, Lcom/truecaller/voip/R$color;->voip_default_profile_name_color:I

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setTextColorRes(I)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public C()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Le/a/d/c/a/p/a/w;->getPresenter$voip_release()Le/a/d/c/a/p/a/o;

    move-result-object v3

    check-cast v3, Le/a/d/c/a/p/a/u;

    .line 4
    iget-object v3, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/d/c/a/p/a/p;

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v3}, Le/a/d/c/a/p/a/p;->h()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {v3}, Le/a/d/c/a/p/a/p;->B()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public D(Le/a/d/c/a/o;)V
    .locals 5

    const-string v0, "voipUserBadgeTheme"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/d/c/a/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->h1()V

    goto/16 :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Le/a/d/c/a/k;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/voip/R$string;->tcx_voip_spam_reports_score:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Le/a/d/c/a/k;

    .line 3
    iget-object p1, p1, Le/a/d/c/a/k;->a:Ljava/lang/Integer;

    aput-object p1, v2, v3

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.st\u2026UserBadgeTheme.spamScore)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->setSpamTheme(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Le/a/d/c/a/b;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/truecaller/voip/R$string;->voip_caller_label_blocked:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.st\u2026oip_caller_label_blocked)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->setSpamTheme(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6
    :cond_2
    instance-of v0, p1, Le/a/d/c/a/e;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 7
    iget-object p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz p1, :cond_4

    iget-object p1, p1, Le/a/d/s/h;->f:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    invoke-virtual {p1}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->l()V

    .line 8
    iget-object p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz p1, :cond_3

    iget-object p1, p1, Le/a/d/s/h;->e:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/voip/R$string;->tcx_voip_gold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    sget v0, Lcom/truecaller/voip/R$color;->tcx_voip_gold_text_color:I

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setTextColorRes(I)V

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->k()V

    .line 12
    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto/16 :goto_0

    .line 13
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_4
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_5
    instance-of v0, p1, Le/a/d/c/a/c;

    const/16 v3, 0x11

    if-eqz v0, :cond_8

    .line 16
    iget-object p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz p1, :cond_7

    iget-object p1, p1, Le/a/d/s/h;->f:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    sget v0, Lcom/truecaller/voip/R$color;->credPrimaryColor:I

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setTextColorRes(I)V

    .line 17
    iget-object p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz p1, :cond_6

    iget-object p1, p1, Le/a/d/s/h;->e:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    .line 18
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/voip/R$string;->CredPrivilege:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    sget v1, Lcom/truecaller/voip/R$color;->tcx_textPrimary_dark:I

    invoke-virtual {p1, v1}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setTextColorRes(I)V

    .line 20
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Le/a/b0/q/o;->e(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto/16 :goto_0

    .line 22
    :cond_6
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_7
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_8
    instance-of v0, p1, Le/a/d/c/a/i;

    const-string v4, "binding.textContactLabel"

    if-eqz v0, :cond_b

    .line 25
    iget-object p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz p1, :cond_a

    iget-object p1, p1, Le/a/d/s/h;->f:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    sget v0, Lcom/truecaller/voip/R$color;->voip_default_profile_name_color:I

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setTextColorRes(I)V

    .line 26
    iget-object p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz p1, :cond_9

    iget-object p1, p1, Le/a/d/s/h;->e:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 27
    :cond_a
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 28
    :cond_b
    instance-of v0, p1, Le/a/d/c/a/j;

    if-eqz v0, :cond_e

    .line 29
    iget-object p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz p1, :cond_d

    iget-object p1, p1, Le/a/d/s/h;->f:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    sget v0, Lcom/truecaller/voip/R$color;->voip_default_profile_name_color:I

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setTextColorRes(I)V

    .line 30
    iget-object p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz p1, :cond_c

    iget-object p1, p1, Le/a/d/s/h;->e:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    .line 31
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/voip/R$string;->tcx_voip_priority:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x106000b

    .line 32
    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setTextColorRes(I)V

    .line 33
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/voip/R$color;->tcx_voip_priority_color:I

    invoke-static {v0, v1, v3}, Le/a/b0/q/o;->e(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_0

    .line 35
    :cond_c
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_d
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_e
    instance-of v0, p1, Le/a/d/c/a/m;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->h1()V

    goto :goto_0

    .line 38
    :cond_f
    instance-of p1, p1, Le/a/d/c/a/d;

    if-eqz p1, :cond_12

    .line 39
    iget-object p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz p1, :cond_11

    iget-object p1, p1, Le/a/d/s/h;->f:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    sget v0, Lcom/truecaller/voip/R$color;->voip_default_profile_name_color:I

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setTextColorRes(I)V

    .line 40
    iget-object p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz p1, :cond_10

    iget-object p1, p1, Le/a/d/s/h;->e:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_0

    :cond_10
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_11
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_12
    :goto_0
    return-void
.end method

.method public H0()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 3
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "getChildAt(i)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v5, v4, Landroidx/constraintlayout/helper/widget/Flow;

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "dummy"

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 7
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->z:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 9
    :pswitch_0
    sget v0, Lcom/truecaller/voip/R$layout;->view_voip_contact_tile_group_state_7:I

    invoke-virtual {p0, v0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->j1(I)V

    .line 10
    sget v0, Lcom/truecaller/voip/R$id;->state7Flow1:I

    new-array v7, v5, [I

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getId()I

    move-result v8

    aput v8, v7, v2

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getId()I

    move-result v8

    aput v8, v7, v6

    invoke-virtual {p0, v0, v7}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->i1(I[I)V

    .line 11
    sget v0, Lcom/truecaller/voip/R$id;->state7Flow2:I

    new-array v7, v4, [I

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getId()I

    move-result v8

    aput v8, v7, v2

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v8

    aget-object v4, v8, v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    aput v4, v7, v6

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    aput v3, v7, v5

    invoke-virtual {p0, v0, v7}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->i1(I[I)V

    .line 12
    sget v0, Lcom/truecaller/voip/R$id;->state7Flow3:I

    new-array v3, v5, [I

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    aput v4, v3, v2

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v2

    const/4 v4, 0x6

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    aput v2, v3, v6

    invoke-virtual {p0, v0, v3}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->i1(I[I)V

    .line 13
    sget-object v0, Le/a/d/c/a/p/a/m;->a:[[Ljava/lang/Boolean;

    sget-object v0, Le/a/d/c/a/p/a/m;->a:[[Ljava/lang/Boolean;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->k1([Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 14
    :pswitch_1
    sget v0, Lcom/truecaller/voip/R$layout;->view_voip_contact_tile_group_state_6:I

    invoke-virtual {p0, v0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->j1(I)V

    .line 15
    sget v0, Lcom/truecaller/voip/R$id;->state6Flow1:I

    new-array v7, v5, [I

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getId()I

    move-result v8

    aput v8, v7, v2

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v8

    aget-object v4, v8, v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    aput v4, v7, v6

    invoke-virtual {p0, v0, v7}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->i1(I[I)V

    .line 16
    sget v0, Lcom/truecaller/voip/R$id;->state6Flow2:I

    new-array v4, v5, [I

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    aput v7, v4, v2

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    aput v7, v4, v6

    invoke-virtual {p0, v0, v4}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->i1(I[I)V

    .line 17
    sget v0, Lcom/truecaller/voip/R$id;->state6Flow3:I

    new-array v4, v5, [I

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v7

    aget-object v5, v7, v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    aput v5, v4, v2

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    aput v1, v4, v6

    invoke-virtual {p0, v0, v4}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->i1(I[I)V

    .line 18
    sget-object v0, Le/a/d/c/a/p/a/m;->a:[[Ljava/lang/Boolean;

    sget-object v0, Le/a/d/c/a/p/a/m;->a:[[Ljava/lang/Boolean;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->k1([Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 19
    :pswitch_2
    sget v0, Lcom/truecaller/voip/R$layout;->view_voip_contact_tile_group_state_5:I

    invoke-virtual {p0, v0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->j1(I)V

    .line 20
    sget v0, Lcom/truecaller/voip/R$id;->state5Flow1:I

    new-array v1, v5, [I

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    aput v7, v1, v2

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    aput v7, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->i1(I[I)V

    .line 21
    sget v0, Lcom/truecaller/voip/R$id;->state5Flow2:I

    new-array v1, v4, [I

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    aput v7, v1, v2

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    aput v2, v1, v6

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    aput v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->i1(I[I)V

    .line 22
    sget-object v0, Le/a/d/c/a/p/a/m;->a:[[Ljava/lang/Boolean;

    sget-object v0, Le/a/d/c/a/p/a/m;->a:[[Ljava/lang/Boolean;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->k1([Ljava/lang/Boolean;)V

    goto/16 :goto_2

    .line 23
    :pswitch_3
    sget v0, Lcom/truecaller/voip/R$layout;->view_voip_contact_tile_group_state_4:I

    invoke-virtual {p0, v0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->j1(I)V

    .line 24
    sget v0, Lcom/truecaller/voip/R$id;->state4Flow1:I

    new-array v1, v5, [I

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    aput v3, v1, v2

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    aput v3, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->i1(I[I)V

    .line 25
    sget v0, Lcom/truecaller/voip/R$id;->state4Flow2:I

    new-array v1, v5, [I

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    aput v3, v1, v2

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    aput v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->i1(I[I)V

    .line 26
    sget-object v0, Le/a/d/c/a/p/a/m;->a:[[Ljava/lang/Boolean;

    sget-object v0, Le/a/d/c/a/p/a/m;->a:[[Ljava/lang/Boolean;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->k1([Ljava/lang/Boolean;)V

    goto :goto_2

    .line 27
    :pswitch_4
    sget v0, Lcom/truecaller/voip/R$layout;->view_voip_contact_tile_group_state_3:I

    invoke-virtual {p0, v0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->j1(I)V

    .line 28
    sget v0, Lcom/truecaller/voip/R$id;->state3Flow1:I

    new-array v1, v5, [I

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    aput v3, v1, v2

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    aput v3, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->i1(I[I)V

    .line 29
    sget v0, Lcom/truecaller/voip/R$id;->state3Flow2:I

    new-array v1, v6, [I

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->i1(I[I)V

    .line 30
    sget-object v0, Le/a/d/c/a/p/a/m;->a:[[Ljava/lang/Boolean;

    sget-object v0, Le/a/d/c/a/p/a/m;->a:[[Ljava/lang/Boolean;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->k1([Ljava/lang/Boolean;)V

    goto :goto_2

    .line 31
    :pswitch_5
    sget v0, Lcom/truecaller/voip/R$layout;->view_voip_contact_tile_group_state_2:I

    invoke-virtual {p0, v0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->j1(I)V

    .line 32
    sget v0, Lcom/truecaller/voip/R$id;->state2Flow1:I

    new-array v1, v6, [I

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->i1(I[I)V

    .line 33
    sget v0, Lcom/truecaller/voip/R$id;->state2Flow2:I

    new-array v1, v6, [I

    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->i1(I[I)V

    .line 34
    sget-object v0, Le/a/d/c/a/p/a/m;->a:[[Ljava/lang/Boolean;

    sget-object v0, Le/a/d/c/a/p/a/m;->a:[[Ljava/lang/Boolean;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->k1([Ljava/lang/Boolean;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d0(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object v0, v0, Le/a/d/s/h;->b:Landroidx/constraintlayout/widget/Group;

    const-string v3, "binding.groupAvatar"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz v0, :cond_2

    iget-object v0, v0, Le/a/d/s/h;->g:Landroid/widget/TextView;

    const-string v3, "binding.textProfilePhone"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz p1, :cond_0

    iget-object p1, p1, Le/a/d/s/h;->g:Landroid/widget/TextView;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "binding.textProfilePhone.text"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v0, v4}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void

    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public g(Le/a/d/c0/z1/e;)V
    .locals 12

    const-string v0, "peer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, p1, Le/a/d/c0/z1/e;->a:I

    .line 2
    invoke-virtual {p0, v1}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->g1(I)Le/a/d/c/a/p/a/w;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Le/a/d/c/a/p/a/w;->getPresenter$voip_release()Le/a/d/c/a/p/a/o;

    move-result-object v1

    .line 4
    iget-boolean v2, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->y:Z

    check-cast v1, Le/a/d/c/a/p/a/u;

    .line 5
    iput-boolean v2, v1, Le/a/d/c/a/p/a/u;->f:Z

    .line 6
    iget-boolean v2, v1, Le/a/d/c/a/p/a/u;->g:Z

    invoke-virtual {v1, v2}, Le/a/d/c/a/p/a/u;->Jj(Z)V

    .line 7
    invoke-virtual {v1}, Le/a/d/c/a/p/a/u;->Lj()V

    .line 8
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, v1, Le/a/d/c/a/p/a/u;->d:Le/a/d/c0/z1/e;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, v1, Le/a/d/c/a/p/a/u;->d:Le/a/d/c0/z1/e;

    .line 11
    iget-object v0, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/p/a/p;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 12
    invoke-interface {v0, v2}, Le/a/d/c/a/p/a/p;->b(Z)V

    .line 13
    invoke-interface {v0, v2}, Le/a/d/c/a/p/a/p;->i(Z)V

    .line 14
    :cond_1
    iget v0, p1, Le/a/d/c0/z1/e;->a:I

    .line 15
    new-instance v6, Le/a/d/c/a/p/a/q;

    const/4 v2, 0x0

    invoke-direct {v6, v1, v0, v2}, Le/a/d/c/a/p/a/q;-><init>(Le/a/d/c/a/p/a/u;ILs1/w/d;)V

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v3

    iput-object v3, v1, Le/a/d/c/a/p/a/u;->i:Lq3/a/p1;

    .line 16
    new-instance v6, Le/a/d/c/a/p/a/t;

    invoke-direct {v6, v1, p1, v2}, Le/a/d/c/a/p/a/t;-><init>(Le/a/d/c/a/p/a/u;Le/a/d/c0/z1/e;Ls1/w/d;)V

    move-object v3, v1

    move-object v4, v0

    move-object v5, v9

    move v7, v10

    move-object v8, v11

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 17
    invoke-virtual {v1}, Le/a/d/c/a/p/a/u;->Lj()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final g1(I)Le/a/d/c/a/p/a/w;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->z:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/c/a/p/a/w;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->z:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return-object v2

    .line 3
    :cond_1
    new-instance v0, Le/a/d/c/a/p/a/w;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "context"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Le/a/d/c/a/p/a/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    invoke-static {}, Landroid/view/ViewGroup;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 5
    iget-object v1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->z:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public final getPresenter$voip_release()Le/a/d/c/a/p/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->v:Le/a/d/c/a/p/a/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public h0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->z:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/c/a/p/a/w;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->z:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final h1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/d/s/h;->f:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    sget v3, Lcom/truecaller/voip/R$color;->voip_default_profile_name_color:I

    invoke-virtual {v0, v3}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setTextColorRes(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/d/s/h;->e:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/voip/R$string;->tcx_voip_verified_business:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x106000b

    .line 4
    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setTextColorRes(I)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/truecaller/voip/R$color;->tcx_voip_verified_business_color:I

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Le/a/b0/q/o;->e(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void

    .line 7
    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final i1(I[I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById<Flow>(flowId)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/helper/widget/Flow;

    invoke-virtual {p1, p2}, Ln3/i/c/b;->setReferencedIds([I)V

    return-void
.end method

.method public final j1(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2
    sget-object p1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method public final k1([Ljava/lang/Boolean;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    add-int/lit8 v5, v3, 0x1

    .line 4
    invoke-virtual {v4}, Le/a/d/c/a/p/a/w;->getPresenter$voip_release()Le/a/d/c/a/p/a/o;

    move-result-object v4

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    check-cast v4, Le/a/d/c/a/p/a/u;

    invoke-virtual {v4, v3}, Le/a/d/c/a/p/a/u;->Jj(Z)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->x:Le/a/b0/a/b/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/a/b0/a/b/a;->pk(Z)V

    return-void

    :cond_0
    const-string p1, "avatarXPresenter"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Le/a/d/s/h;->d:Lcom/truecaller/common/ui/avatar/AvatarXView;

    iget-object v2, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->x:Le/a/b0/a/b/a;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->v:Le/a/d/c/a/p/a/c;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/c/a/p/a/h;

    invoke-virtual {v0, p0}, Le/a/d/c/a/p/a/h;->Y0(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "avatarXPresenter"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->v:Le/a/d/c/a/p/a/c;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/d/c/a/p/a/h;

    invoke-virtual {v0}, Le/a/d/c/a/p/a/h;->c()V

    goto :goto_0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public p()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v3, v0, Le/a/d/s/h;->h:Lcom/truecaller/common/ui/HeartbeatRippleView;

    sget v4, Lcom/truecaller/voip/R$color;->voip_background_color:I

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/d/s/h;->d:Lcom/truecaller/common/ui/avatar/AvatarXView;

    const-string v1, "binding.imageProfilePicture"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/truecaller/common/ui/HeartbeatRippleView;->e(ILandroid/view/View;Z)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public s0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/d/s/h;->h:Lcom/truecaller/common/ui/HeartbeatRippleView;

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/common/ui/HeartbeatRippleView;->d()V

    return-void

    :cond_0
    const-string v0, "binding"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public setAvatarConfig(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 4

    const-string v0, "avatarConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->x:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p1, v2, v3, v1}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "avatarXPresenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public setCallOnTile(Le/a/d/v/l/a;)V
    .locals 8

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->z:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Le/a/d/v/l/a;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c/a/p/a/w;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Le/a/d/c/a/p/a/w;->getPresenter$voip_release()Le/a/d/c/a/p/a/o;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v2, v1

    check-cast v2, Le/a/d/c/a/p/a/u;

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v2, Le/a/d/c/a/p/a/u;->e:Le/a/d/v/l/a;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, v2, Le/a/d/c/a/p/a/u;->e:Le/a/d/v/l/a;

    .line 5
    iget-object v0, v2, Le/a/d/c/a/p/a/u;->i:Lq3/a/p1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    :cond_1
    iput-object v1, v2, Le/a/d/c/a/p/a/u;->i:Lq3/a/p1;

    .line 7
    iget-object v0, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/p/a/p;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Le/a/d/c/a/p/a/p;->b(Z)V

    .line 8
    :cond_2
    new-instance v5, Le/a/d/c/a/p/a/s;

    invoke-direct {v5, v2, p1, v1}, Le/a/d/c/a/p/a/s;-><init>(Le/a/d/c/a/p/a/u;Le/a/d/v/l/a;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_3
    :goto_0
    return-void
.end method

.method public setModeIncoming(Z)V
    .locals 5

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->y:Z

    .line 2
    invoke-direct {p0}, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->getTiles()[Le/a/d/c/a/p/a/w;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Le/a/d/c/a/p/a/w;->getPresenter$voip_release()Le/a/d/c/a/p/a/o;

    move-result-object v3

    check-cast v3, Le/a/d/c/a/p/a/u;

    .line 5
    iput-boolean p1, v3, Le/a/d/c/a/p/a/u;->f:Z

    .line 6
    iget-boolean v4, v3, Le/a/d/c/a/p/a/u;->g:Z

    invoke-virtual {v3, v4}, Le/a/d/c/a/p/a/u;->Jj(Z)V

    .line 7
    invoke-virtual {v3}, Le/a/d/c/a/p/a/u;->Lj()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setPresenter$voip_release(Le/a/d/c/a/p/a/c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->v:Le/a/d/c/a/p/a/c;

    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "profileName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/d/s/h;->f:Lcom/truecaller/common/ui/textview/GoldShineTextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    :cond_0
    const-string p1, "binding"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public setProfilePhone(Ljava/lang/String;)V
    .locals 4

    const-string v0, "phone"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Le/a/d/s/h;->g:Landroid/widget/TextView;

    const-string v3, "binding.textProfilePhone"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz p1, :cond_0

    iget-object p1, p1, Le/a/d/s/h;->g:Landroid/widget/TextView;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public setRingState(Lcom/truecaller/voip/ui/util/drawable/RingDrawableState;)V
    .locals 4

    const-string v0, "state"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v1, Le/a/d/s/h;->c:Landroid/widget/ImageView;

    const-string v3, "binding.imageCallStateRing"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v3, v1, Le/a/d/c/a/a/a;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    check-cast v2, Le/a/d/c/a/a/a;

    if-eqz v2, :cond_5

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v2}, Le/a/d/c/a/a/a;->g()V

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v2}, Le/a/d/c/a/a/a;->h()V

    goto :goto_1

    .line 6
    :cond_3
    sget p1, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    invoke-virtual {v2, p1}, Le/a/d/c/a/a/a;->b(I)I

    move-result p1

    invoke-virtual {v2, p1}, Le/a/d/c/a/a/a;->e(I)V

    .line 7
    iget-boolean p1, v2, Le/a/d/c/a/a/a;->i:Z

    if-nez p1, :cond_5

    .line 8
    iput-boolean v0, v2, Le/a/d/c/a/a/a;->i:Z

    goto :goto_1

    .line 9
    :cond_4
    sget p1, Lcom/truecaller/voip/R$attr;->voip_call_status_neutral_color:I

    invoke-virtual {v2, p1}, Le/a/d/c/a/a/a;->b(I)I

    move-result p1

    invoke-virtual {v2, p1}, Le/a/d/c/a/a/a;->e(I)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const-string p1, "binding"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public u0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->w:Le/a/d/s/h;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le/a/d/s/h;->c:Landroid/widget/ImageView;

    const-string v1, "binding.imageCallStateRing"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
