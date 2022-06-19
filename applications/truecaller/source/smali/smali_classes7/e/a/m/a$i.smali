.class public final Le/a/m/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/m/a;->qg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/m/a;


# direct methods
.method public constructor <init>(Le/a/m/a;)V
    .locals 0

    iput-object p1, p0, Le/a/m/a$i;->a:Le/a/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/m/a$i;->a:Le/a/m/a;

    invoke-virtual {p1}, Le/a/m/a;->ZA()Le/a/m/q;

    move-result-object p1

    check-cast p1, Le/a/m/v;

    .line 2
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/m/s;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Le/a/m/s;->a0()V

    .line 3
    :cond_0
    iget-object p2, p1, Le/a/m/v;->e:Le/a/r2/a;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Le/a/r2/a;->b()V

    .line 4
    :cond_1
    iget-object p2, p1, Le/a/m/v;->m:Le/a/u3/g;

    invoke-virtual {p2}, Le/a/u3/g;->M()Le/a/u3/b;

    move-result-object p2

    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    .line 5
    iget-object v0, p1, Le/a/m/v;->i:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f4/a/b;

    .line 6
    invoke-interface {v0, p2}, Le/a/f4/a/b;->a(Z)Le/a/r2/x;

    move-result-object p2

    .line 7
    iget-object v0, p1, Le/a/m/v;->j:Le/a/r2/l;

    invoke-interface {v0}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v0

    new-instance v1, Le/a/m/u;

    invoke-direct {v1, p1}, Le/a/m/u;-><init>(Le/a/m/v;)V

    invoke-virtual {p2, v0, v1}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object p2

    iput-object p2, p1, Le/a/m/v;->e:Le/a/r2/a;

    return-void
.end method
