.class public final Le/a/o/a/a/b/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/a/b/b;->rc(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/o/n/a;

.field public final synthetic b:Le/a/o/a/a/b/b;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/o/n/a;Le/a/o/o/h;Le/a/o/a/a/b/b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/a/b/b$c;->a:Le/a/o/n/a;

    iput-object p3, p0, Le/a/o/a/a/b/b$c;->b:Le/a/o/a/a/b/b;

    iput-object p4, p0, Le/a/o/a/a/b/b$c;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/o/a/a/b/b$c;->b:Le/a/o/a/a/b/b;

    .line 2
    iget-object p1, p1, Le/a/o/a/a/b/b;->e:Le/a/o/a/a/b/d;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/o/a/a/b/b$c;->a:Le/a/o/n/a;

    invoke-interface {p1, v0}, Le/a/o/a/a/b/d;->p1(Le/a/o/n/a;)V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
