.class public final Le/a/d/c/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/r;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ls1/k<",
        "+",
        "Le/a/d/v/a;",
        "+",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/r;


# direct methods
.method public constructor <init>(Le/a/d/c/r;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/r$b;->a:Le/a/d/c/r;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object p2, Ls1/s;->a:Ls1/s;

    check-cast p1, Ls1/k;

    .line 2
    iget-object v0, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Le/a/d/v/a;

    .line 4
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/Long;

    .line 6
    iget-object v1, p0, Le/a/d/c/r$b;->a:Le/a/d/c/r;

    iget-object v1, v1, Le/a/d/c/r;->f:Le/a/d/c/t;

    .line 7
    iget-boolean v1, v1, Le/a/d/c/t;->d:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 8
    :cond_0
    iget-boolean v1, v0, Le/a/d/v/a;->a:Z

    if-eqz v1, :cond_1

    .line 9
    sget v1, Lcom/truecaller/voip/R$string;->voip_status_call_muted:I

    .line 10
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 11
    sget v1, Lcom/truecaller/voip/R$attr;->voip_call_status_ok_color:I

    .line 12
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 13
    new-instance v1, Ls1/k;

    invoke-direct {v1, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-boolean v1, v0, Le/a/d/v/a;->b:Z

    if-eqz v1, :cond_2

    .line 15
    sget v1, Lcom/truecaller/voip/R$string;->voip_status_on_hold:I

    .line 16
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 17
    sget v1, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    .line 18
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 19
    new-instance v1, Ls1/k;

    invoke-direct {v1, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_2
    sget v1, Lcom/truecaller/voip/R$string;->voip_empty:I

    .line 21
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 22
    sget v1, Lcom/truecaller/voip/R$attr;->voip_call_status_neutral_color:I

    .line 23
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 24
    new-instance v1, Ls1/k;

    invoke-direct {v1, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :goto_0
    iget-object v2, p0, Le/a/d/c/r$b;->a:Le/a/d/c/r;

    iget-object v2, v2, Le/a/d/c/r;->f:Le/a/d/c/t;

    .line 26
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/c/l;

    if-eqz v2, :cond_3

    .line 27
    iget-object v3, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 28
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 29
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 30
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v2, v3, v1}, Le/a/d/c/l;->v3(II)V

    .line 31
    :cond_3
    iget-boolean v1, v0, Le/a/d/v/a;->a:Z

    if-nez v1, :cond_4

    .line 32
    iget-boolean v0, v0, Le/a/d/v/a;->b:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 33
    :goto_1
    iget-object v1, p0, Le/a/d/c/r$b;->a:Le/a/d/c/r;

    iget-object v1, v1, Le/a/d/c/r;->f:Le/a/d/c/t;

    .line 34
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/c/l;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    .line 35
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_5
    const-wide/16 v2, 0x0

    :goto_2
    invoke-interface {v1, v0, v2, v3}, Le/a/d/c/l;->u3(ZJ)V

    move-object p1, p2

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_7

    return-object p1

    :cond_7
    :goto_4
    return-object p2
.end method
