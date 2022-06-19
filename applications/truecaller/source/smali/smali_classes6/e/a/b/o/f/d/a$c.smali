.class public final Le/a/b/o/f/d/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/o/f/d/a;->Yz(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/o/f/d/a;

.field public final synthetic b:J


# direct methods
.method public constructor <init>(Le/a/b/o/f/d/a;J)V
    .locals 0

    iput-object p1, p0, Le/a/b/o/f/d/a$c;->a:Le/a/b/o/f/d/a;

    iput-wide p2, p0, Le/a/b/o/f/d/a$c;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/b/o/f/d/a$c;->a:Le/a/b/o/f/d/a;

    .line 2
    iget-object p1, p1, Le/a/b/o/f/d/a;->i:Le/a/b/o/a/a;

    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p0, Le/a/b/o/f/d/a$c;->b:J

    invoke-interface {p1, v0, v1}, Le/a/b/o/a/a;->x(J)V

    return-void

    :cond_0
    const-string p1, "govServicesFragmentListener"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
