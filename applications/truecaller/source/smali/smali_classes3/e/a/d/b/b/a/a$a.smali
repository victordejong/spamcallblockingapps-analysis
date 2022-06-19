.class public final Le/a/d/b/b/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/b/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/d/b/b/a/a$a;->a:I

    iput-object p2, p0, Le/a/d/b/b/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Le/a/d/b/b/a/a$a;->a:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/d/b/b/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/b/a/a;

    invoke-virtual {p1}, Le/a/d/b/b/a/a;->RA()Le/a/d/b/b/a/j;

    move-result-object p1

    check-cast p1, Le/a/d/b/b/a/l;

    .line 2
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/a/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/b/b/a/k;->x4()V

    .line 3
    :cond_0
    iget-object p1, p1, Le/a/d/b/b/a/l;->j:Le/a/d/c0/f0;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->DISMISS:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    invoke-interface {p1, v0}, Le/a/d/c0/f0;->c(Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/d/b/b/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/b/a/a;

    invoke-virtual {p1}, Le/a/d/b/b/a/a;->RA()Le/a/d/b/b/a/j;

    move-result-object p1

    check-cast p1, Le/a/d/b/b/a/l;

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/b/a/k;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/d/b/b/a/k;->S()V

    :cond_3
    return-void

    .line 7
    :cond_4
    iget-object p1, p0, Le/a/d/b/b/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/b/a/a;

    invoke-virtual {p1}, Le/a/d/b/b/a/a;->RA()Le/a/d/b/b/a/j;

    move-result-object p1

    check-cast p1, Le/a/d/b/b/a/l;

    .line 8
    iget-object v0, p1, Le/a/d/b/b/a/l;->d:Le/a/d/b/b/f;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Le/a/d/b/b/f;->Gh()V

    .line 9
    :cond_5
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/b/a/k;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/d/b/b/a/k;->M0()V

    .line 10
    :cond_6
    iget-object p1, p1, Le/a/d/b/b/a/l;->j:Le/a/d/c0/f0;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->REJECT:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    invoke-interface {p1, v0}, Le/a/d/c0/f0;->c(Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;)V

    return-void
.end method
