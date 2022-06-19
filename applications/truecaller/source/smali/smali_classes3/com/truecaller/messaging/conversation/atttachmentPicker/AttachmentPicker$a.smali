.class public final Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$a;->a:I

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$a;->a:I

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-static {p1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->a(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;)Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;->Yd()V

    return-void

    .line 2
    :cond_0
    throw v2

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-static {p1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->a(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;)Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;->T1()V

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-static {p1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->a(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;)Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;->Ja()V

    return-void

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    .line 6
    iget-object p1, p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->l:Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$b;

    if-eqz p1, :cond_4

    .line 7
    check-cast p1, Le/a/a/c/v5;

    .line 8
    invoke-virtual {p1, v0}, Le/a/a/c/v5;->Mj(Z)V

    return-void

    :cond_4
    const-string p1, "cameraCallback"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-static {p1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->a(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;)Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;->D6()V

    return-void

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;

    invoke-static {p1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;->a(Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker;)Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/truecaller/messaging/conversation/atttachmentPicker/AttachmentPicker$c;->l4()V

    return-void
.end method
