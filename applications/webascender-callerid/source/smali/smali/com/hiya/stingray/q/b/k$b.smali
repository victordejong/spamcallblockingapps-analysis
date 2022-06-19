.class Lcom/hiya/stingray/q/b/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/k;->j(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/hiya/stingray/q/c/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/q/c/a;Lcom/hiya/stingray/q/c/a;)I
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/hiya/stingray/q/c/a;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/a;->a()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/q/c/a;

    check-cast p2, Lcom/hiya/stingray/q/c/a;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/q/b/k$b;->a(Lcom/hiya/stingray/q/c/a;Lcom/hiya/stingray/q/c/a;)I

    move-result p1

    return p1
.end method
