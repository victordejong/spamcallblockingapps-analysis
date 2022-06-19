.class public final Le/a/a/c/k6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/j6;


# instance fields
.field public final a:Le/a/p5/h0;

.field public final b:Z

.field public final c:Le/a/e4/b0;


# direct methods
.method public constructor <init>(Le/a/p5/h0;ZLe/a/e4/b0;)V
    .locals 1

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simInfoCache"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    iput-boolean p2, p0, Le/a/a/c/k6;->b:Z

    iput-object p3, p0, Le/a/a/c/k6;->c:Le/a/e4/b0;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v0, 0x7f1201f0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026nHistoryItemOutgoingCall)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v2, 0x7f1201ef

    new-array v0, v0, [Ljava/lang/Object;

    const v3, 0x7f1210ca

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-interface {p1, v2, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ring(R.string.voip_text))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v0, 0x7f1201f1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ationHistoryItemWhatsApp)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v0, 0x7f1201ea

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ersationHistoryItemFlash)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v1, 0x7f08080d

    const v2, 0x7f04068f

    invoke-interface {v0, v1, v2}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "resourceProvider.getTint\u2026R.attr.tcx_textSecondary)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v0, 0x7f1201ee

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ionHistoryItemMissedCall)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v2, 0x7f1201ed

    new-array v0, v0, [Ljava/lang/Object;

    const v3, 0x7f1210ca

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-interface {p1, v2, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ring(R.string.voip_text))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v0, 0x7f1201f1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ationHistoryItemWhatsApp)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v0, 0x7f1201ea

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ersationHistoryItemFlash)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v1, 0x7f080700

    const v2, 0x7f04056e

    invoke-interface {v0, v1, v2}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "resourceProvider.getTint\u2026r.tcx_alertBackgroundRed)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public e(Lcom/truecaller/messaging/data/types/Message;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/a/c/k6;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 3
    invoke-interface {v0}, Lcom/truecaller/messaging/data/types/TransportInfo;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    const-string v0, "message.simToken"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/a/c/k6;->m(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v1, 0x7f08080e

    const v2, 0x7f04068f

    invoke-interface {v0, v1, v2}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "resourceProvider.getTint\u2026R.attr.tcx_textSecondary)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v1, 0x7f080713

    const v2, 0x7f04068f

    invoke-interface {v0, v1, v2}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "resourceProvider.getTint\u2026R.attr.tcx_textSecondary)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v1, 0x7f08080f

    const v2, 0x7f04068f

    invoke-interface {v0, v1, v2}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "resourceProvider.getTint\u2026R.attr.tcx_textSecondary)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public i(Le/a/a/c/i/f;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "callsHistoryItem"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/a/c/k6;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Le/a/a/c/i/f;->h:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Le/a/a/c/k6;->m(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v0, 0x7f1201ec

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026nHistoryItemIncomingCall)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v2, 0x7f1201eb

    new-array v0, v0, [Ljava/lang/Object;

    const v3, 0x7f1210ca

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-interface {p1, v2, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ring(R.string.voip_text))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v0, 0x7f1201f1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ationHistoryItemWhatsApp)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v0, 0x7f1201ea

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026ersationHistoryItemFlash)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f1201ac

    invoke-interface {v0, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026.ConversationBlockedCall)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public l()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v1, 0x7f080708

    const v2, 0x7f04056e

    invoke-interface {v0, v1, v2}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "resourceProvider.getTint\u2026r.tcx_alertBackgroundRed)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final m(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/k6;->c:Le/a/e4/b0;

    invoke-interface {v0, p1}, Le/a/e4/b0;->get(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    iget p1, p1, Lcom/truecaller/multisim/SimInfo;->a:I

    const v1, 0x7f04068f

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v0, 0x7f080710

    invoke-interface {p1, v0, v1}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/a/c/k6;->a:Le/a/p5/h0;

    const v0, 0x7f08070f

    invoke-interface {p1, v0, v1}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method
