.class public final Lcom/google/android/exoplayer2/ui/PlayerView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/q0$b;
.implements Le/m/a/c/m1/k;
.implements Le/m/a/c/r1/r;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Le/m/a/c/o1/h/g;
.implements Lcom/google/android/exoplayer2/ui/PlayerControlView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/PlayerView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic A0()V
    .locals 0

    invoke-static {p0}, Le/m/a/c/r0;->i(Le/m/a/c/q0$b;)V

    return-void
.end method

.method public G5(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$800(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$900(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$1000(Lcom/google/android/exoplayer2/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$1100(Lcom/google/android/exoplayer2/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$1200(Lcom/google/android/exoplayer2/ui/PlayerView;Z)V

    :goto_0
    return-void
.end method

.method public synthetic N7(Le/m/a/c/y0;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Le/m/a/c/r0;->k(Le/m/a/c/q0$b;Le/m/a/c/y0;I)V

    return-void
.end method

.method public synthetic Pi(Le/m/a/c/y0;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/m/a/c/r0;->l(Le/m/a/c/q0$b;Le/m/a/c/y0;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic S8(Z)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->j(Le/m/a/c/q0$b;Z)V

    return-void
.end method

.method public synthetic Xl(Z)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->a(Le/m/a/c/q0$b;Z)V

    return-void
.end method

.method public synthetic Zl(I)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->d(Le/m/a/c/q0$b;I)V

    return-void
.end method

.method public a(IIIF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    mul-float/2addr p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    .line 1
    :goto_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$200(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Landroid/view/TextureView;

    if-eqz p2, :cond_6

    const/16 p2, 0x5a

    if-eq p3, p2, :cond_2

    const/16 p2, 0x10e

    if-ne p3, p2, :cond_3

    :cond_2
    div-float/2addr v0, p1

    move p1, v0

    .line 2
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$300(Lcom/google/android/exoplayer2/ui/PlayerView;)I

    move-result p2

    if-eqz p2, :cond_4

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$200(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4
    :cond_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$302(Lcom/google/android/exoplayer2/ui/PlayerView;I)I

    .line 5
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$300(Lcom/google/android/exoplayer2/ui/PlayerView;)I

    move-result p2

    if-eqz p2, :cond_5

    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$200(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    :cond_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$200(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p3}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$300(Lcom/google/android/exoplayer2/ui/PlayerView;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$400(Landroid/view/TextureView;I)V

    .line 8
    :cond_6
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$500(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p4}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$200(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/ui/PlayerView;->onContentAspectRatioChanged(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$1400(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$600(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$600(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public fs(Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/n1/g;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$700(Lcom/google/android/exoplayer2/ui/PlayerView;Z)V

    return-void
.end method

.method public h5(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$1000(Lcom/google/android/exoplayer2/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$1100(Lcom/google/android/exoplayer2/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    :cond_0
    return-void
.end method

.method public synthetic hy(I)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->h(Le/m/a/c/q0$b;I)V

    return-void
.end method

.method public synthetic i(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Le/m/a/c/r1/q;->a(Le/m/a/c/r1/r;II)V

    return-void
.end method

.method public j(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/m/a/c/m1/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$100(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$100(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/TextureView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$b;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$300(Lcom/google/android/exoplayer2/ui/PlayerView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->access$400(Landroid/view/TextureView;I)V

    return-void
.end method

.method public synthetic rs(Le/m/a/c/o0;)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->c(Le/m/a/c/q0$b;Le/m/a/c/o0;)V

    return-void
.end method

.method public synthetic tf(Le/m/a/c/b0;)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->e(Le/m/a/c/q0$b;Le/m/a/c/b0;)V

    return-void
.end method

.method public synthetic w1(Z)V
    .locals 0

    invoke-static {p0, p1}, Le/m/a/c/r0;->b(Le/m/a/c/q0$b;Z)V

    return-void
.end method
