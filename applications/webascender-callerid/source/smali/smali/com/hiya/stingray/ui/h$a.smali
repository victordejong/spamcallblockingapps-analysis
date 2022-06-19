.class public final Lcom/hiya/stingray/ui/h$a;
.super Landroidx/fragment/app/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final k:[Lkotlin/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/l<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private h:Landroidx/fragment/app/Fragment;

.field private final i:Landroid/content/Context;

.field private final j:Lcom/hiya/stingray/ui/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/l;

    .line 1
    new-instance v1, Lkotlin/l;

    const-class v2, Lcom/hiya/stingray/ui/local/e/b;

    const v3, 0x7f11009f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    new-instance v1, Lkotlin/l;

    const-class v2, Lcom/hiya/stingray/ui/v/a;

    const v3, 0x7f1100a1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sput-object v0, Lcom/hiya/stingray/ui/h$a;->k:[Lkotlin/l;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/n;Lcom/hiya/stingray/ui/i;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Landroidx/fragment/app/s;-><init>(Landroidx/fragment/app/n;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/h$a;->i:Landroid/content/Context;

    iput-object p3, p0, Lcom/hiya/stingray/ui/h$a;->j:Lcom/hiya/stingray/ui/i;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/h$a;->k:[Lkotlin/l;

    array-length v0, v0

    return v0
.end method

.method public f(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/h$a;->i:Landroid/content/Context;

    sget-object v1, Lcom/hiya/stingray/ui/h$a;->k:[Lkotlin/l;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "object"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/s;->o(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 2
    instance-of p1, p3, Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_0

    const/4 p3, 0x0

    :cond_0
    check-cast p3, Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/hiya/stingray/ui/h$a;->h:Landroidx/fragment/app/Fragment;

    .line 3
    instance-of p1, p3, Lcom/hiya/stingray/ui/local/e/b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hiya/stingray/ui/h$a;->j:Lcom/hiya/stingray/ui/i;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/i;->a()V

    goto :goto_0

    .line 4
    :cond_1
    instance-of p1, p3, Lcom/hiya/stingray/ui/v/a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hiya/stingray/ui/h$a;->j:Lcom/hiya/stingray/ui/i;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/i;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public t(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/h$a;->k:[Lkotlin/l;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lkotlin/l;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.Fragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/h$a;->h:Landroidx/fragment/app/Fragment;

    return-object v0
.end method
