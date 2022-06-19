.class public final Le/a/g4/a/a$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g4/a/a;->g(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
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
    c = "com.truecaller.notification.call.CallNotification$setAvatarXConfig$1"
    f = "CallNotification.kt"
    l = {
        0x57
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/g4/a/a;


# direct methods
.method public constructor <init>(Le/a/g4/a/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g4/a/a$c;->g:Le/a/g4/a/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/g4/a/a$c;

    iget-object v0, p0, Le/a/g4/a/a$c;->g:Le/a/g4/a/a;

    invoke-direct {p1, v0, p2}, Le/a/g4/a/a$c;-><init>(Le/a/g4/a/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g4/a/a$c;

    iget-object v0, p0, Le/a/g4/a/a$c;->g:Le/a/g4/a/a;

    invoke-direct {p1, v0, p2}, Le/a/g4/a/a$c;-><init>(Le/a/g4/a/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g4/a/a$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g4/a/a$c;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/g4/a/a$c;->e:Ljava/lang/Object;

    check-cast v0, Le/a/g4/a/a;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/g4/a/a$c;->g:Le/a/g4/a/a;

    .line 2
    invoke-virtual {p1}, Le/a/g4/a/a;->b()Le/a/b0/a/a0/a;

    move-result-object v1

    const/4 v3, 0x0

    .line 3
    iput-object p1, p0, Le/a/g4/a/a$c;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/g4/a/a$c;->f:I

    invoke-static {v1, v3, p0, v2}, Le/a/b0/a/a0/a;->sk(Le/a/b0/a/a0/a;ILs1/w/d;I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Le/a/g4/a/a;->l(Landroid/graphics/Bitmap;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
