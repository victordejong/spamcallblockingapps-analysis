.class public final Le/a/d/c/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/m;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/m;


# direct methods
.method public constructor <init>(Le/a/d/c/m;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/m$a;->a:Le/a/d/c/m;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p2, Ls1/s;->a:Ls1/s;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/d/c/m$a;->a:Le/a/d/c/m;

    iget-object p1, p1, Le/a/d/c/m;->f:Le/a/d/c/t;

    .line 3
    iget-object p1, p1, Le/a/d/c/t;->m:Le/a/d/v/d;

    invoke-interface {p1}, Le/a/d/v/d;->b()Le/a/d/v/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/a/d/v/b;->getState()Lq3/a/x2/i1;

    move-result-object p1

    invoke-interface {p1}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Le/a/d/v/h$c;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/d/c/m$a;->a:Le/a/d/c/m;

    iget-object p1, p1, Le/a/d/c/m;->f:Le/a/d/c/t;

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/l;

    if-eqz p1, :cond_1

    .line 7
    sget v0, Lcom/truecaller/voip/R$string;->voip_status_ending:I

    sget v1, Lcom/truecaller/voip/R$attr;->voip_call_status_warning_color:I

    invoke-interface {p1, v0, v1}, Le/a/d/c/l;->v3(II)V

    :cond_1
    :goto_0
    return-object p2
.end method
