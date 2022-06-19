.class public final Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR%\u0010\u0016\u001a\n \u0011*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R%\u0010\u001b\u001a\n \u0011*\u0004\u0018\u00010\u00170\u00178B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u001aR%\u0010 \u001a\n \u0011*\u0004\u0018\u00010\u001c0\u001c8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0013\u001a\u0004\u0008\u001e\u0010\u001fR%\u0010#\u001a\n \u0011*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u0013\u001a\u0004\u0008\"\u0010\u0015\u00a8\u0006$"
    }
    d2 = {
        "Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "",
        "text",
        "Ls1/s;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "setDescription",
        "Landroid/net/Uri;",
        "uri",
        "setImage",
        "(Landroid/net/Uri;)V",
        "Landroid/view/View$OnClickListener;",
        "listener",
        "setOnRemoveClickListener",
        "(Landroid/view/View$OnClickListener;)V",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "v",
        "Ls1/g;",
        "getTitle",
        "()Landroid/widget/TextView;",
        "title",
        "Landroid/widget/ImageView;",
        "w",
        "getImage",
        "()Landroid/widget/ImageView;",
        "image",
        "Landroid/view/View;",
        "t",
        "getBtnRemove",
        "()Landroid/view/View;",
        "btnRemove",
        "u",
        "getDescription",
        "description",
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
.field public final t:Ls1/g;

.field public final u:Ls1/g;

.field public final v:Ls1/g;

.field public final w:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0a0286

    .line 3
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;->t:Ls1/g;

    const p2, 0x7f0a05cf

    .line 4
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;->u:Ls1/g;

    const p2, 0x7f0a1245

    .line 5
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;->v:Ls1/g;

    const p2, 0x7f0a0987

    .line 6
    invoke-static {p0, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;->w:Ls1/g;

    const p2, 0x7f0d04da

    .line 7
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0800f7

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method private final getBtnRemove()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getDescription()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;->u:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getImage()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;->v:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final setDescription(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;->getDescription()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "description"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setImage(Landroid/net/Uri;)V
    .locals 5

    const-string v0, "image"

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;->getImage()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {v1}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    :goto_0
    invoke-static {p0}, Le/f/a/c;->f(Landroid/view/View;)Le/f/a/i;

    move-result-object v0

    check-cast v0, Le/a/z3/e;

    .line 3
    invoke-virtual {v0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->S(Landroid/net/Uri;)Le/f/a/h;

    .line 4
    check-cast v0, Le/a/z3/d;

    const/4 p1, 0x2

    new-array p1, p1, [Le/f/a/n/m;

    const/4 v1, 0x0

    .line 5
    new-instance v2, Le/f/a/n/q/d/i;

    invoke-direct {v2}, Le/f/a/n/q/d/i;-><init>()V

    aput-object v2, p1, v1

    const/4 v1, 0x1

    new-instance v2, Le/f/a/n/q/d/y;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v2, v3}, Le/f/a/n/q/d/y;-><init>(I)V

    aput-object v2, p1, v1

    invoke-virtual {v0, p1}, Le/a/z3/d;->r0([Le/f/a/n/m;)Le/a/z3/d;

    move-result-object p1

    .line 6
    invoke-direct {p0}, Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;->getImage()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public final setOnRemoveClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;->getBtnRemove()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/linkpreviews/LinkPreviewDraftView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
