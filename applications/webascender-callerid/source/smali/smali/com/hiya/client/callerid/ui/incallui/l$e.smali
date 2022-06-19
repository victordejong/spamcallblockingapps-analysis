.class final Lcom/hiya/client/callerid/ui/incallui/l$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/l;->K(Ljava/lang/String;)V
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
        "Lcom/hiya/client/callerid/ui/a0/c$b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/incallui/l;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/l;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/l$e;->f:Lcom/hiya/client/callerid/ui/incallui/l;

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
            "Lcom/hiya/client/callerid/ui/a0/c$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/l$e;->f:Lcom/hiya/client/callerid/ui/incallui/l;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->r()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/l$e;->a(Ljava/util/List;)V

    return-void
.end method
