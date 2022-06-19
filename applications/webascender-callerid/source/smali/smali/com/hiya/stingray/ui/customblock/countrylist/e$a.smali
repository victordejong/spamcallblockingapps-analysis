.class final Lcom/hiya/stingray/ui/customblock/countrylist/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/customblock/countrylist/e;->w()Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/customblock/countrylist/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/customblock/countrylist/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/customblock/countrylist/e$a;->f:Lcom/hiya/stingray/ui/customblock/countrylist/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/hiya/stingray/t/l0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/i18n/phonenumbers/h;->t()Lcom/google/i18n/phonenumbers/h;

    move-result-object v0

    const-string v1, "PhoneNumberUtil.getInstance()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/h;->F()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "supportedRegions"

    .line 3
    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/lang/String;

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/i18n/phonenumbers/h;->t()Lcom/google/i18n/phonenumbers/h;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/i18n/phonenumbers/h;->q(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lcom/hiya/stingray/t/l0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hiya/stingray/t/l0;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    sget-object v0, Lcom/hiya/stingray/ui/customblock/countrylist/e$a$a;->f:Lcom/hiya/stingray/ui/customblock/countrylist/e$a$a;

    invoke-static {v1, v0}, Lkotlin/s/k;->v(Ljava/util/List;Ljava/util/Comparator;)V

    .line 12
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/e$a;->f:Lcom/hiya/stingray/ui/customblock/countrylist/e;

    invoke-static {v0}, Lcom/hiya/stingray/ui/customblock/countrylist/e;->t(Lcom/hiya/stingray/ui/customblock/countrylist/e;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1100ce

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "+379"

    invoke-static {v4, v0, v2}, Lcom/hiya/stingray/t/l0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hiya/stingray/t/l0;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/hiya/stingray/ui/customblock/countrylist/e$a;->f:Lcom/hiya/stingray/ui/customblock/countrylist/e;

    invoke-static {v0, v1}, Lcom/hiya/stingray/ui/customblock/countrylist/e;->u(Lcom/hiya/stingray/ui/customblock/countrylist/e;Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/customblock/countrylist/e$a;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
