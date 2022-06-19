.class public final Le/a/d/c/b/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/b/j;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/c0/x1/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/b/j;


# direct methods
.method public constructor <init>(Le/a/d/c/b/j;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/b/j$a;->a:Le/a/d/c/b/j;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/d/c0/x1/b;

    .line 2
    iget-object p2, p1, Le/a/d/c0/x1/b;->b:Ljava/util/List;

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p0, Le/a/d/c/b/j$a;->a:Le/a/d/c/b/j;

    iget-object p2, p2, Le/a/d/c/b/j;->f:Le/a/d/c/b/o;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 7
    instance-of v1, p1, Le/a/d/c0/x1/a$b;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    instance-of p1, p1, Le/a/d/c0/x1/a$d;

    if-eqz p1, :cond_1

    :goto_0
    const/4 v0, 0x0

    .line 9
    :cond_1
    iget-object p1, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/b/h;

    if-eqz p1, :cond_3

    .line 10
    sget p2, Lcom/truecaller/voip/R$drawable;->tcx_selector_voip_toggle_speaker:I

    .line 11
    invoke-interface {p1, p2, v0}, Le/a/d/c/b/h;->D1(IZ)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p2, p0, Le/a/d/c/b/j$a;->a:Le/a/d/c/b/j;

    iget-object p2, p2, Le/a/d/c/b/j;->f:Le/a/d/c/b/o;

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p1, p1, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 15
    invoke-static {p1}, Le/a/p5/s0/g;->K1(Le/a/d/c0/x1/a;)I

    move-result p1

    .line 16
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/c/b/h;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1, v0}, Le/a/d/c/b/h;->D1(IZ)V

    .line 17
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
