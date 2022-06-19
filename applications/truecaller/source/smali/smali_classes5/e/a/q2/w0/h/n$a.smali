.class public final Le/a/q2/w0/h/n$a;
.super Le/a/q2/w0/h/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q2/w0/h/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Le/a/q2/w0/h/n$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/q2/w0/h/n$a;

    invoke-direct {v0}, Le/a/q2/w0/h/n$a;-><init>()V

    sput-object v0, Le/a/q2/w0/h/n$a;->a:Le/a/q2/w0/h/n$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/q2/w0/h/n;-><init>(Ls1/z/c/f;)V

    return-void
.end method
