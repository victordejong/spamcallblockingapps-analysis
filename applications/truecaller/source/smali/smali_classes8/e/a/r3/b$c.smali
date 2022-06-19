.class public final Le/a/r3/b$c;
.super Le/a/r3/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/r3/b;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Le/a/r3/b$c;->a:I

    return-void
.end method
