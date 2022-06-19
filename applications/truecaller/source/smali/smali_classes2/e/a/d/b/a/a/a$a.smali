.class public final Le/a/d/b/a/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/d/b/a/a/a$a;->a:I

    iput-object p2, p0, Le/a/d/b/a/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Le/a/d/b/a/a/a$a;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/d/b/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/a/a;

    invoke-virtual {p1}, Le/a/d/b/a/a/a;->QA()Le/a/d/b/a/a/h;

    move-result-object p1

    check-cast p1, Le/a/d/b/a/a/j;

    .line 2
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/a/a/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/b/a/a/i;->x4()V

    .line 3
    :cond_0
    iget-object p1, p1, Le/a/d/b/a/a/j;->i:Le/a/d/c0/f0;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->DISMISS:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    invoke-interface {p1, v0}, Le/a/d/c0/f0;->c(Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/d/b/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/a/a;

    invoke-virtual {p1}, Le/a/d/b/a/a/a;->QA()Le/a/d/b/a/a/h;

    move-result-object p1

    check-cast p1, Le/a/d/b/a/a/j;

    .line 6
    iget-object v0, p1, Le/a/d/b/a/a/j;->d:Le/a/d/b/a/d;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/d/b/a/d;->Q1()V

    .line 7
    :cond_3
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/b/a/a/i;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/d/b/a/a/i;->V(Z)V

    .line 8
    :cond_4
    iget-object p1, p1, Le/a/d/b/a/a/j;->i:Le/a/d/c0/f0;

    sget-object v0, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->REJECT:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    invoke-interface {p1, v0}, Le/a/d/c0/f0;->c(Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;)V

    return-void
.end method
