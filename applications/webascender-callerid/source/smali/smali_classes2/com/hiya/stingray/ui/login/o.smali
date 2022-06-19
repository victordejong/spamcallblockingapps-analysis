.class public Lcom/hiya/stingray/ui/login/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/login/o$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/e1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f(Landroidx/fragment/app/Fragment;Landroid/app/Activity;I[Ljava/lang/String;[ILcom/hiya/stingray/ui/login/o$a;)V
    .locals 7

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    array-length v1, p4

    if-ge v1, v0, :cond_2

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "No permissions have been requested"

    invoke-static {p1, p3, p2}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4
    :goto_2
    array-length v4, p4

    if-ge v1, v4, :cond_6

    .line 5
    aget-object v4, p4, v1

    .line 6
    aget v5, p5, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1, v4}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    .line 8
    :cond_3
    invoke-static {p2, v4}, Landroidx/core/app/a;->q(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    :goto_3
    xor-int/2addr v2, v0

    move v3, v2

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move p3, v2

    :goto_4
    if-eqz p3, :cond_7

    .line 9
    invoke-interface {p6}, Lcom/hiya/stingray/ui/login/o$a;->onSuccess()V

    goto :goto_5

    .line 10
    :cond_7
    invoke-interface {p6, v3}, Lcom/hiya/stingray/ui/login/o$a;->a(Z)V

    :goto_5
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 2
    invoke-static {p1, v3}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/login/o;->c()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c()[Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/hiya/stingray/util/n;->b:[Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/hiya/stingray/util/n;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/app/Activity;I[Ljava/lang/String;[ILcom/hiya/stingray/ui/login/o$a;)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/hiya/stingray/ui/login/o;->f(Landroidx/fragment/app/Fragment;Landroid/app/Activity;I[Ljava/lang/String;[ILcom/hiya/stingray/ui/login/o$a;)V

    return-void
.end method

.method public e(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[ILcom/hiya/stingray/ui/login/o$a;)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/hiya/stingray/ui/login/o;->f(Landroidx/fragment/app/Fragment;Landroid/app/Activity;I[Ljava/lang/String;[ILcom/hiya/stingray/ui/login/o$a;)V

    return-void
.end method

.method public g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/common/collect/Lists;->g()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_1

    .line 3
    aget-object v3, p3, v2

    .line 4
    invoke-static {p1, v3}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p2, p3, p4}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {p1, p3, p4}, Landroidx/core/app/a;->p(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method
