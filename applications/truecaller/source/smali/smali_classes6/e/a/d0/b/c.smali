.class public final Le/a/d0/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d0/b/b;


# instance fields
.field public final a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/t4/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/b0/q/e;

.field public final c:Lcom/truecaller/settings/CallingSettings;

.field public final d:Le/a/e3/a;


# direct methods
.method public constructor <init>(Le/a/r2/f;Le/a/b0/q/e;Lcom/truecaller/settings/CallingSettings;Le/a/e3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/t4/c;",
            ">;",
            "Le/a/b0/q/e;",
            "Lcom/truecaller/settings/CallingSettings;",
            "Le/a/e3/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ringer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRejecter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAlert"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/b/c;->a:Le/a/r2/f;

    iput-object p2, p0, Le/a/d0/b/c;->b:Le/a/b0/q/e;

    iput-object p3, p0, Le/a/d0/b/c;->c:Lcom/truecaller/settings/CallingSettings;

    iput-object p4, p0, Le/a/d0/b/c;->d:Le/a/e3/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/d0/b/i;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d0/b/i;",
            "Ls1/w/d<",
            "-",
            "Le/a/d0/b/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d0/b/c$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d0/b/c$a;

    iget v1, v0, Le/a/d0/b/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d0/b/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d0/b/c$a;

    invoke-direct {v0, p0, p2}, Le/a/d0/b/c$a;-><init>(Le/a/d0/b/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d0/b/c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d0/b/c$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/d0/b/c$a;->h:Ljava/lang/Object;

    check-cast p1, Le/a/d0/b/i;

    iget-object v0, v0, Le/a/d0/b/c$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d0/b/c;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

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
    iget-object p2, p1, Le/a/d0/b/i;->a:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 5
    instance-of v2, p1, Le/a/d0/b/i$d;

    if-eqz v2, :cond_4

    iget-object v2, p0, Le/a/d0/b/c;->d:Le/a/e3/a;

    iput-object p0, v0, Le/a/d0/b/c$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d0/b/c$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/d0/b/c$a;->e:I

    invoke-interface {v2, p2, v0}, Le/a/e3/a;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 6
    iget-object p2, v0, Le/a/d0/b/c;->a:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/t4/c;

    invoke-interface {p2}, Le/a/t4/c;->d()Le/a/r2/x;

    move-result-object p2

    invoke-virtual {p2}, Le/a/r2/x;->g()V

    goto :goto_2

    :cond_4
    move-object v0, p0

    .line 7
    :cond_5
    :goto_2
    instance-of p2, p1, Le/a/d0/b/i$d;

    if-eqz p2, :cond_a

    .line 8
    move-object p2, p1

    check-cast p2, Le/a/d0/b/i$d;

    .line 9
    iget-object p2, p2, Le/a/d0/b/i$d;->d:Ljava/lang/Integer;

    if-nez p2, :cond_6

    goto :goto_3

    .line 10
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 11
    iget-object p2, v0, Le/a/d0/b/c;->a:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/t4/c;

    invoke-interface {p2}, Le/a/t4/c;->d()Le/a/r2/x;

    move-result-object p2

    invoke-virtual {p2}, Le/a/r2/x;->g()V

    .line 12
    iget-object p2, v0, Le/a/d0/b/c;->b:Le/a/b0/q/e;

    invoke-interface {p2}, Le/a/b0/q/e;->a()Z

    move-result p2

    if-nez p2, :cond_7

    .line 13
    iget-object p2, v0, Le/a/d0/b/c;->c:Lcom/truecaller/settings/CallingSettings;

    const-string v0, "failedToBlockAtLeastOnce"

    invoke-interface {p2, v0, v3}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    new-instance p2, Le/a/d0/b/i$d;

    .line 15
    iget-object v5, p1, Le/a/d0/b/i;->a:Ljava/lang/String;

    .line 16
    iget-wide v6, p1, Le/a/d0/b/i;->b:J

    .line 17
    check-cast p1, Le/a/d0/b/i$d;

    .line 18
    iget-object v8, p1, Le/a/d0/b/i$d;->c:Ljava/lang/Integer;

    const p1, 0xc317ed

    .line 19
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    const/16 v11, 0x10

    move-object v4, p2

    .line 20
    invoke-direct/range {v4 .. v11}, Le/a/d0/b/i$d;-><init>(Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Integer;Lcom/truecaller/blocking/FilterMatch;I)V

    move-object p1, p2

    :cond_7
    return-object p1

    :cond_8
    :goto_3
    const/4 v1, 0x3

    if-nez p2, :cond_9

    goto :goto_4

    .line 21
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_a

    .line 22
    iget-object p2, v0, Le/a/d0/b/c;->a:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/t4/c;

    invoke-interface {p2}, Le/a/t4/c;->d()Le/a/r2/x;

    move-result-object p2

    invoke-virtual {p2}, Le/a/r2/x;->g()V

    :cond_a
    :goto_4
    return-object p1
.end method
