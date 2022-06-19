.class public final Le/a/a/b/a$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/b/a;->au(IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:Le/a/a/b/a;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>([ZLe/a/a/b/a;ZII)V
    .locals 0

    iput-object p1, p0, Le/a/a/b/a$q;->a:[Z

    iput-object p2, p0, Le/a/a/b/a$q;->b:Le/a/a/b/a;

    iput-boolean p3, p0, Le/a/a/b/a$q;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/a/b/a$q;->b:Le/a/a/b/a;

    invoke-virtual {p1}, Le/a/a/b/a;->QA()Le/a/a/b/p;

    move-result-object p1

    .line 2
    iget-boolean p2, p0, Le/a/a/b/a$q;->c:Z

    .line 3
    iget-object v0, p0, Le/a/a/b/a$q;->a:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    .line 4
    invoke-interface {p1, p2, v0}, Le/a/a/b/p;->Ad(ZZ)V

    return-void
.end method
