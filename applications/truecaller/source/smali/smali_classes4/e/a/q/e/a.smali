.class public final Le/a/q/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/q2/a;

.field public final b:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q2/a;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q/e/a;->a:Le/a/q2/a;

    iput-object p2, p0, Le/a/q/e/a;->b:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v0, v2, p1}, Le/d/c/a/a;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/q/e/a;->a:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 4
    iget-object v0, p0, Le/a/q/e/a;->b:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 5
    invoke-static {}, Le/a/l5/a/l2;->a()Le/a/l5/a/l2$b;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p1}, Le/a/l5/a/l2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/a/l5/a/l2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 8
    invoke-virtual {v1}, Le/a/l5/a/l2$b;->a()Le/a/l5/a/l2;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method
