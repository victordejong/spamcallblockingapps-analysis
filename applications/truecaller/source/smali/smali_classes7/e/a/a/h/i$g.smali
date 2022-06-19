.class public final synthetic Le/a/a/h/i$g;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h/i;->R1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/a/h/i;)V
    .locals 7

    const-class v3, Le/a/a/h/i;

    const/4 v1, 0x1

    const-string v4, "onLeaveResult"

    const-string v5, "onLeaveResult(Ljava/lang/Boolean;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/a/h/i;

    .line 3
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/h/h;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Le/a/a/h/h;->H7()V

    .line 5
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "leave"

    .line 6
    invoke-virtual {v0, p1}, Le/a/a/h/i;->Lj(Ljava/lang/String;)V

    .line 7
    invoke-interface {v1}, Le/a/a/h/h;->finish()V

    goto :goto_0

    :cond_0
    const p1, 0x7f12027f

    .line 8
    invoke-interface {v1, p1}, Le/a/a/h/h;->a(I)V

    .line 9
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
