.class public Le/h/a/c/q0/w;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/h/a/c/q0/v;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/v;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/w;->a:Le/h/a/c/q0/v;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/w;->a:Le/h/a/c/q0/v;

    .line 2
    iget-boolean v1, v0, Le/h/a/c/q0/v;->h:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Le/h/a/c/q0/v;->eB()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method
