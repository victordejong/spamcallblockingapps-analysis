.class public final Le/a/g0/a/j;
.super Ln3/a/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/g0/a/a;


# direct methods
.method public constructor <init>(Le/a/g0/a/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g0/a/j;->a:Le/a/g0/a/a;

    invoke-direct {p0, p2}, Ln3/a/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g0/a/j;->a:Le/a/g0/a/a;

    invoke-virtual {v0}, Le/a/g0/a/a;->bn()V

    return-void
.end method
