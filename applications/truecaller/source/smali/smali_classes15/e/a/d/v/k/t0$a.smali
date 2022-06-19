.class public final Le/a/d/v/k/t0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/t0;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/v/l/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/d/v/k/t0;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/t0$a;->a:Lq3/a/x2/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/d/v/k/t0$a$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/d/v/k/t0$a$a;

    iget v2, v1, Le/a/d/v/k/t0$a$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/v/k/t0$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/v/k/t0$a$a;

    invoke-direct {v1, p0, p2}, Le/a/d/v/k/t0$a$a;-><init>(Le/a/d/v/k/t0$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/d/v/k/t0$a$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/v/k/t0$a$a;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/d/v/k/t0$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Le/a/d/v/l/c;

    .line 6
    instance-of v3, p1, Le/a/d/v/l/c$c;

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    sget-object v5, Lcom/truecaller/voip/util/VoipTone;->ACK:Lcom/truecaller/voip/util/VoipTone;

    goto :goto_1

    .line 7
    :cond_3
    instance-of v3, p1, Le/a/d/v/l/c$b;

    if-eqz v3, :cond_4

    .line 8
    instance-of p1, p1, Le/a/d/v/l/c$b$c;

    if-nez p1, :cond_4

    .line 9
    sget-object v5, Lcom/truecaller/voip/util/VoipTone;->ACK:Lcom/truecaller/voip/util/VoipTone;

    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 10
    iput v4, v1, Le/a/d/v/k/t0$a$a;->e:I

    invoke-interface {p2, v5, v1}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    return-object v2

    :cond_5
    :goto_2
    return-object v0
.end method
