.class final Lg/g/b/a/h/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/b/a/h/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lg/g/b/a/h/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/a/h/g;

    invoke-direct {v0}, Lg/g/b/a/h/g;-><init>()V

    sput-object v0, Lg/g/b/a/h/g$a;->a:Lg/g/b/a/h/g;

    return-void
.end method

.method static synthetic a()Lg/g/b/a/h/g;
    .locals 1

    .line 1
    sget-object v0, Lg/g/b/a/h/g$a;->a:Lg/g/b/a/h/g;

    return-object v0
.end method
