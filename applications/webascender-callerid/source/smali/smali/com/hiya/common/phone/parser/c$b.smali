.class Lcom/hiya/common/phone/parser/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/common/phone/parser/c;->d(S)Lcom/google/common/collect/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/g<",
        "Ljava/lang/String;",
        "Lg/g/c/a/a/a/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hiya/common/phone/parser/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lg/g/c/a/a/a/c;
    .locals 1

    .line 1
    new-instance v0, Lg/g/c/a/a/a/c;

    invoke-direct {v0, p1}, Lg/g/c/a/a/a/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hiya/common/phone/parser/c$b;->a(Ljava/lang/String;)Lg/g/c/a/a/a/c;

    move-result-object p1

    return-object p1
.end method
