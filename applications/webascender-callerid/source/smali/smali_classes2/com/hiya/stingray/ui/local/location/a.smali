.class public final Lcom/hiya/stingray/ui/local/location/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/location/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/ui/local/location/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lcom/hiya/stingray/manager/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/e1;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/a;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/location/a;->e:Lcom/hiya/stingray/manager/e1;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/a;->a:Ljava/util/List;

    const/4 p1, 0x5

    new-array p1, p1, [Lcom/hiya/stingray/ui/local/location/a$a;

    .line 3
    new-instance p2, Lcom/hiya/stingray/ui/local/location/a$a;

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v0, 0x4040c0edc3bd5992L    # 33.507256

    const-wide v4, 0x405f65247cb70ac4L    # 125.580352

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const-string v1, "YGK CORP"

    const/4 v2, 0x5

    const-string v4, "$$"

    const-string v5, "Cute hOnest Ripped Person"

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/ui/local/location/a$a;-><init>(Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 4
    new-instance p2, Lcom/hiya/stingray/ui/local/location/a$a;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    const/16 v0, 0x45

    int-to-double v0, v0

    invoke-direct {v4, v0, v1, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const-string v2, "MISHA VIP LOUNGE"

    const/4 v3, 0x5

    const-string v5, "\u20bd\u20bd\u20bd\u20bd"

    const-string v6, "Hi there and welcome to MISHA VIP LOUNGE\u2122 \u2013 your local bread and butter destination! We provide our guests with exceptional service by guiding them through our innovative menu with seasonal specials featuring the highest-quality, fresh ingredients. We look forward to seeing you soon! "

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/ui/local/location/a$a;-><init>(Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 5
    new-instance p2, Lcom/hiya/stingray/ui/local/location/a$a;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v0, 0x40524b337b578f33L    # 73.1750172

    const-wide v2, 0x405fa036ec2557a8L    # 126.5033522

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const-string v2, "Michelin Kitchen"

    const/4 v3, 0x1

    const-string v5, "$$$$$$$$$$"

    const-string v6, "Exotic dishes from around the world."

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/ui/local/location/a$a;-><init>(Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    aput-object p2, p1, v0

    .line 6
    new-instance p2, Lcom/hiya/stingray/ui/local/location/a$a;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v0, -0x3fb4c117f84449dcL    # -54.491456

    const-wide v2, -0x3fbd72b25b317efeL    # -37.103932

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const-string v2, "On A Roll"

    const/4 v3, 0x1

    const-string v5, "$$$"

    const-string v6, "From the self-proclaimed sandwich maestro comes a new type of sandwich shop which will revolutionize the sandwich industry. \'I thought - why not on a roll? Why do we use just bread?! and this place was born\' - Hasmik"

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/ui/local/location/a$a;-><init>(Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    aput-object p2, p1, v0

    .line 7
    new-instance p2, Lcom/hiya/stingray/ui/local/location/a$a;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v0, 0x404adbd145d85165L    # 53.717324

    const-wide v2, -0x3f9fb207a4a48f97L    # -130.436567

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const-string v2, "Ralph\'s Chips and Fish"

    const/4 v3, 0x4

    const-string v5, "$"

    const-string v6, "We have all the Chips and Fish you need - Halibut, it\'s just halibut."

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/hiya/stingray/ui/local/location/a$a;-><init>(Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    aput-object p2, p1, v0

    .line 8
    invoke-static {p1}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/location/a;->c:Ljava/util/List;

    return-void
.end method

.method public static final synthetic c(Lcom/hiya/stingray/ui/local/location/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/location/a;->b:Landroid/view/View;

    return-object p0
.end method

.method private final d(Lcom/google/android/gms/maps/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/a;->c:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/local/location/a$a;

    if-eqz p1, :cond_0

    .line 3
    new-instance v2, Lcom/google/android/gms/maps/model/d;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/d;-><init>()V

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/ui/local/location/a$a;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/model/d;->M1(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/d;

    const v1, 0x7f08013c

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/maps/model/b;->a(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/model/d;->I1(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/d;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/model/d;->N1(Z)Lcom/google/android/gms/maps/model/d;

    .line 7
    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/d;)Lcom/google/android/gms/maps/model/c;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/hiya/stingray/ui/local/location/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final g(Lcom/hiya/stingray/ui/local/location/a$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/a;->e:Lcom/hiya/stingray/manager/e1;

    .line 2
    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v2, "personal_directory_item"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/a$a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string v1, "view_screen"

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/c;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/google/android/gms/maps/model/c;)Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/a;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/location/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/location/a$a;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/a;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c012b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "LayoutInflater.from(cont\u2026cation_window_info, null)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/location/a;->g(Lcom/hiya/stingray/ui/local/location/a$a;)V

    .line 4
    sget v1, Lcom/hiya/stingray/o;->X4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "view.windowTitle"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/a$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget v1, Lcom/hiya/stingray/o;->U4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "view.windowDescription"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget v1, Lcom/hiya/stingray/o;->V4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "view.windowPrice"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/a$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u2022 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    sget v1, Lcom/hiya/stingray/o;->W4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "view.windowRating"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/location/a$a;->e()I

    move-result p1

    const-string v2, "\u2b50"

    invoke-static {v2, p1}, Lkotlin/c0/m;->v(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/location/a;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/a;->c:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/hiya/stingray/ui/local/location/a$a;

    .line 5
    new-instance v10, Lcom/hiya/stingray/t/h1/i;

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/local/location/a$a;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->f:D

    const-wide v5, 0x3f589374bc6a7efaL    # 0.0015

    add-double v4, v3, v5

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/local/location/a$a;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->g:D

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/local/location/a$a;->c()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/hiya/stingray/t/h1/i$a;->MAP:Lcom/hiya/stingray/t/h1/i$a;

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/hiya/stingray/t/h1/i;-><init>(DDLjava/lang/String;Lcom/hiya/stingray/t/h1/i$a;)V

    invoke-interface {v1, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final f(Lcom/google/android/gms/maps/c;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/location/a;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/c;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/maps/c;->b()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->g:F

    const/high16 v3, 0x41700000    # 15.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/c;->a(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final h(Lcom/google/android/gms/maps/c;Landroid/view/View;)V
    .locals 1

    const-string v0, "marker"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p2, p0, Lcom/hiya/stingray/ui/local/location/a;->b:Landroid/view/View;

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/location/a;->d(Lcom/google/android/gms/maps/c;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/c;->d(Lcom/google/android/gms/maps/c$a;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    new-instance p2, Lcom/hiya/stingray/ui/local/location/a$b;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/local/location/a$b;-><init>(Lcom/hiya/stingray/ui/local/location/a;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/c;->h(Lcom/google/android/gms/maps/c$e;)V

    :cond_1
    return-void
.end method
