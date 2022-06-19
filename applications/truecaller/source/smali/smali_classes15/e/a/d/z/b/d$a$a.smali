.class public final Le/a/d/z/b/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/z/b/d$a;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
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

.field public final synthetic b:Le/a/d/z/b/d$a;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/d/z/b/d$a;)V
    .locals 0

    iput-object p1, p0, Le/a/d/z/b/d$a$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/d/z/b/d$a$a;->b:Le/a/d/z/b/d$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Le/a/d/z/b/d$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/z/b/d$a$a$a;

    iget v1, v0, Le/a/d/z/b/d$a$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/z/b/d$a$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/z/b/d$a$a$a;

    invoke-direct {v0, p0, p2}, Le/a/d/z/b/d$a$a$a;-><init>(Le/a/d/z/b/d$a$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/z/b/d$a$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/z/b/d$a$a$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

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
    iget-object p2, p0, Le/a/d/z/b/d$a$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Le/a/d/v/l/c;

    .line 6
    instance-of v2, p1, Le/a/d/v/l/c$a;

    if-eqz v2, :cond_3

    iget-object p1, p0, Le/a/d/z/b/d$a$a;->b:Le/a/d/z/b/d$a;

    iget-object p1, p1, Le/a/d/z/b/d$a;->b:Le/a/d/z/b/d;

    iget-object p1, p1, Le/a/d/z/b/d;->h:Le/a/d/z/b/c;

    invoke-static {p1}, Le/a/d/z/b/c;->Ij(Le/a/d/z/b/c;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_3
    instance-of v2, p1, Le/a/d/v/l/c$d;

    if-eqz v2, :cond_4

    iget-object p1, p0, Le/a/d/z/b/d$a$a;->b:Le/a/d/z/b/d$a;

    iget-object p1, p1, Le/a/d/z/b/d$a;->b:Le/a/d/z/b/d;

    iget-object p1, p1, Le/a/d/z/b/d;->h:Le/a/d/z/b/c;

    sget v2, Lcom/truecaller/voip/R$string;->voip_status_ringing:I

    invoke-static {p1, v2}, Le/a/d/z/b/c;->Jj(Le/a/d/z/b/c;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_4
    instance-of v2, p1, Le/a/d/v/l/c$c;

    if-eqz v2, :cond_5

    iget-object p1, p0, Le/a/d/z/b/d$a$a;->b:Le/a/d/z/b/d$a;

    iget-object p1, p1, Le/a/d/z/b/d$a;->b:Le/a/d/z/b/d;

    iget-object p1, p1, Le/a/d/z/b/d;->h:Le/a/d/z/b/c;

    invoke-static {p1}, Le/a/d/z/b/c;->Ij(Le/a/d/z/b/c;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_5
    instance-of p1, p1, Le/a/d/v/l/c$b;

    if-eqz p1, :cond_7

    iget-object p1, p0, Le/a/d/z/b/d$a$a;->b:Le/a/d/z/b/d$a;

    iget-object p1, p1, Le/a/d/z/b/d$a;->b:Le/a/d/z/b/d;

    iget-object p1, p1, Le/a/d/z/b/d;->h:Le/a/d/z/b/c;

    sget v2, Lcom/truecaller/voip/R$string;->voip_status_call_ended:I

    invoke-static {p1, v2}, Le/a/d/z/b/c;->Jj(Le/a/d/z/b/c;I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput v3, v0, Le/a/d/z/b/d$a$a$a;->e:I

    invoke-interface {p2, p1, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_7
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
