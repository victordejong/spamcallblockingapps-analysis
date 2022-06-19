.class public final Le/a/d/w/h$a;
.super Le/a/d/w/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/d/w/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Le/a/d/w/h$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/d/w/h$a;

    invoke-direct {v0}, Le/a/d/w/h$a;-><init>()V

    sput-object v0, Le/a/d/w/h$a;->b:Le/a/d/w/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Le/a/d/w/h;-><init>(ILs1/z/c/f;)V

    return-void
.end method
