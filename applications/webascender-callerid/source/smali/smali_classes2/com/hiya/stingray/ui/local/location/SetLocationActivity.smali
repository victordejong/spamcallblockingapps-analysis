.class public final Lcom/hiya/stingray/ui/local/location/SetLocationActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/local/location/g;
.implements Lcom/google/android/gms/maps/e;


# static fields
.field private static final G:Lkotlin/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/l<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/hiya/stingray/t/h1/i;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Z

.field private final E:Lkotlin/g;

.field private F:Ljava/util/HashMap;

.field public r:Lcom/hiya/stingray/ui/local/location/f;

.field public s:Lcom/hiya/stingray/ui/local/location/e;

.field public t:Lcom/hiya/stingray/ui/local/location/e;

.field public u:Lcom/hiya/stingray/ui/login/o;

.field public v:Lcom/hiya/stingray/ui/local/location/a;

.field public w:Lcom/hiya/stingray/ui/local/location/c;

.field private x:Lcom/google/android/gms/maps/c;

.field private y:Lcom/google/android/gms/maps/c$b;

.field private z:Lcom/hiya/stingray/t/h1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlin/l;

    const-wide v1, 0x4043ea0767d34df0L    # 39.828351

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide v2, -0x3fa75ae9d0e991ffL    # -98.579479

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->G:Lkotlin/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->D:Z

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$n;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$n;-><init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    invoke-static {v0}, Lkotlin/h;->a(Lkotlin/w/b/a;)Lkotlin/g;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->E:Lkotlin/g;

    return-void
.end method

