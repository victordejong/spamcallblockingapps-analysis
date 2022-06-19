.class public final Le/a/d/z/c/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/z/c/i;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/c0/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/z/c/i;


# direct methods
.method public constructor <init>(Le/a/d/z/c/i;)V
    .locals 0

    iput-object p1, p0, Le/a/d/z/c/i$a;->a:Le/a/d/z/c/i;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Le/a/d/z/c/i$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/z/c/i$a$a;

    iget v1, v0, Le/a/d/z/c/i$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/z/c/i$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/z/c/i$a$a;

    invoke-direct {v0, p0, p2}, Le/a/d/z/c/i$a$a;-><init>(Le/a/d/z/c/i$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/z/c/i$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/z/c/i$a$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

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
    check-cast p1, Le/a/d/c0/b;

    .line 5
    iget-object p2, p0, Le/a/d/z/c/i$a;->a:Le/a/d/z/c/i;

    iget-object p2, p2, Le/a/d/z/c/i;->f:Le/a/d/z/c/e;

    .line 6
    iget-object v2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/z/c/c;

    if-eqz v2, :cond_3

    .line 7
    invoke-static {p2}, Le/a/d/z/c/e;->Jj(Le/a/d/z/c/e;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Le/a/d/z/c/c;->h(Ljava/lang/String;)V

    .line 8
    :cond_3
    instance-of p2, p1, Le/a/d/c0/b$b;

    if-eqz p2, :cond_5

    .line 9
    iget-object p2, p0, Le/a/d/z/c/i$a;->a:Le/a/d/z/c/i;

    iget-object p2, p2, Le/a/d/z/c/i;->f:Le/a/d/z/c/e;

    .line 10
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/z/c/c;

    if-eqz p2, :cond_4

    .line 11
    move-object v0, p1

    check-cast v0, Le/a/d/c0/b$b;

    .line 12
    iget-object v0, v0, Le/a/d/c0/b$b;->a:Ljava/lang/String;

    const-string v1, ""

    .line 13
    invoke-interface {p2, v0, v1}, Le/a/d/z/c/c;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_4
    iget-object p2, p0, Le/a/d/z/c/i$a;->a:Le/a/d/z/c/i;

    iget-object p2, p2, Le/a/d/z/c/i;->f:Le/a/d/z/c/e;

    .line 15
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/z/c/c;

    if-eqz p2, :cond_7

    .line 16
    check-cast p1, Le/a/d/c0/b$b;

    .line 17
    iget-object p1, p1, Le/a/d/c0/b$b;->b:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 18
    invoke-interface {p2, p1}, Le/a/d/z/c/c;->setAvatarXConfig(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    goto :goto_1

    .line 19
    :cond_5
    instance-of p2, p1, Le/a/d/c0/b$a;

    if-eqz p2, :cond_7

    .line 20
    iget-object p2, p0, Le/a/d/z/c/i$a;->a:Le/a/d/z/c/i;

    iget-object p2, p2, Le/a/d/z/c/i;->f:Le/a/d/z/c/e;

    .line 21
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/z/c/c;

    if-eqz p2, :cond_6

    .line 22
    move-object v2, p1

    check-cast v2, Le/a/d/c0/b$a;

    .line 23
    iget-object v4, v2, Le/a/d/c0/b$a;->a:Ljava/lang/String;

    .line 24
    iget-object v2, v2, Le/a/d/c0/b$a;->b:Ljava/lang/String;

    .line 25
    invoke-interface {p2, v4, v2}, Le/a/d/z/c/c;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_6
    iget-object p2, p0, Le/a/d/z/c/i$a;->a:Le/a/d/z/c/i;

    iget-object p2, p2, Le/a/d/z/c/i;->f:Le/a/d/z/c/e;

    .line 27
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/z/c/c;

    if-eqz p2, :cond_7

    .line 28
    check-cast p1, Le/a/d/c0/b$a;

    .line 29
    iget-object p1, p1, Le/a/d/c0/b$a;->c:Ljava/util/List;

    .line 30
    iput v3, v0, Le/a/d/z/c/i$a$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/d/z/c/c;->i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 31
    :cond_7
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
