.class public final Le/a/t/a/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/t/a/a/o;

.field public final synthetic b:Le/a/t/a/a/f;


# direct methods
.method public constructor <init>(Le/a/t/a/a/o;Le/a/t/a/a/f;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/a/m;->a:Le/a/t/a/a/o;

    iput-object p2, p0, Le/a/t/a/a/m;->b:Le/a/t/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/t/a/a/m;->a:Le/a/t/a/a/o;

    .line 2
    iget-object p1, p1, Le/a/t/a/a/o;->d:Le/a/t/a/a/e;

    .line 3
    iget-object v0, p0, Le/a/t/a/a/m;->b:Le/a/t/a/a/f;

    invoke-interface {p1, v0}, Le/a/t/a/a/e;->e0(Le/a/t/a/a/f;)V

    return-void
.end method
