.class public final Le/a/a/n/j/u;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/a/n/j/v;


# direct methods
.method public constructor <init>(Le/a/a/n/j/v;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/n/j/u;->a:Le/a/a/n/j/v;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/n/j/u;->a:Le/a/a/n/j/v;

    .line 2
    invoke-virtual {p1}, Le/a/a/n/j/v;->Jj()V

    return-void
.end method
