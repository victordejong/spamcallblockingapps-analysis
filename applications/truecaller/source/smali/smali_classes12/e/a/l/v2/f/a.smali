.class public final Le/a/l/v2/f/a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/premium/ui/countdown/CountDownTextView;

.field public final synthetic b:J


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/ui/countdown/CountDownTextView;JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/l/v2/f/a;->a:Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    iput-wide p2, p0, Le/a/l/v2/f/a;->b:J

    invoke-direct {p0, p4, p5, p6, p7}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/v2/f/a;->a:Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    .line 2
    iget-object v0, v0, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->y:Ls1/z/b/l;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Le/a/l/v2/f/b$b;->a:Le/a/l/v2/f/b$b;

    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/l/v2/f/a;->a:Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    invoke-virtual {v0}, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->g1()V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/v2/f/a;->a:Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    .line 2
    iget-object v0, v0, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->y:Ls1/z/b/l;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Le/a/l/v2/f/b$c;

    iget-wide v2, p0, Le/a/l/v2/f/a;->b:J

    invoke-direct {v1, v2, v3}, Le/a/l/v2/f/b$c;-><init>(J)V

    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/l/v2/f/a;->a:Lcom/truecaller/premium/ui/countdown/CountDownTextView;

    new-instance v1, Lw3/b/a/u;

    invoke-direct {v1, p1, p2}, Lw3/b/a/u;-><init>(J)V

    invoke-static {v0, v1}, Lcom/truecaller/premium/ui/countdown/CountDownTextView;->f1(Lcom/truecaller/premium/ui/countdown/CountDownTextView;Lw3/b/a/u;)V

    return-void
.end method
