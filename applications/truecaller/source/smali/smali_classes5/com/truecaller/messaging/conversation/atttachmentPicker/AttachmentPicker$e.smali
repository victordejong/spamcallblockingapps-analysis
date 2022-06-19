.class public final Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$e;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$e;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    .line 3
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->j:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$e;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    .line 6
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->j:Ljava/util/ArrayList;

    .line 7
    sget-object v1, Le/a/a/c/l8/d;->a:Le/a/a/c/l8/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$e;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    .line 9
    iget-object v0, v0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->j:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$e;->a:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    .line 12
    iget-object p1, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->x:Le/a/a/c/l8/r;

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