.method public static final synthetic P(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)Lcom/google/android/gms/maps/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->y:Lcom/google/android/gms/maps/c$b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "cameraOnCameraIdleListener"

    invoke-static {p0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic Q(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)Lcom/hiya/stingray/t/h1/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->z:Lcom/hiya/stingray/t/h1/i;

    return-object p0
.end method

.method public static final synthetic R(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)Lcom/google/android/gms/maps/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->x:Lcom/google/android/gms/maps/c;

    return-object p0
.end method

.method public static final synthetic S(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->c0()V

    return-void
.end method

.method public static final synthetic T(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->e0()V

    return-void
.end method

.method public static final synthetic U(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->g0()V

    return-void
.end method

.method public static final synthetic V(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->i0(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private final W()V
    .locals 8

    .line 1
    new-instance v7, Lcom/hiya/stingray/t/h1/i;

    sget-object v0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->G:Lkotlin/l;

    invoke-virtual {v0}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    sget-object v6, Lcom/hiya/stingray/t/h1/i$a;->MAP:Lcom/hiya/stingray/t/h1/i$a;

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/hiya/stingray/t/h1/i;-><init>(DDLjava/lang/String;Lcom/hiya/stingray/t/h1/i$a;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v7, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->l(Lcom/hiya/stingray/t/h1/i;Z)V

    return-void
.end method

.method private final b0()[Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->E:Lkotlin/g;

    invoke-interface {v0}, Lkotlin/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    return-object v0
.end method

.method private final c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->z:Lcom/hiya/stingray/t/h1/i;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->A:Lcom/hiya/stingray/t/h1/i;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->l(Lcom/hiya/stingray/t/h1/i;Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->r:Lcom/hiya/stingray/ui/local/location/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/location/f;->t()V

    goto :goto_0

    :cond_1
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 4
    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method private final d0()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->f0(Lcom/hiya/stingray/t/h1/i;)V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->x:Lcom/google/android/gms/maps/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/c;->e(Lcom/google/android/gms/maps/c$b;)V

    .line 3
    :cond_0
    sget v0, Lcom/hiya/stingray/o;->m2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "mapWrapper"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private final e0()V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->r3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "rightButton"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private final f0(Lcom/hiya/stingray/t/h1/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->z:Lcom/hiya/stingray/t/h1/i;

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->A:Lcom/hiya/stingray/t/h1/i;

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->z:Lcom/hiya/stingray/t/h1/i;

    return-void
.end method

.method private final g0()V
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->r3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const-string v2, "rightButton"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f080111

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final h0()V
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->r3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const-string v2, "rightButton"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f08011e

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final i0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->d0()V

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->k0(Landroid/view/View;)V

    return-void
.end method

.method private final j0()V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->m2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "mapWrapper"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->k0(Landroid/view/View;)V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->h0()V

    return-void
.end method

.method private final k0(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->b0()[Landroid/view/View;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 3
    :goto_1
    invoke-static {v4, v5}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final l0(Landroidx/recyclerview/widget/RecyclerView;Lcom/hiya/stingray/ui/local/location/e;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/hiya/stingray/ui/local/location/e;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/i;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p3}, Lcom/hiya/stingray/ui/local/location/e;->g(Ljava/util/List;)V

    .line 2
    new-instance v6, Lcom/hiya/stingray/ui/common/n;

    const v2, 0x7f06019a

    const v3, 0x7f0c00c0

    const v4, 0x7f0903bb

    move-object v0, v6

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/ui/common/n;-><init>(Landroid/content/Context;IIILandroidx/recyclerview/widget/RecyclerView$g;)V

    .line 3
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Lcom/hiya/stingray/ui/common/n$c;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p4}, Lcom/hiya/stingray/ui/common/n$c;-><init>(ILjava/lang/CharSequence;)V

    invoke-static {p2}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/hiya/stingray/ui/common/n;->h(Ljava/util/List;)V

    .line 5
    :cond_0
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method private final m0()V
    .locals 3

    .line 1
    sget v0, Lcom/hiya/stingray/o;->S3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "setLocation"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->z:Lcom/hiya/stingray/t/h1/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hiya/stingray/t/h1/i;->f()Lcom/hiya/stingray/t/h1/i$a;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/hiya/stingray/t/h1/i$a;->GPS:Lcom/hiya/stingray/t/h1/i$a;

    if-ne v1, v2, :cond_1

    const v1, 0x7f1101a6

    goto :goto_1

    :cond_1
    const v1, 0x7f1101a5

    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public O(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->F:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->F:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->F:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->F:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final X()Lcom/hiya/stingray/ui/local/location/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->v:Lcom/hiya/stingray/ui/local/location/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "googleMapsHelper"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Y()Lcom/hiya/stingray/ui/local/location/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->w:Lcom/hiya/stingray/ui/local/location/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "locationAnalytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Z()Lcom/hiya/stingray/ui/login/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->u:Lcom/hiya/stingray/ui/login/o;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "permissionHandler"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final a0()Lcom/hiya/stingray/ui/local/location/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->r:Lcom/hiya/stingray/ui/local/location/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public j(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->Y2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "progressBar"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    return-void
.end method

.method public l(Lcom/hiya/stingray/t/h1/i;Z)V
    .locals 3

    const-string v0, "place"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->f0(Lcom/hiya/stingray/t/h1/i;)V

    .line 2
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->D:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->D:Z

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/hiya/stingray/o;->S3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v2, "setLocation"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    :goto_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->m0()V

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->j0()V

    .line 7
    sget v0, Lcom/hiya/stingray/o;->G3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/h1/i;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x7f1101ad

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 9
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "searchText"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/hiya/stingray/util/e0;->i(Landroid/app/Activity;Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->x:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->e(Lcom/google/android/gms/maps/c$b;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 11
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->x:Lcom/google/android/gms/maps/c;

    if-eqz p2, :cond_4

    invoke-static {p1}, Lcom/hiya/stingray/t/h1/j;->a(Lcom/hiya/stingray/t/h1/i;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p1, v0}, Lcom/google/android/gms/maps/b;->b(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/c;->c(Lcom/google/android/gms/maps/a;)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->x:Lcom/google/android/gms/maps/c;

    if-eqz p2, :cond_4

    invoke-static {p1}, Lcom/hiya/stingray/t/h1/j;->a(Lcom/hiya/stingray/t/h1/i;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/c;->c(Lcom/google/android/gms/maps/a;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public n()V
    .locals 2

    const v0, 0x7f1101a9

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->D:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->W()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->c0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00c2

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->h(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->r:Lcom/hiya/stingray/ui/local/location/f;

    const/4 v0, 0x0

    const-string v1, "presenter"

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    const v2, 0x7f09025b

    invoke-virtual {p1, v2}, Landroidx/fragment/app/n;->i0(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 6
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->Z0(Lcom/google/android/gms/maps/e;)V

    .line 7
    new-instance p1, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$b;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$b;-><init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->y:Lcom/google/android/gms/maps/c$b;

    .line 8
    sget p1, Lcom/hiya/stingray/o;->G3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "searchText"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$c;

    invoke-direct {v4, p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$c;-><init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v4, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$d;

    invoke-direct {v4, p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$d;-><init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 10
    sget v2, Lcom/hiya/stingray/o;->S3:I

    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v5, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$e;

    invoke-direct {v5, p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$e;-><init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const-string v4, "setLocation"

    invoke-static {v2, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$f;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$f;-><init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    invoke-static {p1, v2}, Lcom/hiya/stingray/util/e0;->a(Landroid/widget/EditText;Lkotlin/w/b/l;)V

    .line 13
    sget p1, Lcom/hiya/stingray/o;->S1:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v2, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$g;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$g;-><init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance p1, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$h;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$h;-><init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->B:Landroid/view/View$OnClickListener;

    .line 15
    new-instance p1, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$i;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$i;-><init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->C:Landroid/view/View$OnClickListener;

    .line 16
    sget p1, Lcom/hiya/stingray/o;->F3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "searchResultsRecyclerView"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 17
    iget-object v2, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->s:Lcom/hiya/stingray/ui/local/location/e;

    const-string v4, "searchResultsAdapter"

    if-eqz v2, :cond_4

    new-instance v5, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$j;

    invoke-direct {v5, p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$j;-><init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    invoke-virtual {v2, v5}, Lcom/hiya/stingray/ui/local/location/e;->f(Lkotlin/w/b/l;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->s:Lcom/hiya/stingray/ui/local/location/e;

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 19
    sget p1, Lcom/hiya/stingray/o;->h3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "recentPlacesRecyclerView"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 20
    iget-object v2, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->t:Lcom/hiya/stingray/ui/local/location/e;

    const-string v4, "recentPlacesAdapter"

    if-eqz v2, :cond_2

    new-instance v5, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$a;

    invoke-direct {v5, p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$a;-><init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    invoke-virtual {v2, v5}, Lcom/hiya/stingray/ui/local/location/e;->f(Lkotlin/w/b/l;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->t:Lcom/hiya/stingray/ui/local/location/e;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->j(Z)V

    .line 23
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->r:Lcom/hiya/stingray/ui/local/location/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/f;->y()V

    return-void

    :cond_0
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_2
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_3
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_4
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.gms.maps.SupportMapFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_6
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->u:Lcom/hiya/stingray/ui/login/o;

    if-eqz v1, :cond_0

    .line 2
    new-instance v6, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$m;

    invoke-direct {v6, p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$m;-><init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/hiya/stingray/ui/login/o;->d(Landroid/app/Activity;I[Ljava/lang/String;[ILcom/hiya/stingray/ui/login/o$a;)V

    return-void

    :cond_0
    const-string p1, "permissionHandler"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/e;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->w:Lcom/hiya/stingray/ui/local/location/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/location/c;->c()V

    return-void

    :cond_0
    const-string v0, "locationAnalytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public q(Lcom/google/android/gms/maps/c;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->x:Lcom/google/android/gms/maps/c;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$k;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$k;-><init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->g(Lcom/google/android/gms/maps/c$d;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->v:Lcom/hiya/stingray/ui/local/location/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->x:Lcom/google/android/gms/maps/c;

    sget v2, Lcom/hiya/stingray/o;->n2:I

    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v3, "marker"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/hiya/stingray/ui/local/location/a;->h(Lcom/google/android/gms/maps/c;Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->x:Lcom/google/android/gms/maps/c;

    if-eqz p1, :cond_1

    new-instance v1, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$l;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity$l;-><init>(Lcom/hiya/stingray/ui/local/location/SetLocationActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/c;->f(Lcom/google/android/gms/maps/c$c;)V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->W()V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->r:Lcom/hiya/stingray/ui/local/location/f;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/f;->u()V

    return-void

    :cond_2
    const-string p1, "presenter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "googleMapsHelper"

    .line 7
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public t(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "places"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/hiya/stingray/o;->F3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "searchResultsRecyclerView"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->i0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->s:Lcom/hiya/stingray/ui/local/location/e;

    if-eqz v1, :cond_0

    const v2, 0x7f1101a8

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.lc_set_location_found_header)"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->l0(Landroidx/recyclerview/widget/RecyclerView;Lcom/hiya/stingray/ui/local/location/e;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "searchResultsAdapter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public w()V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->Y4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "zeroResults"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->k0(Landroid/view/View;)V

    return-void
.end method

.method public x(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "places"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/hiya/stingray/o;->h3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recentPlacesRecyclerView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->t:Lcom/hiya/stingray/ui/local/location/e;

    if-eqz v1, :cond_0

    const v2, 0x7f1102d6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.recent)"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/hiya/stingray/ui/local/location/SetLocationActivity;->l0(Landroidx/recyclerview/widget/RecyclerView;Lcom/hiya/stingray/ui/local/location/e;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "recentPlacesAdapter"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
