.class public final synthetic Le/a/a/c/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/r;->a:Le/a/a/c/y3;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Le/a/a/c/r;->a:Le/a/a/c/y3;

    .line 1
    iget-object v0, p1, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {v0}, Le/a/a/c/f4;->Wf()V

    .line 2
    iget-object v0, p1, Le/a/a/c/y3;->z:Le/a/a/c/y5;

    iget-object p1, p1, Le/a/a/c/y3;->j0:Le/a/t/a/h;

    .line 3
    iget p1, p1, Le/a/t/a/h;->j:I

    .line 4
    invoke-interface {v0, p1}, Le/a/a/c/y5;->ta(I)V

    return-void
.end method
