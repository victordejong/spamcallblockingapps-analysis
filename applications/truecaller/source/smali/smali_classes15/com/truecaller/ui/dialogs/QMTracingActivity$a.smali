.class public final Lcom/truecaller/ui/dialogs/QMTracingActivity$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ui/dialogs/QMTracingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ui.dialogs.QMTracingActivity$onCreate$1"
    f = "QMTracingActivity.kt"
    l = {
        0x3d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/ui/dialogs/QMTracingActivity;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/dialogs/QMTracingActivity;Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->f:Lcom/truecaller/ui/dialogs/QMTracingActivity;

    iput-object p2, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;

    iget-object v0, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->f:Lcom/truecaller/ui/dialogs/QMTracingActivity;

    iget-object v1, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;-><init>(Lcom/truecaller/ui/dialogs/QMTracingActivity;Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;

    iget-object v0, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->f:Lcom/truecaller/ui/dialogs/QMTracingActivity;

    iget-object v1, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;-><init>(Lcom/truecaller/ui/dialogs/QMTracingActivity;Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->h:Ljava/lang/String;

    iput v2, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->e:I

    .line 5
    sget-object v3, Lq3/a/t0;->d:Lq3/a/g0;

    .line 6
    new-instance v4, Le/a/p5/q;

    const/4 v5, 0x0

    invoke-direct {v4, v1, p1, v5}, Le/a/p5/q;-><init>(Ljava/lang/String;Landroid/content/Context;Ls1/w/d;)V

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_3

    const-string p1, "Unable to move trace file to Downloads folder"

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->f:Lcom/truecaller/ui/dialogs/QMTracingActivity;

    iget-object v1, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->g:Landroid/content/Context;

    .line 9
    sget v3, Lcom/truecaller/ui/dialogs/QMTracingActivity;->g:I

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.STREAM"

    .line 12
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "application/binary"

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 15
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "Trace saved to Downloads folder"

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/truecaller/ui/dialogs/QMTracingActivity$a;->g:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 17
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
