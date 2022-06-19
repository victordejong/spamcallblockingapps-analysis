.class Lcom/hiya/stingray/manager/x1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/x1$a;->a(Ljava/util/List;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/hiya/stingray/t/k0;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/x1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/k0;Lcom/hiya/stingray/t/k0;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/k0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hiya/stingray/t/k0;->a()Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p2}, Lcom/hiya/stingray/t/k0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/hiya/stingray/t/k0;->a()Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/k0;

    check-cast p2, Lcom/hiya/stingray/t/k0;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/manager/x1$a$a;->a(Lcom/hiya/stingray/t/k0;Lcom/hiya/stingray/t/k0;)I

    move-result p1

    return p1
.end method
