.class public final Le/a/o/b/a/a/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/b/a/a/s;->N4(Le/a/o/b/a/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/o/b/a/a/s;


# direct methods
.method public constructor <init>(Le/a/o/b/a/a/s;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/a/a/s$a;->a:Le/a/o/b/a/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/o/b/a/a/s$a;->a:Le/a/o/b/a/a/s;

    .line 2
    iget-object p1, p1, Le/a/o/b/a/a/s;->c:Le/a/o/b/a/a/p;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Le/a/o/b/a/a/p;->O(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
