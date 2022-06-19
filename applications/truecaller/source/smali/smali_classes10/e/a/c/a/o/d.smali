.class public final Le/a/c/a/o/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ls1/z/b/l;

.field public final synthetic b:Le/a/c/y/i;


# direct methods
.method public constructor <init>(Ls1/z/b/l;Le/a/c/y/i;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/o/d;->a:Ls1/z/b/l;

    iput-object p2, p0, Le/a/c/a/o/d;->b:Le/a/c/y/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/c/a/o/d;->a:Ls1/z/b/l;

    iget-object v0, p0, Le/a/c/a/o/d;->b:Le/a/c/y/i;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
