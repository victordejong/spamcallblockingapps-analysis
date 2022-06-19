.class public final Le/a/d/c/a/p/a/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/a/p/a/r;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/v/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/a/p/a/r;


# direct methods
.method public constructor <init>(Le/a/d/c/a/p/a/r;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a/p/a/r$a;->a:Le/a/d/c/a/p/a/r;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/d/v/a;

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Le/a/d/c/a/p/a/r$a;->a:Le/a/d/c/a/p/a/r;

    iget-object v0, v0, Le/a/d/c/a/p/a/r;->g:Le/a/d/v/l/a;

    invoke-interface {v0}, Le/a/d/v/l/a;->d()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    iget-object p2, p0, Le/a/d/c/a/p/a/r$a;->a:Le/a/d/c/a/p/a/r;

    iget-object p2, p2, Le/a/d/c/a/p/a/r;->f:Le/a/d/c/a/p/a/u;

    .line 4
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/c/a/p/a/p;

    if-eqz p2, :cond_0

    .line 5
    iget-boolean v0, p1, Le/a/d/v/a;->a:Z

    .line 6
    invoke-interface {p2, v0}, Le/a/d/c/a/p/a/p;->b(Z)V

    .line 7
    :cond_0
    iget-boolean p1, p1, Le/a/d/v/a;->b:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Le/a/d/c/a/p/a/r$a;->a:Le/a/d/c/a/p/a/r;

    iget-object p1, p1, Le/a/d/c/a/p/a/r;->f:Le/a/d/c/a/p/a/u;

    .line 9
    sget p2, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_on_hold:I

    .line 10
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 11
    sget p2, Lcom/truecaller/voip/R$color;->voip_contact_tile_call_status_orange:I

    .line 12
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 13
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/a/p/a/p;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p1, p2, v0}, Le/a/d/c/a/p/a/p;->l(II)V

    const/4 p2, 0x0

    .line 15
    invoke-interface {p1, p2}, Le/a/d/c/a/p/a/p;->x0(Z)V

    .line 16
    invoke-interface {p1, p2}, Le/a/d/c/a/p/a/p;->o(Z)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Le/a/d/c/a/p/a/r$a;->a:Le/a/d/c/a/p/a/r;

    iget-object p1, p1, Le/a/d/c/a/p/a/r;->f:Le/a/d/c/a/p/a/u;

    .line 18
    invoke-virtual {p1}, Le/a/d/c/a/p/a/u;->Ij()V

    .line 19
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
