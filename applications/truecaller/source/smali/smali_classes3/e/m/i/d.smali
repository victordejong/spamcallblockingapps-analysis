.class public final Le/m/i/d;
.super Le/m/i/f;
.source "SourceFile"


# static fields
.field public static final c:Le/m/i/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/m/i/d;

    invoke-direct {v0}, Le/m/i/d;-><init>()V

    .line 2
    sput-object v0, Le/m/i/d;->c:Le/m/i/d;

    sget-object v1, Le/m/i/f;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/i/f;-><init>()V

    return-void
.end method
