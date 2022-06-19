.class public final Le/a/f/a/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/f/a/a/a$a;->a:I

    iput-object p2, p0, Le/a/f/a/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Le/a/f/a/a/a$a;->a:I

    const-string v0, "uiEventsChannel"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_2

    .line 1
    iget-object p1, p0, Le/a/f/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/a;

    invoke-virtual {p1}, Le/a/f/a/a/a;->jB()Le/a/f/a/a/f;

    move-result-object p1

    check-cast p1, Le/a/f/a/a/i;

    .line 2
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/f/a/a/g;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/f/a/a/g;->kf()V

    .line 3
    :cond_0
    iget-object p1, p1, Le/a/f/a/a/i;->k:Lq3/a/w2/h;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/truecaller/incallui/callui/incoming/IncomingCallUIEvent;->REJECT_WITH_MESSAGE_CLICK:Lcom/truecaller/incallui/callui/incoming/IncomingCallUIEvent;

    invoke-interface {p1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_2
    throw v2

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/f/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/a;

    invoke-virtual {p1}, Le/a/f/a/a/a;->jB()Le/a/f/a/a/f;

    move-result-object p1

    check-cast p1, Le/a/f/a/a/i;

    .line 6
    iget-object v3, p1, Le/a/f/a/a/i;->p:Le/a/f/y/c;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v2}, Le/a/m0/a1$k;->Y0(Le/a/f/y/c;ZILjava/lang/Object;)V

    .line 7
    iget-object p1, p1, Le/a/f/a/a/i;->k:Lq3/a/w2/h;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/truecaller/incallui/callui/incoming/IncomingCallUIEvent;->REJECT_CLICK:Lcom/truecaller/incallui/callui/incoming/IncomingCallUIEvent;

    invoke-interface {p1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-void

    :cond_4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
