.class Lg/f/a/e/c0/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/a/e/c0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lg/f/a/e/c0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/f/a/e/c0/l;

    invoke-direct {v0}, Lg/f/a/e/c0/l;-><init>()V

    sput-object v0, Lg/f/a/e/c0/l$a;->a:Lg/f/a/e/c0/l;

    return-void
.end method
