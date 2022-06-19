.class public final Le/a/a/h0$a$a;
.super Le/a/a/h0$a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/h0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Le/a/a/h0$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/a/h0$a$a;

    invoke-direct {v0}, Le/a/a/h0$a$a;-><init>()V

    sput-object v0, Le/a/a/h0$a$a;->a:Le/a/a/h0$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/a/h0$a$d;-><init>()V

    return-void
.end method
