.class public final Le/a/c/a/d/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/d/a/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ln3/z/q1<",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/c/a/d/a/a$a;->a:I

    iput-object p2, p0, Le/a/c/a/d/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Le/a/c/a/d/a/a$a;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1
    check-cast p1, Ln3/z/q1;

    .line 2
    iget-object v0, p0, Le/a/c/a/d/a/a$a;->b:Ljava/lang/Object;

    check-cast v0, Le/a/c/a/d/a/a;

    .line 3
    iget-object v0, v0, Le/a/c/a/d/a/a;->d:Ln3/v/i0;

    .line 4
    invoke-virtual {v0, p1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_1
    check-cast p1, Ln3/z/q1;

    .line 7
    iget-object v0, p0, Le/a/c/a/d/a/a$a;->b:Ljava/lang/Object;

    check-cast v0, Le/a/c/a/d/a/a;

    .line 8
    iget-object v0, v0, Le/a/c/a/d/a/a;->c:Ln3/v/i0;

    .line 9
    invoke-virtual {v0, p1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_2
    check-cast p1, Ln3/z/q1;

    .line 11
    iget-object v0, p0, Le/a/c/a/d/a/a$a;->b:Ljava/lang/Object;

    check-cast v0, Le/a/c/a/d/a/a;

    .line 12
    iget-object v0, v0, Le/a/c/a/d/a/a;->b:Ln3/v/i0;

    .line 13
    invoke-virtual {v0, p1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    return-void
.end method
