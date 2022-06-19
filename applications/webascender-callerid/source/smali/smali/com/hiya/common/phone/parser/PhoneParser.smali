.class public interface abstract Lcom/hiya/common/phone/parser/PhoneParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/common/phone/parser/PhoneParser$c;,
        Lcom/hiya/common/phone/parser/PhoneParser$Failure;,
        Lcom/hiya/common/phone/parser/PhoneParser$a;,
        Lcom/hiya/common/phone/parser/PhoneParser$b;
    }
.end annotation


# virtual methods
.method public abstract a(Lg/g/c/a/a/a/c;)Lcom/google/i18n/phonenumbers/b;
.end method

.method public abstract b(Lg/g/c/a/a/a/c;)Lcom/google/common/base/j;
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
.end method

.method public abstract c(Lg/g/c/a/a/a/h;)Lcom/hiya/common/phone/parser/PhoneParser$b;
.end method

.method public abstract d(S)Lcom/google/common/collect/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Lcom/google/common/collect/x<",
            "Lg/g/c/a/a/a/c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hiya/common/phone/parser/PhoneParser$Failure;
        }
    .end annotation
.end method

.method public abstract g(Lcom/google/common/collect/x;)Lcom/google/common/base/j;
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
.end method

.method public abstract h(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hiya/common/phone/parser/PhoneParser$Failure;
        }
    .end annotation
.end method
