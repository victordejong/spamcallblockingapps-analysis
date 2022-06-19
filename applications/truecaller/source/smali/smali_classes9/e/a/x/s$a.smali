.class public final Le/a/x/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/x/s;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Lcom/truecaller/ghost_call/GhostCallState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/x/s;


# direct methods
.method public constructor <init>(Le/a/x/s;)V
    .locals 0

    iput-object p1, p0, Le/a/x/s$a;->a:Le/a/x/s;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/ghost_call/GhostCallState;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/truecaller/ghost_call/GhostCallState;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/x/s$a;->a:Le/a/x/s;

    iget-object p1, p1, Le/a/x/s;->f:Le/a/x/t;

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/x/o;

    if-eqz p1, :cond_5

    .line 5
    invoke-interface {p1}, Le/a/x/o;->t()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/x/s$a;->a:Le/a/x/s;

    iget-object p1, p1, Le/a/x/s;->f:Le/a/x/t;

    .line 7
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/x/o;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Le/a/x/o;->C0()V

    .line 8
    :cond_2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/x/o;

    if-eqz p1, :cond_5

    sget-object p2, Lcom/truecaller/incallui/service/CallState;->STATE_ACTIVE:Lcom/truecaller/incallui/service/CallState;

    invoke-interface {p1, p2}, Le/a/x/o;->W0(Lcom/truecaller/incallui/service/CallState;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/x/s$a;->a:Le/a/x/s;

    iget-object p1, p1, Le/a/x/s;->f:Le/a/x/t;

    .line 10
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/x/o;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Le/a/x/o;->r0()V

    .line 11
    :cond_4
    iget-object p1, p1, Le/a/x/t;->f:Le/a/x/h0/a;

    .line 12
    new-instance p2, Le/a/x/h0/b/e;

    .line 13
    iget-object v0, p1, Le/a/x/h0/a;->d:Le/a/l/a/v;

    invoke-virtual {v0}, Le/a/l/a/v;->a()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-direct {p2, v0}, Le/a/x/h0/b/e;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {p2, p1}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    .line 16
    :cond_5
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
