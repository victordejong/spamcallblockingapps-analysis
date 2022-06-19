.class public final Le/a/b/a/f/a$f;
.super Le/a/b/a/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/a/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final c:Le/a/b/a/f/a$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/b/a/f/a$f;

    invoke-direct {v0}, Le/a/b/a/f/a$f;-><init>()V

    sput-object v0, Le/a/b/a/f/a$f;->c:Le/a/b/a/f/a$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x194

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/b/a/f/a;-><init>(ILs1/z/c/f;)V

    return-void
.end method
