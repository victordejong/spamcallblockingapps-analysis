.class public final Lcom/truecaller/bizmon/callReason/ModularCallReasonView$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->setIsExpandable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$a;->a:I

    iput-object p2, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$a;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$a;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;

    .line 2
    iget-object p1, p1, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->t:Le/a/m5/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/m5/c;->g4()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/truecaller/bizmon/callReason/ModularCallReasonView$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;

    .line 6
    iget-object p1, p1, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;->t:Le/a/m5/c;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1}, Le/a/m5/c;->g4()V

    :cond_3
    return-void
.end method
