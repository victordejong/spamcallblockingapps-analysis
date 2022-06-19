.class public final Le/a/h/b/d/b/e$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/d/b/e;->b(Ljava/util/List;Ljava/util/List;Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)V
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
    c = "com.truecaller.calling.dialer.call_log.data.DialerRepositoryImpl$deleteHistoryAsync$1"
    f = "DialerRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/h/b/d/b/e;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;


# direct methods
.method public constructor <init>(Le/a/h/b/d/b/e;Ljava/util/List;Ljava/util/List;Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/d/b/e$c;->e:Le/a/h/b/d/b/e;

    iput-object p2, p0, Le/a/h/b/d/b/e$c;->f:Ljava/util/List;

    iput-object p3, p0, Le/a/h/b/d/b/e$c;->g:Ljava/util/List;

    iput-object p4, p0, Le/a/h/b/d/b/e$c;->h:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/h/b/d/b/e$c;

    iget-object v1, p0, Le/a/h/b/d/b/e$c;->e:Le/a/h/b/d/b/e;

    iget-object v2, p0, Le/a/h/b/d/b/e$c;->f:Ljava/util/List;

    iget-object v3, p0, Le/a/h/b/d/b/e$c;->g:Ljava/util/List;

    iget-object v4, p0, Le/a/h/b/d/b/e$c;->h:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/h/b/d/b/e$c;-><init>(Le/a/h/b/d/b/e;Ljava/util/List;Ljava/util/List;Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/h/b/d/b/e$c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/h/b/d/b/e$c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 1
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v0, p1, Le/a/h/b/d/b/e$c;->e:Le/a/h/b/d/b/e;

    .line 2
    iget-object v0, v0, Le/a/h/b/d/b/e;->q:Le/a/l0/g;

    .line 3
    iget-object v1, p1, Le/a/h/b/d/b/e$c;->f:Ljava/util/List;

    iget-object v2, p1, Le/a/h/b/d/b/e$c;->g:Ljava/util/List;

    iget-object p1, p1, Le/a/h/b/d/b/e$c;->h:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;

    invoke-interface {v0, v1, v2, p1}, Le/a/l0/g;->m(Ljava/util/List;Ljava/util/List;Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/h/b/d/b/e$c;->e:Le/a/h/b/d/b/e;

    .line 2
    iget-object p1, p1, Le/a/h/b/d/b/e;->q:Le/a/l0/g;

    .line 3
    iget-object v0, p0, Le/a/h/b/d/b/e$c;->f:Ljava/util/List;

    iget-object v1, p0, Le/a/h/b/d/b/e$c;->g:Ljava/util/List;

    iget-object v2, p0, Le/a/h/b/d/b/e$c;->h:Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;

    invoke-interface {p1, v0, v1, v2}, Le/a/l0/g;->m(Ljava/util/List;Ljava/util/List;Lcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
