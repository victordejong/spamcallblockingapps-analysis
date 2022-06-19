.class public final Lcom/hiya/stingray/ui/onboarding/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/onboarding/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/onboarding/d$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/hiya/stingray/ui/onboarding/d$a;Lcom/hiya/stingray/manager/d3$b;ZILjava/lang/Object;)Lcom/hiya/stingray/ui/onboarding/d;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/onboarding/d$a;->a(Lcom/hiya/stingray/manager/d3$b;Z)Lcom/hiya/stingray/ui/onboarding/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/manager/d3$b;Z)Lcom/hiya/stingray/ui/onboarding/d;
    .locals 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/onboarding/d;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/onboarding/d;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "EXTRA_TYPE"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "EXTRA_SETTINGS"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
