.class public final Le/a/b0/a/a/b$c;
.super Le/a/b0/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/b0/a/a/b;-><init>(Ls1/z/c/f;)V

    iput-boolean p1, p0, Le/a/b0/a/a/b$c;->a:Z

    return-void
.end method
