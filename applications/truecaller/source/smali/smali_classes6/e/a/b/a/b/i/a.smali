.class public final Le/a/b/a/b/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Le/a/b/a/b/i/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLe/a/b/a/b/i/e;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/b/i/a;->a:Ljava/lang/String;

    iput-object p3, p0, Le/a/b/a/b/i/a;->b:Le/a/b/a/b/i/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/b/a/b/i/a;->b:Le/a/b/a/b/i/e;

    iget-object v0, p0, Le/a/b/a/b/i/a;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/b/a/b/i/e;->f6(Ljava/lang/String;)V

    return-void
.end method
