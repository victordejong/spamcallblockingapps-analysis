.class final Lg/g/a/a/l/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lg/g/a/a/l/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/l/c;

    invoke-direct {v0}, Lg/g/a/a/l/c;-><init>()V

    sput-object v0, Lg/g/a/a/l/c$a;->a:Lg/g/a/a/l/c;

    return-void
.end method

.method static synthetic a()Lg/g/a/a/l/c;
    .locals 1

    .line 1
    sget-object v0, Lg/g/a/a/l/c$a;->a:Lg/g/a/a/l/c;

    return-object v0
.end method
