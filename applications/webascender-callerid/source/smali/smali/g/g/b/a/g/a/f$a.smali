.class final Lg/g/b/a/g/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/b/a/g/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lg/g/b/a/g/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/a/g/a/f;

    invoke-direct {v0}, Lg/g/b/a/g/a/f;-><init>()V

    sput-object v0, Lg/g/b/a/g/a/f$a;->a:Lg/g/b/a/g/a/f;

    return-void
.end method

.method static synthetic a()Lg/g/b/a/g/a/f;
    .locals 1

    .line 1
    sget-object v0, Lg/g/b/a/g/a/f$a;->a:Lg/g/b/a/g/a/f;

    return-object v0
.end method
