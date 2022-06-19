.class public final Le/a/a/c/a/b$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/a/b;->e(Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Ls1/z/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/animation/Animator;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/a/b;


# direct methods
.method public constructor <init>(Le/a/a/c/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/b$c;->b:Le/a/a/c/a/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/animation/Animator;

    .line 2
    iget-object p1, p0, Le/a/a/c/a/b$c;->b:Le/a/a/c/a/b;

    invoke-virtual {p1}, Le/a/a/c/a/b;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 3
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
