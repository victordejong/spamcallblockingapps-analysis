.class public final Lcom/truecaller/voip/service/call/CallService$j;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/service/call/CallService;->k(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/g4/a/d/b;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/voip/service/call/CallService;

.field public final synthetic c:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/service/call/CallService;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/voip/service/call/CallService$j;->b:Lcom/truecaller/voip/service/call/CallService;

    iput-object p2, p0, Lcom/truecaller/voip/service/call/CallService$j;->c:Ljava/lang/Long;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Le/a/g4/a/d/b;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/voip/service/call/CallService$j;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Le/a/g4/a/a;->n(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/truecaller/voip/service/call/CallService$j;->b:Lcom/truecaller/voip/service/call/CallService;

    .line 6
    iget-object v0, v0, Lcom/truecaller/voip/service/call/CallService;->f:Le/a/p5/c;

    const-string v1, "clock"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v3

    iget-object v0, p0, Lcom/truecaller/voip/service/call/CallService$j;->b:Lcom/truecaller/voip/service/call/CallService;

    .line 8
    iget-object v0, v0, Lcom/truecaller/voip/service/call/CallService;->f:Le/a/p5/c;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/truecaller/voip/service/call/CallService$j;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v0, v5

    sub-long/2addr v3, v0

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Le/a/g4/a/a;->n(Z)V

    .line 11
    invoke-virtual {p1, v3, v4}, Le/a/g4/a/a;->o(J)V

    .line 12
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 13
    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
