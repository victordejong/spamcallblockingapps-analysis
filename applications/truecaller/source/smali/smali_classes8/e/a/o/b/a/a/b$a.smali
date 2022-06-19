.class public final Le/a/o/b/a/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/b/a/a/b;->N4(Le/a/o/b/a/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/o/b/a/a/b;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/o/b/a/a/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/a/a/b$a;->a:Le/a/o/b/a/a/b;

    iput-object p2, p0, Le/a/o/b/a/a/b$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/o/b/a/a/b$a;->a:Le/a/o/b/a/a/b;

    .line 2
    iget-object p1, p1, Le/a/o/b/a/a/b;->c:Le/a/o/b/a/a/p;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/o/b/a/a/b$a;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/o/b/a/a/p;->O(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
