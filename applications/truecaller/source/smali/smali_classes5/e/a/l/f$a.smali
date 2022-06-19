.class public final Le/a/l/f$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/f;-><init>(Le/a/r5/i0;Le/a/o5/c2/k;Le/a/l/p2/b0;Le/a/x/l;Le/a/s2/c;Le/a/q5/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/l/f$a;->b:I

    iput-object p2, p0, Le/a/l/f$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Le/a/l/f$a;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    throw v0

    .line 1
    :pswitch_0
    iget-object v0, p0, Le/a/l/f$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/l/f;

    .line 2
    iget-object v0, v0, Le/a/l/f;->q:Le/a/q5/d;

    .line 3
    invoke-interface {v0}, Le/a/q5/d;->r()Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 5
    :pswitch_1
    iget-object v0, p0, Le/a/l/f$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/l/f;

    .line 6
    iget-object v0, v0, Le/a/l/f;->n:Le/a/l/p2/b0;

    .line 7
    invoke-virtual {v0}, Le/a/l/p2/b0;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->d(Ljava/lang/Iterable;)Z

    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 9
    :pswitch_2
    iget-object v0, p0, Le/a/l/f$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/l/f;

    .line 10
    iget-object v0, v0, Le/a/l/f;->m:Le/a/o5/c2/k;

    .line 11
    invoke-virtual {v0}, Le/a/o5/c2/k;->e()Z

    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 13
    :pswitch_3
    iget-object v0, p0, Le/a/l/f$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/l/f;

    .line 14
    iget-object v0, v0, Le/a/l/f;->p:Le/a/s2/c;

    .line 15
    invoke-interface {v0}, Le/a/s2/c;->b()Z

    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_4
    iget-object v0, p0, Le/a/l/f$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/l/f;

    .line 18
    iget-object v0, v0, Le/a/l/f;->o:Le/a/x/l;

    .line 19
    invoke-interface {v0}, Le/a/x/l;->b()Z

    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 21
    :pswitch_5
    iget-object v0, p0, Le/a/l/f$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/l/f;

    .line 22
    iget-object v0, v0, Le/a/l/f;->l:Le/a/r5/i0;

    .line 23
    invoke-interface {v0}, Le/a/r5/i0;->b()Z

    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 25
    :pswitch_6
    iget-object v0, p0, Le/a/l/f$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/l/f;

    .line 26
    iget-object v0, v0, Le/a/l/f;->l:Le/a/r5/i0;

    .line 27
    invoke-interface {v0}, Le/a/r5/i0;->b()Z

    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
