.class public final Le/a/d/c/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/o;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic a:Le/a/d/c/o;


# direct methods
.method public constructor <init>(Le/a/d/c/o;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/o$a;->a:Le/a/d/c/o;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Le/a/d/v/a;

    .line 2
    iget-boolean p1, p1, Le/a/d/v/a;->b:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/d/c/o$a;->a:Le/a/d/c/o;

    iget-object p1, p1, Le/a/d/c/o;->f:Le/a/d/c/t;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Le/a/d/c/t;->Mj(Z)V

    .line 5
    iget-object p1, p0, Le/a/d/c/o$a;->a:Le/a/d/c/o;

    iget-object p1, p1, Le/a/d/c/o;->f:Le/a/d/c/t;

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p1, Le/a/d/c/t;->i:Z

    .line 7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Le/a/d/c/l;

    if-eqz v0, :cond_1

    .line 8
    sget p1, Lcom/truecaller/voip/R$string;->voip_status_on_hold:I

    sget p2, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    invoke-interface {v0, p1, p2}, Le/a/d/c/l;->v3(II)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 9
    invoke-static/range {v0 .. v5}, Le/a/p5/s0/g;->T1(Le/a/d/c/l;ZJILjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Le/a/d/c/o$a;->a:Le/a/d/c/o;

    iget-object p2, p1, Le/a/d/c/o;->f:Le/a/d/c/t;

    iget-object p1, p1, Le/a/d/c/o;->g:Le/a/d/v/b;

    invoke-static {p2, p1}, Le/a/d/c/t;->Jj(Le/a/d/c/t;Le/a/d/v/b;)V

    .line 11
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
