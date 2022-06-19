.class public abstract Le/a/v2/l$a;
.super Le/a/v2/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/v2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/v2/l$a$b;,
        Le/a/v2/l$a$a;,
        Le/a/v2/l$a$c;,
        Le/a/v2/l$a$d;,
        Le/a/v2/l$a$e;
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(ZLs1/z/c/f;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Le/a/v2/l;-><init>(Ls1/z/c/f;)V

    iput-boolean p1, p0, Le/a/v2/l$a;->a:Z

    return-void
.end method
