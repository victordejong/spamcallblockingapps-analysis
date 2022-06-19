.class abstract Lcom/hiya/common/phone/parser/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/common/phone/parser/PhoneParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/common/phone/parser/c$c;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/i18n/phonenumbers/h;

.field private final b:Lcom/hiya/common/phone/parser/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/g/c/a/a/a/c;

    const-string v1, "US"

    invoke-direct {v0, v1}, Lg/g/c/a/a/a/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/i18n/phonenumbers/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/hiya/common/phone/parser/a;

    invoke-direct {v0, p0}, Lcom/hiya/common/phone/parser/a;-><init>(Lcom/hiya/common/phone/parser/PhoneParser;)V

    iput-object v0, p0, Lcom/hiya/common/phone/parser/c;->b:Lcom/hiya/common/phone/parser/a;

    .line 3
    iput-object p1, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    return-void
.end method

.method private i(Lcom/google/i18n/phonenumbers/m;)Lcom/google/common/base/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/m;",
            ")",
            "Lcom/google/common/base/j<",
            "Lg/g/c/a/a/a/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/h;->C(Lcom/google/i18n/phonenumbers/m;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->c()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/h;->E(I)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_2

    const-string p1, "001"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lg/g/c/a/a/a/c;

    invoke-direct {p1, v0}, Lg/g/c/a/a/a/c;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/common/base/j;->e(Ljava/lang/Object;)Lcom/google/common/base/j;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object p1

    return-object p1
.end method

