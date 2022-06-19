.class public final Le/a/d/c/x$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/x$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/x$a;


# direct methods
.method public constructor <init>(Le/a/d/c/x$a;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/x$a$a;->a:Le/a/d/c/x$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object p2, Ls1/s;->a:Ls1/s;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Le/a/d/c/x$a$a;->a:Le/a/d/c/x$a;

    iget-object p1, p1, Le/a/d/c/x$a;->g:Le/a/d/c/x;

    iget-object p1, p1, Le/a/d/c/x;->f:Le/a/d/c/t;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/l;

    if-eqz p1, :cond_0

    .line 4
    sget v2, Lcom/truecaller/voip/R$string;->voip_empty:I

    sget v3, Lcom/truecaller/voip/R$attr;->voip_call_status_neutral_color:I

    invoke-interface {p1, v2, v3}, Le/a/d/c/l;->v3(II)V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/d/c/x$a$a;->a:Le/a/d/c/x$a;

    iget-object p1, p1, Le/a/d/c/x$a;->g:Le/a/d/c/x;

    iget-object p1, p1, Le/a/d/c/x;->f:Le/a/d/c/t;

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/l;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 7
    invoke-interface {p1, v2, v0, v1}, Le/a/d/c/l;->u3(ZJ)V

    move-object p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_2

    return-object p1

    :cond_2
    return-object p2
.end method
