.class public Lcom/truecaller/TrueApp$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/TrueApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/TrueApp;


# direct methods
.method public constructor <init>(Lcom/truecaller/TrueApp;Lcom/truecaller/TrueApp$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/TrueApp$b;->a:Lcom/truecaller/TrueApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/truecaller/TrueApp$b;->a:Lcom/truecaller/TrueApp;

    .line 2
    iget-object p1, p1, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    .line 3
    invoke-interface {p1}, Le/a/j2;->s1()Le/a/w3/f;

    move-result-object p1

    check-cast p1, Le/a/w3/h;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "intent"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.truecaller.datamanager.EXTRA_PRESENCE"

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p1, Le/a/w3/h;->c:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/w3/g;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, v0}, Le/a/w3/g;-><init>(Le/a/w3/h;Landroid/content/Intent;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/truecaller/TrueApp$b;->a:Lcom/truecaller/TrueApp;

    .line 8
    iget-object p1, p1, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    .line 9
    invoke-interface {p1}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object p1

    invoke-interface {p1, p2}, Le/a/d/c0/s1;->d(Landroid/content/Intent;)V

    .line 10
    iget-object p1, p0, Lcom/truecaller/TrueApp$b;->a:Lcom/truecaller/TrueApp;

    .line 11
    iget-object p1, p1, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    .line 12
    invoke-interface {p1}, Le/a/j2;->m5()Le/a/o/j;

    move-result-object p1

    invoke-interface {p1, p2}, Le/a/o/j;->d(Landroid/content/Intent;)V

    .line 13
    iget-object p1, p0, Lcom/truecaller/TrueApp$b;->a:Lcom/truecaller/TrueApp;

    .line 14
    iget-object p1, p1, Lcom/truecaller/TrueApp;->p:Le/a/j2;

    .line 15
    invoke-interface {p1}, Le/a/j2;->y()Le/a/k/h;

    move-result-object p1

    invoke-interface {p1, p2}, Le/a/k/h;->d(Landroid/content/Intent;)V

    return-void
.end method
