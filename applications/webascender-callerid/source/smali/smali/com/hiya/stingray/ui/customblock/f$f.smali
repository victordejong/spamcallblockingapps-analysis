.class public final Lcom/hiya/stingray/ui/customblock/f$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/customblock/f;->n(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/hiya/stingray/t/c0;

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/c0;->m()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/hiya/stingray/util/k;->BEGINS_WITH_TYPE:Lcom/hiya/stingray/util/k;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/k;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Lcom/hiya/stingray/t/c0;

    .line 3
    invoke-virtual {p2}, Lcom/hiya/stingray/t/c0;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/hiya/stingray/util/k;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/t/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
