.class public final Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;
.super Le/a/o/a/g/j/b;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/g/c;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\n\u0010\tJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\tJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\tR\u001f\u0010\u0016\u001a\u0004\u0018\u00010\u00118B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u001b\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;",
        "Lcom/truecaller/contextcall/ui/ContextCallActivity;",
        "Le/a/o/a/g/c;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "qa",
        "()V",
        "onBackPressed",
        "Le/a/o/a/g/d;",
        "type",
        "Vi",
        "(Le/a/o/a/g/d;)V",
        "q4",
        "Hg",
        "",
        "f",
        "Ls1/g;",
        "getMessage",
        "()Ljava/lang/String;",
        "message",
        "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;",
        "e",
        "getOnDemandSource",
        "()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;",
        "onDemandSource",
        "<init>",
        "context-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final e:Ls1/g;

.field public final f:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/o/a/g/j/b;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer$b;

    invoke-direct {v1, p0}, Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer$b;-><init>(Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;->e:Ls1/g;

    .line 3
    new-instance v1, Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer$a;

    invoke-direct {v1, p0}, Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer$a;-><init>(Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;->f:Ls1/g;

    return-void
.end method


# virtual methods
.method public Hg()V
    .locals 2

    .line 1
    sget v0, Lcom/truecaller/contextcall/R$string;->context_call_error_network:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public Vi(Le/a/o/a/g/d;)V
    .locals 3

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/o/a/g/d$c;

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/truecaller/contextcall/R$string;->context_call_outgoing_call_message:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    check-cast p1, Le/a/o/a/g/d$c;

    .line 3
    iget-object p1, p1, Le/a/o/a/g/d$c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.conte\u2026ll_message, type.message)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/truecaller/contextcall/ui/ContextCallActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/truecaller/contextcall/R$style;->ThemeX_PopupContextCallCustomMessageActivity:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setTheme(I)V

    .line 3
    sget-object v0, Le/a/o/a/g/j/e;->k:Le/a/o/a/g/j/e$a;

    .line 4
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string p1, "supportFragmentManager"

    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;->e:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;

    const-string p1, "onDemandSource"

    .line 6
    invoke-static {v3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;->f:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 8
    invoke-static/range {v0 .. v5}, Le/a/o/a/g/j/e$a;->b(Le/a/o/a/g/j/e$a;Landroidx/fragment/app/FragmentManager;Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;Ljava/lang/String;I)V

    return-void
.end method

.method public q4()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public qa()V
    .locals 0

    return-void
.end method
