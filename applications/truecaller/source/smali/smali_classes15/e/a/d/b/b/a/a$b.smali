.class public final Le/a/d/b/b/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/b/a/a;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/b/b/a/a;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/d/b/b/a/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/b/a/a$b;->a:Le/a/d/b/b/a/a;

    iput-object p2, p0, Le/a/d/b/b/a/a$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/d/b/b/a/a$b;->a:Le/a/d/b/b/a/a;

    invoke-virtual {p1}, Le/a/d/b/b/a/a;->RA()Le/a/d/b/b/a/j;

    move-result-object p1

    iget-object v0, p0, Le/a/d/b/b/a/a$b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p1, Le/a/d/b/b/a/l;

    .line 2
    iget-object v0, p1, Le/a/d/b/b/a/l;->d:Le/a/d/b/b/f;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/d/b/b/f;->J0()Lq3/a/w2/h;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Le/a/p5/s0/g;->R0(Lq3/a/w2/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/voip/VoipUser;

    if-eqz v0, :cond_2

    .line 3
    sget v1, Lcom/truecaller/voip/R$string;->voip_reject_message_custom_option:I

    if-eq p2, v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    :goto_0
    iget-object v1, p1, Le/a/d/b/b/a/l;->h:Le/a/d/c0/j1;

    .line 5
    iget-object v0, v0, Lcom/truecaller/voip/VoipUser;->b:Ljava/lang/String;

    .line 6
    invoke-interface {v1, v0, p2}, Le/a/d/c0/j1;->e(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/b/b/a/k;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Le/a/d/b/b/a/k;->M0()V

    .line 8
    :cond_1
    iget-object p2, p1, Le/a/d/b/b/a/l;->d:Le/a/d/b/b/f;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Le/a/d/b/b/f;->Gh()V

    .line 9
    :cond_2
    iget-object p1, p1, Le/a/d/b/b/a/l;->j:Le/a/d/c0/f0;

    sget-object p2, Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;->REJECT_WITH_MESSAGE:Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;

    invoke-interface {p1, p2}, Le/a/d/c0/f0;->c(Lcom/truecaller/voip/util/VoipAnalyticsInCallUiAction;)V

    return-void
.end method
