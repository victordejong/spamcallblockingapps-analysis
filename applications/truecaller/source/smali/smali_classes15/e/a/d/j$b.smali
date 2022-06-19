.class public final Le/a/d/j$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/j;->B(I)Lq3/a/x2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-",
        "Le/a/d/i;",
        ">;",
        "Ls1/k<",
        "+",
        "Le/a/d/v/f;",
        "+",
        "Le/a/d/w/g;",
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
    c = "com.truecaller.voip.VoipImpl$getGroupCallState$$inlined$flatMapLatest$1"
    f = "Voip.kt"
    l = {
        0xde
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public synthetic f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/j;

.field public final synthetic i:I


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/d/j;I)V
    .locals 0

    iput-object p2, p0, Le/a/d/j$b;->h:Le/a/d/j;

    iput p3, p0, Le/a/d/j$b;->i:I

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lq3/a/x2/g;

    check-cast p3, Ls1/w/d;

    .line 1
    new-instance v0, Le/a/d/j$b;

    iget-object v1, p0, Le/a/d/j$b;->h:Le/a/d/j;

    iget v2, p0, Le/a/d/j$b;->i:I

    invoke-direct {v0, p3, v1, v2}, Le/a/d/j$b;-><init>(Ls1/w/d;Le/a/d/j;I)V

    iput-object p1, v0, Le/a/d/j$b;->e:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/j$b;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/j$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/j$b;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

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

    iget-object p1, p0, Le/a/d/j$b;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    iget-object v1, p0, Le/a/d/j$b;->f:Ljava/lang/Object;

    .line 4
    check-cast v1, Ls1/k;

    .line 5
    iget-object v3, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 6
    instance-of v4, v3, Le/a/d/v/f$c;

    if-eqz v4, :cond_2

    sget-object v1, Le/a/d/i$e;->a:Le/a/d/i$e;

    .line 7
    new-instance v3, Lq3/a/x2/k;

    invoke-direct {v3, v1}, Lq3/a/x2/k;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    instance-of v3, v3, Le/a/d/v/f$a;

    if-eqz v3, :cond_3

    .line 9
    new-instance v3, Le/a/d/j$b$a;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, p0}, Le/a/d/j$b$a;-><init>(Ls1/k;Ls1/w/d;Le/a/d/j$b;)V

    .line 10
    new-instance v1, Lq3/a/x2/d1;

    invoke-direct {v1, v3}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    move-object v3, v1

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 12
    instance-of v1, v1, Le/a/d/w/g$a;

    if-eqz v1, :cond_4

    sget-object v1, Le/a/d/i$c;->a:Le/a/d/i$c;

    .line 13
    new-instance v3, Lq3/a/x2/k;

    invoke-direct {v3, v1}, Lq3/a/x2/k;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_4
    sget-object v1, Le/a/d/i$b;->a:Le/a/d/i$b;

    .line 15
    new-instance v3, Lq3/a/x2/k;

    invoke-direct {v3, v1}, Lq3/a/x2/k;-><init>(Ljava/lang/Object;)V

    .line 16
    :goto_0
    iput v2, p0, Le/a/d/j$b;->g:I

    invoke-interface {v3, p1, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 17
    :cond_5
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
