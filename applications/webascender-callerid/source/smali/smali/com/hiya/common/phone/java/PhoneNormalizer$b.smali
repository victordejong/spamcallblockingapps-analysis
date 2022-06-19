.class Lcom/hiya/common/phone/java/PhoneNormalizer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/common/phone/java/PhoneNormalizer;->f(Lcom/hiya/common/phone/parser/PhoneParser$b;Lg/g/c/a/a/a/c;)Lg/g/c/a/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/g<",
        "Lcom/google/i18n/phonenumbers/h$c;",
        "Lg/g/c/a/b/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hiya/common/phone/java/PhoneNormalizer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/i18n/phonenumbers/h$c;)Lg/g/c/a/b/a/a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/hiya/common/phone/java/b;->a(Lcom/google/i18n/phonenumbers/h$c;)Lg/g/c/a/b/a/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/i18n/phonenumbers/h$c;

    invoke-virtual {p0, p1}, Lcom/hiya/common/phone/java/PhoneNormalizer$b;->a(Lcom/google/i18n/phonenumbers/h$c;)Lg/g/c/a/b/a/a;

    move-result-object p1

    return-object p1
.end method
