.class final Lcom/hiya/stingray/ui/local/g/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/g/a;->o1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Ljava/util/List<",
        "+",
        "Lcom/hiya/stingray/t/i0;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/g/a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/g/a$g;->f:Lcom/hiya/stingray/ui/local/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/i0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/g/a$g;->f:Lcom/hiya/stingray/ui/local/g/a;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/g/a;->g1(Lcom/hiya/stingray/ui/local/g/a;)Lcom/hiya/stingray/ui/local/g/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/g/c/a;->f(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/g/a$g;->f:Lcom/hiya/stingray/ui/local/g/a;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/g/a;->g1(Lcom/hiya/stingray/ui/local/g/a;)Lcom/hiya/stingray/ui/local/g/c/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/g/a$g;->a(Ljava/util/List;)V

    return-void
.end method
