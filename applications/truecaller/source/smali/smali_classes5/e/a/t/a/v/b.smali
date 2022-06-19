.class public final Le/a/t/a/v/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/t/a/v/a;

.field public final synthetic b:Le/a/t/a/v/a$a;


# direct methods
.method public constructor <init>(Le/a/t/a/v/a;Le/a/t/a/v/a$a;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/v/b;->a:Le/a/t/a/v/a;

    iput-object p2, p0, Le/a/t/a/v/b;->b:Le/a/t/a/v/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/t/a/v/b;->b:Le/a/t/a/v/a$a;

    .line 2
    iget-object p1, p1, Le/a/t/a/v/a$a;->a:Le/a/t/a/u/d;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/t/a/v/b;->a:Le/a/t/a/v/a;

    .line 4
    iget-object v0, v0, Le/a/t/a/v/a;->b:Le/a/t/a/o;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Le/a/t/a/o;->d(Le/a/t/a/u/d;)V

    :cond_0
    return-void
.end method
