.class Lcom/google/firebase/inappmessaging/display/internal/layout/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/inappmessaging/display/internal/layout/b/c;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/firebase/inappmessaging/display/internal/layout/b/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/layout/b/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/inappmessaging/display/internal/layout/b/d;Lcom/google/firebase/inappmessaging/display/internal/layout/b/d;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/b/d;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/b/d;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/b/d;->a()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/b/d;->a()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/firebase/inappmessaging/display/internal/layout/b/d;

    check-cast p2, Lcom/google/firebase/inappmessaging/display/internal/layout/b/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/b/c$a;->a(Lcom/google/firebase/inappmessaging/display/internal/layout/b/d;Lcom/google/firebase/inappmessaging/display/internal/layout/b/d;)I

    move-result p1

    return p1
.end method
