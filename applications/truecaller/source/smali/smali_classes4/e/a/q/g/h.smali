.class public final Le/a/q/g/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q/g/g;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q/g/h;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/q/g/h$a;

    invoke-direct {v0, p0, p1}, Le/a/q/g/h$a;-><init>(Le/a/q/g/h;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/q/g/h;->b:Ln3/c0/k;

    return-void
.end method


# virtual methods
.method public a([Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q/g/h;->a:Ln3/c0/q;

    new-instance v1, Le/a/q/g/h$b;

    invoke-direct {v1, p0, p1}, Le/a/q/g/h$b;-><init>(Le/a/q/g/h;[Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(JLs1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM contact_feedback_timestamp_table WHERE contact_id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 3
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 4
    iget-object p2, p0, Le/a/q/g/h;->a:Ln3/c0/q;

    new-instance v1, Le/a/q/g/h$c;

    invoke-direct {v1, p0, v0}, Le/a/q/g/h$c;-><init>(Le/a/q/g/h;Ln3/c0/y;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
