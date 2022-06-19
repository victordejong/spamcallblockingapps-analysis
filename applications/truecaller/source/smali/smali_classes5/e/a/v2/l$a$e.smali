.class public final Le/a/v2/l$a$e;
.super Le/a/v2/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/v2/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Le/a/v2/l$a;-><init>(ZLs1/z/c/f;)V

    iput p1, p0, Le/a/v2/l$a$e;->b:I

    return-void
.end method
