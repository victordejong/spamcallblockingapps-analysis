.class public abstract Lcom/hiya/stingray/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/t/n0;",
            "Lcom/hiya/stingray/t/y0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-virtual {p2}, Lcom/hiya/stingray/t/y0;->c()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->d()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 3
    invoke-static {p1}, Lcom/hiya/stingray/t/f1/b;->a(Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->g()Lcom/hiya/stingray/t/r0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/r0;->d()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 5
    invoke-static {p3}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    .line 6
    invoke-static {v0}, Lcom/google/common/collect/Lists;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 7
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    new-instance p2, Lcom/hiya/stingray/ui/a;

    invoke-direct {p2, p4}, Lcom/hiya/stingray/ui/a;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {p1, p2}, Lcom/google/common/collect/a0;->d(Ljava/lang/Iterable;Lcom/google/common/base/n;)Ljava/lang/Iterable;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected final a(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/b;Ljava/lang/String;Lcom/hiya/stingray/t/n0;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/r$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    .line 2
    invoke-static {p3}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p0, p4, p3}, Lcom/hiya/stingray/ui/r;->b(Lcom/hiya/stingray/t/n0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0, p4, p3}, Lcom/hiya/stingray/ui/r;->b(Lcom/hiya/stingray/t/n0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-static {p3}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-virtual {p4}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/r;->f(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/r;->c(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final b(Lcom/hiya/stingray/t/n0;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected final c(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f1102ca

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final e(Ljava/lang/String;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/hiya/stingray/ui/r;->d(Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/util/t;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final f(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f110416

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
