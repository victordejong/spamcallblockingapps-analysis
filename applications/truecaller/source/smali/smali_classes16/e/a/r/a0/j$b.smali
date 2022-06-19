.class public final Le/a/r/a0/j$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a0/j;->a(Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/r/a0/i$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.wizard.welcome.SimCardPhoneNumberProvider$getPhoneNumber$2"
    f = "SimCardPhoneNumberProvider.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/a0/j;

.field public final synthetic g:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/r/a0/j;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a0/j$b;->f:Le/a/r/a0/j;

    iput-object p2, p0, Le/a/r/a0/j$b;->g:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/a0/j$b;

    iget-object v0, p0, Le/a/r/a0/j$b;->f:Le/a/r/a0/j;

    iget-object v1, p0, Le/a/r/a0/j$b;->g:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/a0/j$b;-><init>(Le/a/r/a0/j;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/a0/j$b;

    iget-object v0, p0, Le/a/r/a0/j$b;->f:Le/a/r/a0/j;

    iget-object v1, p0, Le/a/r/a0/j$b;->g:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/a0/j$b;-><init>(Le/a/r/a0/j;Ls1/z/c/c0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/a0/j$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/r/a0/j$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/r/a0/j$b;->f:Le/a/r/a0/j;

    iget-object v1, p0, Le/a/r/a0/j$b;->g:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    iput v2, p0, Le/a/r/a0/j$b;->e:I

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lq3/a/o;

    invoke-static {p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 4
    invoke-virtual {v1}, Lq3/a/o;->z()V

    .line 5
    iget-object v3, p1, Le/a/r/a0/j;->g:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r/a0/l;

    .line 7
    iget-object v4, p1, Le/a/r/a0/j;->b:Ln3/r/a/l;

    .line 8
    new-instance v6, Le/a/r/a0/k;

    invoke-direct {v6, v1, p1, v5}, Le/a/r/a0/k;-><init>(Lq3/a/n;Le/a/r/a0/j;Ljava/util/List;)V

    .line 9
    new-instance v7, Lt1;

    const/4 p1, 0x0

    invoke-direct {v7, p1, v1}, Lt1;-><init>(ILjava/lang/Object;)V

    .line 10
    new-instance v8, Lt1;

    invoke-direct {v8, v2, v1}, Lt1;-><init>(ILjava/lang/Object;)V

    .line 11
    invoke-interface/range {v3 .. v8}, Le/a/r/a0/l;->a(Ln3/r/a/l;Ljava/util/List;Ls1/z/b/l;Ls1/z/b/a;Ls1/z/b/a;)V

    .line 12
    invoke-virtual {v1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    const-string v1, "frame"

    .line 13
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object p1
.end method
