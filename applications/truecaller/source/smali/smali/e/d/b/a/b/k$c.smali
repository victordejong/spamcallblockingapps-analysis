.class public Le/d/b/a/b/k$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/d/b/a/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/io/ByteArrayOutputStream;

.field public b:I

.field public c:Le/d/b/a/b/k$c;


# direct methods
.method public constructor <init>(Le/d/b/a/b/k$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/d/b/a/b/k$c;->a:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Le/d/b/a/b/k$c;->b:I

    .line 4
    iput-object p1, p0, Le/d/b/a/b/k$c;->c:Le/d/b/a/b/k$c;

    return-void
.end method
