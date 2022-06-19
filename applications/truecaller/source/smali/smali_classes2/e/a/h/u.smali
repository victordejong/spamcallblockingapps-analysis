.class public final Le/a/h/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/s;


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a07b3

    .line 2
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/u;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public G0(Le/a/h/t;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p1, Le/a/h/t;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Le/a/h/u;->a:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/flashsdk/ui/FlashButton;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    :goto_1
    const-string v1, ""

    if-eqz p1, :cond_5

    .line 5
    iget-object v5, p1, Le/a/h/t;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    .line 7
    iget-object v5, p1, Le/a/h/t;->a:Ljava/util/List;

    .line 8
    invoke-static {v5}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 9
    :cond_3
    iget-object v0, p1, Le/a/h/t;->b:Ljava/lang/String;

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move-object v0, v1

    :goto_4
    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p1, Le/a/h/t;->c:Ljava/lang/String;

    if-eqz p1, :cond_6

    move-object v1, p1

    .line 11
    :cond_6
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/truecaller/flashsdk/ui/FlashButton;->a(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
