.class public final Le/a/h/b/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b0/a/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/a;-><init>(Le/a/l4/c;Le/a/h/b/d/a/b/h;Le/a/h/b/d/a/a/l;Le/a/h/b/d/a/c/a;Le/a/h/b/h0;Le/a/h/b/d/a/b/t;Le/a/l/a2;Le/a/p5/c;Le/a/u3/g;ZLe/a/h/b/d/a/a/r;Le/a/h/b/d/a/a/v;Le/a/h/b/d/a/a/c;Le/a/h/b/d/a/a/h;Le/a/h/b/d/a/a/z;Le/a/h/b/d/a/a/e0/e;Le/a/i/d/x;Le/a/h/b/y0/b/b;Le/a/h/b/y0/b/g;Lcom/truecaller/calling/dialer/DialerMode;Le/a/a/m/g0;Le/a/a/m/o0;Le/a/a/m/z;Le/a/a/m/z;Le/a/a/m/b0;Le/a/a/m/f0;Le/a/a/m/e0;Le/a/a/m/a1;Le/a/a/m/y;Le/a/a/m/j0;Le/a/a/m/k0;Le/a/a/m/d0;Le/a/a/m/s0;Le/a/a/m/v0;Le/a/a/m/b1;Le/a/a/m/z0;Le/a/a/m/c1;Le/a/a/m/w0;Le/a/a/m/n0;Le/a/a/m/q0;Le/a/a/m/p0;Le/a/a/m/t0;Le/a/a/m/c0;Le/a/a/m/x0;Le/a/a/m/y0;Le/a/a/m/a0;Le/a/a/m/m0;Le/a/h/b/w0/d;ZLe/a/i/d/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/a;


# direct methods
.method public constructor <init>(Le/a/h/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/h/b/a$h;->a:Le/a/h/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/h/b/a$h;->a:Le/a/h/b/a;

    add-int v1, p1, p2

    if-gt p1, v1, :cond_0

    .line 3
    :goto_0
    iget-object v2, v0, Le/a/h/b/a;->u:Le/a/o2/o;

    .line 4
    invoke-virtual {v2, p1}, Le/a/o2/o;->j(I)I

    move-result v2

    .line 5
    iget-object v3, p0, Le/a/h/b/a$h;->a:Le/a/h/b/a;

    .line 6
    iget-object v3, v3, Le/a/h/b/a;->E:Ln3/b0/a/b;

    .line 7
    iget-object v3, v3, Ln3/b0/a/b;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v3, v2, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeChanged(IILjava/lang/Object;)V

    if-eq p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInserted(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h/b/a$h;->a:Le/a/h/b/a;

    add-int v1, p1, p2

    if-gt p1, v1, :cond_0

    .line 2
    :goto_0
    iget-object v2, v0, Le/a/h/b/a;->u:Le/a/o2/o;

    .line 3
    invoke-virtual {v2, p1}, Le/a/o2/o;->j(I)I

    move-result v2

    .line 4
    iget-object v3, p0, Le/a/h/b/a$h;->a:Le/a/h/b/a;

    .line 5
    iget-object v3, v3, Le/a/h/b/a;->E:Ln3/b0/a/b;

    .line 6
    iget-object v3, v3, Ln3/b0/a/b;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v3, v2, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeInserted(II)V

    if-eq p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMoved(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/a$h;->a:Le/a/h/b/a;

    .line 2
    iget-object v1, v0, Le/a/h/b/a;->E:Ln3/b0/a/b;

    .line 3
    iget-object v0, v0, Le/a/h/b/a;->u:Le/a/o2/o;

    .line 4
    iget-object v0, v0, Le/a/o2/o;->c:Le/a/o2/e;

    invoke-virtual {v0, p1}, Le/a/o2/e;->j(I)I

    move-result p1

    .line 5
    iget-object v0, p0, Le/a/h/b/a$h;->a:Le/a/h/b/a;

    .line 6
    iget-object v0, v0, Le/a/h/b/a;->u:Le/a/o2/o;

    .line 7
    iget-object v0, v0, Le/a/o2/o;->c:Le/a/o2/e;

    invoke-virtual {v0, p2}, Le/a/o2/e;->j(I)I

    move-result p2

    .line 8
    iget-object v0, v1, Ln3/b0/a/b;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h/b/a$h;->a:Le/a/h/b/a;

    add-int v1, p1, p2

    if-gt p1, v1, :cond_0

    .line 2
    :goto_0
    iget-object v2, v0, Le/a/h/b/a;->u:Le/a/o2/o;

    .line 3
    invoke-virtual {v2, p1}, Le/a/o2/o;->j(I)I

    move-result v2

    .line 4
    iget-object v3, p0, Le/a/h/b/a$h;->a:Le/a/h/b/a;

    .line 5
    iget-object v3, v3, Le/a/h/b/a;->E:Ln3/b0/a/b;

    .line 6
    iget-object v3, v3, Ln3/b0/a/b;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v3, v2, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeRemoved(II)V

    if-eq p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
