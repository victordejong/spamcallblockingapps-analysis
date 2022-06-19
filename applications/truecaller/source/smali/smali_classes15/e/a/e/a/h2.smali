.class public Le/a/e/a/h2;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/e/a/i2;


# direct methods
.method public constructor <init>(Le/a/e/a/i2;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/a/h2;->a:Le/a/e/a/i2;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 2
    iget-object p1, p0, Le/a/e/a/h2;->a:Le/a/e/a/i2;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
