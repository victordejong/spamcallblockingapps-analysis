.class public final Le/a/a/b1/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b1/c;->a(Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;Le/a/a/b1/a;)V
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
    c = "com.truecaller.messaging.search.ParticipantSearchHelperImpl$searchAsync$1"
    f = "ParticipantSearchHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/a/b1/c;

.field public final synthetic g:Lcom/truecaller/data/entity/messaging/Participant;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Le/a/a/b1/a;


# direct methods
.method public constructor <init>(Le/a/a/b1/c;Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;Le/a/a/b1/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/b1/c$a;->f:Le/a/a/b1/c;

    iput-object p2, p0, Le/a/a/b1/c$a;->g:Lcom/truecaller/data/entity/messaging/Participant;

    iput-object p3, p0, Le/a/a/b1/c$a;->h:Ljava/lang/String;

    iput-object p4, p0, Le/a/a/b1/c$a;->i:Le/a/a/b1/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance v0, Le/a/a/b1/c$a;

    iget-object v2, p0, Le/a/a/b1/c$a;->f:Le/a/a/b1/c;

    iget-object v3, p0, Le/a/a/b1/c$a;->g:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v4, p0, Le/a/a/b1/c$a;->h:Ljava/lang/String;

    iget-object v5, p0, Le/a/a/b1/c$a;->i:Le/a/a/b1/a;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Le/a/a/b1/c$a;-><init>(Le/a/a/b1/c;Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;Le/a/a/b1/a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/a/b1/c$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a/b1/c$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a/b1/c$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/b1/c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/a/b1/c$a;->e:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lq3/a/i0;

    .line 2
    iget-object p1, p0, Le/a/a/b1/c$a;->f:Le/a/a/b1/c;

    iget-object v2, p0, Le/a/a/b1/c$a;->g:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v3, p0, Le/a/a/b1/c$a;->h:Ljava/lang/String;

    sget-object v4, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual {p1, v2, v3, v4}, Le/a/a/b1/c;->b(Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;Ljava/util/List;)Le/a/f4/g/t;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v2, p0, Le/a/a/b1/c$a;->f:Le/a/a/b1/c;

    .line 4
    iget-object v2, v2, Le/a/a/b1/c;->a:Ls1/w/f;

    const/4 v3, 0x0

    .line 5
    new-instance v4, Le/a/a/b1/c$a$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Le/a/a/b1/c$a$a;-><init>(Le/a/a/b1/c$a;Le/a/f4/g/t;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_0
    return-object v0
.end method
