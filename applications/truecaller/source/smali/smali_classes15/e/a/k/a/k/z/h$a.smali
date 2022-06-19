.class public final Le/a/k/a/k/z/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/k/z/h;->h(Le/m/a/c/c0;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/k/c/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/k/a/k/z/h;

.field public final synthetic b:Ls1/z/b/p;


# direct methods
.method public constructor <init>(Le/a/k/a/k/z/h;Ls1/z/b/p;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/z/h$a;->a:Le/a/k/a/k/z/h;

    iput-object p2, p0, Le/a/k/a/k/z/h$a;->b:Ls1/z/b/p;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/k/a/k/z/h$a$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/k/a/k/z/h$a$a;

    iget v2, v1, Le/a/k/a/k/z/h$a$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/k/a/k/z/h$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/k/a/k/z/h$a$a;

    invoke-direct {v1, p0, p2}, Le/a/k/a/k/z/h$a$a;-><init>(Le/a/k/a/k/z/h$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/k/a/k/z/h$a$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/k/a/k/z/h$a$a;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v1, Le/a/k/a/k/z/h$a$a;->h:Ljava/lang/Object;

    check-cast p1, Le/a/k/c/t;

    iget-object v3, v1, Le/a/k/a/k/z/h$a$a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/k/a/k/z/h$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Le/a/k/c/t;

    .line 5
    iget-object p2, p0, Le/a/k/a/k/z/h$a;->b:Ls1/z/b/p;

    iput-object p0, v1, Le/a/k/a/k/z/h$a$a;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/k/a/k/z/h$a$a;->h:Ljava/lang/Object;

    iput v5, v1, Le/a/k/a/k/z/h$a$a;->e:I

    invoke-interface {p2, p1, v1}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_4

    return-object v2

    :cond_4
    move-object v3, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_3

    .line 6
    :cond_5
    instance-of p2, p1, Le/a/k/c/t$e;

    if-eqz p2, :cond_6

    iget-object p1, v3, Le/a/k/a/k/z/h$a;->a:Le/a/k/a/k/z/h;

    .line 7
    iget-object p1, p1, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 8
    sget-object p2, Le/a/k/a/k/z/b$f;->a:Le/a/k/a/k/z/b$f;

    invoke-interface {p1, p2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 9
    :cond_6
    instance-of p2, p1, Le/a/k/c/t$a;

    if-eqz p2, :cond_7

    iget-object p1, v3, Le/a/k/a/k/z/h$a;->a:Le/a/k/a/k/z/h;

    .line 10
    iget-object p1, p1, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 11
    sget-object p2, Le/a/k/a/k/z/b$a;->a:Le/a/k/a/k/z/b$a;

    invoke-interface {p1, p2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 12
    :cond_7
    instance-of p2, p1, Le/a/k/c/t$d;

    if-eqz p2, :cond_9

    iget-object p1, v3, Le/a/k/a/k/z/h$a;->a:Le/a/k/a/k/z/h;

    .line 13
    iget-object p2, p1, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 14
    new-instance v1, Le/a/k/a/k/z/b$e;

    .line 15
    iget-object p1, p1, Le/a/k/a/k/z/h;->g:Le/a/k/c/g;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Le/a/k/c/g;->a()I

    move-result p1

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 16
    :goto_2
    invoke-direct {v1, p1}, Le/a/k/a/k/z/b$e;-><init>(I)V

    invoke-interface {p2, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 17
    :cond_9
    instance-of p2, p1, Le/a/k/c/t$b;

    if-eqz p2, :cond_a

    .line 18
    iget-object p2, v3, Le/a/k/a/k/z/h$a;->a:Le/a/k/a/k/z/h;

    .line 19
    iget-object p2, p2, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 20
    new-instance v5, Le/a/k/a/k/z/b$b;

    check-cast p1, Le/a/k/c/t$b;

    .line 21
    iget-object v6, p1, Le/a/k/c/t$b;->a:Le/m/a/c/b0;

    .line 22
    invoke-direct {v5, v6}, Le/a/k/a/k/z/b$b;-><init>(Ljava/lang/Exception;)V

    invoke-interface {p2, v5}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 23
    iget-object p2, v3, Le/a/k/a/k/z/h$a;->a:Le/a/k/a/k/z/h;

    .line 24
    iget-object p2, p2, Le/a/k/a/k/z/h;->b:Lq3/a/x2/z0;

    .line 25
    sget-object v3, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->MEDIA_PLAYER:Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;

    .line 26
    iget-object p1, p1, Le/a/k/c/t$b;->a:Le/m/a/c/b0;

    .line 27
    invoke-virtual {v3, p1}, Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl$VideoCallerIdNotShownReason;->setEx(Le/m/a/c/b0;)V

    const/4 p1, 0x0

    iput-object p1, v1, Le/a/k/a/k/z/h$a$a;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/k/a/k/z/h$a$a;->h:Ljava/lang/Object;

    iput v4, v1, Le/a/k/a/k/z/h$a$a;->e:I

    invoke-interface {p2, v3, v1}, Lq3/a/x2/z0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_b

    return-object v2

    .line 28
    :cond_a
    instance-of p1, p1, Le/a/k/c/t$c;

    if-eqz p1, :cond_b

    iget-object p1, v3, Le/a/k/a/k/z/h$a;->a:Le/a/k/a/k/z/h;

    .line 29
    iget-object p1, p1, Le/a/k/a/k/z/h;->a:Lq3/a/x2/a1;

    .line 30
    sget-object p2, Le/a/k/a/k/z/b$d;->a:Le/a/k/a/k/z/b$d;

    invoke-interface {p1, p2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    :cond_b
    :goto_3
    return-object v0
.end method
