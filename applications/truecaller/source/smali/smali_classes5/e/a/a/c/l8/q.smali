.class public final Le/a/a/c/l8/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/l8/p;

.field public final synthetic b:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;

.field public final synthetic c:Le/a/a/c/l8/g;


# direct methods
.method public constructor <init>(Le/a/a/c/l8/p;Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;Le/a/a/c/l8/g;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/l8/q;->a:Le/a/a/c/l8/p;

    iput-object p2, p0, Le/a/a/c/l8/q;->b:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;

    iput-object p3, p0, Le/a/a/c/l8/q;->c:Le/a/a/c/l8/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/a/c/l8/q;->b:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;

    iget-object v0, p0, Le/a/a/c/l8/q;->c:Le/a/a/c/l8/g;

    .line 2
    iget-object v0, v0, Le/a/a/c/l8/g;->b:Landroid/net/Uri;

    .line 3
    iget-object v1, p0, Le/a/a/c/l8/q;->a:Le/a/a/c/l8/p;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;->y6(Landroid/net/Uri;I)V

    return-void
.end method
