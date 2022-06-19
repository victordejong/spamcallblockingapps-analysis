.class public Le/f/a/n/p/f$b;
.super Le/f/a/n/p/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/p/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/n/p/f$a<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/n/p/f$b$a;

    invoke-direct {v0}, Le/f/a/n/p/f$b$a;-><init>()V

    invoke-direct {p0, v0}, Le/f/a/n/p/f$a;-><init>(Le/f/a/n/p/f$d;)V

    return-void
.end method
