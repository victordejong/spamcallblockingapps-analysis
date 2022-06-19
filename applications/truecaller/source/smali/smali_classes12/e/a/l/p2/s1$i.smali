.class public final Le/a/l/p2/s1$i;
.super Le/a/l/p2/s1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l/p2/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# static fields
.field public static final a:Le/a/l/p2/s1$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/l/p2/s1$i;

    invoke-direct {v0}, Le/a/l/p2/s1$i;-><init>()V

    sput-object v0, Le/a/l/p2/s1$i;->a:Le/a/l/p2/s1$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/l/p2/s1;-><init>(Ls1/z/c/f;)V

    return-void
.end method
