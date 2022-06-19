.class public final Le/a/d/c/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/y;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic a:Le/a/d/c/y;


# direct methods
.method public constructor <init>(Le/a/d/c/y;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/y$b;->a:Le/a/d/c/y;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Le/a/d/c/y$b;->a:Le/a/d/c/y;

    iget-object v0, v0, Le/a/d/c/y;->f:Le/a/d/c/t;

    .line 3
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/l;

    if-eqz v0, :cond_0

    .line 4
    sget v1, Lcom/truecaller/voip/R$string;->voip_empty:I

    sget v2, Lcom/truecaller/voip/R$attr;->voip_call_status_neutral_color:I

    invoke-interface {v0, v1, v2}, Le/a/d/c/l;->v3(II)V

    const/4 v1, 0x1

    .line 5
    invoke-interface {v0, v1, p1, p2}, Le/a/d/c/l;->u3(ZJ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    sget-object p1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, p1, :cond_1

    return-object v0

    .line 7
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
