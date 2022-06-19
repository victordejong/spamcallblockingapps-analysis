.class final Lcom/hiya/stingray/ui/w/l$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/w/l$l;->a(Lkotlin/l;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lkotlin/l;


# direct methods
.method constructor <init>(Lkotlin/l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/l$l$a;->f:Lkotlin/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/hiya/stingray/ui/w/l$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;)",
            "Lcom/hiya/stingray/ui/w/l$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/w/l$a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/l$l$a;->f:Lkotlin/l;

    invoke-virtual {v1}, Lkotlin/l;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/t/h1/i;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1}, Lcom/hiya/stingray/ui/w/l$a;-><init>(Ljava/util/List;ZLcom/hiya/stingray/t/h1/i;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/w/l$l$a;->a(Ljava/util/List;)Lcom/hiya/stingray/ui/w/l$a;

    move-result-object p1

    return-object p1
.end method
