.class public final Le/a/k0/c$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/c;->D(Lcom/truecaller/data/entity/Contact;)V
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
    c = "com.truecaller.callrecording.CallRecordingManagerImpl$onCallRecordingSaved$1"
    f = "CallRecordingManagerImpl.kt"
    l = {
        0xd8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k0/c;

.field public final synthetic g:Lcom/truecaller/data/entity/Contact;

.field public final synthetic h:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Le/a/k0/c;Lcom/truecaller/data/entity/Contact;Landroid/content/Intent;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/c$b;->f:Le/a/k0/c;

    iput-object p2, p0, Le/a/k0/c$b;->g:Lcom/truecaller/data/entity/Contact;

    iput-object p3, p0, Le/a/k0/c$b;->h:Landroid/content/Intent;

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

    new-instance p1, Le/a/k0/c$b;

    iget-object v0, p0, Le/a/k0/c$b;->f:Le/a/k0/c;

    iget-object v1, p0, Le/a/k0/c$b;->g:Lcom/truecaller/data/entity/Contact;

    iget-object v2, p0, Le/a/k0/c$b;->h:Landroid/content/Intent;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/k0/c$b;-><init>(Le/a/k0/c;Lcom/truecaller/data/entity/Contact;Landroid/content/Intent;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k0/c$b;

    iget-object v0, p0, Le/a/k0/c$b;->f:Le/a/k0/c;

    iget-object v1, p0, Le/a/k0/c$b;->g:Lcom/truecaller/data/entity/Contact;

    iget-object v2, p0, Le/a/k0/c$b;->h:Landroid/content/Intent;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/k0/c$b;-><init>(Le/a/k0/c;Lcom/truecaller/data/entity/Contact;Landroid/content/Intent;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k0/c$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k0/c$b;->e:I

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
    iget-object p1, p0, Le/a/k0/c$b;->f:Le/a/k0/c;

    .line 5
    iget-object p1, p1, Le/a/k0/c;->q:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k0/a/l;

    .line 7
    iget-object v1, p0, Le/a/k0/c$b;->g:Lcom/truecaller/data/entity/Contact;

    .line 8
    iget-object v3, p0, Le/a/k0/c$b;->h:Landroid/content/Intent;

    .line 9
    iget-object v4, p0, Le/a/k0/c$b;->f:Le/a/k0/c;

    .line 10
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v4, v4, Le/a/k0/c;->j:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "context.get()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/content/Context;

    const-string v5, "context"

    .line 12
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/truecaller/calling/recorder/CallRecordingListActivity;

    invoke-direct {v5, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x24000000

    .line 14
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    iput v2, p0, Le/a/k0/c$b;->e:I

    .line 16
    invoke-interface {p1, v1, v3, v5, p0}, Le/a/k0/a/l;->b(Lcom/truecaller/data/entity/Contact;Landroid/content/Intent;Landroid/content/Intent;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 17
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
