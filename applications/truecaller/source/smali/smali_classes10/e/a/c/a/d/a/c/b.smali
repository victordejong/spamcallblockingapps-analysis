.class public final Le/a/c/a/d/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/l/a;

.field public final synthetic b:Le/a/c/a/d/a/c/d;


# direct methods
.method public constructor <init>(Le/a/c/a/l/a;Le/a/c/a/d/a/c/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/a/c/b;->a:Le/a/c/a/l/a;

    iput-object p2, p0, Le/a/c/a/d/a/c/b;->b:Le/a/c/a/d/a/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/c/a/d/a/c/b;->a:Le/a/c/a/l/a;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Le/a/c/a/l/a;->e:Z

    .line 3
    iget-object v0, p0, Le/a/c/a/d/a/c/b;->b:Le/a/c/a/d/a/c/d;

    invoke-interface {v0, p1}, Le/a/c/a/d/a/c/d;->x8(Le/a/c/a/l/a;)V

    return-void
.end method
