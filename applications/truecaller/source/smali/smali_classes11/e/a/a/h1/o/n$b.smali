.class public final Le/a/a/h1/o/n$b;
.super Le/a/a/h1/o/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/h1/o/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic f:Le/a/a/h1/o/n;


# direct methods
.method public constructor <init>(Le/a/a/h1/o/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/h1/o/n$b;->f:Le/a/a/h1/o/n;

    .line 2
    iget-object p1, p1, Le/a/a/h1/o/n;->n:Landroid/content/Context;

    .line 3
    invoke-direct {p0, p1}, Le/a/a/h1/o/b;-><init>(Landroid/content/Context;)V

    return-void
.end method
