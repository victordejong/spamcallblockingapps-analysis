.class public final Le/a/v/a/m0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j3/f$b;


# instance fields
.field public final synthetic a:Le/a/v/a/m0/d;


# direct methods
.method public constructor <init>(Le/a/v/a/m0/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/v/a/m0/c;->a:Le/a/v/a/m0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 5

    const-string v0, "name"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/v/a/m0/c;->a:Le/a/v/a/m0/d;

    .line 2
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/v/a/m0/b;

    if-eqz p2, :cond_4

    .line 3
    iget-object p1, p1, Le/a/v/a/m0/d;->d:Le/a/p5/h0;

    .line 4
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_caller_contact_insufficient_requests:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026ct_insufficient_requests)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Le/a/v/a/m0/b;->M(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/v/a/m0/c;->a:Le/a/v/a/m0/d;

    .line 6
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/v/a/m0/b;

    if-eqz p2, :cond_4

    .line 7
    iget-object p1, p1, Le/a/v/a/m0/d;->d:Le/a/p5/h0;

    .line 8
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_caller_contact_already_sent:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026ler_contact_already_sent)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Le/a/v/a/m0/b;->M(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Le/a/v/a/m0/c;->a:Le/a/v/a/m0/d;

    .line 10
    iget-object v3, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/v/a/m0/b;

    if-eqz v3, :cond_4

    .line 11
    iget-object p1, p1, Le/a/v/a/m0/d;->d:Le/a/p5/h0;

    .line 12
    sget v4, Lcom/truecaller/details_view/R$string;->details_view_caller_contact_sent_text:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, ""

    aput-object p2, v1, v2

    invoke-interface {p1, v4, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resourceProvider.getStri\u2026 name, StringUtils.EMPTY)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v3, p1}, Le/a/v/a/m0/b;->H(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Le/a/v/a/m0/c;->a:Le/a/v/a/m0/d;

    .line 15
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/v/a/m0/b;

    if-eqz p2, :cond_4

    .line 16
    iget-object p1, p1, Le/a/v/a/m0/d;->d:Le/a/p5/h0;

    .line 17
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_caller_contact_failed:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026ew_caller_contact_failed)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Le/a/v/a/m0/b;->M(Ljava/lang/String;)V

    .line 18
    :cond_4
    :goto_0
    iget-object p1, p0, Le/a/v/a/m0/c;->a:Le/a/v/a/m0/d;

    .line 19
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/v/a/m0/b;

    if-eqz p2, :cond_5

    .line 20
    iget-object p1, p1, Le/a/v/a/m0/d;->d:Le/a/p5/h0;

    .line 21
    sget v1, Lcom/truecaller/details_view/R$string;->details_view_caller_contact_ask_for_details_text:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026act_ask_for_details_text)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Le/a/v/a/m0/b;->s(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
