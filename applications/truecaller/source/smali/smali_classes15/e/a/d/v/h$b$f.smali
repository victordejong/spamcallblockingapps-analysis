.class public final Le/a/d/v/h$b$f;
.super Le/a/d/v/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/v/h$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final b:Le/a/d/v/h$b$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/d/v/h$b$f;

    invoke-direct {v0}, Le/a/d/v/h$b$f;-><init>()V

    sput-object v0, Le/a/d/v/h$b$f;->b:Le/a/d/v/h$b$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/d/v/h$b;-><init>(Ls1/z/c/f;)V

    return-void
.end method
