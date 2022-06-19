.class public final Le/a/c/a/o/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/o/b;

.field public final synthetic b:Le/a/c/y/i;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Le/a/c/a/o/b;Le/a/c/y/i;Ljava/lang/String;ZI)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/o/e;->a:Le/a/c/a/o/b;

    iput-object p2, p0, Le/a/c/a/o/e;->b:Le/a/c/y/i;

    iput-object p3, p0, Le/a/c/a/o/e;->c:Ljava/lang/String;

    iput-boolean p4, p0, Le/a/c/a/o/e;->d:Z

    iput p5, p0, Le/a/c/a/o/e;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/c/a/o/e;->a:Le/a/c/a/o/b;

    iget-object v0, p0, Le/a/c/a/o/e;->b:Le/a/c/y/i;

    iget-object v1, p0, Le/a/c/a/o/e;->c:Ljava/lang/String;

    iget-boolean v2, p0, Le/a/c/a/o/e;->d:Z

    iget v3, p0, Le/a/c/a/o/e;->e:I

    invoke-interface {p1, v0, v1, v2, v3}, Le/a/c/a/o/b;->C3(Le/a/c/y/i;Ljava/lang/String;ZI)V

    return-void
.end method
