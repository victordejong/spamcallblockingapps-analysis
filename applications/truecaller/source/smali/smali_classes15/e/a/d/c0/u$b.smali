.class public final Le/a/d/c0/u$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/u;->a()Lq3/a/x2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/w2/x<",
        "-",
        "Le/a/d/c0/s;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.NativeCallStateModelImpl$states$2"
    f = "NativeCallStateModel.kt"
    l = {
        0x69
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/c0/u;


# direct methods
.method public constructor <init>(Le/a/d/c0/u;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/u$b;->g:Le/a/d/c0/u;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/c0/u$b;

    iget-object v1, p0, Le/a/d/c0/u$b;->g:Le/a/d/c0/u;

    invoke-direct {v0, v1, p2}, Le/a/d/c0/u$b;-><init>(Le/a/d/c0/u;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c0/u$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/c0/u$b;

    iget-object v1, p0, Le/a/d/c0/u$b;->g:Le/a/d/c0/u;

    invoke-direct {v0, v1, p2}, Le/a/d/c0/u$b;-><init>(Le/a/d/c0/u;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/c0/u$b;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/c0/u$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/u$b;->f:I

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

    iget-object p1, p0, Le/a/d/c0/u$b;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/w2/x;

    .line 4
    new-instance v1, Le/a/d/c0/u$b$b;

    invoke-direct {v1, p0, p1}, Le/a/d/c0/u$b$b;-><init>(Le/a/d/c0/u$b;Lq3/a/w2/x;)V

    .line 5
    iget-object v3, p0, Le/a/d/c0/u$b;->g:Le/a/d/c0/u;

    .line 6
    iget-object v3, v3, Le/a/d/c0/u;->b:Landroid/content/Context;

    invoke-static {v3}, Le/a/p5/s0/g;->j0(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 7
    new-instance v3, Le/a/d/c0/u$b$a;

    invoke-direct {v3, p0, v1}, Le/a/d/c0/u$b$a;-><init>(Le/a/d/c0/u$b;Le/a/d/c0/u$b$b;)V

    iput v2, p0, Le/a/d/c0/u$b;->f:I

    invoke-static {p1, v3, p0}, Lq3/a/w2/v;->a(Lq3/a/w2/x;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
