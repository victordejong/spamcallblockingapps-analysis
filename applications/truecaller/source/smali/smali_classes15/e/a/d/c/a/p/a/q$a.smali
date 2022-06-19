.class public final Le/a/d/c/a/p/a/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/a/p/a/q;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "+",
        "Le/a/d/v/k/z;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/a/p/a/q;


# direct methods
.method public constructor <init>(Le/a/d/c/a/p/a/q;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a/p/a/q$a;->a:Le/a/d/c/a/p/a/q;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object p2, Ls1/s;->a:Ls1/s;

    check-cast p1, Ljava/util/Map;

    .line 2
    iget-object v0, p0, Le/a/d/c/a/p/a/q$a;->a:Le/a/d/c/a/p/a/q;

    iget v0, v0, Le/a/d/c/a/p/a/q;->g:I

    .line 3
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 4
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/v/k/z;

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Le/a/d/c/a/p/a/q$a;->a:Le/a/d/c/a/p/a/q;

    iget-object v0, v0, Le/a/d/c/a/p/a/q;->f:Le/a/d/c/a/p/a/u;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    instance-of v1, p1, Le/a/d/v/k/z$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8
    sget p1, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_connecting:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget v1, Lcom/truecaller/voip/R$color;->voip_contact_tile_call_status_orange:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 9
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/p/a/p;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Le/a/d/c/a/p/a/p;->l(II)V

    .line 11
    invoke-interface {v0, v2}, Le/a/d/c/a/p/a/p;->x0(Z)V

    .line 12
    invoke-interface {v0, v2}, Le/a/d/c/a/p/a/p;->o(Z)V

    goto :goto_0

    .line 13
    :cond_0
    instance-of p1, p1, Le/a/d/v/k/z$a;

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/a/p/a/p;

    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1, v2}, Le/a/d/c/a/p/a/p;->i(Z)V

    .line 16
    sget p1, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended_invite_failed:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget v1, Lcom/truecaller/voip/R$color;->voip_contact_tile_call_status_red:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 17
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/p/a/p;

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Le/a/d/c/a/p/a/p;->l(II)V

    .line 19
    invoke-interface {v0, v2}, Le/a/d/c/a/p/a/p;->x0(Z)V

    .line 20
    invoke-interface {v0, v2}, Le/a/d/c/a/p/a/p;->o(Z)V

    :cond_1
    :goto_0
    move-object p1, p2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 21
    :goto_1
    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_3

    return-object p1

    :cond_3
    return-object p2
.end method
