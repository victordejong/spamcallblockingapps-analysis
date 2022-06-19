.class public final Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J!\u0010\n\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bR%\u0010\u0010\u001a\n \u000c*\u0004\u0018\u00010\u00080\u00088B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR%\u0010\u0013\u001a\n \u000c*\u0004\u0018\u00010\u00080\u00088B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\r\u001a\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/net/Uri;",
        "uri",
        "Ls1/s;",
        "setFirstAvatar",
        "(Landroid/net/Uri;)V",
        "setSecondAvatar",
        "Landroid/widget/ImageView;",
        "view",
        "a",
        "(Landroid/net/Uri;Landroid/widget/ImageView;)V",
        "kotlin.jvm.PlatformType",
        "Ls1/g;",
        "getIvFirst",
        "()Landroid/widget/ImageView;",
        "ivFirst",
        "b",
        "getIvSecond",
        "ivSecond",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0a0a90

    .line 3
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;->a:Ls1/g;

    const p2, 0x7f0a0a96

    .line 4
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;->b:Ls1/g;

    const p2, 0x7f0d031f

    .line 5
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private final getIvFirst()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getIvSecond()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    invoke-static {p0}, Le/f/a/c;->f(Landroid/view/View;)Le/f/a/i;

    move-result-object v0

    check-cast v0, Le/a/z3/e;

    .line 2
    invoke-virtual {v0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/z3/d;

    .line 3
    iput-object p1, v1, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v1, Le/f/a/h;->N:Z

    .line 5
    check-cast v0, Le/a/z3/d;

    .line 6
    invoke-virtual {v0}, Le/a/z3/d;->d0()Le/a/z3/d;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public final setFirstAvatar(Landroid/net/Uri;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;->getIvFirst()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "ivFirst"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;->getIvFirst()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;->a(Landroid/net/Uri;Landroid/widget/ImageView;)V

    return-void
.end method

.method public final setSecondAvatar(Landroid/net/Uri;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;->getIvSecond()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "ivSecond"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;->getIvSecond()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/messaging/messaginglist/OverlappingAvatarsView;->a(Landroid/net/Uri;Landroid/widget/ImageView;)V

    return-void
.end method
