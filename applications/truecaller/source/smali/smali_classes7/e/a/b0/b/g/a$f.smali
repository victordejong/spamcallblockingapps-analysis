.class public final Le/a/b0/b/g/a$f;
.super Le/a/b0/b/g/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/b/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final d:Le/a/b0/b/g/a$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/b0/b/g/a$f;

    invoke-direct {v0}, Le/a/b0/b/g/a$f;-><init>()V

    sput-object v0, Le/a/b0/b/g/a$f;->d:Le/a/b0/b/g/a$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 1
    invoke-direct {p0, v0, v0, v1, v2}, Le/a/b0/b/g/a;-><init>(BZLjava/util/List;I)V

    return-void
.end method
