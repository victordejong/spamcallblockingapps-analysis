.class public final Le/a/g4/a/a$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g4/a/a;->p(Landroid/app/Service;Z)V
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
    c = "com.truecaller.notification.call.CallNotification$update$1"
    f = "CallNotification.kt"
    l = {
        0x98,
        0x9b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/g4/a/a;

.field public final synthetic g:Landroid/app/Service;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Le/a/g4/a/a;Landroid/app/Service;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g4/a/a$e;->f:Le/a/g4/a/a;

    iput-object p2, p0, Le/a/g4/a/a$e;->g:Landroid/app/Service;

    iput-boolean p3, p0, Le/a/g4/a/a$e;->h:Z

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

    new-instance p1, Le/a/g4/a/a$e;

    iget-object v0, p0, Le/a/g4/a/a$e;->f:Le/a/g4/a/a;

    iget-object v1, p0, Le/a/g4/a/a$e;->g:Landroid/app/Service;

    iget-boolean v2, p0, Le/a/g4/a/a$e;->h:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/g4/a/a$e;-><init>(Le/a/g4/a/a;Landroid/app/Service;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g4/a/a$e;

    iget-object v0, p0, Le/a/g4/a/a$e;->f:Le/a/g4/a/a;

    iget-object v1, p0, Le/a/g4/a/a$e;->g:Landroid/app/Service;

    iget-boolean v2, p0, Le/a/g4/a/a$e;->h:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/g4/a/a$e;-><init>(Le/a/g4/a/a;Landroid/app/Service;ZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g4/a/a$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g4/a/a$e;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-wide/16 v4, 0x64

    .line 4
    iput v3, p0, Le/a/g4/a/a$e;->e:I

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Le/a/g4/a/a$e;->f:Le/a/g4/a/a;

    .line 6
    iget-object p1, p1, Le/a/g4/a/a;->d:Lq3/a/p1;

    if-eqz p1, :cond_4

    .line 7
    iput v2, p0, Le/a/g4/a/a$e;->e:I

    invoke-interface {p1, p0}, Lq3/a/p1;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 8
    :cond_4
    :goto_1
    iget-object p1, p0, Le/a/g4/a/a$e;->g:Landroid/app/Service;

    iget-object v0, p0, Le/a/g4/a/a$e;->f:Le/a/g4/a/a;

    .line 9
    iget v1, v0, Le/a/g4/a/a;->i:I

    .line 10
    invoke-virtual {v0}, Le/a/g4/a/a;->c()Ln3/k/a/q;

    move-result-object v0

    invoke-virtual {v0}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[InCallUIService] startForeground called. Immediate = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Le/a/g4/a/a$e;->h:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    .line 12
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
