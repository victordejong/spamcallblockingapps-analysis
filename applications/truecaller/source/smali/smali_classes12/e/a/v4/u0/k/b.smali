.class public final Le/a/v4/u0/k/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v4/u0/k/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/v4/l;

.field public final c:Le/a/v4/u0/k/a$c;

.field public final d:Le/a/v4/u0/k/a$a;

.field public final e:Le/a/v4/u0/k/a$d;


# direct methods
.method public constructor <init>(Le/a/v4/l;Le/a/v4/u0/k/a$b;Le/a/v4/u0/k/a$c;Le/a/v4/u0/k/a$a;Le/a/v4/u0/k/a$d;I)V
    .locals 0

    and-int/lit8 p3, p6, 0x4

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move-object p3, p2

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    and-int/lit8 p5, p6, 0x8

    if-eqz p5, :cond_1

    move-object p5, p2

    goto :goto_1

    :cond_1
    move-object p5, p4

    :goto_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    move-object p4, p2

    :cond_2
    const-string p6, "eventsTrackerHolder"

    .line 1
    invoke-static {p1, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "partnerEventHelper"

    invoke-static {p2, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "partnerInfoHolder"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "integrationTypeHolder"

    invoke-static {p5, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uiStateHelper"

    invoke-static {p4, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v4/u0/k/b;->b:Le/a/v4/l;

    iput-object p3, p0, Le/a/v4/u0/k/b;->c:Le/a/v4/u0/k/a$c;

    iput-object p5, p0, Le/a/v4/u0/k/b;->d:Le/a/v4/u0/k/a$a;

    iput-object p4, p0, Le/a/v4/u0/k/b;->e:Le/a/v4/u0/k/a$d;

    const-string p1, "UUID.randomUUID().toString()"

    .line 3
    invoke-static {p1}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iput-object p1, p0, Le/a/v4/u0/k/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/k;

    .line 1
    new-instance v1, Ls1/k;

    const-string v2, "PopupState"

    const-string v3, "requested"

    invoke-direct {v1, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p0, v0}, Le/a/v4/u0/k/b;->e([Ls1/k;)V

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/k;

    .line 2
    new-instance v1, Ls1/k;

    const-string v2, "InfoExpanded"

    invoke-direct {v1, v2, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 3
    invoke-virtual {p0, v0}, Le/a/v4/u0/k/b;->e([Ls1/k;)V

    return-void
.end method

.method public c(I)V
    .locals 8

    const-string v0, "DismissReason"

    const/4 v1, 0x1

    const-string v2, "dismissed"

    const-string v3, "PopupState"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-ne p1, v6, :cond_1

    const/4 v6, 0x3

    new-array v6, v6, [Ls1/k;

    .line 1
    new-instance v7, Ls1/k;

    invoke-direct {v7, v3, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v4

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v2, Ls1/k;

    invoke-direct {v2, v0, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v6, v1

    .line 4
    iget-object p1, p0, Le/a/v4/u0/k/b;->c:Le/a/v4/u0/k/a$c;

    invoke-interface {p1}, Le/a/v4/u0/k/a$c;->l()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "Locale.ENGLISH"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Locale.ENGLISH.language"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :goto_0
    new-instance v0, Ls1/k;

    const-string v1, "LanguageLocale"

    invoke-direct {v0, v1, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v6, v5

    .line 6
    invoke-virtual {p0, v6}, Le/a/v4/u0/k/b;->e([Ls1/k;)V

    goto :goto_1

    :cond_1
    new-array v5, v5, [Ls1/k;

    .line 7
    new-instance v6, Ls1/k;

    invoke-direct {v6, v3, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v4

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v2, Ls1/k;

    invoke-direct {v2, v0, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v5, v1

    .line 10
    invoke-virtual {p0, v5}, Le/a/v4/u0/k/b;->e([Ls1/k;)V

    :goto_1
    return-void
.end method

.method public d()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/k;

    .line 1
    new-instance v1, Ls1/k;

    const-string v2, "PopupState"

    const-string v3, "shown"

    invoke-direct {v1, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p0, v0}, Le/a/v4/u0/k/b;->e([Ls1/k;)V

    return-void
.end method

.method public final varargs e([Ls1/k;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ls1/k<",
            "+",
            "Ljava/lang/CharSequence;",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    const-string v1, "TruecallerSDK_Popup"

    .line 2
    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 3
    iget-object v1, p0, Le/a/v4/u0/k/b;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 5
    new-instance v1, Ls1/z/c/f0;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ls1/z/c/f0;-><init>(I)V

    .line 6
    iget-object v2, p0, Le/a/v4/u0/k/b;->c:Le/a/v4/u0/k/a$c;

    invoke-interface {v2}, Le/a/v4/u0/k/a$c;->p()Ljava/lang/String;

    move-result-object v2

    .line 7
    new-instance v3, Ls1/k;

    const-string v4, "PartnerKey"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, p0, Le/a/v4/u0/k/b;->c:Le/a/v4/u0/k/a$c;

    invoke-interface {v2}, Le/a/v4/u0/k/a$c;->z()Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v3, Ls1/k;

    const-string v4, "PartnerName"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v2, p0, Le/a/v4/u0/k/b;->c:Le/a/v4/u0/k/a$c;

    invoke-interface {v2}, Le/a/v4/u0/k/a$c;->f()Ljava/lang/String;

    move-result-object v2

    .line 13
    new-instance v3, Ls1/k;

    const-string v4, "PartnerSdkVersion"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v2, p0, Le/a/v4/u0/k/b;->e:Le/a/v4/u0/k/a$d;

    invoke-interface {v2}, Le/a/v4/u0/k/a$d;->n()Ljava/lang/String;

    move-result-object v2

    .line 16
    new-instance v3, Ls1/k;

    const-string v4, "ConsentUI"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v2, p0, Le/a/v4/u0/k/b;->d:Le/a/v4/u0/k/a$a;

    invoke-interface {v2}, Le/a/v4/u0/k/a$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 19
    new-instance v3, Ls1/k;

    const-string v4, "IntegrationType"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v2, p0, Le/a/v4/u0/k/b;->e:Le/a/v4/u0/k/a$d;

    invoke-interface {v2}, Le/a/v4/u0/k/a$d;->w()Ljava/lang/String;

    move-result-object v2

    .line 22
    new-instance v3, Ls1/k;

    const-string v4, "AdditionalCta"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v2, p0, Le/a/v4/u0/k/b;->e:Le/a/v4/u0/k/a$d;

    invoke-interface {v2}, Le/a/v4/u0/k/a$d;->r()Ljava/lang/String;

    move-result-object v2

    .line 25
    new-instance v3, Ls1/k;

    const-string v4, "ContextPrefixText"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v2, p0, Le/a/v4/u0/k/b;->e:Le/a/v4/u0/k/a$d;

    invoke-interface {v2}, Le/a/v4/u0/k/a$d;->y()Ljava/lang/String;

    move-result-object v2

    .line 28
    new-instance v3, Ls1/k;

    const-string v4, "ContextSuffixText"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v2, p0, Le/a/v4/u0/k/b;->e:Le/a/v4/u0/k/a$d;

    invoke-interface {v2}, Le/a/v4/u0/k/a$d;->j()Ljava/lang/String;

    move-result-object v2

    .line 31
    new-instance v3, Ls1/k;

    const-string v4, "CtaText"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v2, p0, Le/a/v4/u0/k/b;->e:Le/a/v4/u0/k/a$d;

    invoke-interface {v2}, Le/a/v4/u0/k/a$d;->s()Ljava/lang/String;

    move-result-object v2

    .line 34
    new-instance v3, Ls1/k;

    const-string v4, "ButtonShape"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v2, p0, Le/a/v4/u0/k/b;->e:Le/a/v4/u0/k/a$d;

    invoke-interface {v2}, Le/a/v4/u0/k/a$d;->A()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 37
    new-instance v3, Ls1/k;

    const-string v4, "IsTosLinkPresent"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v2, p0, Le/a/v4/u0/k/b;->e:Le/a/v4/u0/k/a$d;

    invoke-interface {v2}, Le/a/v4/u0/k/a$d;->k()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 40
    new-instance v3, Ls1/k;

    const-string v4, "IsPrivacyLinkPresent"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v2, p0, Le/a/v4/u0/k/b;->c:Le/a/v4/u0/k/a$c;

    invoke-interface {v2}, Le/a/v4/u0/k/a$c;->o()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "dark"

    goto :goto_0

    :cond_0
    const-string v2, "light"

    .line 43
    :goto_0
    new-instance v3, Ls1/k;

    const-string v4, "RequestedTheme"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v2, p0, Le/a/v4/u0/k/b;->c:Le/a/v4/u0/k/a$c;

    invoke-interface {v2}, Le/a/v4/u0/k/a$c;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 46
    :goto_1
    new-instance v4, Ls1/k;

    const-string v5, "PartnerSdkVariant"

    invoke-direct {v4, v5, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v2, p0, Le/a/v4/u0/k/b;->c:Le/a/v4/u0/k/a$c;

    invoke-interface {v2}, Le/a/v4/u0/k/a$c;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v3, v2

    .line 49
    :cond_2
    new-instance v2, Ls1/k;

    const-string v4, "PartnerSdkVariantVersion"

    invoke-direct {v2, v4, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    iget-object v3, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v1, p1}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ls1/z/c/f0;->b()I

    move-result p1

    new-array p1, p1, [Ls1/k;

    .line 52
    iget-object v1, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 53
    check-cast p1, [Ls1/k;

    .line 54
    invoke-static {p1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 56
    invoke-virtual {v0}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    .line 57
    iget-object v0, p0, Le/a/v4/u0/k/b;->b:Le/a/v4/l;

    invoke-interface {v0}, Le/a/v4/l;->a()Le/a/q2/a;

    move-result-object v0

    const-string v1, "internalEvent"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method
