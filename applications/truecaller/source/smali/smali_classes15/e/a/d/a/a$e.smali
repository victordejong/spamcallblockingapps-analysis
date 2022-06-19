.class public final Le/a/d/a/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/a/a;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Le/a/d/a/a;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Le/a/d/a/a$e;->a:Le/a/d/a/a;

    iput-object p2, p0, Le/a/d/a/a$e;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/d/a/a$e;->a:Le/a/d/a/a;

    new-instance v3, Le/a/d/a/a$e$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Le/a/d/a/a$e$a;-><init>(Le/a/d/a/a$e;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
