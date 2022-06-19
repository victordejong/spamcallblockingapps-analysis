.class public final Lcom/hiya/stingray/ui/m;
.super Landroidx/fragment/app/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/fragment/app/n;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/s;-><init>(Landroidx/fragment/app/n;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public t(I)Landroidx/fragment/app/Fragment;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    new-instance p1, Lcom/hiya/stingray/ui/callergrid/e;

    invoke-direct {p1}, Lcom/hiya/stingray/ui/callergrid/e;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/hiya/stingray/ui/local/e/b;

    invoke-direct {p1}, Lcom/hiya/stingray/ui/local/e/b;-><init>()V

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Lcom/hiya/stingray/ui/callergrid/e;

    invoke-direct {p1}, Lcom/hiya/stingray/ui/callergrid/e;-><init>()V

    :goto_0
    return-object p1
.end method
