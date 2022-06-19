.class public final Le/a/b/a/f/a$b;
.super Le/a/b/a/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/a/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final c:Le/a/b/a/f/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/b/a/f/a$b;

    invoke-direct {v0}, Le/a/b/a/f/a$b;-><init>()V

    sput-object v0, Le/a/b/a/f/a$b;->c:Le/a/b/a/f/a$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xcc

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/b/a/f/a;-><init>(ILs1/z/c/f;)V

    return-void
.end method
