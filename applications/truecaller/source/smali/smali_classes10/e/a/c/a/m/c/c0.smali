.class public final Le/a/c/a/m/c/c0;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008+\u0010,J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J-\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001d\u0010*\u001a\u00020%8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Le/a/c/a/m/c/c0;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "timeTook",
        "PA",
        "(J)V",
        "Le/a/c/a/i/d;",
        "c",
        "Le/a/c/a/i/d;",
        "getSmartCardsCountUseCase",
        "()Le/a/c/a/i/d;",
        "setSmartCardsCountUseCase",
        "(Le/a/c/a/i/d;)V",
        "smartCardsCountUseCase",
        "Le/a/c/c0/o;",
        "b",
        "Le/a/c/c0/o;",
        "getInsightsConfig",
        "()Le/a/c/c0/o;",
        "setInsightsConfig",
        "(Le/a/c/c0/o;)V",
        "insightsConfig",
        "Le/a/c/a/g/k0;",
        "a",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "OA",
        "()Le/a/c/a/g/k0;",
        "binding",
        "<init>",
        "()V",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public final a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

.field public b:Le/a/c/c0/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/c/a/i/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/c/a/m/c/c0;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/insights/ui/databinding/FragmentTotalSmartCardsShownBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/c/a/m/c/c0;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Le/a/p5/x0/a;

    new-instance v1, Le/a/c/a/m/c/c0$a;

    invoke-direct {v1}, Le/a/c/a/m/c/c0$a;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/c/a/m/c/c0;->a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    return-void
.end method


# virtual methods
.method public final OA()Le/a/c/a/g/k0;
    .locals 3

    iget-object v0, p0, Le/a/c/a/m/c/c0;->a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v1, Le/a/c/a/m/c/c0;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/c/a/g/k0;

    return-object v0
.end method

.method public final PA(J)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/c/a/m/c/c0;->OA()Le/a/c/a/g/k0;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/k0;->b:Landroid/widget/TextView;

    const-string v1, "binding.countResult"

    const-string v2, "Total smart cards shown: "

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->B(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/a/c/a/m/c/c0;->b:Le/a/c/c0/o;

    const/4 v3, 0x0

    const-string v4, "insightsConfig"

    if-eqz v2, :cond_2

    invoke-interface {v2}, Le/a/c/c0/o;->y()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Le/a/c/a/m/c/c0;->b:Le/a/c/c0/o;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/c/c0/o;->m0()Ljava/util/Date;

    move-result-object v0

    const-string v1, "binding.dateResult"

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/c/a/m/c/c0;->OA()Le/a/c/a/g/k0;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/k0;->c:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Last counted date: null"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v2, v0}, Lcom/truecaller/insights/utils/DateFormat;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Le/a/c/a/m/c/c0;->OA()Le/a/c/a/g/k0;

    move-result-object v2

    iget-object v2, v2, Le/a/c/a/g/k0;->c:Landroid/widget/TextView;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last counted date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Le/a/c/a/m/c/c0;->OA()Le/a/c/a/g/k0;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/k0;->d:Landroid/widget/TextView;

    const-string v1, "binding.processingTime"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 7
    :cond_1
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 8
    :cond_2
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Le/a/c/a/m/a/a;->a:I

    .line 3
    sget-object p1, Le/a/c/a/m/a/a$a;->a:Le/a/c/a/m/a/a;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Le/a/c/a/m/a/b;

    .line 5
    iget-object v0, p1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v0}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Le/a/c/a/m/c/c0;->b:Le/a/c/c0/o;

    .line 8
    iget-object v0, p1, Le/a/c/a/m/a/b;->h:Le/a/c/a/c/e/d;

    iget-object v2, p1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v2}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v2

    .line 9
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v3, p1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v3}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v3

    .line 11
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v4, p1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v4

    .line 13
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object p1, p1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {p1}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object p1

    .line 15
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-static {v0, v2, v3, v4, p1}, Le/a/c/p/a;->d2(Le/a/c/a/c/e/d;Ls1/w/f;Le/a/c/c0/o;Le/a/c/q/d;Le/a/c/b/j;)Le/a/c/a/i/d;

    move-result-object p1

    .line 17
    iput-object p1, p0, Le/a/c/a/m/c/c0;->c:Le/a/c/a/i/d;

    return-void

    :cond_0
    const-string p1, "instance"

    .line 18
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/c/p/a;->d3(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/truecaller/insights/ui/R$layout;->fragment_total_smart_cards_shown:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Le/a/c/a/m/c/c0;->OA()Le/a/c/a/g/k0;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/k0;->e:Landroid/widget/Button;

    new-instance p2, Le/a/c/a/m/c/c0$b;

    invoke-direct {p2, p0}, Le/a/c/a/m/c/c0$b;-><init>(Le/a/c/a/m/c/c0;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Le/a/c/a/m/c/c0;->OA()Le/a/c/a/g/k0;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/k0;->a:Landroid/widget/Button;

    new-instance p2, Le/a/c/a/m/c/c0$c;

    invoke-direct {p2, p0}, Le/a/c/a/m/c/c0$c;-><init>(Le/a/c/a/m/c/c0;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-wide/16 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Le/a/c/a/m/c/c0;->PA(J)V

    return-void
.end method
