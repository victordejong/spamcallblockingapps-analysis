.class public final Le/a/a/m/n;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/n1;",
        ">;",
        "Le/a/a/m/h0;"
    }
.end annotation


# instance fields
.field public final c:Le/a/a/m/j2;

.field public final d:Le/a/a/m/n1$a;

.field public final e:Le/a/p5/c0;

.field public final f:Le/a/a/e/m;

.field public final g:Ls1/w/f;

.field public final h:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/a/m/n1$a;Le/a/p5/c0;Le/a/a/e/m;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inboxCleaner"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p1, p0, Le/a/a/m/n;->c:Le/a/a/m/j2;

    iput-object p2, p0, Le/a/a/m/n;->d:Le/a/a/m/n1$a;

    iput-object p3, p0, Le/a/a/m/n;->e:Le/a/p5/c0;

    iput-object p4, p0, Le/a/a/m/n;->f:Le/a/a/e/m;

    iput-object p5, p0, Le/a/a/m/n;->g:Ls1/w/f;

    iput-object p6, p0, Le/a/a/m/n;->h:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Le/a/a/m/d1$k;

    return p1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 6

    .line 1
    check-cast p1, Le/a/a/m/n1;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/a/m/n;->g:Ls1/w/f;

    const/4 v2, 0x0

    new-instance v3, Le/a/a/m/m;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p2}, Le/a/a/m/m;-><init>(Le/a/a/m/n;Le/a/a/m/n1;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public m(I)Z
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/m/n;->c:Le/a/a/m/j2;

    invoke-interface {p1}, Le/a/a/m/j2;->Ge()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PromoInboxPromotionalTab"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/a/m/n;->c:Le/a/a/m/j2;

    invoke-interface {p1}, Le/a/a/m/j2;->ze()Le/a/a/m/d1;

    move-result-object p1

    .line 2
    instance-of p1, p1, Le/a/a/m/d1$k;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v(Le/a/o2/h;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x723e28c9

    if-eq v0, v1, :cond_1

    const v1, 0x4737fac6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.ACTION_DISMISS_INBOX_CLEANER"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/a/m/n;->d:Le/a/a/m/n1$a;

    sget-object v0, Lcom/truecaller/messaging/inboxcleanup/InboxCleanerPromoTab;->TAB_PROMOTIONAL:Lcom/truecaller/messaging/inboxcleanup/InboxCleanerPromoTab;

    invoke-interface {p1, v0}, Le/a/a/m/n1$a;->Hh(Lcom/truecaller/messaging/inboxcleanup/InboxCleanerPromoTab;)Z

    move-result p1

    goto :goto_1

    :cond_1
    const-string v0, "ItemEvent.ACTION_TRY_INBOX_CLEANER"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/a/m/n;->d:Le/a/a/m/n1$a;

    sget-object v0, Lcom/truecaller/messaging/inboxcleanup/InboxCleanerPromoTab;->TAB_PROMOTIONAL:Lcom/truecaller/messaging/inboxcleanup/InboxCleanerPromoTab;

    invoke-interface {p1, v0}, Le/a/a/m/n1$a;->vj(Lcom/truecaller/messaging/inboxcleanup/InboxCleanerPromoTab;)Z

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
