.class public final Le/a/d/c/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/p;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/w/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/p;


# direct methods
.method public constructor <init>(Le/a/d/c/p;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/p$a;->a:Le/a/d/c/p;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p2, Ls1/s;->a:Ls1/s;

    check-cast p1, Le/a/d/w/h;

    .line 2
    instance-of v0, p1, Le/a/d/w/h$a;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Le/a/d/w/h$c;

    if-eqz v0, :cond_1

    :goto_0
    sget p1, Lcom/truecaller/voip/R$string;->voip_status_incoming_call:I

    .line 4
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 5
    sget p1, Lcom/truecaller/voip/R$attr;->voip_call_status_neutral_color:I

    .line 6
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 7
    new-instance p1, Ls1/k;

    invoke-direct {p1, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_1
    instance-of v0, p1, Le/a/d/w/h$b$a;

    if-eqz v0, :cond_2

    sget p1, Lcom/truecaller/voip/R$string;->voip_status_connecting:I

    .line 9
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 10
    sget p1, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    .line 11
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 12
    new-instance p1, Ls1/k;

    invoke-direct {p1, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_2
    instance-of v0, p1, Le/a/d/w/h$b$l;

    if-eqz v0, :cond_3

    sget p1, Lcom/truecaller/voip/R$string;->voip_status_rejected:I

    .line 14
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 15
    sget p1, Lcom/truecaller/voip/R$attr;->voip_call_status_error_color:I

    .line 16
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 17
    new-instance p1, Ls1/k;

    invoke-direct {p1, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_3
    instance-of p1, p1, Le/a/d/w/h$b$j;

    if-eqz p1, :cond_4

    sget p1, Lcom/truecaller/voip/R$string;->voip_status_no_answer:I

    .line 19
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 20
    sget p1, Lcom/truecaller/voip/R$attr;->voip_call_status_error_color:I

    .line 21
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 22
    new-instance p1, Ls1/k;

    invoke-direct {p1, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 23
    :cond_4
    sget p1, Lcom/truecaller/voip/R$string;->voip_status_call_ended:I

    .line 24
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 25
    sget p1, Lcom/truecaller/voip/R$attr;->voip_call_status_error_color:I

    .line 26
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 27
    new-instance p1, Ls1/k;

    invoke-direct {p1, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    :goto_1
    iget-object v0, p0, Le/a/d/c/p$a;->a:Le/a/d/c/p;

    iget-object v0, v0, Le/a/d/c/p;->f:Le/a/d/c/t;

    .line 29
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/l;

    if-eqz v0, :cond_5

    .line 30
    iget-object v1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 31
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 32
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 33
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Le/a/d/c/l;->v3(II)V

    move-object p1, p2

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_6

    return-object p1

    :cond_6
    return-object p2
.end method
