.class public Le/a/e/c/l1$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/c/l1;


# direct methods
.method public constructor <init>(Le/a/e/c/l1;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/l1$a;->a:Le/a/e/c/l1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/c/l1$a;->a:Le/a/e/c/l1;

    .line 2
    sget v0, Le/a/e/c/l1;->q:I

    .line 3
    invoke-virtual {p1}, Le/a/e/c/l1;->eB()V

    return-void
.end method