.method private j(Lcom/google/i18n/phonenumbers/NumberParseException;Lg/g/c/a/a/a/j;Lcom/google/common/base/j;)Lcom/hiya/common/phone/parser/PhoneParser$Failure;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/NumberParseException;",
            "Lg/g/c/a/a/a/j;",
            "Lcom/google/common/base/j<",
            "Lg/g/c/a/a/a/c;",
            ">;)",
            "Lcom/hiya/common/phone/parser/PhoneParser$Failure;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/common/phone/parser/PhoneParser$Failure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/NumberParseException;->a()Lcom/google/i18n/phonenumbers/NumberParseException$a;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") parsing phone number (with hint: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/hiya/common/phone/parser/PhoneParser$Failure;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private k(Lcom/google/i18n/phonenumbers/m;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/h;->I(Lcom/google/i18n/phonenumbers/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private l(Lcom/google/i18n/phonenumbers/m;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/i18n/phonenumbers/n;->a()Lcom/google/i18n/phonenumbers/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/n;->e(Lcom/google/i18n/phonenumbers/m;)Z

    move-result p1

    return p1
.end method

.method private m(Lg/g/c/a/a/a/j;)Lcom/google/i18n/phonenumbers/m;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hiya/common/phone/parser/PhoneParser$Failure;,
            Lcom/hiya/common/phone/parser/c$c;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/common/phone/parser/c;->b:Lcom/hiya/common/phone/parser/a;

    iget-object v1, p1, Lg/g/c/a/a/a/j;->g:Lcom/google/common/collect/x;

    invoke-virtual {v0, v1}, Lcom/hiya/common/phone/parser/a;->b(Lcom/google/common/collect/x;)Lcom/google/common/base/j;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lg/g/c/a/a/a/j;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hiya/common/phone/parser/e;->a(Ljava/lang/String;Lcom/google/common/base/j;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {v2, v1, v3}, Lcom/google/i18n/phonenumbers/h;->W(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 5
    invoke-direct {p0, v1, p1, v0}, Lcom/hiya/common/phone/parser/c;->j(Lcom/google/i18n/phonenumbers/NumberParseException;Lg/g/c/a/a/a/j;Lcom/google/common/base/j;)Lcom/hiya/common/phone/parser/PhoneParser$Failure;

    move-result-object p1

    throw p1

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/base/j;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {v0}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/g/c/a/a/a/c;

    iget-object v4, v4, Lg/g/c/a/a/a/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lcom/google/i18n/phonenumbers/h;->W(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception v2

    .line 8
    invoke-direct {p0, v2, p1, v0}, Lcom/hiya/common/phone/parser/c;->j(Lcom/google/i18n/phonenumbers/NumberParseException;Lg/g/c/a/a/a/j;Lcom/google/common/base/j;)Lcom/hiya/common/phone/parser/PhoneParser$Failure;

    move-result-object p1

    move-object v0, p1

    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_1

    .line 9
    invoke-direct {p0, p1}, Lcom/hiya/common/phone/parser/c;->k(Lcom/google/i18n/phonenumbers/m;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    :try_start_2
    iget-object v2, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    const-string v4, "+%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lcom/google/i18n/phonenumbers/h;->W(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;

    move-result-object v1

    .line 11
    invoke-direct {p0, v1}, Lcom/hiya/common/phone/parser/c;->k(Lcom/google/i18n/phonenumbers/m;)Z

    move-result v2
    :try_end_2
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v2, :cond_1

    return-object v1

    :catch_2
    nop

    :cond_1
    if-eqz p1, :cond_2

    return-object p1

    .line 12
    :cond_2
    throw v0

    :cond_3
    const-string p1, "[^0-9]+"

    const-string v0, ""

    .line 13
    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_5

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    :cond_4
    invoke-direct {p0, v1}, Lcom/hiya/common/phone/parser/c;->q(Ljava/lang/String;)Lcom/google/common/base/j;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/common/base/j;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v0}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/i18n/phonenumbers/m;

    return-object p1

    .line 18
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_6

    const-string v0, "011"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    invoke-direct {p0, p1}, Lcom/hiya/common/phone/parser/c;->p(Ljava/lang/String;)Lcom/google/common/base/j;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/common/base/j;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 21
    invoke-virtual {v0}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/i18n/phonenumbers/m;

    return-object p1

    .line 22
    :cond_6
    invoke-direct {p0, p1}, Lcom/hiya/common/phone/parser/c;->o(Ljava/lang/String;)Lcom/google/common/base/j;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/google/common/base/j;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {p1}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/i18n/phonenumbers/m;

    return-object p1

    .line 25
    :cond_7
    new-instance p1, Lcom/hiya/common/phone/parser/c$c;

    invoke-direct {p1, p0, v3}, Lcom/hiya/common/phone/parser/c$c;-><init>(Lcom/hiya/common/phone/parser/c;Lcom/hiya/common/phone/parser/c$a;)V

    throw p1
.end method

.method private n(Lcom/google/i18n/phonenumbers/m;Ljava/lang/String;)Lcom/hiya/common/phone/parser/PhoneParser$b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hiya/common/phone/parser/PhoneParser$Failure;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/common/phone/parser/c;->k(Lcom/google/i18n/phonenumbers/m;)Z

    move-result v3

    .line 3
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object v0

    if-eqz v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/h;->z(Lcom/google/i18n/phonenumbers/m;)Lcom/google/i18n/phonenumbers/h$c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/j;->e(Ljava/lang/Object;)Lcom/google/common/base/j;

    move-result-object v0

    :cond_0
    move-object v6, v0

    .line 5
    new-instance v0, Lcom/hiya/common/phone/parser/PhoneParser$b;

    new-instance v2, Lg/g/c/a/a/a/h;

    .line 6
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->c()I

    move-result v1

    int-to-short v1, v1

    iget-object v4, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {v4, p1}, Lcom/google/i18n/phonenumbers/h;->x(Lcom/google/i18n/phonenumbers/m;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lg/g/c/a/a/a/h;-><init>(SLjava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/hiya/common/phone/parser/c;->l(Lcom/google/i18n/phonenumbers/m;)Z

    move-result v4

    .line 8
    invoke-direct {p0, p1}, Lcom/hiya/common/phone/parser/c;->i(Lcom/google/i18n/phonenumbers/m;)Lcom/google/common/base/j;

    move-result-object v5

    .line 9
    invoke-static {p2}, Lcom/google/common/base/j;->e(Ljava/lang/Object;)Lcom/google/common/base/j;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/hiya/common/phone/parser/PhoneParser$b;-><init>(Lg/g/c/a/a/a/h;ZZLcom/google/common/base/j;Lcom/google/common/base/j;Lcom/google/common/base/j;)V

    return-object v0

    .line 10
    :cond_1
    new-instance p2, Lcom/hiya/common/phone/parser/PhoneParser$Failure;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->i()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "libphonenumber could not determine cc and/or national part for \'%s\'"

    .line 12
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/hiya/common/phone/parser/PhoneParser$Failure;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private o(Ljava/lang/String;)Lcom/google/common/base/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/j<",
            "Lcom/google/i18n/phonenumbers/m;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/i18n/phonenumbers/h;->W(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/common/phone/parser/c;->k(Lcom/google/i18n/phonenumbers/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/common/base/j;->e(Ljava/lang/Object;)Lcom/google/common/base/j;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4
    :catch_0
    :cond_0
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object p1

    return-object p1
.end method

.method private p(Ljava/lang/String;)Lcom/google/common/base/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/j<",
            "Lcom/google/i18n/phonenumbers/m;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    const-string v1, "US"

    invoke-virtual {v0, p1, v1}, Lcom/google/i18n/phonenumbers/h;->W(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/common/base/j;->e(Ljava/lang/Object;)Lcom/google/common/base/j;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4
    :catch_0
    :cond_0
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object p1

    return-object p1
.end method

.method private q(Ljava/lang/String;)Lcom/google/common/base/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/j<",
            "Lcom/google/i18n/phonenumbers/m;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    const-string v1, "US"

    invoke-virtual {v0, p1, v1}, Lcom/google/i18n/phonenumbers/h;->W(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/common/phone/parser/c;->k(Lcom/google/i18n/phonenumbers/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/common/base/j;->e(Ljava/lang/Object;)Lcom/google/common/base/j;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4
    :catch_0
    :cond_0
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lg/g/c/a/a/a/c;)Lcom/google/i18n/phonenumbers/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    iget-object p1, p1, Lg/g/c/a/a/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/h;->p(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/b;

    move-result-object p1

    return-object p1
.end method

.method public b(Lg/g/c/a/a/a/c;)Lcom/google/common/base/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/c/a/a/a/c;",
            ")",
            "Lcom/google/common/base/j<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    iget-object p1, p1, Lg/g/c/a/a/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/h;->q(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-short p1, p1

    .line 3
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/j;->e(Ljava/lang/Object;)Lcom/google/common/base/j;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lg/g/c/a/a/a/h;)Lcom/hiya/common/phone/parser/PhoneParser$b;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lg/g/c/a/a/a/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p1, Lg/g/c/a/a/a/h;->f:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lg/g/c/a/a/a/h;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lg/g/c/a/a/a/j;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/hiya/common/phone/parser/c;->h(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object p1
    :try_end_0
    .catch Lcom/hiya/common/phone/parser/PhoneParser$Failure; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reparse failed on \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d(S)Lcom/google/common/collect/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Lcom/google/common/collect/x<",
            "Lg/g/c/a/a/a/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/h;->E(I)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/common/phone/parser/c$a;

    invoke-direct {v0, p0}, Lcom/hiya/common/phone/parser/c$a;-><init>(Lcom/hiya/common/phone/parser/c;)V

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/collect/a0;->d(Ljava/lang/Iterable;Lcom/google/common/base/n;)Ljava/lang/Iterable;

    move-result-object p1

    new-instance v0, Lcom/hiya/common/phone/parser/c$b;

    invoke-direct {v0, p0}, Lcom/hiya/common/phone/parser/c$b;-><init>(Lcom/hiya/common/phone/parser/c;)V

    .line 4
    invoke-static {p1, v0}, Lcom/google/common/collect/a0;->h(Ljava/lang/Iterable;Lcom/google/common/base/g;)Ljava/lang/Iterable;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/common/collect/x;->q(Ljava/lang/Iterable;)Lcom/google/common/collect/x;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/hiya/common/phone/parser/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hiya/common/phone/parser/PhoneParser$Failure;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/hiya/common/phone/parser/c;->m(Lg/g/c/a/a/a/j;)Lcom/google/i18n/phonenumbers/m;

    move-result-object v0
    :try_end_0
    .catch Lcom/hiya/common/phone/parser/c$c; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v1, Lcom/hiya/common/phone/parser/PhoneParser$a;

    iget-object p1, p1, Lg/g/c/a/a/a/j;->f:Ljava/lang/String;

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/hiya/common/phone/parser/c;->n(Lcom/google/i18n/phonenumbers/m;Ljava/lang/String;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object p1

    iget-object v2, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    sget-object v3, Lcom/google/i18n/phonenumbers/h$b;->NATIONAL:Lcom/google/i18n/phonenumbers/h$b;

    .line 4
    invoke-virtual {v2, v0, v3}, Lcom/google/i18n/phonenumbers/h;->j(Lcom/google/i18n/phonenumbers/m;Lcom/google/i18n/phonenumbers/h$b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hiya/common/phone/parser/c;->a:Lcom/google/i18n/phonenumbers/h;

    sget-object v4, Lcom/google/i18n/phonenumbers/h$b;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/h$b;

    .line 5
    invoke-virtual {v3, v0, v4}, Lcom/google/i18n/phonenumbers/h;->j(Lcom/google/i18n/phonenumbers/m;Lcom/google/i18n/phonenumbers/h$b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lcom/hiya/common/phone/parser/PhoneParser$a;-><init>(Lcom/hiya/common/phone/parser/PhoneParser$b;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 6
    :catch_0
    new-instance v0, Lcom/hiya/common/phone/parser/PhoneParser$Failure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse phone number without country hint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/hiya/common/phone/parser/PhoneParser$Failure;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Lcom/google/common/collect/x;)Lcom/google/common/base/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x<",
            "Lg/g/c/a/a/a/i;",
            ">;)",
            "Lcom/google/common/base/j<",
            "Lg/g/c/a/a/a/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/common/phone/parser/c;->b:Lcom/hiya/common/phone/parser/a;

    invoke-virtual {v0, p1}, Lcom/hiya/common/phone/parser/a;->b(Lcom/google/common/collect/x;)Lcom/google/common/base/j;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hiya/common/phone/parser/PhoneParser$Failure;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/hiya/common/phone/parser/c;->m(Lg/g/c/a/a/a/j;)Lcom/google/i18n/phonenumbers/m;

    move-result-object v0
    :try_end_0
    .catch Lcom/hiya/common/phone/parser/c$c; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p1, p1, Lg/g/c/a/a/a/j;->f:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/hiya/common/phone/parser/c;->n(Lcom/google/i18n/phonenumbers/m;Ljava/lang/String;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object p1

    return-object p1

    .line 3
    :catch_0
    new-instance v0, Lcom/hiya/common/phone/parser/PhoneParser$Failure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse phone number without country hint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/hiya/common/phone/parser/PhoneParser$Failure;-><init>(Ljava/lang/String;)V

    throw v0
.end method
