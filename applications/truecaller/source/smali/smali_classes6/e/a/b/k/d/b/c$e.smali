.class public final Le/a/b/k/d/b/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/k/d/b/c;->o(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/k/d/b/c;


# direct methods
.method public constructor <init>(Le/a/b/k/d/b/c;)V
    .locals 0

    iput-object p1, p0, Le/a/b/k/d/b/c$e;->a:Le/a/b/k/d/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/b/k/d/b/c$e;->a:Le/a/b/k/d/b/c;

    invoke-virtual {p1}, Le/a/b/k/d/b/c;->RA()Le/a/b/k/c/d;

    move-result-object p1

    check-cast p1, Le/a/b/k/c/i;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/k/c/e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/b/k/c/e;->v()V

    :cond_0
    return-void
.end method
