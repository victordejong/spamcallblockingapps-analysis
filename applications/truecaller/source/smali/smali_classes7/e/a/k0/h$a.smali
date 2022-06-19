.class public final Le/a/k0/h$a;
.super Le/a/k0/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Le/a/k0/h$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/k0/h$a;

    invoke-direct {v0}, Le/a/k0/h$a;-><init>()V

    sput-object v0, Le/a/k0/h$a;->a:Le/a/k0/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/k0/h;-><init>(Ls1/z/c/f;)V

    return-void
.end method
