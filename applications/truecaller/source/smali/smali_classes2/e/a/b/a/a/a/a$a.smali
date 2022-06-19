.class public final Le/a/b/a/a/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/b/a/a/a/a$a;->a:I

    iput-object p2, p0, Le/a/b/a/a/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget p1, p0, Le/a/b/a/a/a/a$a;->a:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/b/a/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/b/a/a/a/a;

    invoke-virtual {p1}, Le/a/b/a/a/a/a;->OA()Le/a/b/a/a/d/b;

    move-result-object p1

    .line 2
    iget-object v0, p1, Le/a/b/a/a/d/b;->c:Ln3/v/k0;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v3

    new-instance v6, Le/a/b/a/a/d/c;

    invoke-direct {v6, p1, v1}, Le/a/b/a/a/d/c;-><init>(Le/a/b/a/a/d/b;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    .line 4
    :cond_0
    throw v1

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/b/a/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/b/a/a/a/a;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method
