.class public final Le/a/c/a/b/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/b/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/c/a/b/a/a$a;->a:I

    iput-object p2, p0, Le/a/c/a/b/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Le/a/c/a/b/a/a$a;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/c/a/b/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/b/a/a;

    invoke-virtual {p1}, Le/a/c/a/b/a/a;->OA()Le/a/c/e/c;

    move-result-object p1

    sget-object v0, Le/a/c/a/b/c/d;->g:Le/a/c/a/b/c/d;

    .line 2
    sget-object v0, Le/a/c/a/b/c/d;->b:Le/a/c/r/d/b;

    .line 3
    invoke-interface {p1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 4
    iget-object p1, p0, Le/a/c/a/b/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/b/a/a;

    invoke-virtual {p1}, Le/a/c/a/b/a/a;->QA()Le/a/c/c0/k;

    move-result-object p1

    invoke-interface {p1}, Le/a/c/c0/k;->d()V

    .line 5
    iget-object p1, p0, Le/a/c/a/b/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/b/a/a;

    sget-object v0, Lcom/truecaller/insights/utils/FeedbackConsentState;->CONSENT_GIVEN:Lcom/truecaller/insights/utils/FeedbackConsentState;

    .line 6
    iput-object v0, p1, Le/a/c/a/b/a/a;->d:Lcom/truecaller/insights/utils/FeedbackConsentState;

    .line 7
    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1

    .line 9
    :cond_1
    iget-object p1, p0, Le/a/c/a/b/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/b/a/a;

    invoke-virtual {p1}, Le/a/c/a/b/a/a;->OA()Le/a/c/e/c;

    move-result-object p1

    sget-object v0, Le/a/c/a/b/c/d;->g:Le/a/c/a/b/c/d;

    .line 10
    sget-object v0, Le/a/c/a/b/c/d;->c:Le/a/c/r/d/b;

    .line 11
    invoke-interface {p1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 12
    iget-object p1, p0, Le/a/c/a/b/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/b/a/a;

    invoke-virtual {p1}, Le/a/c/a/b/a/a;->QA()Le/a/c/c0/k;

    move-result-object p1

    sget-object v0, Lcom/truecaller/insights/utils/FeedbackConsentType;->SEMI_CARD:Lcom/truecaller/insights/utils/FeedbackConsentType;

    invoke-static {p1, v0}, Le/a/c/p/a;->Y0(Le/a/c/c0/k;Lcom/truecaller/insights/utils/FeedbackConsentType;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Le/a/c/a/b/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/b/a/a;

    invoke-virtual {p1}, Le/a/c/a/b/a/a;->QA()Le/a/c/c0/k;

    move-result-object p1

    .line 14
    sget-object v1, Lcom/truecaller/insights/utils/FeedbackConsentState;->CONSENT_NOT_GIVEN:Lcom/truecaller/insights/utils/FeedbackConsentState;

    .line 15
    invoke-interface {p1, v0, v1}, Le/a/c/c0/k;->e(Lcom/truecaller/insights/utils/FeedbackConsentType;Lcom/truecaller/insights/utils/FeedbackConsentState;)V

    .line 16
    iget-object p1, p0, Le/a/c/a/b/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/b/a/a;

    .line 17
    iput-object v1, p1, Le/a/c/a/b/a/a;->d:Lcom/truecaller/insights/utils/FeedbackConsentState;

    .line 18
    :cond_2
    iget-object p1, p0, Le/a/c/a/b/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/b/a/a;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method
