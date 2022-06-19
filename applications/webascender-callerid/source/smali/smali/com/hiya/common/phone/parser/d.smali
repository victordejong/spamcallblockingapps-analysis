.class Lcom/hiya/common/phone/parser/d;
.super Lcom/hiya/common/phone/parser/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/i18n/phonenumbers/h;->t()Lcom/google/i18n/phonenumbers/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hiya/common/phone/parser/c;-><init>(Lcom/google/i18n/phonenumbers/h;)V

    return-void
.end method
