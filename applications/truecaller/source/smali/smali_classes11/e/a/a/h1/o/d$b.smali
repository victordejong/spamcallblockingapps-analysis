.class public final Le/a/a/h1/o/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h1/o/d;->a(Ls1/z/b/p;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h1/o/d;

.field public final synthetic b:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/a/h1/o/d;Ls1/z/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h1/o/d$b;->a:Le/a/a/h1/o/d;

    iput-object p2, p0, Le/a/a/h1/o/d$b;->b:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/d$b;->a:Le/a/a/h1/o/d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Le/a/a/h1/o/d$b;->b:Ls1/z/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    :cond_0
    return-void
.end method
