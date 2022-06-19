.class public final Le/a/b/a/a/a/b/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/a/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/b/a/a/a/b/a$a;->a:I

    iput-object p2, p0, Le/a/b/a/a/a/b/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    iget p1, p0, Le/a/b/a/a/a/b/a$a;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-ne p1, v3, :cond_1

    .line 1
    iget-object p1, p0, Le/a/b/a/a/a/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/b/a/a/a/b/a;

    .line 2
    sget-object v4, Le/a/b/a/a/a/b/a;->h:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/b/a/a/a/b/a;->OA()Le/a/b/a/a/a/b/d;

    move-result-object p1

    .line 4
    iget-object v4, p1, Le/a/b/a/a/a/b/d;->c:Le/a/p5/a0;

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object p1, p1, Le/a/b/a/a/a/b/d;->b:Ln3/v/k0;

    new-instance v2, Le/a/b/l/l;

    new-instance v4, Le/a/h5/l;

    invoke-direct {v4, v3, v1, v0}, Le/a/h5/l;-><init>(ZZI)V

    invoke-direct {v2, v4}, Le/a/b/l/l;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v5

    new-instance v8, Le/a/b/a/a/a/b/c;

    invoke-direct {v8, p1, v2}, Le/a/b/a/a/a/b/c;-><init>(Le/a/b/a/a/a/b/d;Ls1/w/d;)V

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_0
    return-void

    .line 7
    :cond_1
    throw v2

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/b/a/a/a/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/b/a/a/a/b/a;

    .line 9
    sget-object v4, Le/a/b/a/a/a/b/a;->h:[Ls1/a/l;

    .line 10
    invoke-virtual {p1}, Le/a/b/a/a/a/b/a;->OA()Le/a/b/a/a/a/b/d;

    move-result-object p1

    .line 11
    iget-object v4, p1, Le/a/b/a/a/a/b/d;->c:Le/a/p5/a0;

    const-string v5, "android.permission.CAMERA"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    iget-object p1, p1, Le/a/b/a/a/a/b/d;->a:Ln3/v/k0;

    new-instance v2, Le/a/b/l/l;

    new-instance v4, Le/a/h5/l;

    invoke-direct {v4, v3, v1, v0}, Le/a/h5/l;-><init>(ZZI)V

    invoke-direct {v2, v4}, Le/a/b/l/l;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v5

    new-instance v8, Le/a/b/a/a/a/b/b;

    invoke-direct {v8, p1, v2}, Le/a/b/a/a/a/b/b;-><init>(Le/a/b/a/a/a/b/d;Ls1/w/d;)V

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_1
    return-void
.end method
