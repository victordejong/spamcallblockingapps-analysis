.class public final Le/a/a/c/d$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/s8/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/d$e;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/d$e;


# direct methods
.method public constructor <init>(Le/a/a/c/d$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C0(I)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    const v2, 0x7f080843

    if-eq p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object p1, p1, Le/a/a/c/d$e;->e:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object p1, p1, Le/a/a/c/d$e;->f:Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;

    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->stop()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object p1, p1, Le/a/a/c/d$e;->e:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object p1, p1, Le/a/a/c/d$e;->f:Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;

    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->a()V

    .line 5
    iget-object p1, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object v1, p1, Le/a/a/c/d$e;->a:Le/a/a/c/d;

    iget-object p1, p1, Le/a/a/c/d$e;->d:Landroid/view/View;

    invoke-static {v1, v0, p1}, Le/a/a/c/d;->N4(Le/a/a/c/d;ZLandroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object v1, p1, Le/a/a/c/d$e;->a:Le/a/a/c/d;

    iget-object p1, p1, Le/a/a/c/d$e;->d:Landroid/view/View;

    invoke-static {v1, v0, p1}, Le/a/a/c/d;->O4(Le/a/a/c/d;ZLandroid/view/View;)V

    .line 7
    iget-object p1, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object p1, p1, Le/a/a/c/d$e;->e:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f080842

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 8
    iget-object p1, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object p1, p1, Le/a/a/c/d$e;->f:Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object v3, v3, Le/a/a/c/d$e;->b:Le/a/a/c/c3;

    iget-object v3, v3, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    const-string v4, "null cannot be cast to non-null type com.truecaller.messaging.data.types.AudioEntity"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/messaging/data/types/AudioEntity;

    .line 10
    iget v3, v3, Lcom/truecaller/messaging/data/types/AudioEntity;->v:I

    int-to-long v3, v3

    .line 11
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 12
    invoke-virtual {p1, v2, v3}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->setChronometerBase(J)V

    .line 13
    iget-object p1, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object p1, p1, Le/a/a/c/d$e;->f:Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;

    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->start()V

    .line 14
    iget-object p1, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object v0, p1, Le/a/a/c/d$e;->a:Le/a/a/c/d;

    const/4 v1, 0x0

    iget-object p1, p1, Le/a/a/c/d$e;->d:Landroid/view/View;

    invoke-static {v0, v1, p1}, Le/a/a/c/d;->N4(Le/a/a/c/d;ZLandroid/view/View;)V

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object v0, v0, Le/a/a/c/d$e;->a:Le/a/a/c/d;

    .line 2
    iget-object v0, v0, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 3
    invoke-interface {v0}, Le/a/a/c/k/a/j;->K()V

    .line 4
    iget-object v0, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object v0, v0, Le/a/a/c/d$e;->c:Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;

    const-string v1, "visualizerView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object v2, v0, Le/a/a/c/d$e;->a:Le/a/a/c/d;

    iget-object v0, v0, Le/a/a/c/d$e;->d:Landroid/view/View;

    invoke-static {v2, v1, v0}, Le/a/a/c/d;->O4(Le/a/a/c/d;ZLandroid/view/View;)V

    .line 6
    iget-object v0, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object v0, v0, Le/a/a/c/d$e;->f:Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;

    invoke-virtual {v0}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->a()V

    .line 7
    iget-object v0, p0, Le/a/a/c/d$e$a;->a:Le/a/a/c/d$e;

    iget-object v1, v0, Le/a/a/c/d$e;->a:Le/a/a/c/d;

    const/4 v2, 0x1

    iget-object v0, v0, Le/a/a/c/d$e;->d:Landroid/view/View;

    invoke-static {v1, v2, v0}, Le/a/a/c/d;->N4(Le/a/a/c/d;ZLandroid/view/View;)V

    return-void
.end method
