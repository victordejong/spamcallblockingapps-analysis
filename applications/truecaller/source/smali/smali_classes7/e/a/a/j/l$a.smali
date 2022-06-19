.class public final Le/a/a/j/l$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/j/l;->Jj(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Le/a/a/g/l0/c;)V
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
    c = "com.truecaller.messaging.mediaviewer.MediaViewerPresenter$setMedia$1"
    f = "MediaViewerPresenter.kt"
    l = {
        0x19a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/j/l;

.field public final synthetic g:Le/a/a/g/l0/c;

.field public final synthetic h:Lcom/truecaller/messaging/mediaviewer/MediaPosition;


# direct methods
.method public constructor <init>(Le/a/a/j/l;Le/a/a/g/l0/c;Lcom/truecaller/messaging/mediaviewer/MediaPosition;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/j/l$a;->f:Le/a/a/j/l;

    iput-object p2, p0, Le/a/a/j/l$a;->g:Le/a/a/g/l0/c;

    iput-object p3, p0, Le/a/a/j/l$a;->h:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/a/j/l$a;

    iget-object v0, p0, Le/a/a/j/l$a;->f:Le/a/a/j/l;

    iget-object v1, p0, Le/a/a/j/l$a;->g:Le/a/a/g/l0/c;

    iget-object v2, p0, Le/a/a/j/l$a;->h:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/j/l$a;-><init>(Le/a/a/j/l;Le/a/a/g/l0/c;Lcom/truecaller/messaging/mediaviewer/MediaPosition;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/j/l$a;

    iget-object v0, p0, Le/a/a/j/l$a;->f:Le/a/a/j/l;

    iget-object v1, p0, Le/a/a/j/l$a;->g:Le/a/a/g/l0/c;

    iget-object v2, p0, Le/a/a/j/l$a;->h:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/j/l$a;-><init>(Le/a/a/j/l;Le/a/a/g/l0/c;Lcom/truecaller/messaging/mediaviewer/MediaPosition;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/j/l$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/a/j/l$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/a/j/l$a;->f:Le/a/a/j/l;

    .line 5
    iget-object p1, p1, Le/a/a/j/l;->x:Le/a/a/c/p5;

    .line 6
    iget-object v2, p0, Le/a/a/j/l$a;->g:Le/a/a/g/l0/c;

    .line 7
    iget-object v2, v2, Le/a/a/g/l0/c;->h:Landroid/net/Uri;

    .line 8
    iput v3, p0, Le/a/a/j/l$a;->e:I

    check-cast p1, Le/a/a/c/q5;

    invoke-virtual {p1, v2, p0}, Le/a/a/c/q5;->a(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 9
    iget-object v1, p0, Le/a/a/j/l$a;->f:Le/a/a/j/l;

    .line 10
    iget-object v1, v1, Le/a/a/j/l;->m:Ljava/util/Map;

    .line 11
    iget-object v2, p0, Le/a/a/j/l$a;->h:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/l0/c;

    iget-object v2, p0, Le/a/a/j/l$a;->g:Le/a/a/g/l0/c;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    if-nez p1, :cond_4

    .line 12
    iget-object p1, p0, Le/a/a/j/l$a;->f:Le/a/a/j/l;

    .line 13
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/j/i;

    if-eqz p1, :cond_9

    .line 14
    iget-object v1, p0, Le/a/a/j/l$a;->h:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    invoke-interface {p1, v1}, Le/a/a/j/i;->Gp(Lcom/truecaller/messaging/mediaviewer/MediaPosition;)V

    goto :goto_3

    .line 15
    :cond_4
    iget-object p1, p0, Le/a/a/j/l$a;->g:Le/a/a/g/l0/c;

    .line 16
    iget-object p1, p1, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    const-string v1, "contentType"

    .line 17
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "image/"

    .line 18
    invoke-static {p1, v2, v3}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, Le/a/a/j/l$a;->f:Le/a/a/j/l;

    .line 20
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/j/i;

    if-eqz p1, :cond_9

    .line 21
    iget-object v1, p0, Le/a/a/j/l$a;->h:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    iget-object v2, p0, Le/a/a/j/l$a;->g:Le/a/a/g/l0/c;

    .line 22
    iget-object v3, v2, Le/a/a/g/l0/c;->h:Landroid/net/Uri;

    .line 23
    iget-wide v4, v2, Le/a/a/g/l0/c;->f:J

    .line 24
    invoke-interface {p1, v1, v3, v4, v5}, Le/a/a/j/i;->Nd(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/net/Uri;J)V

    goto :goto_3

    .line 25
    :cond_5
    iget-object p1, p0, Le/a/a/j/l$a;->g:Le/a/a/g/l0/c;

    .line 26
    iget-object p1, p1, Le/a/a/g/l0/c;->g:Ljava/lang/String;

    .line 27
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "video/"

    .line 28
    invoke-static {p1, v1, v3}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 29
    iget-object p1, p0, Le/a/a/j/l$a;->f:Le/a/a/j/l;

    .line 30
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Le/a/a/j/i;

    if-eqz v4, :cond_8

    .line 31
    iget-object v5, p0, Le/a/a/j/l$a;->h:Lcom/truecaller/messaging/mediaviewer/MediaPosition;

    iget-object p1, p0, Le/a/a/j/l$a;->g:Le/a/a/g/l0/c;

    .line 32
    iget-object v6, p1, Le/a/a/g/l0/c;->h:Landroid/net/Uri;

    .line 33
    iget v1, p1, Le/a/a/g/l0/c;->j:I

    if-lt v1, v3, :cond_7

    .line 34
    iget v2, p1, Le/a/a/g/l0/c;->k:I

    if-ge v2, v3, :cond_6

    goto :goto_1

    :cond_6
    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_2

    :cond_7
    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2
    move v7, v1

    .line 35
    iget-wide v8, p1, Le/a/a/g/l0/c;->f:J

    .line 36
    invoke-interface/range {v4 .. v9}, Le/a/a/j/i;->Ih(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/net/Uri;FJ)V

    .line 37
    :cond_8
    iget-object p1, p0, Le/a/a/j/l$a;->f:Le/a/a/j/l;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Le/a/a/j/l;->pc(ZZ)V

    :cond_9
    :goto_3
    return-object v0
.end method
