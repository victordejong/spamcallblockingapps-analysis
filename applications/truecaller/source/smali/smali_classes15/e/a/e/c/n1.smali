.class public Le/a/e/c/n1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/e/c/l1;


# direct methods
.method public constructor <init>(Le/a/e/c/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/n1;->a:Le/a/e/c/l1;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c/n1;->a:Le/a/e/c/l1;

    invoke-virtual {v0}, Le/a/e/c/l1;->gB()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c/n1;->a:Le/a/e/c/l1;

    invoke-virtual {v0}, Le/a/e/c/l1;->gB()V

    return-void
.end method
