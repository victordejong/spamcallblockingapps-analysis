.class public final Le/a/d/u/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/u/d;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Lcom/truecaller/voip/manager/VoipMsg;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/d/u/d;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/d/u/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/u/d$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/d/u/d$a;->b:Le/a/d/u/d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/d/u/d$a$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/d/u/d$a$a;

    iget v2, v1, Le/a/d/u/d$a$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/d/u/d$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/d/u/d$a$a;

    invoke-direct {v1, p0, p2}, Le/a/d/u/d$a$a;-><init>(Le/a/d/u/d$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/d/u/d$a$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/d/u/d$a$a;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

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
    iget-object p1, v1, Le/a/d/u/d$a$a;->i:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iget-object v3, v1, Le/a/d/u/d$a$a;->g:Ljava/lang/Object;

    check-cast v3, Lq3/a/x2/g;

    iget-object v5, v1, Le/a/d/u/d$a$a;->f:Ljava/lang/Object;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, p0, Le/a/d/u/d$a;->a:Lq3/a/x2/g;

    .line 5
    move-object p2, p1

    check-cast p2, Lcom/truecaller/voip/manager/VoipMsg;

    .line 6
    invoke-virtual {p2}, Lcom/truecaller/voip/manager/VoipMsg;->getExtras()Lcom/truecaller/voip/manager/VoipMsgExtras;

    move-result-object p2

    invoke-virtual {p2}, Lcom/truecaller/voip/manager/VoipMsgExtras;->getUid()Ljava/lang/Integer;

    move-result-object p2

    iget-object v6, p0, Le/a/d/u/d$a;->b:Le/a/d/u/d;

    iget-object v7, v6, Le/a/d/u/d;->b:Le/a/d/c0/z1/i;

    iget v6, v6, Le/a/d/u/d;->c:I

    iput-object p1, v1, Le/a/d/u/d$a$a;->f:Ljava/lang/Object;

    iput-object v3, v1, Le/a/d/u/d$a$a;->g:Ljava/lang/Object;

    iput-object p2, v1, Le/a/d/u/d$a$a;->i:Ljava/lang/Object;

    iput v5, v1, Le/a/d/u/d$a$a;->e:I

    invoke-interface {v7, v6, v1}, Le/a/d/c0/z1/i;->t(ILs1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_4

    return-object v2

    :cond_4
    move-object v8, v5

    move-object v5, p1

    move-object p1, p2

    move-object p2, v8

    :goto_1
    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    iput-object p1, v1, Le/a/d/u/d$a$a;->f:Ljava/lang/Object;

    iput-object p1, v1, Le/a/d/u/d$a$a;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/d/u/d$a$a;->i:Ljava/lang/Object;

    iput v4, v1, Le/a/d/u/d$a$a;->e:I

    invoke-interface {v3, v5, v1}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    return-object v2

    :cond_5
    :goto_2
    return-object v0
.end method
