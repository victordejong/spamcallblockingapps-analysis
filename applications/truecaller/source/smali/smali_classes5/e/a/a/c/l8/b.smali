.class public final Le/a/a/c/l8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/util/ArrayList<",
        "Le/a/a/c/l8/g;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/l8/b;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/l8/b;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    .line 3
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->j:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Le/a/a/c/l8/b;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    .line 6
    iget-object p1, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->j:Ljava/util/ArrayList;

    .line 7
    invoke-static {p1}, Ls1/u/i;->r(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Le/a/a/c/l8/b;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    .line 10
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->j:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    iget-object v0, p0, Le/a/a/c/l8/b;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    .line 13
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->j:Ljava/util/ArrayList;

    .line 14
    invoke-static {v0, p1}, Ls1/u/i;->c(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15
    :cond_0
    iget-object p1, p0, Le/a/a/c/l8/b;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    .line 16
    iget-object p1, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->x:Le/a/a/c/l8/r;

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
