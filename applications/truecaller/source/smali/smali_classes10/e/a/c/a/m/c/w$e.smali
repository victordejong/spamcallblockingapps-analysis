.class public final Le/a/c/a/m/c/w$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/w;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/m/c/w;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/w;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/w$e;->a:Le/a/c/a/m/c/w;

    iput-object p2, p0, Le/a/c/a/m/c/w$e;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Le/a/c/a/m/c/w$e;->a:Le/a/c/a/m/c/w;

    .line 2
    sget-object v0, Le/a/c/a/m/c/w;->f:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/c/a/m/c/w;->OA()Le/a/c/a/m/b/i;

    move-result-object p1

    .line 4
    new-instance v0, Le/a/c/a/m/c/w$e$a;

    invoke-direct {v0, p0}, Le/a/c/a/m/c/w$e$a;-><init>(Le/a/c/a/m/c/w$e;)V

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cb"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v2, p1, Le/a/c/a/m/b/i;->b:Lq3/a/i0;

    new-instance v5, Le/a/c/a/m/b/j;

    const/4 v1, 0x0

    invoke-direct {v5, p1, v0, v1}, Le/a/c/a/m/b/j;-><init>(Le/a/c/a/m/b/i;Ls1/z/b/a;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
