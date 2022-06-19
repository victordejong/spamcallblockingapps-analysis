.class public final Le/a/a/d/s$d;
.super Le/a/a/d/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, v1, v2}, Le/a/a/d/s$d;-><init>(ZLjava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/a/d/s;-><init>(Ls1/z/c/f;)V

    iput-boolean p1, p0, Le/a/a/d/s$d;->a:Z

    iput-object p2, p0, Le/a/a/d/s$d;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/a/d/s$d;->c:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Landroid/net/Uri;I)V
    .locals 0

    and-int/lit8 p2, p4, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p2, p4, 0x2

    and-int/lit8 p2, p4, 0x4

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p2}, Le/a/a/d/s;-><init>(Ls1/z/c/f;)V

    iput-boolean p1, p0, Le/a/a/d/s$d;->a:Z

    iput-object p2, p0, Le/a/a/d/s$d;->b:Ljava/lang/String;

    iput-object p2, p0, Le/a/a/d/s$d;->c:Landroid/net/Uri;

    return-void
.end method
