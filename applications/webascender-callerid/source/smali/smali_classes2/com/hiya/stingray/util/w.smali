.class public final Lcom/hiya/stingray/util/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/i18n/phonenumbers/b;

.field private final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/hiya/common/phone/parser/PhoneParser$c;->a()Lcom/hiya/common/phone/parser/PhoneParser;

    move-result-object v0

    .line 3
    new-instance v1, Lg/g/c/a/a/a/c;

    invoke-direct {p0}, Lcom/hiya/stingray/util/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lg/g/c/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/hiya/common/phone/parser/PhoneParser;->a(Lg/g/c/a/a/a/c;)Lcom/google/i18n/phonenumbers/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/util/w;->a:Lcom/google/i18n/phonenumbers/b;

    const-string v0, "*"

    const-string v1, "#"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/util/w;->b:[Ljava/lang/String;

    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getDefault()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lkotlin/c0/m;->s(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Locale.US"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Locale.US.country"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/util/w;->a:Lcom/google/i18n/phonenumbers/b;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/b;->h()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 4
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 5
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_2

    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filterTo(StringBuilder(), predicate).toString()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :goto_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 8
    iget-object v1, p0, Lcom/hiya/stingray/util/w;->a:Lcom/google/i18n/phonenumbers/b;

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/b;->n(C)Ljava/lang/String;

    move-result-object p1

    const-string v1, "asYouTypeFormatter.inputDigit(it)"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-object p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2
    iget-object v4, p0, Lcom/hiya/stingray/util/w;->b:[Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/s/e;->m([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
